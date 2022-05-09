; ModuleID = '/llk/IR_all_yes/fs/nfsd/vfs.c_pt.bc'
source_filename = "../fs/nfsd/vfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.27 }
%union.anon.27 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.accessmap = type { i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.131 }
%union.anon.131 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.nfsd_stats = type { [82 x %struct.percpu_counter], %struct.atomic_t }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.path = type { ptr, ptr }
%struct.svc_export = type { %struct.cache_head, ptr, i32, %struct.path, %struct.kuid_t, %struct.kgid_t, i32, ptr, %struct.nfsd4_fs_locations, i32, [8 x %struct.exp_flavor_info], i32, ptr, ptr, %struct.callback_head, %struct.export_stats }
%struct.cache_head = type { %struct.hlist_node, i64, i64, %struct.kref, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nfsd4_fs_locations = type { i32, ptr, i32 }
%struct.exp_flavor_info = type { i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.export_stats = type { i64, [3 x %struct.percpu_counter] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.123, %struct.list_head, %struct.list_head, %union.anon.124 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.123 = type { %struct.list_head }
%union.anon.124 = type { %struct.hlist_node }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.134 }
%union.anon.134 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.cache_detail = type { ptr, i32, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.list_head, i64, i32, %struct.list_head, %struct.atomic_t, i64, i64, %union.anon.158, ptr }
%union.anon.158 = type { ptr }
%struct.svc_fh = type { %struct.knfsd_fh, i32, ptr, ptr, i8, i8, i8, i8, i32, i8, i8, i64, %struct.timespec64, %struct.timespec64, i64, %struct.kstat, i64 }
%struct.knfsd_fh = type { i32, %union.anon.159 }
%union.anon.159 = type { %struct.anon.160, [124 x i8] }
%struct.anon.160 = type { i8, i8, i8, i8, [0 x i32] }
%struct.timespec64 = type { i64, i32 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.139, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.140, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.141, ptr, %struct.address_space, %struct.list_head, %union.anon.142, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.139 = type { i32 }
%union.anon.140 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.141 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.142 = type { ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.xdr_netobj = type { i32, ptr }
%struct.nfsd_file = type { %struct.hlist_node, %struct.list_head, %struct.callback_head, ptr, ptr, ptr, i32, ptr, i32, %struct.refcount_struct, i8, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.nfsd4_compoundres = type { ptr, ptr, ptr, i32, ptr, i32, %struct.nfsd4_compound_state }
%struct.nfsd4_compound_state = type { %struct.svc_fh, %struct.svc_fh, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.stateid_t, %struct.stateid_t, i32 }
%struct.stateid_t = type { i32, %struct.stateid_opaque_t }
%struct.stateid_opaque_t = type { %struct.clientid_t, i32 }
%struct.clientid_t = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.90, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.splice_desc = type { i32, i32, i32, %union.anon.164, i64, ptr, i32, i8 }
%union.anon.164 = type { ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_call = type { ptr, ptr }
%struct.renamedata = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.readdir_data = type { %struct.dir_context, ptr, i32, i32 }
%struct.dir_context = type { ptr, i64 }
%struct.buffered_dirent = type { i64, i64, i32, i32, [0 x i8] }
%struct.pipe_buffer = type { ptr, i32, i32, ptr, i32, i32 }

@nfsd_debug = external dso_local local_unnamed_addr global i32, align 4
@nfsd_lookup_dentry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nfsd: nfsd_lookup(fh %s, %.*s)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfsd_lookup_dentry\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/nfsd/vfs.c\00", [18 x i8] zeroinitializer }, align 32
@nfsd_lookup_dentry._entry_ptr = internal global ptr @nfsd_lookup_dentry._entry, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"trusted.junction.nfs\00", [43 x i8] zeroinitializer }, align 32
@nfsd_net_id = external dso_local local_unnamed_addr global i32, align 4
@nfs3_regaccess = internal constant { [8 x %struct.accessmap], [32 x i8] } { [8 x %struct.accessmap] [%struct.accessmap { i32 1, i32 4 }, %struct.accessmap { i32 32, i32 1 }, %struct.accessmap { i32 4, i32 18 }, %struct.accessmap { i32 8, i32 2 }, %struct.accessmap { i32 64, i32 4 }, %struct.accessmap { i32 128, i32 2 }, %struct.accessmap { i32 256, i32 4 }, %struct.accessmap zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nfs3_diraccess = internal constant { [9 x %struct.accessmap], [56 x i8] } { [9 x %struct.accessmap] [%struct.accessmap { i32 1, i32 4 }, %struct.accessmap { i32 2, i32 1 }, %struct.accessmap { i32 4, i32 19 }, %struct.accessmap { i32 8, i32 3 }, %struct.accessmap { i32 16, i32 19 }, %struct.accessmap { i32 64, i32 4 }, %struct.accessmap { i32 128, i32 2 }, %struct.accessmap { i32 256, i32 4 }, %struct.accessmap zeroinitializer], [56 x i8] zeroinitializer }, align 32
@nfs3_anyaccess = internal constant { [5 x %struct.accessmap], [56 x i8] } { [5 x %struct.accessmap] [%struct.accessmap { i32 1, i32 4 }, %struct.accessmap { i32 32, i32 1 }, %struct.accessmap { i32 4, i32 130 }, %struct.accessmap { i32 8, i32 130 }, %struct.accessmap zeroinitializer], [56 x i8] zeroinitializer }, align 32
@nfsd_create_locked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nfsd_create: parent %pd2 not locked!\0A\00", [58 x i8] zeroinitializer }, align 32
@nfsd_create_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014nfsd: bad file type %o in nfsd_create\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfsd_create_locked\00", [45 x i8] zeroinitializer }, align 32
@nfsd_create_locked._entry_ptr = internal global ptr @nfsd_create_locked._entry, section ".printk_index", align 4
@fh_lock_nested._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014fh_lock: %pd2 already locked!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fh_lock_nested\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/nfsd/nfsfh.h\00", [16 x i8] zeroinitializer }, align 32
@fh_lock_nested._entry_ptr = internal global ptr @fh_lock_nested._entry, section ".printk_index", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_nfsd_clone_file_range_err = external dso_local global %struct.tracepoint, align 4
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/nfsd/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_nfsd_clone_file_range_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_nfsd_writeverf_reset = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_writeverf_reset.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfsd_read_splice = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_read_splice.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfsdstats = external dso_local global %struct.nfsd_stats, align 8
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_nfsd_read_io_done = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_read_io_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfsd_read_err = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_read_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfsd_read_vector = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_read_vector.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfsd_write_opened = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_write_opened.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wait_for_concurrent_writes.last_ino = internal global { i32, [28 x i8] } zeroinitializer, align 32
@wait_for_concurrent_writes.last_dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@wait_for_concurrent_writes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfsd: write defer %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wait_for_concurrent_writes\00", [37 x i8] zeroinitializer }, align 32
@wait_for_concurrent_writes._entry_ptr = internal global ptr @wait_for_concurrent_writes._entry, section ".printk_index", align 4
@wait_for_concurrent_writes._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfsd: write resume %d\0A\00", [41 x i8] zeroinitializer }, align 32
@wait_for_concurrent_writes._entry_ptr.21 = internal global ptr @wait_for_concurrent_writes._entry.19, section ".printk_index", align 4
@wait_for_concurrent_writes._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfsd: write sync %d\0A\00", [43 x i8] zeroinitializer }, align 32
@wait_for_concurrent_writes._entry_ptr.24 = internal global ptr @wait_for_concurrent_writes._entry.22, section ".printk_index", align 4
@__tracepoint_nfsd_write_io_done = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_write_io_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfsd_write_err = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_write_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfsd_read_start = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_read_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfsd_read_done = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_read_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfsd_write_start = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_write_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfsd_write_done = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_write_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfsd_dirent = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_dirent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 13, i64 30]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 68, i64 2052]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.27 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7, i64 11]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967278]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 10005, i64 30001]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 4294967235, i64 4294967262, i64 4294967289]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 4294967235, i64 4294967262, i64 4294967289]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 4294967235, i64 4294967262, i64 4294967289]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 4294967235, i64 4294967262, i64 4294967289]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 4294967235, i64 4294967262, i64 4294967289]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 4294967235, i64 4294967262, i64 4294967289]
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 183, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 493, i32 42 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"nfs3_regaccess\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 619, i32 25 }
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"nfs3_diraccess\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 634, i32 25 }
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"nfs3_anyaccess\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 650, i32 25 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1248, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1306, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [19 x i8] c"../fs/nfsd/nfsfh.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 363, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 45, i32 7 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 695, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 723, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [19 x i8] c"../fs/nfsd/trace.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 450, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 108, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [9 x i8] c"last_ino\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 952, i32 15 }
@___asan_gen_.109 = private unnamed_addr constant [9 x i8] c"last_dev\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 953, i32 15 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 958, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 960, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [17 x i8] c"../fs/nfsd/vfs.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 964, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @fh_lock_nested._entry, ptr @fh_lock_nested._entry_ptr, ptr @nfsd_create_locked._entry, ptr @nfsd_create_locked._entry_ptr, ptr @nfsd_lookup_dentry._entry, ptr @nfsd_lookup_dentry._entry_ptr, ptr @wait_for_concurrent_writes._entry, ptr @wait_for_concurrent_writes._entry.19, ptr @wait_for_concurrent_writes._entry.22, ptr @wait_for_concurrent_writes._entry_ptr, ptr @wait_for_concurrent_writes._entry_ptr.21, ptr @wait_for_concurrent_writes._entry_ptr.24, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @nfs3_regaccess, ptr @nfs3_diraccess, ptr @nfs3_anyaccess, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @wait_for_concurrent_writes.last_ino, ptr @wait_for_concurrent_writes.last_dev, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_lookup_dentry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_regaccess to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_diraccess to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_anyaccess to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_create_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fh_lock_nested._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_concurrent_writes.last_ino to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_concurrent_writes.last_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_concurrent_writes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_concurrent_writes._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_concurrent_writes._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_cross_mnt(ptr noundef %rqstp, ptr nocapture noundef %dpp, ptr nocapture noundef %expp) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %expp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %expp, align 4
  %2 = ptrtoint ptr %dpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #12
  %4 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %ex_path = getelementptr inbounds %struct.svc_export, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %ex_path to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ex_path, align 8
  %call = tail call ptr @mntget(ptr noundef %6) #12
  %7 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %path, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.dget.exit_crit_edge, label %if.then.i

entry.dget.exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dget.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #12
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %entry.dget.exit_crit_edge
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %4, align 4
  %call4 = call i32 @follow_down(ptr noundef nonnull %path) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %dget.exit.out_crit_edge, label %if.end

dget.exit.out_crit_edge:                          ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %dget.exit
  %9 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %path, align 4
  %11 = ptrtoint ptr %ex_path to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ex_path, align 8
  %cmp8 = icmp eq ptr %10, %12
  br i1 %cmp8, label %land.lhs.true, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 4
  %cmp10 = icmp eq ptr %14, %3
  br i1 %cmp10, label %land.lhs.true11, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true11:                                  ; preds = %land.lhs.true
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i.i, align 8
  %tobool.not.i55 = icmp eq ptr %16, null
  br i1 %tobool.not.i55, label %land.lhs.true11.if.end15_crit_edge, label %if.end.i

land.lhs.true11.if.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end.i:                                         ; preds = %land.lhs.true11
  %ex_flags.i = getelementptr inbounds %struct.svc_export, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %ex_flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ex_flags.i, align 4
  %and.i = and i32 %18, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.i, label %if.end.i.if.end15_crit_edge

if.end.i.if.end15_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end.i.i:                                       ; preds = %if.end.i
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %16, align 8
  %21 = and i16 %20, 585
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %21)
  %.not.i.i = icmp eq i16 %21, 512
  br i1 %.not.i.i, label %nfsd4_is_junction.exit.i, label %if.end.i.i.nfsd_mountpoint.exit_crit_edge

if.end.i.i.nfsd_mountpoint.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsd_mountpoint.exit

nfsd4_is_junction.exit.i:                         ; preds = %if.end.i.i
  %call9.i.i = call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i.i)
  %cmp10.i.i = icmp slt i32 %call9.i.i, 1
  br i1 %cmp10.i.i, label %nfsd4_is_junction.exit.i.nfsd_mountpoint.exit_crit_edge, label %nfsd4_is_junction.exit.i.if.end15_crit_edge

nfsd4_is_junction.exit.i.if.end15_crit_edge:      ; preds = %nfsd4_is_junction.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

nfsd4_is_junction.exit.i.nfsd_mountpoint.exit_crit_edge: ; preds = %nfsd4_is_junction.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsd_mountpoint.exit

nfsd_mountpoint.exit:                             ; preds = %nfsd4_is_junction.exit.i.nfsd_mountpoint.exit_crit_edge, %if.end.i.i.nfsd_mountpoint.exit_crit_edge
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 8
  %24 = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp13.not = icmp eq i32 %24, 0
  br i1 %cmp13.not, label %nfsd_mountpoint.exit.if.end15_crit_edge, label %if.then14

nfsd_mountpoint.exit.if.end15_crit_edge:          ; preds = %nfsd_mountpoint.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then14:                                        ; preds = %nfsd_mountpoint.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @path_put(ptr noundef nonnull %path) #12
  br label %out

if.end15:                                         ; preds = %nfsd_mountpoint.exit.if.end15_crit_edge, %nfsd4_is_junction.exit.i.if.end15_crit_edge, %if.end.i.if.end15_crit_edge, %land.lhs.true11.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %call16 = call ptr @rqst_exp_get_by_name(ptr noundef %rqstp, ptr noundef nonnull %path) #12
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end24

if.then18:                                        ; preds = %if.end15
  %25 = ptrtoint ptr %call16 to i32
  %cmp20 = icmp eq ptr %call16, inttoptr (i32 -2 to ptr)
  br i1 %cmp20, label %land.lhs.true21, label %if.then18.if.end23_crit_edge

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true21:                                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %ex_flags = getelementptr inbounds %struct.svc_export, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %ex_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ex_flags, align 4
  %and = and i32 %27, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -2
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true21, %if.then18.if.end23_crit_edge
  %err.0 = phi i32 [ %25, %if.then18.if.end23_crit_edge ], [ %spec.select, %land.lhs.true21 ]
  call void @path_put(ptr noundef nonnull %path) #12
  br label %out

if.end24:                                         ; preds = %if.end15
  %rq_prog.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 28
  %28 = ptrtoint ptr %rq_prog.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rq_prog.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100003, i32 %29)
  %cmp.i56 = icmp eq i32 %29, 100003
  br i1 %cmp.i56, label %nfsd_v4client.exit, label %if.end24.lor.lhs.false_crit_edge

if.end24.lor.lhs.false_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

nfsd_v4client.exit:                               ; preds = %if.end24
  %rq_vers.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %30 = ptrtoint ptr %rq_vers.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rq_vers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp1.i.not = icmp eq i32 %31, 4
  br i1 %cmp1.i.not, label %nfsd_v4client.exit.if.then34_crit_edge, label %nfsd_v4client.exit.lor.lhs.false_crit_edge

nfsd_v4client.exit.lor.lhs.false_crit_edge:       ; preds = %nfsd_v4client.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

nfsd_v4client.exit.if.then34_crit_edge:           ; preds = %nfsd_v4client.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34

lor.lhs.false:                                    ; preds = %nfsd_v4client.exit.lor.lhs.false_crit_edge, %if.end24.lor.lhs.false_crit_edge
  %ex_flags27 = getelementptr inbounds %struct.svc_export, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %ex_flags27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ex_flags27, align 4
  %and28 = and i32 %33, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %lor.lhs.false30, label %lor.lhs.false.if.then34_crit_edge

lor.lhs.false.if.then34_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34

lor.lhs.false30:                                  ; preds = %lor.lhs.false
  %ex_flags31 = getelementptr inbounds %struct.svc_export, ptr %call16, i32 0, i32 2
  %34 = ptrtoint ptr %ex_flags31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ex_flags31, align 4
  %and32 = and i32 %35, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %lor.lhs.false30.if.end37_crit_edge, label %lor.lhs.false30.if.then34_crit_edge

lor.lhs.false30.if.then34_crit_edge:              ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34

lor.lhs.false30.if.end37_crit_edge:               ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then34:                                        ; preds = %lor.lhs.false30.if.then34_crit_edge, %lor.lhs.false.if.then34_crit_edge, %nfsd_v4client.exit.if.then34_crit_edge
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %4, align 4
  %38 = ptrtoint ptr %dpp to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %dpp, align 4
  store ptr %3, ptr %4, align 4
  %39 = ptrtoint ptr %expp to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call16, ptr %expp, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %lor.lhs.false30.if.end37_crit_edge
  %exp2.0 = phi ptr [ %1, %if.then34 ], [ %call16, %lor.lhs.false30.if.end37_crit_edge ]
  call void @path_put(ptr noundef nonnull %path) #12
  %cd.i = getelementptr inbounds %struct.svc_export, ptr %exp2.0, i32 0, i32 13
  %40 = ptrtoint ptr %cd.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cd.i, align 8
  %ref.i.i = getelementptr inbounds %struct.cache_head, ptr %exp2.0, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i, i32 noundef 4) #12
  %42 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %ref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp.i.i = icmp ult i32 %43, 3
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end37.if.end.i.i57_crit_edge

if.end37.if.end.i.i57_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i57

land.lhs.true.i.i:                                ; preds = %if.end37
  %expiry_time.i.i = getelementptr inbounds %struct.cache_head, ptr %exp2.0, i32 0, i32 1
  %44 = ptrtoint ptr %expiry_time.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %expiry_time.i.i, align 8
  %nextcheck.i.i = getelementptr inbounds %struct.cache_detail, ptr %41, i32 0, i32 18
  %46 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %nextcheck.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %47)
  %cmp1.i.i = icmp slt i64 %45, %47
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i57_crit_edge

land.lhs.true.i.i.if.end.i.i57_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i57

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %45, ptr %nextcheck.i.i, align 8
  br label %if.end.i.i57

if.end.i.i57:                                     ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i57_crit_edge, %if.end37.if.end.i.i57_crit_edge
  %cache_put.i.i = getelementptr inbounds %struct.cache_detail, ptr %41, i32 0, i32 5
  %49 = ptrtoint ptr %cache_put.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cache_put.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !118
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #12
  %51 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #12, !srcloc !119
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !120

if.end5.i.i.i.i.i.i.out_crit_edge:                ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #12
  br label %out

if.then.i.i.i:                                    ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !121
  call void %50(ptr noundef %ref.i.i) #12
  br label %out

out:                                              ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.out_crit_edge, %if.end23, %if.then14, %dget.exit.out_crit_edge
  %err.1 = phi i32 [ %call4, %dget.exit.out_crit_edge ], [ %call4, %if.then14 ], [ %err.0, %if.end23 ], [ %call4, %if.end5.i.i.i.i.i.i.out_crit_edge ], [ %call4, %if.then10.i.i.i.i.i.i ], [ %call4, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #12
  ret i32 %err.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mntget(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @follow_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_mountpoint(ptr noundef %dentry, ptr nocapture noundef readonly %exp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %ex_flags = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 2
  %2 = ptrtoint ptr %ex_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ex_flags, align 4
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i:                                         ; preds = %if.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 8
  %6 = and i16 %5, 585
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %6)
  %.not.i = icmp eq i16 %6, 512
  br i1 %.not.i, label %nfsd4_is_junction.exit, label %if.end.i.if.end7_crit_edge

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

nfsd4_is_junction.exit:                           ; preds = %if.end.i
  %call9.i = tail call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 1
  br i1 %cmp10.i, label %nfsd4_is_junction.exit.if.end7_crit_edge, label %nfsd4_is_junction.exit.return_crit_edge

nfsd4_is_junction.exit.return_crit_edge:          ; preds = %nfsd4_is_junction.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

nfsd4_is_junction.exit.if.end7_crit_edge:         ; preds = %nfsd4_is_junction.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end7:                                          ; preds = %nfsd4_is_junction.exit.if.end7_crit_edge, %if.end.i.if.end7_crit_edge
  %7 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dentry, align 8
  %and.i = lshr i32 %8, 15
  %9 = and i32 %and.i, 2
  br label %return

return:                                           ; preds = %if.end7, %nfsd4_is_junction.exit.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %if.end.return_crit_edge ], [ 1, %nfsd4_is_junction.exit.return_crit_edge ], [ %9, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rqst_exp_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_is_junction(ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, 585
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %4)
  %.not = icmp eq i16 %4, 512
  br i1 %.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp sgt i32 %call9, 0
  %. = zext i1 %cmp10 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %., %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_lookup_dentry(ptr noundef %rqstp, ptr noundef %fhp, ptr noundef %name, i32 noundef %len, ptr nocapture noundef writeonly %exp_ret, ptr nocapture noundef writeonly %dentry_ret) local_unnamed_addr #0 align 64 {
entry:
  %exp = alloca ptr, align 4
  %dentry = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %exp) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dentry) #12
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dentry, align 4, !annotation !122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %1 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call ptr @SVCFH_fmt(ptr noundef %fhp) #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %call, i32 noundef %len, ptr noundef %name) #15
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %2 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fh_dentry, align 8
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %4 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fh_export, align 4
  %ref.i.i = getelementptr inbounds %struct.cache_head, ptr %5, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #12, !srcloc !123
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %do.end4.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !124

do.end4.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %do.end4
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.exp_get.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !120

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.exp_get.exit_crit_edge:       ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exp_get.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %do.end4.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %do.end4.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #12
  br label %exp_get.exit

exp_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.exp_get.exit_crit_edge
  %8 = ptrtoint ptr %exp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %exp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp = icmp ult i32 %len, 3
  br i1 %cmp, label %land.lhs.true, label %exp_get.exit.if.else41_crit_edge

exp_get.exit.if.else41_crit_edge:                 ; preds = %exp_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else41

land.lhs.true:                                    ; preds = %exp_get.exit
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %10)
  %cmp6 = icmp eq i8 %10, 46
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true.if.else41_crit_edge

land.lhs.true.if.else41_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else41

land.lhs.true8:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp9 = icmp eq i32 %len, 1
  br i1 %cmp9, label %if.then18.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true8
  %arrayidx11 = getelementptr i8, ptr %name, i32 1
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %12)
  %cmp13 = icmp eq i8 %12, 46
  br i1 %cmp13, label %if.else, label %lor.lhs.false.if.else41_crit_edge

lor.lhs.false.if.else41_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else41

if.then18.critedge:                               ; preds = %land.lhs.true8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then18.critedge.dget.exit_crit_edge, label %if.then.i

if.then18.critedge.dget.exit_crit_edge:           ; preds = %if.then18.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %dget.exit

if.then.i:                                        ; preds = %if.then18.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #12
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.then18.critedge.dget.exit_crit_edge
  %13 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %dentry, align 4
  br label %if.end55

if.else:                                          ; preds = %lor.lhs.false
  %dentry20 = getelementptr inbounds %struct.svc_export, ptr %5, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %dentry20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dentry20, align 4
  %cmp21.not = icmp eq ptr %3, %15
  br i1 %cmp21.not, label %if.else25, label %if.then23

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call24 = tail call ptr @dget_parent(ptr noundef %3) #12
  %16 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call24, ptr %dentry, align 4
  br label %if.end55

if.else25:                                        ; preds = %if.else
  %ex_flags = getelementptr inbounds %struct.svc_export, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %ex_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ex_flags, align 4
  %and26 = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %if.else25.if.else33_crit_edge

if.else25.if.else33_crit_edge:                    ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else33

land.lhs.true28:                                  ; preds = %if.else25
  %rq_prog.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 28
  %19 = ptrtoint ptr %rq_prog.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rq_prog.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100003, i32 %20)
  %cmp.i = icmp eq i32 %20, 100003
  br i1 %cmp.i, label %nfsd_v4client.exit, label %land.lhs.true28.if.then31_crit_edge

land.lhs.true28.if.then31_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

nfsd_v4client.exit:                               ; preds = %land.lhs.true28
  %rq_vers.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %21 = ptrtoint ptr %rq_vers.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rq_vers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp1.i.not = icmp eq i32 %22, 4
  br i1 %cmp1.i.not, label %nfsd_v4client.exit.if.else33_crit_edge, label %nfsd_v4client.exit.if.then31_crit_edge

nfsd_v4client.exit.if.then31_crit_edge:           ; preds = %nfsd_v4client.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

nfsd_v4client.exit.if.else33_crit_edge:           ; preds = %nfsd_v4client.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else33

if.then31:                                        ; preds = %nfsd_v4client.exit.if.then31_crit_edge, %land.lhs.true28.if.then31_crit_edge
  %tobool.not.i79 = icmp eq ptr %3, null
  br i1 %tobool.not.i79, label %if.then31.dget.exit82_crit_edge, label %if.then.i81

if.then31.dget.exit82_crit_edge:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %dget.exit82

if.then.i81:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i80 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i80) #12
  br label %dget.exit82

dget.exit82:                                      ; preds = %if.then.i81, %if.then31.dget.exit82_crit_edge
  %23 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %3, ptr %dentry, align 4
  br label %if.end55

if.else33:                                        ; preds = %nfsd_v4client.exit.if.else33_crit_edge, %if.else25.if.else33_crit_edge
  %call34 = call fastcc i32 @nfsd_lookup_parent(ptr noundef %rqstp, ptr noundef %3, ptr noundef nonnull %exp, ptr noundef nonnull %dentry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.else33.if.end55_crit_edge, label %if.else33.out_nfserr_crit_edge

if.else33.out_nfserr_crit_edge:                   ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_nfserr

if.else33.if.end55_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.else41:                                        ; preds = %lor.lhs.false.if.else41_crit_edge, %land.lhs.true.if.else41_crit_edge, %exp_get.exit.if.else41_crit_edge
  %24 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fh_dentry, align 8
  %tobool.not.i83 = icmp eq ptr %25, null
  br i1 %tobool.not.i83, label %do.body4.i, label %do.end9.i, !prof !124

do.body4.i:                                       ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfsfh.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 360, 0\0A.popsection", ""() #12, !srcloc !125
  unreachable

do.end9.i:                                        ; preds = %if.else41
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 4
  %26 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fh_locked.i, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool10.not.i = icmp eq i8 %27, 0
  br i1 %tobool10.not.i, label %if.end15.i, label %do.end14.i

do.end14.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %25) #15
  br label %fh_lock_nested.exit

if.end15.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 5
  %28 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 1) #12
  tail call void @fh_fill_pre_attrs(ptr noundef %fhp) #12
  %30 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %fh_locked.i, align 8
  br label %fh_lock_nested.exit

fh_lock_nested.exit:                              ; preds = %if.end15.i, %do.end14.i
  %call42 = tail call ptr @lookup_one_len(ptr noundef %name, ptr noundef %3, i32 noundef %len) #12
  %31 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call42, ptr %dentry, align 4
  %32 = ptrtoint ptr %call42 to i32
  %cmp.i84 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84, label %fh_lock_nested.exit.out_nfserr_crit_edge, label %if.end46

fh_lock_nested.exit.out_nfserr_crit_edge:         ; preds = %fh_lock_nested.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_nfserr

if.end46:                                         ; preds = %fh_lock_nested.exit
  %d_inode.i.i85 = getelementptr inbounds %struct.dentry, ptr %call42, i32 0, i32 5
  %33 = ptrtoint ptr %d_inode.i.i85 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_inode.i.i85, align 8
  %tobool.not.i86 = icmp eq ptr %34, null
  br i1 %tobool.not.i86, label %if.end46.if.end55_crit_edge, label %if.end.i

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.end.i:                                         ; preds = %if.end46
  %ex_flags.i = getelementptr inbounds %struct.svc_export, ptr %5, i32 0, i32 2
  %35 = ptrtoint ptr %ex_flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ex_flags.i, align 4
  %and.i = and i32 %36, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.i, label %if.end.i.if.then49_crit_edge

if.end.i.if.then49_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then49

if.end.i.i:                                       ; preds = %if.end.i
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %34, align 8
  %39 = and i16 %38, 585
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %39)
  %.not.i.i = icmp eq i16 %39, 512
  br i1 %.not.i.i, label %nfsd4_is_junction.exit.i, label %if.end.i.i.nfsd_mountpoint.exit_crit_edge

if.end.i.i.nfsd_mountpoint.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsd_mountpoint.exit

nfsd4_is_junction.exit.i:                         ; preds = %if.end.i.i
  %call9.i.i = tail call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %call42, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i.i)
  %cmp10.i.i = icmp slt i32 %call9.i.i, 1
  br i1 %cmp10.i.i, label %nfsd4_is_junction.exit.i.nfsd_mountpoint.exit_crit_edge, label %nfsd4_is_junction.exit.i.if.then49_crit_edge

nfsd4_is_junction.exit.i.if.then49_crit_edge:     ; preds = %nfsd4_is_junction.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then49

nfsd4_is_junction.exit.i.nfsd_mountpoint.exit_crit_edge: ; preds = %nfsd4_is_junction.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsd_mountpoint.exit

nfsd_mountpoint.exit:                             ; preds = %nfsd4_is_junction.exit.i.nfsd_mountpoint.exit_crit_edge, %if.end.i.i.nfsd_mountpoint.exit_crit_edge
  %40 = ptrtoint ptr %call42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %call42, align 8
  %42 = and i32 %41, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool48.not = icmp eq i32 %42, 0
  br i1 %tobool48.not, label %nfsd_mountpoint.exit.if.end55_crit_edge, label %nfsd_mountpoint.exit.if.then49_crit_edge

nfsd_mountpoint.exit.if.then49_crit_edge:         ; preds = %nfsd_mountpoint.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then49

nfsd_mountpoint.exit.if.end55_crit_edge:          ; preds = %nfsd_mountpoint.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then49:                                        ; preds = %nfsd_mountpoint.exit.if.then49_crit_edge, %nfsd4_is_junction.exit.i.if.then49_crit_edge, %if.end.i.if.then49_crit_edge
  %43 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %fh_locked.i, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i88 = icmp eq i8 %44, 0
  br i1 %tobool.not.i88, label %if.then49.fh_unlock.exit_crit_edge, label %if.then.i92

if.then49.fh_unlock.exit_crit_edge:               ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  br label %fh_unlock.exit

if.then.i92:                                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fh_fill_post_attrs(ptr noundef %fhp) #12
  %45 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i.i90 = getelementptr inbounds %struct.dentry, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %d_inode.i.i90 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %d_inode.i.i90, align 8
  %i_rwsem.i.i91 = getelementptr inbounds %struct.inode, ptr %48, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i.i91) #12
  %49 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %fh_locked.i, align 8
  br label %fh_unlock.exit

fh_unlock.exit:                                   ; preds = %if.then.i92, %if.then49.fh_unlock.exit_crit_edge
  %call50 = call i32 @nfsd_cross_mnt(ptr noundef %rqstp, ptr noundef nonnull %dentry, ptr noundef nonnull %exp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %fh_unlock.exit.if.end55_crit_edge, label %if.then52

fh_unlock.exit.if.end55_crit_edge:                ; preds = %fh_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then52:                                        ; preds = %fh_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dentry, align 4
  tail call void @dput(ptr noundef %51) #12
  br label %out_nfserr

if.end55:                                         ; preds = %fh_unlock.exit.if.end55_crit_edge, %nfsd_mountpoint.exit.if.end55_crit_edge, %if.end46.if.end55_crit_edge, %if.else33.if.end55_crit_edge, %dget.exit82, %if.then23, %dget.exit
  %52 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dentry, align 4
  %54 = ptrtoint ptr %dentry_ret to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %dentry_ret, align 4
  %55 = ptrtoint ptr %exp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %exp, align 4
  %57 = ptrtoint ptr %exp_ret to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %exp_ret, align 4
  br label %cleanup

out_nfserr:                                       ; preds = %if.then52, %fh_lock_nested.exit.out_nfserr_crit_edge, %if.else33.out_nfserr_crit_edge
  %host_err.0 = phi i32 [ %call34, %if.else33.out_nfserr_crit_edge ], [ %32, %fh_lock_nested.exit.out_nfserr_crit_edge ], [ %call50, %if.then52 ]
  %58 = ptrtoint ptr %exp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %exp, align 4
  %cd.i = getelementptr inbounds %struct.svc_export, ptr %59, i32 0, i32 13
  %60 = ptrtoint ptr %cd.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cd.i, align 8
  %ref.i.i94 = getelementptr inbounds %struct.cache_head, ptr %59, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i94, i32 noundef 4) #12
  %62 = ptrtoint ptr %ref.i.i94 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %ref.i.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %cmp.i.i = icmp ult i32 %63, 3
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %out_nfserr.if.end.i.i96_crit_edge

out_nfserr.if.end.i.i96_crit_edge:                ; preds = %out_nfserr
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i96

land.lhs.true.i.i:                                ; preds = %out_nfserr
  %expiry_time.i.i = getelementptr inbounds %struct.cache_head, ptr %59, i32 0, i32 1
  %64 = ptrtoint ptr %expiry_time.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %expiry_time.i.i, align 8
  %nextcheck.i.i = getelementptr inbounds %struct.cache_detail, ptr %61, i32 0, i32 18
  %66 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %nextcheck.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %65, i64 %67)
  %cmp1.i.i = icmp slt i64 %65, %67
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i96_crit_edge

land.lhs.true.i.i.if.end.i.i96_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i96

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %65, ptr %nextcheck.i.i, align 8
  br label %if.end.i.i96

if.end.i.i96:                                     ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i96_crit_edge, %out_nfserr.if.end.i.i96_crit_edge
  %cache_put.i.i = getelementptr inbounds %struct.cache_detail, ptr %61, i32 0, i32 5
  %69 = ptrtoint ptr %cache_put.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cache_put.i.i, align 4
  %call.i.i.i.i.i.i.i.i95 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i94, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !118
  tail call void @llvm.prefetch.p0(ptr %ref.i.i94, i32 1, i32 3, i32 1) #12
  %71 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i94, ptr %ref.i.i94, i32 1, ptr elementtype(i32) %ref.i.i94) #12, !srcloc !119
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i97 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i97, label %if.end5.i.i.i.i.i.i.exp_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !120

if.end5.i.i.i.i.i.i.exp_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exp_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i94, i32 noundef 3) #12
  br label %exp_put.exit

if.then.i.i.i:                                    ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !121
  tail call void %70(ptr noundef %ref.i.i94) #12
  br label %exp_put.exit

exp_put.exit:                                     ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.exp_put.exit_crit_edge
  %call56 = tail call i32 @nfserrno(i32 noundef %host_err.0) #12
  br label %cleanup

cleanup:                                          ; preds = %exp_put.exit, %if.end55
  %retval.0 = phi i32 [ 0, %if.end55 ], [ %call56, %exp_put.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dentry) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %exp) #12
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @SVCFH_fmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfsd_lookup_parent(ptr noundef %rqstp, ptr noundef %dparent, ptr nocapture noundef %exp, ptr nocapture noundef writeonly %dentryp) unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #12
  %0 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %1 = ptrtoint ptr %exp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %exp, align 4
  %ex_path = getelementptr inbounds %struct.svc_export, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %ex_path to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ex_path, align 8
  %call = tail call ptr @mntget(ptr noundef %4) #12
  %5 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %path, align 4
  %tobool.not.i = icmp eq ptr %dparent, null
  br i1 %tobool.not.i, label %entry.dget.exit_crit_edge, label %if.then.i

entry.dget.exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dget.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dparent, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #12
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %entry.dget.exit_crit_edge
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dparent, ptr %0, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %dget.exit
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 4
  %9 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %path, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %cmp.i = icmp eq ptr %8, %12
  br i1 %cmp.i, label %land.rhs.i, label %while.cond.i.follow_to_parent.exit_crit_edge

while.cond.i.follow_to_parent.exit_crit_edge:     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %follow_to_parent.exit

land.rhs.i:                                       ; preds = %while.cond.i
  %call.i = call i32 @follow_up(ptr noundef nonnull %path) #12
  %tobool.not.i21 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i21, label %land.rhs.i.follow_to_parent.exit_crit_edge, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

land.rhs.i.follow_to_parent.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %follow_to_parent.exit

follow_to_parent.exit:                            ; preds = %land.rhs.i.follow_to_parent.exit_crit_edge, %while.cond.i.follow_to_parent.exit_crit_edge
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %0, align 4
  %call2.i = call ptr @dget_parent(ptr noundef %14) #12
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  call void @dput(ptr noundef %16) #12
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call2.i, ptr %0, align 4
  %call3 = call ptr @rqst_exp_parent(ptr noundef %rqstp, ptr noundef nonnull %path) #12
  %cmp = icmp eq ptr %call3, inttoptr (i32 -2 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %follow_to_parent.exit
  br i1 %tobool.not.i, label %if.then.dget.exit25_crit_edge, label %if.then.i24

if.then.dget.exit25_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %dget.exit25

if.then.i24:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i23 = getelementptr inbounds %struct.dentry, ptr %dparent, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i23) #12
  br label %dget.exit25

dget.exit25:                                      ; preds = %if.then.i24, %if.then.dget.exit25_crit_edge
  %18 = ptrtoint ptr %dentryp to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dparent, ptr %dentryp, align 4
  br label %cleanup

if.else:                                          ; preds = %follow_to_parent.exit
  %19 = ptrtoint ptr %call3 to i32
  %cmp.i26 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26, label %if.else.cleanup_crit_edge, label %if.else9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else9:                                         ; preds = %if.else
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %0, align 4
  %tobool.not.i27 = icmp eq ptr %21, null
  br i1 %tobool.not.i27, label %if.else9.dget.exit30_crit_edge, label %if.then.i29

if.else9.dget.exit30_crit_edge:                   ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #14
  br label %dget.exit30

if.then.i29:                                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i28 = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i28) #12
  br label %dget.exit30

dget.exit30:                                      ; preds = %if.then.i29, %if.else9.dget.exit30_crit_edge
  %22 = ptrtoint ptr %dentryp to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %dentryp, align 4
  %23 = ptrtoint ptr %exp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %exp, align 4
  %cd.i = getelementptr inbounds %struct.svc_export, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %cd.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cd.i, align 8
  %ref.i.i = getelementptr inbounds %struct.cache_head, ptr %24, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i, i32 noundef 4) #12
  %27 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %ref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp.i.i = icmp ult i32 %28, 3
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %dget.exit30.if.end.i.i_crit_edge

dget.exit30.if.end.i.i_crit_edge:                 ; preds = %dget.exit30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %dget.exit30
  %expiry_time.i.i = getelementptr inbounds %struct.cache_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %expiry_time.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %expiry_time.i.i, align 8
  %nextcheck.i.i = getelementptr inbounds %struct.cache_detail, ptr %26, i32 0, i32 18
  %31 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %nextcheck.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %32)
  %cmp1.i.i = icmp slt i64 %30, %32
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %30, ptr %nextcheck.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %dget.exit30.if.end.i.i_crit_edge
  %cache_put.i.i = getelementptr inbounds %struct.cache_detail, ptr %26, i32 0, i32 5
  %34 = ptrtoint ptr %cache_put.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cache_put.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !118
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #12
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #12, !srcloc !119
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.exp_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !120

if.end5.i.i.i.i.i.i.exp_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exp_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #12
  br label %exp_put.exit

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !121
  call void %35(ptr noundef %ref.i.i) #12
  br label %exp_put.exit

exp_put.exit:                                     ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.exp_put.exit_crit_edge
  %37 = ptrtoint ptr %exp to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call3, ptr %exp, align 4
  br label %cleanup

cleanup:                                          ; preds = %exp_put.exit, %if.else.cleanup_crit_edge, %dget.exit25
  %retval.0 = phi i32 [ %19, %if.else.cleanup_crit_edge ], [ 0, %exp_put.exit ], [ 0, %dget.exit25 ]
  call void @path_put(ptr noundef nonnull %path) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fh_lock_nested(ptr noundef %fhp, i32 noundef %subclass) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %0 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_dentry, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !124

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfsfh.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 360, 0\0A.popsection", ""() #12, !srcloc !125
  unreachable

do.end9:                                          ; preds = %entry
  %fh_locked = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 4
  %2 = ptrtoint ptr %fh_locked to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fh_locked, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool10.not = icmp eq i8 %3, 0
  br i1 %tobool10.not, label %if.end15, label %do.end14

do.end14:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %1) #15
  br label %cleanup

if.end15:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef %subclass) #12
  tail call void @fh_fill_pre_attrs(ptr noundef %fhp) #12
  %6 = ptrtoint ptr %fh_locked to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %fh_locked, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fh_unlock(ptr noundef %fhp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %fh_locked = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 4
  %0 = ptrtoint ptr %fh_locked to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fh_locked, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fh_fill_post_attrs(ptr noundef %fhp) #12
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %2 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i) #12
  %6 = ptrtoint ptr %fh_locked to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %fh_locked, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfserrno(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_lookup(ptr noundef %rqstp, ptr noundef %fhp, ptr noundef %name, i32 noundef %len, ptr noundef %resfh) local_unnamed_addr #0 align 64 {
entry:
  %exp = alloca ptr, align 4
  %dentry = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %exp) #12
  %0 = ptrtoint ptr %exp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %exp, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dentry) #12
  %1 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %dentry, align 4, !annotation !122
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext 16384, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @nfsd_lookup_dentry(ptr noundef %rqstp, ptr noundef %fhp, ptr noundef %name, i32 noundef %len, ptr noundef nonnull %exp, ptr noundef nonnull %dentry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %exp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %exp, align 4
  %call5 = tail call i32 @check_nfsd_access(ptr noundef %3, ptr noundef %rqstp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end8:                                          ; preds = %if.end4
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry, align 4
  %call9 = tail call i32 @fh_compose(ptr noundef %resfh, ptr noundef %3, ptr noundef %5, ptr noundef %fhp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %cmp.i = icmp eq ptr %7, null
  %spec.select = select i1 %cmp.i, i32 2, i32 0
  br label %out

out:                                              ; preds = %land.lhs.true, %if.end8.out_crit_edge, %if.end4.out_crit_edge
  %err.0 = phi i32 [ %call5, %if.end4.out_crit_edge ], [ %call9, %if.end8.out_crit_edge ], [ %spec.select, %land.lhs.true ]
  %8 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dentry, align 4
  tail call void @dput(ptr noundef %9) #12
  %cd.i = getelementptr inbounds %struct.svc_export, ptr %3, i32 0, i32 13
  %10 = ptrtoint ptr %cd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cd.i, align 8
  %ref.i.i = getelementptr inbounds %struct.cache_head, ptr %3, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i, i32 noundef 4) #12
  %12 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %ref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i.i = icmp ult i32 %13, 3
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %out.if.end.i.i_crit_edge

out.if.end.i.i_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %out
  %expiry_time.i.i = getelementptr inbounds %struct.cache_head, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %expiry_time.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %expiry_time.i.i, align 8
  %nextcheck.i.i = getelementptr inbounds %struct.cache_detail, ptr %11, i32 0, i32 18
  %16 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %nextcheck.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %17)
  %cmp1.i.i = icmp slt i64 %15, %17
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %15, ptr %nextcheck.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %out.if.end.i.i_crit_edge
  %cache_put.i.i = getelementptr inbounds %struct.cache_detail, ptr %11, i32 0, i32 5
  %19 = ptrtoint ptr %cache_put.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cache_put.i.i, align 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !118
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #12
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #12, !srcloc !119
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !120

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !121
  tail call void %20(ptr noundef %ref.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %err.0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i.i.i ], [ %err.0, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dentry) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %exp) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fh_verify(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_nfsd_access(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fh_compose(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_setattr(ptr noundef %rqstp, ptr noundef %fhp, ptr noundef %iap, i32 noundef %check_guard, i64 noundef %guardtime) local_unnamed_addr #0 align 64 {
entry:
  %size_attr = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iap, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 8, i32 74
  %2 = trunc i32 %and to i16
  %3 = shl nuw i16 %2, 12
  %and5 = and i32 %1, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or8 = or i32 %spec.select, 64
  %and10 = and i32 %1, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %spec.select131 = select i1 %tobool11.not, i32 74, i32 %or8
  %accmode.1 = select i1 %tobool6.not, i32 %spec.select, i32 %spec.select131
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %4 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fh_dentry, align 8
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext %3, i32 noundef %accmode.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %if.end20, label %entry.cleanup85_crit_edge

entry.cleanup85_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup85

if.end20:                                         ; preds = %entry
  %tobool16.not = icmp eq ptr %5, null
  br i1 %tobool16.not, label %if.then22, label %if.end20.if.end27_crit_edge

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then22:                                        ; preds = %if.end20
  %fh_want_write.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 5
  %6 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fh_want_write.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then22.if.end27_crit_edge

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.end.i:                                         ; preds = %if.then22
  %fh_export.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %8 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ex_path.i, align 8
  %call.i = tail call i32 @mnt_want_write(ptr noundef %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.if.end83_crit_edge

if.end.i.if.end83_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %fh_want_write.i, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then2.i, %if.then22.if.end27_crit_edge, %if.end20.if.end27_crit_edge
  %13 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %16, align 8
  %19 = and i16 %18, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %19)
  %cmp = icmp eq i16 %19, -24576
  %20 = ptrtoint ptr %iap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iap, align 8
  br i1 %cmp, label %if.then32, label %if.end27.if.end35_crit_edge

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %and34 = and i32 %21, -2
  %22 = ptrtoint ptr %iap to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and34, ptr %iap, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end27.if.end35_crit_edge
  %23 = phi i32 [ %and34, %if.then32 ], [ %21, %if.end27.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool37.not = icmp eq i32 %23, 0
  br i1 %tobool37.not, label %if.end35.cleanup85_crit_edge, label %if.end39

if.end35.cleanup85_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup85

if.end39:                                         ; preds = %if.end35
  %and.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i132 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i132, label %if.end39.if.end.i133_crit_edge, label %if.then.i

if.end39.if.end.i133_crit_edge:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i133

if.then.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %ia_mode.i = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 1
  %24 = ptrtoint ptr %ia_mode.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ia_mode.i, align 4
  %26 = and i16 %25, 4095
  store i16 %26, ptr %ia_mode.i, align 4
  %27 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %16, align 8
  %29 = and i16 %28, -4096
  %or54.i = or i16 %29, %26
  store i16 %or54.i, ptr %ia_mode.i, align 4
  br label %if.end.i133

if.end.i133:                                      ; preds = %if.then.i, %if.end39.if.end.i133_crit_edge
  %30 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %16, align 8
  %32 = and i16 %31, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %32)
  %cmp.i = icmp eq i16 %32, 16384
  %33 = and i32 %23, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %34 = icmp eq i32 %33, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %34
  br i1 %or.cond.i, label %if.end.i133.nfsd_sanitize_attrs.exit_crit_edge, label %if.then18.i

if.end.i133.nfsd_sanitize_attrs.exit_crit_edge:   ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsd_sanitize_attrs.exit

if.then18.i:                                      ; preds = %if.end.i133
  %or20.i = or i32 %23, 16384
  %35 = ptrtoint ptr %iap to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or20.i, ptr %iap, align 8
  br i1 %tobool.not.i132, label %if.else.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.then18.i
  %ia_mode25.i = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 1
  %36 = ptrtoint ptr %ia_mode25.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ia_mode25.i, align 4
  %38 = and i16 %37, -2049
  store i16 %38, ptr %ia_mode25.i, align 4
  %39 = and i16 %37, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool32.not.i = icmp eq i16 %39, 0
  br i1 %tobool32.not.i, label %if.then24.i.nfsd_sanitize_attrs.exit_crit_edge, label %if.then33.i

if.then24.i.nfsd_sanitize_attrs.exit_crit_edge:   ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsd_sanitize_attrs.exit

if.then33.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  %and36.i = and i16 %37, -3073
  %40 = ptrtoint ptr %ia_mode25.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %and36.i, ptr %ia_mode25.i, align 4
  br label %nfsd_sanitize_attrs.exit

if.else.i:                                        ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  %or40.i = or i32 %23, 22528
  %41 = ptrtoint ptr %iap to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or40.i, ptr %iap, align 8
  br label %nfsd_sanitize_attrs.exit

nfsd_sanitize_attrs.exit:                         ; preds = %if.else.i, %if.then33.i, %if.then24.i.nfsd_sanitize_attrs.exit_crit_edge, %if.end.i133.nfsd_sanitize_attrs.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_guard)
  %tobool40.not = icmp eq i32 %check_guard, 0
  br i1 %tobool40.not, label %nfsd_sanitize_attrs.exit.if.end44_crit_edge, label %land.lhs.true

nfsd_sanitize_attrs.exit.if.end44_crit_edge:      ; preds = %nfsd_sanitize_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

land.lhs.true:                                    ; preds = %nfsd_sanitize_attrs.exit
  %i_ctime = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 17
  %42 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %i_ctime, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %guardtime)
  %cmp41.not = icmp eq i64 %43, %guardtime
  br i1 %cmp41.not, label %land.lhs.true.if.end44_crit_edge, label %land.lhs.true.cleanup85_crit_edge

land.lhs.true.cleanup85_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup85

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end44:                                         ; preds = %land.lhs.true.if.end44_crit_edge, %nfsd_sanitize_attrs.exit.if.end44_crit_edge
  %44 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fh_dentry, align 8
  br i1 %tobool.not, label %if.end73.critedge, label %if.then46

if.then46:                                        ; preds = %if.end44
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %d_inode.i.i, align 8
  %ia_size.i = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 4
  %48 = ptrtoint ptr %ia_size.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %ia_size.i, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 14
  %50 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %51)
  %cmp.i134 = icmp slt i64 %49, %51
  br i1 %cmp.i134, label %if.then.i137, label %if.then46.if.end4.i_crit_edge

if.then46.if.end4.i_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then.i137:                                     ; preds = %if.then46
  %fh_export.i135 = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %52 = ptrtoint ptr %fh_export.i135 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fh_export.i135, align 4
  %call2.i = tail call i32 @nfsd_permission(ptr noundef %rqstp, ptr noundef %53, ptr noundef %45, i32 noundef 80) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i136 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i136, label %if.then.i137.if.end4.i_crit_edge, label %if.then.i137.cleanup85_crit_edge

if.then.i137.cleanup85_crit_edge:                 ; preds = %if.then.i137
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup85

if.then.i137.if.end4.i_crit_edge:                 ; preds = %if.then.i137
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i137.if.end4.i_crit_edge, %if.then46.if.end4.i_crit_edge
  %i_writecount.i.i = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 42
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i.i, i32 noundef 4) #12
  %54 = ptrtoint ptr %i_writecount.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %i_writecount.i.i, align 4
  br label %do.body1.i.i.i.i

do.body1.i.i.i.i:                                 ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.i.do.body1.i.i.i.i_crit_edge, %if.end4.i
  %c.0.i.i.i.i = phi i32 [ %55, %if.end4.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.i.do.body1.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %c.0.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %do.body1.i.i.i.i.nfsd_get_write_access.exit_crit_edge, label %do.cond3.i.i.i.i, !prof !124

do.body1.i.i.i.i.nfsd_get_write_access.exit_crit_edge: ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsd_get_write_access.exit

do.cond3.i.i.i.i:                                 ; preds = %do.body1.i.i.i.i
  %add.i.i.i.i = add nuw i32 %c.0.i.i.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @llvm.prefetch.p0(ptr %i_writecount.i.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i.i
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i.i, ptr %i_writecount.i.i, i32 %c.0.i.i.i.i, i32 %add.i.i.i.i, ptr elementtype(i32) %i_writecount.i.i) #12, !srcloc !128
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %56, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i.i:               ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %56, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !129
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %c.0.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.i.nfsd_get_write_access.exit_crit_edge, label %arch_atomic_cmpxchg.exit.i.i.i.i.i.do.body1.i.i.i.i_crit_edge, !prof !120

arch_atomic_cmpxchg.exit.i.i.i.i.i.do.body1.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i.i.nfsd_get_write_access.exit_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsd_get_write_access.exit

nfsd_get_write_access.exit:                       ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.i.nfsd_get_write_access.exit_crit_edge, %do.body1.i.i.i.i.nfsd_get_write_access.exit_crit_edge
  %cond.i.i = phi i32 [ -26, %do.body1.i.i.i.i.nfsd_get_write_access.exit_crit_edge ], [ 0, %arch_atomic_cmpxchg.exit.i.i.i.i.i.nfsd_get_write_access.exit_crit_edge ]
  %call6.i = tail call i32 @nfserrno(i32 noundef %cond.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool48.not = icmp eq i32 %call6.i, 0
  br i1 %tobool48.not, label %if.then53.critedge, label %nfsd_get_write_access.exit.cleanup85_crit_edge

nfsd_get_write_access.exit.cleanup85_crit_edge:   ; preds = %nfsd_get_write_access.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup85

if.then53.critedge:                               ; preds = %nfsd_get_write_access.exit
  %57 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fh_dentry, align 8
  %tobool.not.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !124

do.body4.i.i:                                     ; preds = %if.then53.critedge
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfsfh.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 360, 0\0A.popsection", ""() #12, !srcloc !125
  unreachable

do.end9.i.i:                                      ; preds = %if.then53.critedge
  %fh_locked.i.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 4
  %59 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %fh_locked.i.i, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool10.not.i.i = icmp eq i8 %60, 0
  br i1 %tobool10.not.i.i, label %if.end15.i.i, label %do.end14.i.i

do.end14.i.i:                                     ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %58) #15
  br label %fh_lock.exit

if.end15.i.i:                                     ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %58, i32 0, i32 5
  %61 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_rwsem.i.i.i = getelementptr inbounds %struct.inode, ptr %62, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i.i, i32 noundef 0) #12
  tail call void @fh_fill_pre_attrs(ptr noundef %fhp) #12
  %63 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %fh_locked.i.i, align 8
  br label %fh_lock.exit

fh_lock.exit:                                     ; preds = %if.end15.i.i, %do.end14.i.i
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %size_attr) #12
  %64 = call ptr @memset(ptr %size_attr, i32 0, i32 80)
  %65 = ptrtoint ptr %size_attr to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 104, ptr %size_attr, align 8
  %ia_size = getelementptr inbounds %struct.iattr, ptr %size_attr, i32 0, i32 4
  %66 = ptrtoint ptr %ia_size.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %ia_size.i, align 8
  %68 = ptrtoint ptr %ia_size to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %ia_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %67)
  %cmp57 = icmp slt i64 %67, 0
  br i1 %cmp57, label %fh_lock.exit.cleanup.thread_crit_edge, label %if.end60

fh_lock.exit.cleanup.thread_crit_edge:            ; preds = %fh_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end60:                                         ; preds = %fh_lock.exit
  %call61 = call i32 @notify_change(ptr noundef nonnull @init_user_ns, ptr noundef %14, ptr noundef nonnull %size_attr, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end60.cleanup.thread_crit_edge

if.end60.cleanup.thread_crit_edge:                ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end64:                                         ; preds = %if.end60
  %69 = ptrtoint ptr %iap to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %iap, align 8
  %and66 = and i32 %70, -9
  store i32 %and66, ptr %iap, align 8
  %and68 = and i32 %70, -41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %cmp69 = icmp eq i32 %and68, 0
  br i1 %cmp69, label %if.end64.cleanup.thread_crit_edge, label %cleanup

if.end64.cleanup.thread_crit_edge:                ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end64.cleanup.thread_crit_edge, %if.end60.cleanup.thread_crit_edge, %fh_lock.exit.cleanup.thread_crit_edge
  %host_err.0.ph = phi i32 [ %call61, %if.end60.cleanup.thread_crit_edge ], [ -27, %fh_lock.exit.cleanup.thread_crit_edge ], [ 0, %if.end64.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %size_attr) #12
  br label %out_unlock

cleanup:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %size_attr) #12
  br label %if.end73

if.end73.critedge:                                ; preds = %if.end44
  %tobool.not.i.i139 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i139, label %do.body4.i.i140, label %do.end9.i.i143, !prof !124

do.body4.i.i140:                                  ; preds = %if.end73.critedge
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfsfh.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 360, 0\0A.popsection", ""() #12, !srcloc !125
  unreachable

do.end9.i.i143:                                   ; preds = %if.end73.critedge
  %fh_locked.i.i141 = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 4
  %71 = ptrtoint ptr %fh_locked.i.i141 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %fh_locked.i.i141, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool10.not.i.i142 = icmp eq i8 %72, 0
  br i1 %tobool10.not.i.i142, label %if.end15.i.i148, label %do.end14.i.i145

do.end14.i.i145:                                  ; preds = %do.end9.i.i143
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %45) #15
  br label %if.end73

if.end15.i.i148:                                  ; preds = %do.end9.i.i143
  call void @__sanitizer_cov_trace_pc() #14
  %d_inode.i.i.i146 = getelementptr inbounds %struct.dentry, ptr %45, i32 0, i32 5
  %73 = ptrtoint ptr %d_inode.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %d_inode.i.i.i146, align 8
  %i_rwsem.i.i.i147 = getelementptr inbounds %struct.inode, ptr %74, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i.i147, i32 noundef 0) #12
  tail call void @fh_fill_pre_attrs(ptr noundef %fhp) #12
  %75 = ptrtoint ptr %fh_locked.i.i141 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %fh_locked.i.i141, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.end15.i.i148, %do.end14.i.i145, %cleanup
  %76 = ptrtoint ptr %iap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %iap, align 8
  %or75 = or i32 %77, 64
  store i32 %or75, ptr %iap, align 8
  %call76 = call i32 @notify_change(ptr noundef nonnull @init_user_ns, ptr noundef %14, ptr noundef %iap, ptr noundef null) #12
  br label %out_unlock

out_unlock:                                       ; preds = %if.end73, %cleanup.thread
  %host_err.1 = phi i32 [ %call76, %if.end73 ], [ %host_err.0.ph, %cleanup.thread ]
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 4
  %78 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %fh_locked.i, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i150 = icmp eq i8 %79, 0
  br i1 %tobool.not.i150, label %out_unlock.fh_unlock.exit_crit_edge, label %if.then.i153

out_unlock.fh_unlock.exit_crit_edge:              ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #14
  br label %fh_unlock.exit

if.then.i153:                                     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #14
  call void @fh_fill_post_attrs(ptr noundef %fhp) #12
  %80 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i.i152 = getelementptr inbounds %struct.dentry, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %d_inode.i.i152 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %d_inode.i.i152, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %83, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i.i) #12
  %84 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %fh_locked.i, align 8
  br label %fh_unlock.exit

fh_unlock.exit:                                   ; preds = %if.then.i153, %out_unlock.fh_unlock.exit_crit_edge
  br i1 %tobool.not, label %fh_unlock.exit.out_crit_edge, label %if.then78

fh_unlock.exit.out_crit_edge:                     ; preds = %fh_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then78:                                        ; preds = %fh_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %i_writecount.i = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 42
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %i_writecount.i, i32 1, i32 3, i32 1) #12
  %85 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i, ptr %i_writecount.i, i32 1, ptr elementtype(i32) %i_writecount.i) #12, !srcloc !130
  br label %out

out:                                              ; preds = %if.then78, %fh_unlock.exit.out_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %host_err.1)
  %tobool80.not = icmp eq i32 %host_err.1, 0
  br i1 %tobool80.not, label %if.then81, label %out.if.end83_crit_edge

out.if.end83_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then81:                                        ; preds = %out
  %86 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i.i156 = getelementptr inbounds %struct.dentry, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %d_inode.i.i156 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %d_inode.i.i156, align 8
  %fh_export.i157 = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %90 = ptrtoint ptr %fh_export.i157 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fh_export.i157, align 4
  %ex_flags.i = getelementptr inbounds %struct.svc_export, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %ex_flags.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ex_flags.i, align 4
  %and.i158 = and i32 %93, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i158)
  %tobool.not.i159 = icmp eq i32 %and.i158, 0
  br i1 %tobool.not.i159, label %if.end.i161, label %if.then81.if.end83_crit_edge

if.then81.if.end83_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.end.i161:                                      ; preds = %if.then81
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %89, i32 0, i32 8
  %94 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %i_sb.i.i, align 4
  %s_export_op.i.i = getelementptr inbounds %struct.super_block, ptr %95, i32 0, i32 9
  %96 = ptrtoint ptr %s_export_op.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %s_export_op.i.i, align 16
  %commit_metadata.i.i = getelementptr inbounds %struct.export_operations, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %commit_metadata.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %commit_metadata.i.i, align 4
  %tobool.not.i.i160 = icmp eq ptr %99, null
  br i1 %tobool.not.i.i160, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i162 = call i32 %99(ptr noundef %89) #12
  br label %if.end83

if.end.i.i:                                       ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i.i = call i32 @sync_inode_metadata(ptr noundef %89, i32 noundef 1) #12
  br label %if.end83

if.end83:                                         ; preds = %if.end.i.i, %if.then.i.i, %if.then81.if.end83_crit_edge, %out.if.end83_crit_edge, %if.end.i.if.end83_crit_edge
  %host_err.3 = phi i32 [ %host_err.1, %out.if.end83_crit_edge ], [ 0, %if.then81.if.end83_crit_edge ], [ %call.i.i162, %if.then.i.i ], [ %call2.i.i, %if.end.i.i ], [ %call.i, %if.end.i.if.end83_crit_edge ]
  %call84 = call i32 @nfserrno(i32 noundef %host_err.3) #12
  br label %cleanup85

cleanup85:                                        ; preds = %if.end83, %nfsd_get_write_access.exit.cleanup85_crit_edge, %if.then.i137.cleanup85_crit_edge, %land.lhs.true.cleanup85_crit_edge, %if.end35.cleanup85_crit_edge, %entry.cleanup85_crit_edge
  %retval.0 = phi i32 [ %call84, %if.end83 ], [ %call, %entry.cleanup85_crit_edge ], [ 0, %if.end35.cleanup85_crit_edge ], [ 10002, %land.lhs.true.cleanup85_crit_edge ], [ %call6.i, %nfsd_get_write_access.exit.cleanup85_crit_edge ], [ %call2.i, %if.then.i137.cleanup85_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @notify_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @commit_metadata(ptr nocapture noundef readonly %fhp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %0 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %4 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fh_export, align 4
  %ex_flags = getelementptr inbounds %struct.svc_export, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ex_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ex_flags, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %s_export_op.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %s_export_op.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_export_op.i, align 16
  %commit_metadata.i = getelementptr inbounds %struct.export_operations, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %commit_metadata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %commit_metadata.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %13(ptr noundef %3) #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = tail call i32 @sync_inode_metadata(ptr noundef %3, i32 noundef 1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.then.i ], [ %call2.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_set_nfs4_label(ptr noundef %rqstp, ptr noundef %fhp, ptr nocapture noundef readonly %label) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext 0, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %0 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #12
  %data = getelementptr inbounds %struct.xdr_netobj, ptr %label, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %label, align 4
  %call2 = tail call i32 @security_inode_setsecctx(ptr noundef %1, ptr noundef %5, i32 noundef %7) #12
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i13 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i13) #12
  %call4 = tail call i32 @nfserrno(i32 noundef %call2) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_setsecctx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_clone_file_range(ptr noundef %rqstp, ptr nocapture noundef readonly %nf_src, i64 noundef %src_pos, ptr nocapture noundef readonly %nf_dst, i64 noundef %dst_pos, i64 noundef %count, i1 noundef zeroext %sync) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nf_file = getelementptr inbounds %struct.nfsd_file, ptr %nf_src, i32 0, i32 3
  %0 = ptrtoint ptr %nf_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nf_file, align 4
  %nf_file1 = getelementptr inbounds %struct.nfsd_file, ptr %nf_dst, i32 0, i32 3
  %2 = ptrtoint ptr %nf_file1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nf_file1, align 4
  %f_wb_err = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %f_wb_err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %f_wb_err, align 8
  %call = tail call i64 @vfs_clone_file_range(ptr noundef %1, i64 noundef %src_pos, ptr noundef %3, i64 noundef %dst_pos, i64 noundef %count, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i64 %call to i32
  br label %out_err.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %count)
  %tobool.not = icmp eq i64 %count, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %call, i64 %count)
  %cmp3.not = icmp eq i64 %call, %count
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp3.not
  br i1 %or.cond, label %if.end7, label %if.end.out_err.sink.split_crit_edge

if.end.out_err.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_err.sink.split

if.end7:                                          ; preds = %if.end
  br i1 %sync, label %if.then9, label %if.end7.out_err_crit_edge

if.end7.out_err_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_err

if.then9:                                         ; preds = %if.end7
  %add = add i64 %dst_pos, -1
  %sub = add i64 %add, %count
  %cond = select i1 %tobool.not, i64 9223372036854775807, i64 %sub
  %call11 = tail call i32 @vfs_fsync_range(ptr noundef %3, i64 noundef %dst_pos, i64 noundef %cond, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end15, label %if.then9.if.end20_crit_edge

if.then9.if.end20_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.end15:                                         ; preds = %if.then9
  %f_mapping = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_mapping, align 4
  %wb_err.i = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 11
  %call.i = tail call i32 @errseq_check(ptr noundef %wb_err.i, i32 noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.then17, label %if.end15.if.end20_crit_edge

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then17:                                        ; preds = %if.end15
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i, align 4
  %s_export_op.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %s_export_op.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_export_op.i, align 16
  %commit_metadata.i = getelementptr inbounds %struct.export_operations, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %commit_metadata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %commit_metadata.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %call.i55 = tail call i32 %15(ptr noundef %9) #12
  br label %if.end20

if.end.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = tail call i32 @sync_inode_metadata(ptr noundef %9, i32 noundef 1) #12
  br label %if.end20

if.end20:                                         ; preds = %if.end.i, %if.then.i, %if.end15.if.end20_crit_edge, %if.then9.if.end20_crit_edge
  %status.1 = phi i32 [ %call.i, %if.end15.if.end20_crit_edge ], [ %call.i55, %if.then.i ], [ %call2.i, %if.end.i ], [ %call11, %if.then9.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1)
  %cmp21 = icmp slt i32 %status.1, 0
  br i1 %cmp21, label %if.then23, label %if.end20.out_err_crit_edge

if.end20.out_err_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_err

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %nf_net = getelementptr inbounds %struct.nfsd_file, ptr %nf_dst, i32 0, i32 5
  %16 = ptrtoint ptr %nf_net to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nf_net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %18 = load i32, ptr @nfsd_net_id, align 4
  %call24 = tail call fastcc ptr @net_generic(ptr noundef %17, i32 noundef %18)
  %rq_resp.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %19 = ptrtoint ptr %rq_resp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rq_resp.i, align 4
  %cstate.i = getelementptr inbounds %struct.nfsd4_compoundres, ptr %20, i32 0, i32 6
  %save_fh = getelementptr inbounds %struct.nfsd4_compoundres, ptr %20, i32 0, i32 6, i32 1
  tail call fastcc void @trace_nfsd_clone_file_range_err(ptr noundef %rqstp, ptr noundef %save_fh, i64 noundef %src_pos, ptr noundef %cstate.i, i64 noundef %dst_pos, i64 noundef %count, i32 noundef %status.1)
  tail call void @nfsd_reset_write_verifier(ptr noundef %call24) #12
  tail call fastcc void @trace_nfsd_writeverf_reset(ptr noundef %call24, ptr noundef %rqstp, i32 noundef %status.1)
  br label %out_err.sink.split

out_err.sink.split:                               ; preds = %if.then23, %if.end.out_err.sink.split_crit_edge, %if.then
  %status.1.sink = phi i32 [ %status.1, %if.then23 ], [ %conv, %if.then ], [ -22, %if.end.out_err.sink.split_crit_edge ]
  %call27 = tail call i32 @nfserrno(i32 noundef %status.1.sink) #12
  br label %out_err

out_err:                                          ; preds = %out_err.sink.split, %if.end20.out_err_crit_edge, %if.end7.out_err_crit_edge
  %ret.1 = phi i32 [ 0, %if.end7.out_err_crit_edge ], [ 0, %if.end20.out_err_crit_edge ], [ %call27, %out_err.sink.split ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_clone_file_range(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !131
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 45, ptr noundef nonnull @.str.11) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !132
  %8 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %7
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_clone_file_range_err(ptr noundef %rqstp, ptr noundef %src_fhp, i64 noundef %src_offset, ptr noundef %dst_fhp, i64 noundef %dst_offset, i64 noundef %count, i32 noundef %status) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_clone_file_range_err, i32 0, i32 1), ptr blockaddress(@trace_nfsd_clone_file_range_err, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !133

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !120

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !134
  %call42 = tail call i32 @__traceiter_nfsd_clone_file_range_err(ptr noundef null, ptr noundef %rqstp, ptr noundef %src_fhp, i64 noundef %src_offset, ptr noundef %dst_fhp, i64 noundef %dst_offset, i64 noundef %count, i32 noundef %status) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !135
  %13 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !120

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_clone_file_range_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_clone_file_range_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfsd_clone_file_range_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfsd_clone_file_range_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 450, ptr noundef nonnull @.str.11) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_writeverf_reset(ptr noundef %nn, ptr noundef %rqstp, i32 noundef %error) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_writeverf_reset, i32 0, i32 1), ptr blockaddress(@trace_nfsd_writeverf_reset, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !133

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !120

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !138
  %call42 = tail call i32 @__traceiter_nfsd_writeverf_reset(ptr noundef null, ptr noundef %nn, ptr noundef %rqstp, i32 noundef %error) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !139
  %13 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !120

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_writeverf_reset, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_writeverf_reset, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfsd_writeverf_reset.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfsd_writeverf_reset.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 603, ptr noundef nonnull @.str.11) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
define dso_local i32 @nfsd_copy_file_range(ptr noundef %src, i64 noundef %src_pos, ptr noundef %dst, i64 noundef %dst_pos, i64 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i64 @llvm.umin.i64(i64 %count, i64 4194304)
  %1 = trunc i64 %0 to i32
  %call = tail call i32 @vfs_copy_file_range(ptr noundef %src, i64 noundef %src_pos, ptr noundef %dst, i64 noundef %dst_pos, i32 noundef %1, i32 noundef 0) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_copy_file_range(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_vfs_fallocate(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readonly %fhp, ptr noundef %file, i64 noundef %offset, i64 noundef %len, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %4)
  %cmp = icmp eq i16 %4, -32768
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @vfs_fallocate(ptr noundef %file, i32 noundef %flags, i64 noundef %offset, i64 noundef %len) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %5 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fh_dentry.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i.i, align 8
  %fh_export.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %9 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fh_export.i, align 4
  %ex_flags.i = getelementptr inbounds %struct.svc_export, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ex_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ex_flags.i, align 4
  %and.i = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.if.end5_crit_edge

if.then3.if.end5_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end.i:                                         ; preds = %if.then3
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb.i.i, align 4
  %s_export_op.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %s_export_op.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_export_op.i.i, align 16
  %commit_metadata.i.i = getelementptr inbounds %struct.export_operations, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %commit_metadata.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %commit_metadata.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 %18(ptr noundef %8) #12
  br label %if.end5

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i.i = tail call i32 @sync_inode_metadata(ptr noundef %8, i32 noundef 1) #12
  br label %if.end5

if.end5:                                          ; preds = %if.end.i.i, %if.then.i.i, %if.then3.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %error.0 = phi i32 [ %call2, %if.end.if.end5_crit_edge ], [ 0, %if.then3.if.end5_crit_edge ], [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.end.i.i ]
  %call6 = tail call i32 @nfserrno(i32 noundef %error.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ 22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fallocate(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_access(ptr noundef %rqstp, ptr noundef %fhp, ptr nocapture noundef %access, ptr noundef writeonly %supported) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup22_crit_edge

entry.cleanup22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup22

if.end:                                           ; preds = %entry
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %0 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_export, align 4
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %2 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fh_dentry, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %and.i.i = and i32 %5, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 4194304
  %6 = and i32 %5, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %6)
  %7 = icmp eq i32 %6, 2097152
  %nfs3_diraccess.nfs3_anyaccess = select i1 %7, ptr @nfs3_diraccess, ptr @nfs3_anyaccess
  %map.0 = select i1 %cmp.i, ptr @nfs3_regaccess, ptr %nfs3_diraccess.nfs3_anyaccess
  %8 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %access, align 4
  %10 = ptrtoint ptr %map.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %map.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not52 = icmp eq i32 %11, 0
  br i1 %tobool9.not52, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %12 = phi i32 [ %19, %for.inc.for.body_crit_edge ], [ %11, %if.end.for.body_crit_edge ]
  %sresult.056 = phi i32 [ %sresult.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %result.055 = phi i32 [ %result.3, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %map.153 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %map.0, %if.end.for.body_crit_edge ]
  %and = and i32 %12, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %if.then12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then12:                                        ; preds = %for.body
  %or = or i32 %12, %sresult.056
  %how = getelementptr inbounds %struct.accessmap, ptr %map.153, i32 0, i32 1
  %13 = ptrtoint ptr %how to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %how, align 4
  %call14 = tail call i32 @nfsd_permission(ptr noundef %rqstp, ptr noundef %1, ptr noundef %3, i32 noundef %14)
  %15 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call14, label %if.then12.cleanup22_crit_edge [
    i32 0, label %sw.bb
    i32 30, label %if.then12.for.inc_crit_edge
    i32 13, label %if.then12.for.inc_crit_edge58
    i32 1, label %if.then12.for.inc_crit_edge59
  ]

if.then12.for.inc_crit_edge59:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then12.for.inc_crit_edge58:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then12.for.inc_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then12.cleanup22_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup22

sw.bb:                                            ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %map.153 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %map.153, align 4
  %or16 = or i32 %17, %result.055
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %if.then12.for.inc_crit_edge, %if.then12.for.inc_crit_edge58, %if.then12.for.inc_crit_edge59, %for.body.for.inc_crit_edge
  %result.3 = phi i32 [ %result.055, %for.body.for.inc_crit_edge ], [ %result.055, %if.then12.for.inc_crit_edge ], [ %result.055, %if.then12.for.inc_crit_edge58 ], [ %result.055, %if.then12.for.inc_crit_edge59 ], [ %or16, %sw.bb ]
  %sresult.1 = phi i32 [ %sresult.056, %for.body.for.inc_crit_edge ], [ %or, %if.then12.for.inc_crit_edge ], [ %or, %if.then12.for.inc_crit_edge58 ], [ %or, %if.then12.for.inc_crit_edge59 ], [ %or, %sw.bb ]
  %incdec.ptr = getelementptr %struct.accessmap, ptr %map.153, i32 1
  %18 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq i32 %19, 0
  br i1 %tobool9.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %result.3, %for.inc.for.end_crit_edge ]
  %sresult.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %sresult.1, %for.inc.for.end_crit_edge ]
  %20 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %result.0.lcssa, ptr %access, align 4
  %tobool19.not = icmp eq ptr %supported, null
  br i1 %tobool19.not, label %for.end.cleanup22_crit_edge, label %if.then20

for.end.cleanup22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup22

if.then20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sresult.0.lcssa, ptr %supported, align 4
  br label %cleanup22

cleanup22:                                        ; preds = %if.then20, %for.end.cleanup22_crit_edge, %if.then12.cleanup22_crit_edge, %entry.cleanup22_crit_edge
  %error.3 = phi i32 [ %call, %entry.cleanup22_crit_edge ], [ 0, %if.then20 ], [ 0, %for.end.cleanup22_crit_edge ], [ %call14, %if.then12.cleanup22_crit_edge ]
  ret i32 %error.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_permission(ptr noundef %rqstp, ptr noundef %exp, ptr nocapture noundef readonly %dentry, i32 noundef %acc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %and = and i32 %acc, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %acc, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp ne i32 %and1, 0
  %and3 = and i32 %acc, 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = or i1 %tobool.not, %tobool4.not
  br i1 %or.cond, label %if.end.if.end16_crit_edge, label %if.then5

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then5:                                         ; preds = %if.end
  %call.i = tail call i32 @nfsexp_flags(ptr noundef %rqstp, ptr noundef %exp) #12
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not = icmp eq i32 %and.i, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then5
  %ex_path = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 3
  %2 = ptrtoint ptr %ex_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ex_path, align 8
  %call8 = tail call zeroext i1 @__mnt_is_readonly(ptr noundef %3) #12
  br i1 %call8, label %lor.lhs.false.cleanup_crit_edge, label %if.end10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 4
  %and11 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end16_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.end16:                                         ; preds = %if.end10.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %and17 = and i32 %acc, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end23_crit_edge, label %land.lhs.true

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end16
  %i_flags19 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %i_flags19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_flags19, align 4
  %and20 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %if.end16.if.end23_crit_edge
  %and24 = and i32 %acc, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end31, label %if.then26

if.then26:                                        ; preds = %if.end23
  %ex_flags = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 2
  %8 = ptrtoint ptr %ex_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ex_flags, align 4
  %and27 = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then26.land.lhs.true34_crit_edge, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then26.land.lhs.true34_crit_edge:              ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true34

if.end31:                                         ; preds = %if.end23
  %and32 = and i32 %acc, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end39_crit_edge, label %if.end31.land.lhs.true34_crit_edge

if.end31.land.lhs.true34_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true34

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

land.lhs.true34:                                  ; preds = %if.end31.land.lhs.true34_crit_edge, %if.then26.land.lhs.true34_crit_edge
  %acc.addr.080 = phi i32 [ %acc, %if.end31.land.lhs.true34_crit_edge ], [ 68, %if.then26.land.lhs.true34_crit_edge ]
  %i_uid = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %10 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i76 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i76 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 99
  %14 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %16)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %17 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack = load i32, ptr %i_uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %agg.tmp.sroa.0.0.copyload)
  %cmp.i = icmp eq i32 %.unpack, %agg.tmp.sroa.0.0.copyload
  br i1 %cmp.i, label %land.lhs.true34.cleanup_crit_edge, label %land.lhs.true34.if.end39_crit_edge

land.lhs.true34.if.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end39:                                         ; preds = %land.lhs.true34.if.end39_crit_edge, %if.end31.if.end39_crit_edge
  %acc.addr.081 = phi i32 [ %acc.addr.080, %land.lhs.true34.if.end39_crit_edge ], [ %acc, %if.end31.if.end39_crit_edge ]
  %and40 = and i32 %acc.addr.081, 7
  %call41 = tail call i32 @inode_permission(ptr noundef nonnull @init_user_ns, ptr noundef %1, i32 noundef %and40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call41)
  %cmp42 = icmp eq i32 %call41, -13
  br i1 %cmp42, label %land.lhs.true43, label %if.end39.if.end55_crit_edge

if.end39.if.end55_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

land.lhs.true43:                                  ; preds = %if.end39
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %1, align 8
  %20 = and i16 %19, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %20)
  %cmp45 = icmp eq i16 %20, -32768
  br i1 %cmp45, label %land.lhs.true47, label %land.lhs.true43.cond.true_crit_edge

land.lhs.true43.cond.true_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true

land.lhs.true47:                                  ; preds = %land.lhs.true43
  %21 = zext i32 %acc.addr.081 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %acc.addr.081, label %land.lhs.true47.cond.true_crit_edge [
    i32 68, label %land.lhs.true47.if.then53_crit_edge
    i32 2052, label %land.lhs.true47.if.then53_crit_edge85
  ]

land.lhs.true47.if.then53_crit_edge85:            ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then53

land.lhs.true47.if.then53_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then53

land.lhs.true47.cond.true_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true

if.then53:                                        ; preds = %land.lhs.true47.if.then53_crit_edge, %land.lhs.true47.if.then53_crit_edge85
  %call54 = tail call i32 @inode_permission(ptr noundef nonnull @init_user_ns, ptr noundef %1, i32 noundef 1) #12
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end39.if.end55_crit_edge
  %err.0 = phi i32 [ %call54, %if.then53 ], [ %call41, %if.end39.if.end55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool56.not = icmp eq i32 %err.0, 0
  br i1 %tobool56.not, label %if.end55.cleanup_crit_edge, label %if.end55.cond.true_crit_edge

if.end55.cond.true_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.true:                                        ; preds = %if.end55.cond.true_crit_edge, %land.lhs.true47.cond.true_crit_edge, %land.lhs.true43.cond.true_crit_edge
  %err.084 = phi i32 [ %err.0, %if.end55.cond.true_crit_edge ], [ -13, %land.lhs.true43.cond.true_crit_edge ], [ -13, %land.lhs.true47.cond.true_crit_edge ]
  %call57 = tail call i32 @nfserrno(i32 noundef %err.084) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %if.end55.cleanup_crit_edge, %land.lhs.true34.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 30, %lor.lhs.false.cleanup_crit_edge ], [ 30, %if.then5.cleanup_crit_edge ], [ 1, %if.end10.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then26.cleanup_crit_edge ], [ 0, %land.lhs.true34.cleanup_crit_edge ], [ %call57, %cond.true ], [ 0, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_open_break_lease(ptr noundef %inode, i32 noundef %access) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %access, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = lshr i32 %access, 1
  %and1.lobit = and i32 %and1, 1
  %or = or i32 %and1.lobit, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !140
  %i_flctx.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 45
  %0 = ptrtoint ptr %i_flctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_flctx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %land.lhs.true.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end
  %flc_lease.i = getelementptr inbounds %struct.file_lock_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flc_lease.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %flc_lease.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !141
  %cmp.i.not.i.i = icmp eq ptr %3, %flc_lease.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i, label %land.lhs.true.i.if.then.i_crit_edge

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

list_empty_careful.exit.i:                        ; preds = %land.lhs.true.i
  %prev.i.i = getelementptr inbounds %struct.file_lock_context, ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %flc_lease.i
  br i1 %cmp.i.not.i, label %list_empty_careful.exit.i.cleanup_crit_edge, label %list_empty_careful.exit.i.if.then.i_crit_edge

list_empty_careful.exit.i.if.then.i_crit_edge:    ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

list_empty_careful.exit.i.cleanup_crit_edge:      ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %list_empty_careful.exit.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %call5.i = tail call i32 @__break_lease(ptr noundef %inode, i32 noundef %or, i32 noundef 32) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %list_empty_careful.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call5.i, %if.then.i ], [ 0, %list_empty_careful.exit.i.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_open(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext %type, i32 noundef %may_flags, ptr nocapture noundef writeonly %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  tail call void @__validate_process_creds(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef 805) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %type)
  %cmp = icmp eq i16 %type, -32768
  %or = or i32 %may_flags, 64
  %spec.select = select i1 %cmp, i32 %or, i32 %may_flags
  %call225 = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext %type, i32 noundef %spec.select) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %tobool.not26 = icmp eq i32 %call225, 0
  br i1 %tobool.not26, label %if.then3, label %entry.do.body11_crit_edge

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body11

if.then3:                                         ; preds = %entry
  %call4 = tail call fastcc i32 @__nfsd_open(ptr noundef %fhp, i32 noundef %spec.select, ptr noundef %filp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 70
  br i1 %cmp5.not, label %if.then8, label %if.then3.do.body11_crit_edge

if.then3.do.body11_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body11

if.then8:                                         ; preds = %if.then3
  tail call void @fh_put(ptr noundef %fhp) #12
  %call2 = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext %type, i32 noundef %spec.select) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3.1, label %if.then8.do.body11_crit_edge

if.then8.do.body11_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body11

if.then3.1:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %call4.1 = tail call fastcc i32 @__nfsd_open(ptr noundef %fhp, i32 noundef %spec.select, ptr noundef %filp)
  br label %do.body11

do.body11:                                        ; preds = %if.then3.1, %if.then8.do.body11_crit_edge, %if.then3.do.body11_crit_edge, %entry.do.body11_crit_edge
  %err.0 = phi i32 [ %call225, %entry.do.body11_crit_edge ], [ %call4, %if.then3.do.body11_crit_edge ], [ %call2, %if.then8.do.body11_crit_edge ], [ %call4.1, %if.then3.1 ]
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  tail call void @__validate_process_creds(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef 829) #12
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__validate_process_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__nfsd_open(ptr nocapture noundef readonly %fhp, i32 noundef %may_flags, ptr nocapture noundef writeonly %filp) unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #12
  %0 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %1 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fh_export, align 4
  %ex_path = getelementptr inbounds %struct.svc_export, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %ex_path to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ex_path, align 8
  %5 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %path, align 4
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %6 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fh_dentry, align 8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %0, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_flags, align 4
  %and = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %may_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = or i1 %tobool4.not, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %13 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 44
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %tobool5.not = icmp eq ptr %15, null
  br i1 %tobool5.not, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end7:                                          ; preds = %if.end
  %and.i = and i32 %may_flags, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end.i:                                         ; preds = %if.end7
  %and1.i = lshr i32 %may_flags, 1
  %and1.lobit.i = and i32 %and1.i, 1
  %or.i = or i32 %and1.lobit.i, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !140
  %i_flctx.i.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 45
  %16 = ptrtoint ptr %i_flctx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_flctx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end11_crit_edge, label %land.lhs.true.i.i

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

land.lhs.true.i.i:                                ; preds = %if.end.i
  %flc_lease.i.i = getelementptr inbounds %struct.file_lock_context, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %flc_lease.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %flc_lease.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !141
  %cmp.i.not.i.i.i = icmp eq ptr %19, %flc_lease.i.i
  br i1 %cmp.i.not.i.i.i, label %list_empty_careful.exit.i.i, label %land.lhs.true.i.i.nfsd_open_break_lease.exit_crit_edge

land.lhs.true.i.i.nfsd_open_break_lease.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsd_open_break_lease.exit

list_empty_careful.exit.i.i:                      ; preds = %land.lhs.true.i.i
  %prev.i.i.i = getelementptr inbounds %struct.file_lock_context, ptr %17, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %21, %flc_lease.i.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i.i.if.end11_crit_edge, label %list_empty_careful.exit.i.i.nfsd_open_break_lease.exit_crit_edge

list_empty_careful.exit.i.i.nfsd_open_break_lease.exit_crit_edge: ; preds = %list_empty_careful.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsd_open_break_lease.exit

list_empty_careful.exit.i.i.if.end11_crit_edge:   ; preds = %list_empty_careful.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

nfsd_open_break_lease.exit:                       ; preds = %list_empty_careful.exit.i.i.nfsd_open_break_lease.exit_crit_edge, %land.lhs.true.i.i.nfsd_open_break_lease.exit_crit_edge
  %call5.i.i = tail call i32 @__break_lease(ptr noundef %10, i32 noundef %or.i, i32 noundef 32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool9.not = icmp eq i32 %call5.i.i, 0
  br i1 %tobool9.not, label %nfsd_open_break_lease.exit.if.end11_crit_edge, label %nfsd_open_break_lease.exit.out_nfserr_crit_edge

nfsd_open_break_lease.exit.out_nfserr_crit_edge:  ; preds = %nfsd_open_break_lease.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_nfserr

nfsd_open_break_lease.exit.if.end11_crit_edge:    ; preds = %nfsd_open_break_lease.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end11:                                         ; preds = %nfsd_open_break_lease.exit.if.end11_crit_edge, %list_empty_careful.exit.i.i.if.end11_crit_edge, %if.end.i.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  %and15 = and i32 %may_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %. = select i1 %tobool16.not, i32 131073, i32 131074
  %flags.0 = select i1 %tobool4.not, i32 131072, i32 %.
  %22 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i1 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i1 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 99
  %26 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cred, align 16
  %call21 = call ptr @dentry_open(ptr noundef nonnull %path, i32 noundef %flags.0, ptr noundef %27) #12
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %call21 to i32
  br label %out_nfserr

if.end25:                                         ; preds = %if.end11
  %call26 = call i32 @ima_file_check(ptr noundef %call21, i32 noundef %may_flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  call void @fput(ptr noundef %call21) #12
  br label %out_nfserr

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %and30 = and i32 %may_flags, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %f_mode34 = getelementptr inbounds %struct.file, ptr %call21, i32 0, i32 8
  %29 = ptrtoint ptr %f_mode34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %f_mode34, align 8
  %.4 = select i1 %tobool31.not, i32 512, i32 1024
  %or35 = or i32 %30, %.4
  store i32 %or35, ptr %f_mode34, align 8
  %31 = ptrtoint ptr %filp to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call21, ptr %filp, align 4
  br label %out_nfserr

out_nfserr:                                       ; preds = %if.end29, %if.then28, %if.then23, %nfsd_open_break_lease.exit.out_nfserr_crit_edge
  %host_err.0 = phi i32 [ %call5.i.i, %nfsd_open_break_lease.exit.out_nfserr_crit_edge ], [ %28, %if.then23 ], [ %call26, %if.then28 ], [ 0, %if.end29 ]
  %call37 = call i32 @nfserrno(i32 noundef %host_err.0) #12
  br label %out

out:                                              ; preds = %out_nfserr, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call37, %out_nfserr ], [ 1, %if.end.out_crit_edge ], [ 1, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #12
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fh_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_open_verified(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readonly %fhp, i16 noundef zeroext %type, i32 noundef %may_flags, ptr nocapture noundef writeonly %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  tail call void @__validate_process_creds(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef 839) #12
  %call1 = tail call fastcc i32 @__nfsd_open(ptr noundef %fhp, i32 noundef %may_flags, ptr noundef %filp)
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  tail call void @__validate_process_creds(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef 841) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_splice_read(ptr noundef %rqstp, ptr noundef %fhp, ptr noundef %file, i64 noundef %offset, ptr nocapture noundef %count, ptr nocapture noundef writeonly %eof) local_unnamed_addr #0 align 64 {
entry:
  %sd = alloca %struct.splice_desc, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sd) #12
  %0 = getelementptr inbounds i8, ptr %sd, i32 32
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8, !annotation !122
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %4 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %sd, align 8
  %len = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 1
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %len, align 4
  %flags = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %flags, align 8
  %u = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 3
  %7 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rqstp, ptr %u, align 4
  %pos = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 4
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %offset, ptr %pos, align 8
  %opos = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 5
  %9 = ptrtoint ptr %opos to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %opos, align 8
  %num_spliced = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 6
  %10 = ptrtoint ptr %num_spliced to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %num_spliced, align 4
  %need_wakeup = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 7
  %11 = ptrtoint ptr %need_wakeup to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %need_wakeup, align 8
  tail call fastcc void @trace_nfsd_read_splice(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %3)
  %rq_respages = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 21
  %12 = ptrtoint ptr %rq_respages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rq_respages, align 4
  %add.ptr = getelementptr ptr, ptr %13, i32 1
  %rq_next_page = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 22
  %14 = ptrtoint ptr %rq_next_page to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %rq_next_page, align 8
  %call = call i32 @splice_direct_to_actor(ptr noundef %file, ptr noundef nonnull %sd, ptr noundef nonnull @nfsd_direct_splice_actor) #12
  %call1 = call fastcc i32 @nfsd_finish_read(ptr noundef %rqstp, ptr noundef %fhp, ptr noundef %file, i64 noundef %offset, ptr noundef %count, ptr noundef %eof, i32 noundef %call)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sd) #12
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_read_splice(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_splice, i32 0, i32 1), ptr blockaddress(@trace_nfsd_read_splice, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !133

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !120

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !142
  %call42 = tail call i32 @__traceiter_nfsd_read_splice(ptr noundef null, ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !143
  %13 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !120

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_splice, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_splice, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfsd_read_splice.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfsd_read_splice.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 338, ptr noundef nonnull @.str.11) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
declare dso_local i32 @splice_direct_to_actor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_direct_splice_actor(ptr noundef %pipe, ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__splice_from_pipe(ptr noundef %pipe, ptr noundef %sd, ptr noundef nonnull @nfsd_splice_actor) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfsd_finish_read(ptr noundef %rqstp, ptr noundef %fhp, ptr noundef %file, i64 noundef %offset, ptr nocapture noundef %count, ptr nocapture noundef writeonly %eof, i32 noundef %host_err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %host_err)
  %cmp = icmp sgt i32 %host_err, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %0 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_export, align 4
  %conv18 = zext i32 %host_err to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %2 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef getelementptr inbounds (%struct.nfsd_stats, ptr @nfsdstats, i32 0, i32 0, i32 4), i64 noundef %conv18, i32 noundef %2) #12
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.nfsd_stats_io_read_add.exit_crit_edge, label %if.then.i

if.then.nfsd_stats_io_read_add.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsd_stats_io_read_add.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.svc_export, ptr %1, i32 0, i32 15, i32 1, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %3 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %arrayidx.i, i64 noundef %conv18, i32 noundef %3) #12
  br label %nfsd_stats_io_read_add.exit

nfsd_stats_io_read_add.exit:                      ; preds = %if.then.i, %if.then.nfsd_stats_io_read_add.exit_crit_edge
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp ne i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %host_err)
  %cmp1.i = icmp eq i32 %host_err, 0
  %or.cond.i = and i1 %cmp1.i, %cmp.not.i
  br i1 %or.cond.i, label %nfsd_stats_io_read_add.exit.nfsd_eof_on_read.exit_crit_edge, label %if.end.i

nfsd_stats_io_read_add.exit.nfsd_eof_on_read.exit_crit_edge: ; preds = %nfsd_stats_io_read_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsd_eof_on_read.exit

if.end.i:                                         ; preds = %nfsd_stats_io_read_add.exit
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i.i, align 8
  %i_size_seqcount.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 23
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 23, i32 1
  %i_size18.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 14
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %if.end.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !144
  %and.i.i.i.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %9 = tail call ptr @llvm.returnaddress(i32 0) #12
  %10 = ptrtoint ptr %9 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %10) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %10) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = tail call ptr @llvm.returnaddress(i32 0) #12
  %12 = ptrtoint ptr %11 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %12) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %12) #12
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !145
  %and.i.i.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !124

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #12, !srcloc !146
  %14 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and29.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool.not30.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool.not30.i.i, label %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !148
  %16 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and.i.i = and i32 %17, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.while.end.i.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end.i.i.while.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %15, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge ], [ %17, %do.end.i.i.while.end.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !149
  %18 = ptrtoint ptr %i_size18.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_size18.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !150
  %20 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq i32 %21, %.lcssa.i.i
  br i1 %cmp.i.i.not.i.i, label %i_size_read.exit.i, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

i_size_read.exit.i:                               ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.i = add i64 %conv18, %offset
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %19)
  %cmp3.not.i = icmp sge i64 %add.i, %19
  %..i = zext i1 %cmp3.not.i to i32
  br label %nfsd_eof_on_read.exit

nfsd_eof_on_read.exit:                            ; preds = %i_size_read.exit.i, %nfsd_stats_io_read_add.exit.nfsd_eof_on_read.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %nfsd_stats_io_read_add.exit.nfsd_eof_on_read.exit_crit_edge ], [ %..i, %i_size_read.exit.i ]
  %22 = ptrtoint ptr %eof to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i, ptr %eof, align 4
  %23 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %host_err, ptr %count, align 4
  %f_mode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %24 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %f_mode.i.i, align 8
  %and.i.i15 = and i32 %25, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i15)
  %tobool.not.i.i16 = icmp eq i32 %and.i.i15, 0
  br i1 %tobool.not.i.i16, label %if.end.i.i, label %nfsd_eof_on_read.exit.fsnotify_access.exit_crit_edge

nfsd_eof_on_read.exit.fsnotify_access.exit_crit_edge: ; preds = %nfsd_eof_on_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_access.exit

if.end.i.i:                                       ; preds = %nfsd_eof_on_read.exit
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_inode.i.i.i.i, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 48
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #12
  %32 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i.i = icmp eq i32 %33, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.fsnotify_access.exit_crit_edge, label %if.end.i.i.i

if.end.i.i.fsnotify_access.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_access.exit

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %29, align 8
  %36 = and i16 %35, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %36)
  %cmp2.i.i.i = icmp eq i16 %36, 16384
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %if.end.i.i.i.if.end8.i.i.i_crit_edge

if.end.i.i.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %37 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %27, align 8
  %and5.i.i.i = and i32 %38, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not.i.i.i17 = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not.i.i.i17, label %if.then4.i.i.i.notify_child.i.i.i_crit_edge, label %if.then4.i.i.i.if.end8.i.i.i_crit_edge

if.then4.i.i.i.if.end8.i.i.i_crit_edge:           ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i.notify_child.i.i.i_crit_edge:      ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then4.i.i.i.if.end8.i.i.i_crit_edge, %if.end.i.i.i.if.end8.i.i.i_crit_edge
  %mask.addr.0.i.i.i = phi i32 [ 1073741825, %if.then4.i.i.i.if.end8.i.i.i_crit_edge ], [ 1, %if.end.i.i.i.if.end8.i.i.i_crit_edge ]
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 3
  %39 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %d_parent.i.i.i, align 8
  %cmp9.i.i.i = icmp eq ptr %40, %27
  br i1 %cmp9.i.i.i, label %if.end8.i.i.i.notify_child.i.i.i_crit_edge, label %if.end12.i.i.i

if.end8.i.i.i.notify_child.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end12.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i.i.i = tail call i32 @__fsnotify_parent(ptr noundef %27, i32 noundef %mask.addr.0.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1) #12
  br label %fsnotify_access.exit

notify_child.i.i.i:                               ; preds = %if.end8.i.i.i.notify_child.i.i.i_crit_edge, %if.then4.i.i.i.notify_child.i.i.i_crit_edge
  %mask.addr.1.i.i.i = phi i32 [ %mask.addr.0.i.i.i, %if.end8.i.i.i.notify_child.i.i.i_crit_edge ], [ 1073741825, %if.then4.i.i.i.notify_child.i.i.i_crit_edge ]
  %call14.i.i.i = tail call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %29, i32 noundef 0) #12
  br label %fsnotify_access.exit

fsnotify_access.exit:                             ; preds = %notify_child.i.i.i, %if.end12.i.i.i, %if.end.i.i.fsnotify_access.exit_crit_edge, %nfsd_eof_on_read.exit.fsnotify_access.exit_crit_edge
  %41 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count, align 4
  tail call fastcc void @trace_nfsd_read_io_done(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %42)
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @trace_nfsd_read_err(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %host_err)
  %call1 = tail call i32 @nfserrno(i32 noundef %host_err) #12
  br label %return

return:                                           ; preds = %if.else, %fsnotify_access.exit
  %retval.0 = phi i32 [ 0, %fsnotify_access.exit ], [ %call1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_readv(ptr noundef %rqstp, ptr noundef %fhp, ptr noundef %file, i64 noundef %offset, ptr noundef %vec, i32 noundef %vlen, ptr nocapture noundef %count, ptr nocapture noundef writeonly %eof) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.iov_iter, align 8
  %ppos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter) #12
  %0 = call ptr @memset(ptr %iter, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppos) #12
  %1 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %offset, ptr %ppos, align 8
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  tail call fastcc void @trace_nfsd_read_vector(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %3)
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @iov_iter_kvec(ptr noundef nonnull %iter, i32 noundef 0, ptr noundef %vec, i32 noundef %vlen, i32 noundef %5) #12
  %call = call i32 @vfs_iter_read(ptr noundef %file, ptr noundef nonnull %iter, ptr noundef nonnull %ppos, i32 noundef 0) #12
  %call1 = call fastcc i32 @nfsd_finish_read(ptr noundef %rqstp, ptr noundef %fhp, ptr noundef %file, i64 noundef %offset, ptr noundef %count, ptr noundef %eof, i32 noundef %call)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppos) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #12
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_read_vector(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_vector, i32 0, i32 1), ptr blockaddress(@trace_nfsd_read_vector, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !133

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !120

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !151
  %call42 = tail call i32 @__traceiter_nfsd_read_vector(ptr noundef null, ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !152
  %13 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !120

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_vector, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_vector, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfsd_read_vector.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfsd_read_vector.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 339, ptr noundef nonnull @.str.11) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_iter_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_vfs_write(ptr noundef %rqstp, ptr noundef %fhp, ptr nocapture noundef readonly %nf, i64 noundef %offset, ptr noundef %vec, i32 noundef %vlen, ptr nocapture noundef %cnt, i32 noundef %stable, ptr noundef %verf) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.iov_iter, align 8
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
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
  %nf_file = getelementptr inbounds %struct.nfsd_file, ptr %nf, i32 0, i32 3
  %4 = ptrtoint ptr %nf_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nf_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter) #12
  %10 = call ptr @memset(ptr %iter, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #12
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %offset, ptr %pos, align 8
  %12 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %18 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cnt, align 4
  tail call fastcc void @trace_nfsd_write_opened(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %19)
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 9
  %20 = ptrtoint ptr %s_export_op to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_export_op, align 16
  %tobool5.not = icmp eq ptr %21, null
  br i1 %tobool5.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %flags7 = getelementptr inbounds %struct.export_operations, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags7, align 4
  %phi.bo = and i32 %23, 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %exp_op_flags.0 = phi i32 [ %phi.bo, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %rq_flags = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 33
  %24 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %rq_flags, align 4
  %26 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool9.not = icmp ne i32 %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %exp_op_flags.0)
  %tobool10.not = icmp eq i32 %exp_op_flags.0, 0
  %or.cond = select i1 %tobool9.not, i1 %tobool10.not, i1 false
  br i1 %or.cond, label %if.then11, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %flags14 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags14, align 4
  %or = or i32 %30, 1048576
  store i32 %or, ptr %flags14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end.if.end15_crit_edge
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %31 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fh_export, align 4
  %rq_vers = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %33 = ptrtoint ptr %rq_vers to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rq_vers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp = icmp eq i32 %34, 2
  %ex_flags = getelementptr inbounds %struct.svc_export, ptr %32, i32 0, i32 2
  %35 = ptrtoint ptr %ex_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ex_flags, align 4
  br i1 %cmp, label %land.end, label %land.end.thread

land.end.thread:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %and19112 = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19112)
  %tobool20.not113 = icmp ne i32 %and19112, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stable)
  %tobool23.not115131 = icmp eq i32 %stable, 0
  %tobool23.not115 = or i1 %tobool23.not115131, %tobool20.not113
  br label %39

land.end:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %and16 = and i32 %36, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %and19 = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp ne i32 %and19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stable)
  %tobool23.not133 = icmp eq i32 %stable, 0
  %tobool23.not = or i1 %tobool23.not133, %tobool20.not
  %37 = lshr exact i32 %and16, 3
  %38 = xor i32 %37, 4
  br label %39

39:                                               ; preds = %land.end, %land.end.thread
  %tobool23.not116 = phi i1 [ %tobool23.not115, %land.end.thread ], [ %tobool23.not, %land.end ]
  %40 = phi i1 [ true, %land.end.thread ], [ %tobool17.not, %land.end ]
  %41 = phi i32 [ 4, %land.end.thread ], [ %38, %land.end ]
  %flags4.0 = select i1 %tobool23.not116, i32 0, i32 %41
  %42 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cnt, align 4
  call void @iov_iter_kvec(ptr noundef nonnull %iter, i32 noundef 1, ptr noundef %vec, i32 noundef %vlen, i32 noundef %43) #12
  %f_wb_err = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 19
  %44 = ptrtoint ptr %f_wb_err to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %f_wb_err, align 8
  %tobool29.not = icmp eq ptr %verf, null
  br i1 %tobool29.not, label %.if.end31_crit_edge, label %if.then30

.if.end31_crit_edge:                              ; preds = %39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then30:                                        ; preds = %39
  call void @__sanitizer_cov_trace_pc() #14
  call void @nfsd_copy_write_verifier(ptr noundef nonnull %verf, ptr noundef %call) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %.if.end31_crit_edge
  %call32 = call i32 @vfs_iter_write(ptr noundef %5, ptr noundef nonnull %iter, ptr noundef nonnull %pos, i32 noundef %flags4.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end31.if.else.sink.split_crit_edge, label %if.end35

if.end31.if.else.sink.split_crit_edge:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.sink.split

if.end35:                                         ; preds = %if.end31
  %46 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call32, ptr %cnt, align 4
  %conv = zext i32 %call32 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %47 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef getelementptr inbounds (%struct.nfsd_stats, ptr @nfsdstats, i32 0, i32 0, i32 5), i64 noundef %conv, i32 noundef %47) #12
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.end35.nfsd_stats_io_write_add.exit_crit_edge, label %if.then.i

if.end35.nfsd_stats_io_write_add.exit_crit_edge:  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsd_stats_io_write_add.exit

if.then.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.svc_export, ptr %32, i32 0, i32 15, i32 1, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %48 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %arrayidx.i, i64 noundef %conv, i32 noundef %48) #12
  br label %nfsd_stats_io_write_add.exit

nfsd_stats_io_write_add.exit:                     ; preds = %if.then.i, %if.end35.nfsd_stats_io_write_add.exit_crit_edge
  %f_mode.i.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 8
  %49 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %f_mode.i.i, align 8
  %and.i.i = and i32 %50, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %nfsd_stats_io_write_add.exit.fsnotify_modify.exit_crit_edge

nfsd_stats_io_write_add.exit.fsnotify_modify.exit_crit_edge: ; preds = %nfsd_stats_io_write_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_modify.exit

if.end.i.i:                                       ; preds = %nfsd_stats_io_write_add.exit
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 1
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %d_inode.i.i.i.i, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 48
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #12
  %57 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i.i.i = icmp eq i32 %58, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.fsnotify_modify.exit_crit_edge, label %if.end.i.i.i

if.end.i.i.fsnotify_modify.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_modify.exit

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %59 = ptrtoint ptr %54 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %54, align 8
  %61 = and i16 %60, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %61)
  %cmp2.i.i.i = icmp eq i16 %61, 16384
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %if.end.i.i.i.if.end8.i.i.i_crit_edge

if.end.i.i.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %62 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %52, align 8
  %and5.i.i.i = and i32 %63, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then4.i.i.i.notify_child.i.i.i_crit_edge, label %if.then4.i.i.i.if.end8.i.i.i_crit_edge

if.then4.i.i.i.if.end8.i.i.i_crit_edge:           ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i.notify_child.i.i.i_crit_edge:      ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then4.i.i.i.if.end8.i.i.i_crit_edge, %if.end.i.i.i.if.end8.i.i.i_crit_edge
  %mask.addr.0.i.i.i = phi i32 [ 1073741826, %if.then4.i.i.i.if.end8.i.i.i_crit_edge ], [ 2, %if.end.i.i.i.if.end8.i.i.i_crit_edge ]
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %52, i32 0, i32 3
  %64 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %d_parent.i.i.i, align 8
  %cmp9.i.i.i = icmp eq ptr %65, %52
  br i1 %cmp9.i.i.i, label %if.end8.i.i.i.notify_child.i.i.i_crit_edge, label %if.end12.i.i.i

if.end8.i.i.i.notify_child.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end12.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i.i.i = call i32 @__fsnotify_parent(ptr noundef %52, i32 noundef %mask.addr.0.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1) #12
  br label %fsnotify_modify.exit

notify_child.i.i.i:                               ; preds = %if.end8.i.i.i.notify_child.i.i.i_crit_edge, %if.then4.i.i.i.notify_child.i.i.i_crit_edge
  %mask.addr.1.i.i.i = phi i32 [ %mask.addr.0.i.i.i, %if.end8.i.i.i.notify_child.i.i.i_crit_edge ], [ 1073741826, %if.then4.i.i.i.notify_child.i.i.i_crit_edge ]
  %call14.i.i.i = call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %54, i32 noundef 0) #12
  br label %fsnotify_modify.exit

fsnotify_modify.exit:                             ; preds = %notify_child.i.i.i, %if.end12.i.i.i, %if.end.i.i.fsnotify_modify.exit_crit_edge, %nfsd_stats_io_write_add.exit.fsnotify_modify.exit_crit_edge
  %f_mapping = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 18
  %66 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %f_mapping, align 4
  %wb_err.i = getelementptr inbounds %struct.address_space, ptr %67, i32 0, i32 11
  %call.i = call i32 @errseq_check(ptr noundef %wb_err.i, i32 noundef %45) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp37 = icmp slt i32 %call.i, 0
  %brmerge = select i1 %cmp37, i1 true, i1 %tobool23.not116
  %brmerge104 = select i1 %brmerge, i1 true, i1 %40
  br i1 %brmerge104, label %out_nfserr, label %if.then44

if.then44:                                        ; preds = %fsnotify_modify.exit
  %68 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %f_inode.i, align 8
  %i_writecount.i = getelementptr inbounds %struct.inode, ptr %69, i32 0, i32 42
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_writecount.i, i32 noundef 4) #12
  %70 = ptrtoint ptr %i_writecount.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %i_writecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp.i = icmp sgt i32 %71, 1
  br i1 %cmp.i, label %if.then44.do.body.i_crit_edge, label %lor.lhs.false.i

if.then44.do.body.i_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %if.then44
  %72 = load i32, ptr @wait_for_concurrent_writes.last_ino, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %69, i32 0, i32 11
  %73 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %i_ino.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp2.i = icmp eq i32 %72, %74
  br i1 %cmp2.i, label %land.lhs.true.i, label %lor.lhs.false.i.if.end26.i_crit_edge

lor.lhs.false.i.if.end26.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %75 = load i32, ptr @wait_for_concurrent_writes.last_dev, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %69, i32 0, i32 8
  %76 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %i_sb.i, align 4
  %s_dev.i = getelementptr inbounds %struct.super_block, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %s_dev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %s_dev.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %79)
  %cmp3.i = icmp eq i32 %75, %79
  br i1 %cmp3.i, label %land.lhs.true.i.do.body.i_crit_edge, label %land.lhs.true.i.if.end26.i_crit_edge

land.lhs.true.i.if.end26.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.body.i:                                        ; preds = %land.lhs.true.i.do.body.i_crit_edge, %if.then44.do.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %80 = load i32, ptr @nfsd_debug, align 4
  %and.i105 = and i32 %80, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105)
  %tobool.not.i106 = icmp eq i32 %and.i105, 0
  br i1 %tobool.not.i106, label %do.body.i.do.end10.i_crit_edge, label %do.end.i

do.body.i.do.end10.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %81 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i107 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i107 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 68
  %85 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pid.i.i, align 8
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %86) #15
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i, %do.body.i.do.end10.i_crit_edge
  call void @msleep(i32 noundef 10) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %87 = load i32, ptr @nfsd_debug, align 4
  %and12.i = and i32 %87, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %do.end10.i.if.end26.i_crit_edge, label %do.end17.i

do.end10.i.if.end26.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

do.end17.i:                                       ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %88 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i56.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i56.i to ptr
  %task20.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %task20.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %task20.i, align 8
  %pid.i57.i = getelementptr inbounds %struct.task_struct, ptr %91, i32 0, i32 68
  %92 = ptrtoint ptr %pid.i57.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pid.i57.i, align 8
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %93) #15
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end17.i, %do.end10.i.if.end26.i_crit_edge, %land.lhs.true.i.if.end26.i_crit_edge, %lor.lhs.false.i.if.end26.i_crit_edge
  %i_state.i = getelementptr inbounds %struct.inode, ptr %69, i32 0, i32 24
  %94 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %i_state.i, align 8
  %and27.i = and i32 %95, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %wait_for_concurrent_writes.exit.thread, label %do.body30.i

wait_for_concurrent_writes.exit.thread:           ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %i_ino47.i118 = getelementptr inbounds %struct.inode, ptr %69, i32 0, i32 11
  %96 = ptrtoint ptr %i_ino47.i118 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %i_ino47.i118, align 8
  store i32 %97, ptr @wait_for_concurrent_writes.last_ino, align 4
  %i_sb48.i119 = getelementptr inbounds %struct.inode, ptr %69, i32 0, i32 8
  %98 = ptrtoint ptr %i_sb48.i119 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i_sb48.i119, align 4
  %s_dev49.i120 = getelementptr inbounds %struct.super_block, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %s_dev49.i120 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %s_dev49.i120, align 8
  store i32 %101, ptr @wait_for_concurrent_writes.last_dev, align 4
  br label %if.then53

do.body30.i:                                      ; preds = %if.end26.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %102 = load i32, ptr @nfsd_debug, align 4
  %and31.i = and i32 %102, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %do.body30.i.wait_for_concurrent_writes.exit_crit_edge, label %do.end36.i

do.body30.i.wait_for_concurrent_writes.exit_crit_edge: ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_for_concurrent_writes.exit

do.end36.i:                                       ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #14
  %103 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i58.i = and i32 %103, -16384
  %104 = inttoptr i32 %and.i58.i to ptr
  %task39.i = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %task39.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %task39.i, align 8
  %pid.i59.i = getelementptr inbounds %struct.task_struct, ptr %106, i32 0, i32 68
  %107 = ptrtoint ptr %pid.i59.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %pid.i59.i, align 8
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %108) #15
  br label %wait_for_concurrent_writes.exit

wait_for_concurrent_writes.exit:                  ; preds = %do.end36.i, %do.body30.i.wait_for_concurrent_writes.exit_crit_edge
  %call45.i = call i32 @vfs_fsync(ptr noundef %5, i32 noundef 0) #12
  %i_ino47.i = getelementptr inbounds %struct.inode, ptr %69, i32 0, i32 11
  %109 = ptrtoint ptr %i_ino47.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %i_ino47.i, align 8
  store i32 %110, ptr @wait_for_concurrent_writes.last_ino, align 4
  %i_sb48.i = getelementptr inbounds %struct.inode, ptr %69, i32 0, i32 8
  %111 = ptrtoint ptr %i_sb48.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %i_sb48.i, align 4
  %s_dev49.i = getelementptr inbounds %struct.super_block, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %s_dev49.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %s_dev49.i, align 8
  store i32 %114, ptr @wait_for_concurrent_writes.last_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp46 = icmp slt i32 %call45.i, 0
  br i1 %cmp46, label %wait_for_concurrent_writes.exit.if.else.sink.split_crit_edge, label %wait_for_concurrent_writes.exit.if.then53_crit_edge

wait_for_concurrent_writes.exit.if.then53_crit_edge: ; preds = %wait_for_concurrent_writes.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then53

wait_for_concurrent_writes.exit.if.else.sink.split_crit_edge: ; preds = %wait_for_concurrent_writes.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.sink.split

out_nfserr:                                       ; preds = %fsnotify_modify.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp51 = icmp sgt i32 %call.i, -1
  br i1 %cmp51, label %out_nfserr.if.then53_crit_edge, label %out_nfserr.if.else_crit_edge

out_nfserr.if.else_crit_edge:                     ; preds = %out_nfserr
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

out_nfserr.if.then53_crit_edge:                   ; preds = %out_nfserr
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then53

if.then53:                                        ; preds = %out_nfserr.if.then53_crit_edge, %wait_for_concurrent_writes.exit.if.then53_crit_edge, %wait_for_concurrent_writes.exit.thread
  %115 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cnt, align 4
  call fastcc void @trace_nfsd_write_io_done(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %116)
  br label %if.end55

if.else.sink.split:                               ; preds = %wait_for_concurrent_writes.exit.if.else.sink.split_crit_edge, %if.end31.if.else.sink.split_crit_edge
  %call45.i.sink = phi i32 [ %call32, %if.end31.if.else.sink.split_crit_edge ], [ %call45.i, %wait_for_concurrent_writes.exit.if.else.sink.split_crit_edge ]
  call void @nfsd_reset_write_verifier(ptr noundef %call) #12
  call fastcc void @trace_nfsd_writeverf_reset(ptr noundef %call, ptr noundef %rqstp, i32 noundef %call45.i.sink)
  br label %if.else

if.else:                                          ; preds = %if.else.sink.split, %out_nfserr.if.else_crit_edge
  %host_err.0128 = phi i32 [ %call.i, %out_nfserr.if.else_crit_edge ], [ %call45.i.sink, %if.else.sink.split ]
  call fastcc void @trace_nfsd_write_err(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %host_err.0128)
  %call54 = call i32 @nfserrno(i32 noundef %host_err.0128) #12
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then53
  %nfserr.0 = phi i32 [ 0, %if.then53 ], [ %call54, %if.else ]
  br i1 %or.cond, label %if.then57, label %if.end55.if.end58_crit_edge

if.end55.if.end58_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  %117 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i108 = and i32 %117, -16384
  %118 = inttoptr i32 %and.i.i108 to ptr
  %task.i109 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %task.i109 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %task.i109, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %120, i32 0, i32 3
  %121 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %flags1.i, align 4
  %and.i110 = and i32 %122, -1048577
  store i32 %and.i110, ptr %flags1.i, align 4
  %and2.i = and i32 %17, 1048576
  %123 = load ptr, ptr %task.i109, align 8
  %flags5.i = getelementptr inbounds %struct.task_struct, ptr %123, i32 0, i32 3
  %124 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %flags5.i, align 4
  %or.i = or i32 %125, %and2.i
  store i32 %or.i, ptr %flags5.i, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end55.if.end58_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #12
  ret i32 %nfserr.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_write_opened(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_write_opened, i32 0, i32 1), ptr blockaddress(@trace_nfsd_write_opened, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !133

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !120

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !153
  %call42 = tail call i32 @__traceiter_nfsd_write_opened(ptr noundef null, ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !154
  %13 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !120

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_write_opened, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_write_opened, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfsd_write_opened.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfsd_write_opened.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 343, ptr noundef nonnull @.str.11) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
declare dso_local void @nfsd_copy_write_verifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_iter_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_write_io_done(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_write_io_done, i32 0, i32 1), ptr blockaddress(@trace_nfsd_write_io_done, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !133

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !120

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !155
  %call42 = tail call i32 @__traceiter_nfsd_write_io_done(ptr noundef null, ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !156
  %13 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !120

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_write_io_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_write_io_done, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfsd_write_io_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfsd_write_io_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 344, ptr noundef nonnull @.str.11) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
define internal fastcc void @trace_nfsd_write_err(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_write_err, i32 0, i32 1), ptr blockaddress(@trace_nfsd_write_err, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !133

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !120

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !157
  %call42 = tail call i32 @__traceiter_nfsd_write_err(ptr noundef null, ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !158
  %13 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !120

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_write_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_write_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfsd_write_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfsd_write_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 379, ptr noundef nonnull @.str.11) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
define dso_local i32 @nfsd_read(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, ptr noundef %vec, i32 noundef %vlen, ptr nocapture noundef %count, ptr nocapture noundef writeonly %eof) local_unnamed_addr #0 align 64 {
entry:
  %iter.i = alloca %struct.iov_iter, align 8
  %ppos.i = alloca i64, align 8
  %sd.i = alloca %struct.splice_desc, align 8
  %nf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nf) #12
  %0 = ptrtoint ptr %nf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nf, align 4, !annotation !122
  %1 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %count, align 4
  tail call fastcc void @trace_nfsd_read_start(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %2)
  %call = call i32 @nfsd_file_acquire(ptr noundef %rqstp, ptr noundef %fhp, i32 noundef 4, ptr noundef nonnull %nf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nf, align 4
  %nf_file = getelementptr inbounds %struct.nfsd_file, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %nf_file to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nf_file, align 4
  %f_op = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_op, align 4
  %splice_read = getelementptr inbounds %struct.file_operations, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %splice_read to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %splice_read, align 4
  %tobool1.not = icmp eq ptr %10, null
  br i1 %tobool1.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %rq_flags = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 33
  %11 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %rq_flags, align 4
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not = icmp eq i32 %13, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then4

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sd.i) #12
  %14 = getelementptr inbounds i8, ptr %sd.i, i32 32
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 72057594037927935, ptr %14, align 8, !annotation !122
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  %18 = ptrtoint ptr %sd.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %sd.i, align 8
  %len.i = getelementptr inbounds %struct.splice_desc, ptr %sd.i, i32 0, i32 1
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %len.i, align 4
  %flags.i = getelementptr inbounds %struct.splice_desc, ptr %sd.i, i32 0, i32 2
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %flags.i, align 8
  %u.i = getelementptr inbounds %struct.splice_desc, ptr %sd.i, i32 0, i32 3
  %21 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rqstp, ptr %u.i, align 4
  %pos.i = getelementptr inbounds %struct.splice_desc, ptr %sd.i, i32 0, i32 4
  %22 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %offset, ptr %pos.i, align 8
  %opos.i = getelementptr inbounds %struct.splice_desc, ptr %sd.i, i32 0, i32 5
  %23 = ptrtoint ptr %opos.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %opos.i, align 8
  %num_spliced.i = getelementptr inbounds %struct.splice_desc, ptr %sd.i, i32 0, i32 6
  %24 = ptrtoint ptr %num_spliced.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %num_spliced.i, align 4
  call fastcc void @trace_nfsd_read_splice(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %17) #12
  %rq_respages.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 21
  %25 = ptrtoint ptr %rq_respages.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rq_respages.i, align 4
  %add.ptr.i = getelementptr ptr, ptr %26, i32 1
  %rq_next_page.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 22
  %27 = ptrtoint ptr %rq_next_page.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i, ptr %rq_next_page.i, align 8
  %call.i = call i32 @splice_direct_to_actor(ptr noundef %6, ptr noundef nonnull %sd.i, ptr noundef nonnull @nfsd_direct_splice_actor) #12
  %call1.i = call fastcc i32 @nfsd_finish_read(ptr noundef %rqstp, ptr noundef %fhp, ptr noundef %6, i64 noundef %offset, ptr noundef %count, ptr noundef %eof, i32 noundef %call.i) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sd.i) #12
  br label %if.end7

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i) #12
  %28 = call ptr @memset(ptr %iter.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppos.i) #12
  %29 = ptrtoint ptr %ppos.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %offset, ptr %ppos.i, align 8
  %30 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count, align 4
  call fastcc void @trace_nfsd_read_vector(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %31) #12
  %32 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count, align 4
  call void @iov_iter_kvec(ptr noundef nonnull %iter.i, i32 noundef 0, ptr noundef %vec, i32 noundef %vlen, i32 noundef %33) #12
  %call.i30 = call i32 @vfs_iter_read(ptr noundef %6, ptr noundef nonnull %iter.i, ptr noundef nonnull %ppos.i, i32 noundef 0) #12
  %call1.i31 = call fastcc i32 @nfsd_finish_read(ptr noundef %rqstp, ptr noundef %fhp, ptr noundef %6, i64 noundef %offset, ptr noundef %count, ptr noundef %eof, i32 noundef %call.i30) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppos.i) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #12
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %err.0 = phi i32 [ %call1.i, %if.then4 ], [ %call1.i31, %if.else ]
  %34 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nf, align 4
  call void @nfsd_file_put(ptr noundef %35) #12
  %36 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count, align 4
  call fastcc void @trace_nfsd_read_done(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %37)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end7 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nf) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_read_start(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_start, i32 0, i32 1), ptr blockaddress(@trace_nfsd_read_start, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !133

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !120

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !159
  %call42 = tail call i32 @__traceiter_nfsd_read_start(ptr noundef null, ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !160
  %13 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !120

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_start, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfsd_read_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfsd_read_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 337, ptr noundef nonnull @.str.11) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
declare dso_local i32 @nfsd_file_acquire(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_file_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_read_done(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_done, i32 0, i32 1), ptr blockaddress(@trace_nfsd_read_done, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !133

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !120

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !161
  %call42 = tail call i32 @__traceiter_nfsd_read_done(ptr noundef null, ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !162
  %13 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !120

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_done, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfsd_read_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfsd_read_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 341, ptr noundef nonnull @.str.11) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
define dso_local i32 @nfsd_write(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, ptr noundef %vec, i32 noundef %vlen, ptr nocapture noundef %cnt, i32 noundef %stable, ptr noundef %verf) local_unnamed_addr #0 align 64 {
entry:
  %nf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nf) #12
  %0 = ptrtoint ptr %nf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nf, align 4, !annotation !122
  %1 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cnt, align 4
  tail call fastcc void @trace_nfsd_write_start(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %2)
  %call = call i32 @nfsd_file_acquire(ptr noundef %rqstp, ptr noundef %fhp, i32 noundef 2, ptr noundef nonnull %nf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nf, align 4
  %call1 = call i32 @nfsd_vfs_write(ptr noundef %rqstp, ptr noundef %fhp, ptr noundef %4, i64 noundef %offset, ptr noundef %vec, i32 noundef %vlen, ptr noundef %cnt, i32 noundef %stable, ptr noundef %verf)
  %5 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nf, align 4
  call void @nfsd_file_put(ptr noundef %6) #12
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call1, %if.end ]
  %7 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cnt, align 4
  call fastcc void @trace_nfsd_write_done(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nf) #12
  ret i32 %err.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_write_start(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_write_start, i32 0, i32 1), ptr blockaddress(@trace_nfsd_write_start, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !133

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !120

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !163
  %call42 = tail call i32 @__traceiter_nfsd_write_start(ptr noundef null, ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !164
  %13 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !120

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_write_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_write_start, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfsd_write_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfsd_write_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 342, ptr noundef nonnull @.str.11) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
define internal fastcc void @trace_nfsd_write_done(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_write_done, i32 0, i32 1), ptr blockaddress(@trace_nfsd_write_done, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !133

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !120

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !165
  %call42 = tail call i32 @__traceiter_nfsd_write_done(ptr noundef null, ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !166
  %13 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !120

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_write_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_write_done, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfsd_write_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfsd_write_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 345, ptr noundef nonnull @.str.11) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
define dso_local i32 @nfsd_commit(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %count, ptr noundef %verf) local_unnamed_addr #0 align 64 {
entry:
  %nf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nf) #12
  %0 = ptrtoint ptr %nf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nf, align 4, !annotation !122
  %call = call i32 @nfsd_file_acquire(ptr noundef %rqstp, ptr noundef %fhp, i32 noundef 514, ptr noundef nonnull %nf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %1 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fh_dentry, align 8
  %d_sb = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_sb, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %s_maxbytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %offset)
  %cmp = icmp ugt i64 %6, %offset
  br i1 %cmp, label %if.then1, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool2.not = icmp eq i32 %count, 0
  br i1 %tobool2.not, label %if.then1.if.end10_crit_edge, label %land.lhs.true

if.then1.if.end10_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true:                                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i32 %count to i64
  %add = add i64 %offset, -1
  %sub = add i64 %add, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %6)
  %cmp3 = icmp ult i64 %sub, %6
  %spec.select = select i1 %cmp3, i64 %sub, i64 9223372036854775807
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %if.then1.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %start.0 = phi i64 [ %offset, %if.then1.if.end10_crit_edge ], [ 0, %if.end.if.end10_crit_edge ], [ %offset, %land.lhs.true ]
  %end.0 = phi i64 [ 9223372036854775807, %if.then1.if.end10_crit_edge ], [ 9223372036854775807, %if.end.if.end10_crit_edge ], [ %spec.select, %land.lhs.true ]
  %7 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nf, align 4
  %nf_net = getelementptr inbounds %struct.nfsd_file, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %nf_net to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nf_net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %11 = load i32, ptr @nfsd_net_id, align 4
  %call11 = call fastcc ptr @net_generic(ptr noundef %10, i32 noundef %11)
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %12 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fh_export, align 4
  %ex_flags = getelementptr inbounds %struct.svc_export, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ex_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ex_flags, align 4
  %and = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  %16 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nf, align 4
  %nf_file = getelementptr inbounds %struct.nfsd_file, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %nf_file to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nf_file, align 4
  %f_wb_err = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %f_wb_err to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %f_wb_err, align 8
  %call15 = call i32 @vfs_fsync_range(ptr noundef %19, i64 noundef %start.0, i64 noundef %end.0, i32 noundef 0) #12
  %22 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call15, label %sw.default [
    i32 0, label %sw.bb
    i32 -22, label %if.then13.sw.epilog_crit_edge
  ]

if.then13.sw.epilog_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  call void @nfsd_copy_write_verifier(ptr noundef %verf, ptr noundef %call11) #12
  %23 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nf, align 4
  %nf_file16 = getelementptr inbounds %struct.nfsd_file, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %nf_file16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nf_file16, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %26, i32 0, i32 18
  %27 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %f_mapping, align 4
  %wb_err.i = getelementptr inbounds %struct.address_space, ptr %28, i32 0, i32 11
  %call.i = call i32 @errseq_check(ptr noundef %wb_err.i, i32 noundef %21) #12
  br label %sw.epilog

sw.default:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  call void @nfsd_reset_write_verifier(ptr noundef %call11) #12
  call fastcc void @trace_nfsd_writeverf_reset(ptr noundef %call11, ptr noundef %rqstp, i32 noundef %call15)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb, %if.then13.sw.epilog_crit_edge
  %err2.0 = phi i32 [ %call15, %sw.default ], [ %call.i, %sw.bb ], [ %call15, %if.then13.sw.epilog_crit_edge ]
  %call19 = call i32 @nfserrno(i32 noundef %err2.0) #12
  br label %if.end20

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  call void @nfsd_copy_write_verifier(ptr noundef %verf, ptr noundef %call11) #12
  br label %if.end20

if.end20:                                         ; preds = %if.else, %sw.epilog
  %err.0 = phi i32 [ 0, %if.else ], [ %call19, %sw.epilog ]
  %29 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nf, align 4
  call void @nfsd_file_put(ptr noundef %30) #12
  br label %out

out:                                              ; preds = %if.end20, %entry.out_crit_edge
  %err.1 = phi i32 [ %call, %entry.out_crit_edge ], [ %err.0, %if.end20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nf) #12
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_create_locked(ptr noundef %rqstp, ptr nocapture noundef readonly %fhp, ptr nocapture readnone %fname, i32 %flen, ptr noundef %iap, i32 noundef %type, i32 noundef %rdev, ptr noundef %resfhp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %0 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %fh_dentry1 = getelementptr inbounds %struct.svc_fh, ptr %resfhp, i32 0, i32 2
  %4 = ptrtoint ptr %fh_dentry1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fh_dentry1, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.dget.exit_crit_edge, label %if.then.i

entry.dget.exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dget.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #12
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %entry.dget.exit_crit_edge
  %fh_locked = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 4
  %6 = ptrtoint ptr %fh_locked to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fh_locked, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %land.end, label %if.end37

land.end:                                         ; preds = %dget.exit
  %.b174 = load i1, ptr @nfsd_create_locked.__already_done, align 1
  br i1 %.b174, label %land.end.cleanup121_crit_edge, label %if.then8, !prof !120

land.end.cleanup121_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup121

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nfsd_create_locked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1249, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %1) #12
  br label %cleanup121

if.end37:                                         ; preds = %dget.exit
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %8 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fh_export, align 4
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  %call.i.i = tail call i32 @nfsexp_flags(ptr noundef %rqstp, ptr noundef %9) #12
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool7.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false.i, label %if.end37.cleanup121_crit_edge

if.end37.cleanup121_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup121

lor.lhs.false.i:                                  ; preds = %if.end37
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ex_path.i, align 8
  %call8.i = tail call zeroext i1 @__mnt_is_readonly(ptr noundef %13) #12
  br i1 %call8.i, label %lor.lhs.false.i.cleanup121_crit_edge, label %if.end10.i

lor.lhs.false.i.cleanup121_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup121

if.end10.i:                                       ; preds = %lor.lhs.false.i
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_flags.i, align 4
  %and11.i = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end16.i, label %if.end10.i.cleanup121_crit_edge

if.end10.i.cleanup121_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup121

if.end16.i:                                       ; preds = %if.end10.i
  %call41.i = tail call i32 @inode_permission(ptr noundef nonnull @init_user_ns, ptr noundef %11, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cond = icmp eq i32 %call41.i, 0
  br i1 %cond, label %if.end16.i.if.end41_crit_edge, label %nfsd_permission.exit

if.end16.i.if.end41_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

nfsd_permission.exit:                             ; preds = %if.end16.i
  %call57.i = tail call i32 @nfserrno(i32 noundef %call41.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool39.not = icmp eq i32 %call57.i, 0
  br i1 %tobool39.not, label %nfsd_permission.exit.if.end41_crit_edge, label %nfsd_permission.exit.cleanup121_crit_edge

nfsd_permission.exit.cleanup121_crit_edge:        ; preds = %nfsd_permission.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup121

nfsd_permission.exit.if.end41_crit_edge:          ; preds = %nfsd_permission.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.end41:                                         ; preds = %nfsd_permission.exit.if.end41_crit_edge, %if.end16.i.if.end41_crit_edge
  %16 = ptrtoint ptr %iap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iap, align 8
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.then43, label %if.end41.if.end44_crit_edge

if.end41.if.end44_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 1
  %18 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %ia_mode, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end41.if.end44_crit_edge
  %ia_mode45 = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 1
  %19 = ptrtoint ptr %ia_mode45 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ia_mode45, align 4
  %21 = and i16 %20, 4095
  %22 = trunc i32 %type to i16
  %conv47 = or i16 %21, %22
  store i16 %conv47, ptr %ia_mode45, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_flags, align 4
  %and49 = and i32 %26, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end44.if.end57_crit_edge

if.end44.if.end57_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then51:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %call52 = tail call i32 @current_umask() #12
  %27 = ptrtoint ptr %ia_mode45 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ia_mode45, align 4
  %29 = trunc i32 %call52 to i16
  %30 = xor i16 %29, -1
  %conv56 = and i16 %28, %30
  store i16 %conv56, ptr %ia_mode45, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %if.end44.if.end57_crit_edge
  %31 = add i32 %type, -4096
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 20)
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %32, label %sw.epilog.thread201 [
    i32 7, label %sw.bb
    i32 3, label %sw.bb63
    i32 1, label %if.end57.sw.bb99_crit_edge
    i32 5, label %if.end57.sw.bb99_crit_edge211
    i32 0, label %if.end57.sw.bb99_crit_edge212
    i32 11, label %if.end57.sw.bb99_crit_edge213
  ]

if.end57.sw.bb99_crit_edge213:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb99

if.end57.sw.bb99_crit_edge212:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb99

if.end57.sw.bb99_crit_edge211:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb99

if.end57.sw.bb99_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb99

sw.bb:                                            ; preds = %if.end57
  %34 = ptrtoint ptr %ia_mode45 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ia_mode45, align 4
  %call59 = tail call i32 @vfs_create(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %5, i16 noundef zeroext %35, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then61, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then61:                                        ; preds = %sw.bb
  %36 = ptrtoint ptr %iap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iap, align 8
  %and.i = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i175 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i175, label %if.then61.if.end109_crit_edge, label %land.lhs.true.i

if.then61.if.end109_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

land.lhs.true.i:                                  ; preds = %if.then61
  %ia_size.i = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 4
  %38 = ptrtoint ptr %ia_size.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ia_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %cmp.i = icmp eq i64 %39, 0
  br i1 %cmp.i, label %if.then.i176, label %land.lhs.true.i.if.end109_crit_edge

land.lhs.true.i.if.end109_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

if.then.i176:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %and2.i = and i32 %37, -9
  %40 = ptrtoint ptr %iap to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and2.i, ptr %iap, align 8
  br label %if.end109

sw.bb63:                                          ; preds = %if.end57
  %41 = ptrtoint ptr %ia_mode45 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %ia_mode45, align 4
  %call65 = tail call i32 @vfs_mkdir(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %5, i16 noundef zeroext %42) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %land.lhs.true, label %sw.bb63.sw.epilog_crit_edge

sw.bb63.sw.epilog_crit_edge:                      ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb63
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %44, null
  br i1 %tobool.not.i.i.not, label %if.then75, label %land.lhs.true.if.end109_crit_edge, !prof !124

land.lhs.true.if.end109_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

if.then75:                                        ; preds = %land.lhs.true
  %d_name = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name, align 8
  %d_parent = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 3
  %47 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %d_parent, align 8
  %49 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %d_name, align 8
  %call77 = tail call ptr @lookup_one_len(ptr noundef %46, ptr noundef %48, i32 noundef %50) #12
  %cmp.i177 = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %call77 to i32
  br label %sw.epilog

if.end81:                                         ; preds = %if.then75
  %52 = ptrtoint ptr %call77 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call77, align 8
  %and.i.i.i = and i32 %53, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i, label %if.then89, label %if.end90, !prof !124

if.then89:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dput(ptr noundef %call77) #12
  br label %cleanup121

if.end90:                                         ; preds = %if.end81
  %54 = ptrtoint ptr %fh_dentry1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fh_dentry1, align 8
  tail call void @dput(ptr noundef %55) #12
  %tobool.not.i178 = icmp eq ptr %call77, null
  br i1 %tobool.not.i178, label %if.end90.dget.exit181_crit_edge, label %if.then.i180

if.end90.dget.exit181_crit_edge:                  ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %dget.exit181

if.then.i180:                                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i179 = getelementptr inbounds %struct.dentry, ptr %call77, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i179) #12
  br label %dget.exit181

dget.exit181:                                     ; preds = %if.then.i180, %if.end90.dget.exit181_crit_edge
  %56 = ptrtoint ptr %fh_dentry1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call77, ptr %fh_dentry1, align 8
  %call94 = tail call i32 @fh_update(ptr noundef %resfhp) #12
  tail call void @dput(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %dget.exit181.if.end109_crit_edge, label %dget.exit181.cleanup121_crit_edge

dget.exit181.cleanup121_crit_edge:                ; preds = %dget.exit181
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup121

dget.exit181.if.end109_crit_edge:                 ; preds = %dget.exit181
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

sw.bb99:                                          ; preds = %if.end57.sw.bb99_crit_edge, %if.end57.sw.bb99_crit_edge211, %if.end57.sw.bb99_crit_edge212, %if.end57.sw.bb99_crit_edge213
  %57 = ptrtoint ptr %ia_mode45 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %ia_mode45, align 4
  %call101 = tail call i32 @vfs_mknod(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %5, i16 noundef zeroext %58, i32 noundef %rdev) #12
  br label %sw.epilog

sw.epilog.thread201:                              ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %type) #15
  br label %out_nfserr

sw.epilog:                                        ; preds = %sw.bb99, %if.then79, %sw.bb63.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %host_err.1 = phi i32 [ %call101, %sw.bb99 ], [ %call65, %sw.bb63.sw.epilog_crit_edge ], [ %call59, %sw.bb.sw.epilog_crit_edge ], [ %51, %if.then79 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %host_err.1)
  %cmp = icmp slt i32 %host_err.1, 0
  br i1 %cmp, label %sw.epilog.out_nfserr_crit_edge, label %sw.epilog.if.end109_crit_edge

sw.epilog.if.end109_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

sw.epilog.out_nfserr_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_nfserr

if.end109:                                        ; preds = %sw.epilog.if.end109_crit_edge, %dget.exit181.if.end109_crit_edge, %land.lhs.true.if.end109_crit_edge, %if.then.i176, %land.lhs.true.i.if.end109_crit_edge, %if.then61.if.end109_crit_edge
  %dchild.1200 = phi ptr [ %5, %sw.epilog.if.end109_crit_edge ], [ %5, %land.lhs.true.if.end109_crit_edge ], [ %5, %if.then61.if.end109_crit_edge ], [ %5, %land.lhs.true.i.if.end109_crit_edge ], [ %5, %if.then.i176 ], [ %call77, %dget.exit181.if.end109_crit_edge ]
  %call110 = tail call fastcc i32 @nfsd_create_setattr(ptr noundef %rqstp, ptr noundef %resfhp, ptr noundef %iap)
  %59 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i.i182 = getelementptr inbounds %struct.dentry, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %d_inode.i.i182 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %d_inode.i.i182, align 8
  %63 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fh_export, align 4
  %ex_flags.i = getelementptr inbounds %struct.svc_export, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %ex_flags.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ex_flags.i, align 4
  %and.i183 = and i32 %66, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i183)
  %tobool.not.i184 = icmp eq i32 %and.i183, 0
  br i1 %tobool.not.i184, label %if.end.i, label %if.end109.commit_metadata.exit_crit_edge

if.end109.commit_metadata.exit_crit_edge:         ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %commit_metadata.exit

if.end.i:                                         ; preds = %if.end109
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %62, i32 0, i32 8
  %67 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i_sb.i.i, align 4
  %s_export_op.i.i = getelementptr inbounds %struct.super_block, ptr %68, i32 0, i32 9
  %69 = ptrtoint ptr %s_export_op.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_export_op.i.i, align 16
  %commit_metadata.i.i = getelementptr inbounds %struct.export_operations, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %commit_metadata.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %commit_metadata.i.i, align 4
  %tobool.not.i.i185 = icmp eq ptr %72, null
  br i1 %tobool.not.i.i185, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i186 = tail call i32 %72(ptr noundef %62) #12
  br label %commit_metadata.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i.i = tail call i32 @sync_inode_metadata(ptr noundef %62, i32 noundef 1) #12
  br label %commit_metadata.exit

commit_metadata.exit:                             ; preds = %if.end.i.i, %if.then.i.i, %if.end109.commit_metadata.exit_crit_edge
  %retval.0.i187 = phi i32 [ 0, %if.end109.commit_metadata.exit_crit_edge ], [ %call.i.i186, %if.then.i.i ], [ %call2.i.i, %if.end.i.i ]
  %call112 = tail call i32 @nfserrno(i32 noundef %retval.0.i187) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  %spec.select = select i1 %tobool113.not, i32 %call110, i32 %call112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool116.not = icmp eq i32 %spec.select, 0
  br i1 %tobool116.not, label %if.then117, label %commit_metadata.exit.cleanup121_crit_edge

commit_metadata.exit.cleanup121_crit_edge:        ; preds = %commit_metadata.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup121

if.then117:                                       ; preds = %commit_metadata.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call118 = tail call i32 @fh_update(ptr noundef %resfhp) #12
  br label %cleanup121

out_nfserr:                                       ; preds = %sw.epilog.out_nfserr_crit_edge, %sw.epilog.thread201
  %host_err.1205 = phi i32 [ -22, %sw.epilog.thread201 ], [ %host_err.1, %sw.epilog.out_nfserr_crit_edge ]
  %call120 = tail call i32 @nfserrno(i32 noundef %host_err.1205) #12
  br label %cleanup121

cleanup121:                                       ; preds = %out_nfserr, %if.then117, %commit_metadata.exit.cleanup121_crit_edge, %dget.exit181.cleanup121_crit_edge, %if.then89, %nfsd_permission.exit.cleanup121_crit_edge, %if.end10.i.cleanup121_crit_edge, %lor.lhs.false.i.cleanup121_crit_edge, %if.end37.cleanup121_crit_edge, %if.then8, %land.end.cleanup121_crit_edge
  %err.2 = phi i32 [ %call57.i, %nfsd_permission.exit.cleanup121_crit_edge ], [ %call120, %out_nfserr ], [ %spec.select, %commit_metadata.exit.cleanup121_crit_edge ], [ %call118, %if.then117 ], [ 5, %if.then8 ], [ 5, %land.end.cleanup121_crit_edge ], [ 10006, %if.then89 ], [ %call94, %dget.exit181.cleanup121_crit_edge ], [ 1, %if.end10.i.cleanup121_crit_edge ], [ 30, %if.end37.cleanup121_crit_edge ], [ 30, %lor.lhs.false.i.cleanup121_crit_edge ]
  %dchild.2 = phi ptr [ %5, %nfsd_permission.exit.cleanup121_crit_edge ], [ %5, %out_nfserr ], [ %dchild.1200, %commit_metadata.exit.cleanup121_crit_edge ], [ %dchild.1200, %if.then117 ], [ %5, %if.then8 ], [ %5, %land.end.cleanup121_crit_edge ], [ %5, %if.then89 ], [ %call77, %dget.exit181.cleanup121_crit_edge ], [ %5, %if.end10.i.cleanup121_crit_edge ], [ %5, %if.end37.cleanup121_crit_edge ], [ %5, %lor.lhs.false.i.cleanup121_crit_edge ]
  tail call void @dput(ptr noundef %dchild.2) #12
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_create(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_mkdir(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fh_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_mknod(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfsd_create_setattr(ptr noundef %rqstp, ptr noundef %resfhp, ptr noundef %iap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iap, align 8
  %and = and i32 %1, -2
  store i32 %and, ptr %iap, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %8)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %agg.tmp.sroa.0.0.copyload)
  %cmp.i = icmp eq i32 %agg.tmp.sroa.0.0.copyload, 0
  br i1 %cmp.i, label %if.endthread-pre-split, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and4 = and i32 %1, -8
  %9 = ptrtoint ptr %iap to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and4, ptr %iap, align 8
  br label %if.end

if.endthread-pre-split:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %iap to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %iap, align 8
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %if.then
  %11 = phi i32 [ %.pr, %if.endthread-pre-split ], [ %and4, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 @nfsd_setattr(ptr noundef %rqstp, ptr noundef %resfhp, ptr noundef %iap, i32 noundef 0, i64 noundef 0)
  br label %return

if.end8:                                          ; preds = %if.end
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %resfhp, i32 0, i32 2
  %12 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fh_dentry.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode.i.i, align 8
  %fh_export.i = getelementptr inbounds %struct.svc_fh, ptr %resfhp, i32 0, i32 3
  %16 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fh_export.i, align 4
  %ex_flags.i = getelementptr inbounds %struct.svc_export, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %ex_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ex_flags.i, align 4
  %and.i16 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16)
  %tobool.not.i = icmp eq i32 %and.i16, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.commit_metadata.exit_crit_edge

if.end8.commit_metadata.exit_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %commit_metadata.exit

if.end.i:                                         ; preds = %if.end8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i.i, align 4
  %s_export_op.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %s_export_op.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_export_op.i.i, align 16
  %commit_metadata.i.i = getelementptr inbounds %struct.export_operations, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %commit_metadata.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %commit_metadata.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 %25(ptr noundef %15) #12
  br label %commit_metadata.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i.i = tail call i32 @sync_inode_metadata(ptr noundef %15, i32 noundef 1) #12
  br label %commit_metadata.exit

commit_metadata.exit:                             ; preds = %if.end.i.i, %if.then.i.i, %if.end8.commit_metadata.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end8.commit_metadata.exit_crit_edge ], [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.end.i.i ]
  %call10 = tail call i32 @nfserrno(i32 noundef %retval.0.i) #12
  br label %return

return:                                           ; preds = %commit_metadata.exit, %if.then6
  %retval.0 = phi i32 [ %call7, %if.then6 ], [ %call10, %commit_metadata.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_create(ptr noundef %rqstp, ptr noundef %fhp, ptr noundef %fname, i32 noundef %flen, ptr noundef %iap, i32 noundef %type, i32 noundef %rdev, ptr noundef %resfhp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %flen)
  %cmp = icmp slt i32 %flen, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %fname to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fname, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %1)
  %cmp1 = icmp eq i8 %1, 46
  br i1 %cmp1, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %flen)
  %cmp4 = icmp eq i32 %flen, 1
  br i1 %cmp4, label %land.lhs.true3.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true3
  %arrayidx6 = getelementptr i8, ptr %fname, i32 1
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %3)
  %cmp8 = icmp eq i8 %3, 46
  br i1 %cmp8, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext 16384, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %4 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fh_dentry, align 8
  %fh_want_write.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 5
  %6 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fh_want_write.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.end.i:                                         ; preds = %if.end11
  %fh_export.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %8 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ex_path.i, align 8
  %call.i = tail call i32 @mnt_want_write(ptr noundef %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then14

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %fh_want_write.i, align 1
  %13 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load ptr, ptr %fh_dentry, align 8
  br label %if.end16

if.then14:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = tail call i32 @nfserrno(i32 noundef %call.i) #12
  br label %cleanup

if.end16:                                         ; preds = %if.then2.i, %if.end11.if.end16_crit_edge
  %14 = phi ptr [ %5, %if.end11.if.end16_crit_edge ], [ %.pr, %if.then2.i ]
  %tobool.not.i53 = icmp eq ptr %14, null
  br i1 %tobool.not.i53, label %do.body4.i, label %do.end9.i, !prof !124

do.body4.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfsfh.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 360, 0\0A.popsection", ""() #12, !srcloc !125
  unreachable

do.end9.i:                                        ; preds = %if.end16
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 4
  %15 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fh_locked.i, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool10.not.i = icmp eq i8 %16, 0
  br i1 %tobool10.not.i, label %if.end15.i, label %do.end14.i

do.end14.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %14) #15
  br label %fh_lock_nested.exit

if.end15.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 1) #12
  tail call void @fh_fill_pre_attrs(ptr noundef %fhp) #12
  %19 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %fh_locked.i, align 8
  br label %fh_lock_nested.exit

fh_lock_nested.exit:                              ; preds = %if.end15.i, %do.end14.i
  %call17 = tail call ptr @lookup_one_len(ptr noundef %fname, ptr noundef %5, i32 noundef %flen) #12
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end22

if.then20:                                        ; preds = %fh_lock_nested.exit
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %call17 to i32
  %call21 = tail call i32 @nfserrno(i32 noundef %20) #12
  br label %cleanup

if.end22:                                         ; preds = %fh_lock_nested.exit
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %21 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fh_export, align 4
  %call23 = tail call i32 @fh_compose(ptr noundef %resfhp, ptr noundef %22, ptr noundef %call17, ptr noundef %fhp) #12
  tail call void @dput(ptr noundef %call17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %call27 = tail call i32 @nfsd_create_locked(ptr noundef %rqstp, ptr noundef %fhp, ptr undef, i32 undef, ptr noundef %iap, i32 noundef %type, i32 noundef %rdev, ptr noundef %resfhp)
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end22.cleanup_crit_edge, %if.then20, %if.then14, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.then14 ], [ %call21, %if.then20 ], [ %call27, %if.end26 ], [ 17, %lor.lhs.false.cleanup_crit_edge ], [ 17, %land.lhs.true3.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_nfsd_create(ptr noundef %rqstp, ptr noundef %fhp, ptr noundef %fname, i32 noundef %flen, ptr noundef %iap, ptr noundef %resfhp, i32 noundef %createmode, ptr nocapture noundef readonly %verifier, ptr noundef writeonly %truncp, ptr noundef writeonly %created) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flen)
  %tobool.not = icmp eq i32 %flen, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %flen)
  %cmp = icmp slt i32 %flen, 3
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %0 = ptrtoint ptr %fname to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fname, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %1)
  %cmp1 = icmp eq i8 %1, 46
  br i1 %cmp1, label %land.lhs.true3, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

land.lhs.true3:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %flen)
  %cmp4 = icmp eq i32 %flen, 1
  br i1 %cmp4, label %land.lhs.true3.out_crit_edge, label %lor.lhs.false

land.lhs.true3.out_crit_edge:                     ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false:                                    ; preds = %land.lhs.true3
  %arrayidx6 = getelementptr i8, ptr %fname, i32 1
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %3)
  %cmp8 = icmp eq i8 %3, 46
  br i1 %cmp8, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false.if.end11_crit_edge

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end11:                                         ; preds = %lor.lhs.false.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %4 = ptrtoint ptr %iap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iap, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.then13, label %if.end11.if.end14_crit_edge

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 1
  %6 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %ia_mode, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11.if.end14_crit_edge
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext 16384, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %if.end17, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end17:                                         ; preds = %if.end14
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %7 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i, align 8
  %fh_want_write.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 5
  %11 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fh_want_write.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end17.if.end22_crit_edge

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.end.i:                                         ; preds = %if.end17
  %fh_export.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %13 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ex_path.i, align 8
  %call.i = tail call i32 @mnt_want_write(ptr noundef %16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.out_nfserr_crit_edge

if.end.i.out_nfserr_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_nfserr

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %fh_want_write.i, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then2.i, %if.end17.if.end22_crit_edge
  %18 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fh_dentry, align 8
  %tobool.not.i224 = icmp eq ptr %19, null
  br i1 %tobool.not.i224, label %do.body4.i, label %do.end9.i, !prof !124

do.body4.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfsfh.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 360, 0\0A.popsection", ""() #12, !srcloc !125
  unreachable

do.end9.i:                                        ; preds = %if.end22
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 4
  %20 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fh_locked.i, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool10.not.i = icmp eq i8 %21, 0
  br i1 %tobool10.not.i, label %if.end15.i, label %do.end14.i

do.end14.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i225 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %19) #15
  br label %fh_lock_nested.exit

if.end15.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 5
  %22 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 1) #12
  tail call void @fh_fill_pre_attrs(ptr noundef %fhp) #12
  %24 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %fh_locked.i, align 8
  br label %fh_lock_nested.exit

fh_lock_nested.exit:                              ; preds = %if.end15.i, %do.end14.i
  %call23 = tail call ptr @lookup_one_len(ptr noundef %fname, ptr noundef %8, i32 noundef %flen) #12
  %25 = ptrtoint ptr %call23 to i32
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %fh_lock_nested.exit.out_nfserr_crit_edge, label %if.end27

fh_lock_nested.exit.out_nfserr_crit_edge:         ; preds = %fh_lock_nested.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_nfserr

if.end27:                                         ; preds = %fh_lock_nested.exit
  %d_inode.i226 = getelementptr inbounds %struct.dentry, ptr %call23, i32 0, i32 5
  %26 = ptrtoint ptr %d_inode.i226 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_inode.i226, align 8
  %cmp.i227 = icmp eq ptr %27, null
  br i1 %cmp.i227, label %if.then29, label %if.end27.if.end34_crit_edge

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then29:                                        ; preds = %if.end27
  %call30 = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext 16384, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.if.end34_crit_edge, label %if.then29.out_crit_edge

if.then29.out_crit_edge:                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.end34:                                         ; preds = %if.then29.if.end34_crit_edge, %if.end27.if.end34_crit_edge
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %28 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fh_export, align 4
  %call35 = tail call i32 @fh_compose(ptr noundef %resfhp, ptr noundef %29, ptr noundef %call23, ptr noundef %fhp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.out_crit_edge

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end38:                                         ; preds = %if.end34
  %30 = and i32 %createmode, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %.not = icmp eq i32 %30, 2
  br i1 %.not, label %if.then41, label %if.end38.if.end46_crit_edge

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %verifier to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %verifier, align 4
  %and43 = and i32 %32, 2147483647
  %arrayidx44 = getelementptr i32, ptr %verifier, i32 1
  %33 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx44, align 4
  %and45 = and i32 %34, 2147483647
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %if.end38.if.end46_crit_edge
  %v_mtime.0 = phi i32 [ %and43, %if.then41 ], [ 0, %if.end38.if.end46_crit_edge ]
  %v_atime.0 = phi i32 [ %and45, %if.then41 ], [ 0, %if.end38.if.end46_crit_edge ]
  %35 = ptrtoint ptr %d_inode.i226 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d_inode.i226, align 8
  %cmp.i229.not = icmp eq ptr %36, null
  br i1 %cmp.i229.not, label %if.end107, label %if.then48

if.then48:                                        ; preds = %if.end46
  %37 = zext i32 %createmode to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %createmode, label %if.then48.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb62
    i32 3, label %if.then48.sw.bb82_crit_edge
    i32 1, label %if.then48.sw.bb106_crit_edge
  ]

if.then48.sw.bb106_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb106

if.then48.sw.epilog_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then48.sw.bb82_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = zext i32 %v_mtime.0 to i64
  br label %sw.bb82

sw.bb:                                            ; preds = %if.then48
  %38 = ptrtoint ptr %call23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call23, align 8
  %and.i.i = and i32 %39, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %and.i.i)
  %cmp.i230 = icmp eq i32 %and.i.i, 4194304
  br i1 %cmp.i230, label %if.else, label %sw.bb.out_crit_edge

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.else:                                          ; preds = %sw.bb
  %tobool51.not = icmp eq ptr %truncp, null
  %40 = ptrtoint ptr %iap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iap, align 8
  %and59 = and i32 %41, 8
  br i1 %tobool51.not, label %if.else57, label %if.then52

if.then52:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool55.not = icmp eq i32 %and59, 0
  br i1 %tobool55.not, label %if.then52.land.end_crit_edge, label %land.rhs

if.then52.land.end_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  %ia_size = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 4
  %42 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ia_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %tobool56.not = icmp eq i64 %43, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then52.land.end_crit_edge
  %44 = phi i1 [ false, %if.then52.land.end_crit_edge ], [ %tobool56.not, %land.rhs ]
  %frombool = zext i1 %44 to i8
  %45 = ptrtoint ptr %truncp to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %frombool, ptr %truncp, align 1
  br label %sw.epilog

if.else57:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %iap to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and59, ptr %iap, align 8
  br label %set_attr

sw.bb62:                                          ; preds = %if.then48
  %i_mtime = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 16
  %47 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %i_mtime, align 8
  %conv64 = zext i32 %v_mtime.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %conv64)
  %cmp65 = icmp eq i64 %48, %conv64
  br i1 %cmp65, label %land.lhs.true67, label %sw.bb62.sw.bb82_crit_edge

sw.bb62.sw.bb82_crit_edge:                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb82

land.lhs.true67:                                  ; preds = %sw.bb62
  %i_atime = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 15
  %49 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %i_atime, align 8
  %conv70 = zext i32 %v_atime.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %conv70)
  %cmp71 = icmp eq i64 %50, %conv70
  br i1 %cmp71, label %land.lhs.true73, label %land.lhs.true67.sw.bb82_crit_edge

land.lhs.true67.sw.bb82_crit_edge:                ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb82

land.lhs.true73:                                  ; preds = %land.lhs.true67
  %i_size = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 14
  %51 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %52)
  %cmp75 = icmp eq i64 %52, 0
  br i1 %cmp75, label %if.then77, label %land.lhs.true73.sw.bb82_crit_edge

land.lhs.true73.sw.bb82_crit_edge:                ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb82

if.then77:                                        ; preds = %land.lhs.true73
  %tobool78.not = icmp eq ptr %created, null
  br i1 %tobool78.not, label %if.then77.sw.epilog_crit_edge, label %if.then79

if.then77.sw.epilog_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then79:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %created to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %created, align 1
  br label %sw.epilog

sw.bb82:                                          ; preds = %land.lhs.true73.sw.bb82_crit_edge, %land.lhs.true67.sw.bb82_crit_edge, %sw.bb62.sw.bb82_crit_edge, %if.then48.sw.bb82_crit_edge
  %conv86.pre-phi = phi i64 [ %.pre, %if.then48.sw.bb82_crit_edge ], [ %conv64, %sw.bb62.sw.bb82_crit_edge ], [ %conv64, %land.lhs.true67.sw.bb82_crit_edge ], [ %conv64, %land.lhs.true73.sw.bb82_crit_edge ]
  %i_mtime84 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 16
  %54 = ptrtoint ptr %i_mtime84 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %i_mtime84, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %55, i64 %conv86.pre-phi)
  %cmp87 = icmp eq i64 %55, %conv86.pre-phi
  br i1 %cmp87, label %land.lhs.true89, label %sw.bb82.sw.bb106_crit_edge

sw.bb82.sw.bb106_crit_edge:                       ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb106

land.lhs.true89:                                  ; preds = %sw.bb82
  %i_atime91 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 15
  %56 = ptrtoint ptr %i_atime91 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %i_atime91, align 8
  %conv93 = zext i32 %v_atime.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %57, i64 %conv93)
  %cmp94 = icmp eq i64 %57, %conv93
  br i1 %cmp94, label %land.lhs.true96, label %land.lhs.true89.sw.bb106_crit_edge

land.lhs.true89.sw.bb106_crit_edge:               ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb106

land.lhs.true96:                                  ; preds = %land.lhs.true89
  %i_size98 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 14
  %58 = ptrtoint ptr %i_size98 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %i_size98, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %59)
  %cmp99 = icmp eq i64 %59, 0
  br i1 %cmp99, label %if.then101, label %land.lhs.true96.sw.bb106_crit_edge

land.lhs.true96.sw.bb106_crit_edge:               ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb106

if.then101:                                       ; preds = %land.lhs.true96
  %tobool102.not = icmp eq ptr %created, null
  br i1 %tobool102.not, label %if.then101.set_attr_crit_edge, label %if.then103

if.then101.set_attr_crit_edge:                    ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_attr

if.then103:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %created to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %created, align 1
  br label %set_attr

sw.bb106:                                         ; preds = %land.lhs.true96.sw.bb106_crit_edge, %land.lhs.true89.sw.bb106_crit_edge, %sw.bb82.sw.bb106_crit_edge, %if.then48.sw.bb106_crit_edge
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb106, %if.then79, %if.then77.sw.epilog_crit_edge, %land.end, %if.then48.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %if.then48.sw.epilog_crit_edge ], [ 17, %sw.bb106 ], [ 0, %if.then79 ], [ 0, %if.then77.sw.epilog_crit_edge ], [ 0, %land.end ]
  %61 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %fh_want_write.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i238 = icmp eq i8 %62, 0
  br i1 %tobool.not.i238, label %sw.epilog.out_crit_edge, label %if.then.i

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %fh_want_write.i, align 1
  %64 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fh_export, align 4
  %ex_path.i240 = getelementptr inbounds %struct.svc_export, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %ex_path.i240 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ex_path.i240, align 8
  tail call void @mnt_drop_write(ptr noundef %67) #12
  br label %out

if.end107:                                        ; preds = %if.end46
  %i_sb = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %68 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %69, i32 0, i32 10
  %70 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %s_flags, align 4
  %and108 = and i32 %71, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.then110, label %if.end107.if.end116_crit_edge

if.end107.if.end116_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  %call111 = tail call i32 @current_umask() #12
  %ia_mode112 = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 1
  %72 = ptrtoint ptr %ia_mode112 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %ia_mode112, align 4
  %74 = trunc i32 %call111 to i16
  %75 = xor i16 %74, -1
  %conv115 = and i16 %73, %75
  store i16 %conv115, ptr %ia_mode112, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then110, %if.end107.if.end116_crit_edge
  %ia_mode117 = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 1
  %76 = ptrtoint ptr %ia_mode117 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %ia_mode117, align 4
  %call118 = tail call i32 @vfs_create(ptr noundef nonnull @init_user_ns, ptr noundef %10, ptr noundef %call23, i16 noundef zeroext %77, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %if.end116
  %78 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %fh_want_write.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i243 = icmp eq i8 %79, 0
  br i1 %tobool.not.i243, label %if.then121.out_nfserr_crit_edge, label %if.then.i246

if.then121.out_nfserr_crit_edge:                  ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_nfserr

if.then.i246:                                     ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %fh_want_write.i, align 1
  %81 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %fh_export, align 4
  %ex_path.i245 = getelementptr inbounds %struct.svc_export, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %ex_path.i245 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ex_path.i245, align 8
  tail call void @mnt_drop_write(ptr noundef %84) #12
  br label %out_nfserr

if.end122:                                        ; preds = %if.end116
  %tobool123.not = icmp eq ptr %created, null
  br i1 %tobool123.not, label %if.end122.if.end125_crit_edge, label %if.then124

if.end122.if.end125_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125

if.then124:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %created to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %created, align 1
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %if.end122.if.end125_crit_edge
  %86 = ptrtoint ptr %iap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %iap, align 8
  %and.i = and i32 %87, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i249 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i249, label %if.end125.nfsd_check_ignore_resizing.exit_crit_edge, label %land.lhs.true.i

if.end125.nfsd_check_ignore_resizing.exit_crit_edge: ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsd_check_ignore_resizing.exit

land.lhs.true.i:                                  ; preds = %if.end125
  %ia_size.i = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 4
  %88 = ptrtoint ptr %ia_size.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %ia_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %89)
  %cmp.i250 = icmp eq i64 %89, 0
  br i1 %cmp.i250, label %if.then.i251, label %land.lhs.true.i.nfsd_check_ignore_resizing.exit_crit_edge

land.lhs.true.i.nfsd_check_ignore_resizing.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsd_check_ignore_resizing.exit

if.then.i251:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %and2.i = and i32 %87, -9
  %90 = ptrtoint ptr %iap to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %and2.i, ptr %iap, align 8
  br label %nfsd_check_ignore_resizing.exit

nfsd_check_ignore_resizing.exit:                  ; preds = %if.then.i251, %land.lhs.true.i.nfsd_check_ignore_resizing.exit_crit_edge, %if.end125.nfsd_check_ignore_resizing.exit_crit_edge
  br i1 %.not, label %if.then128, label %nfsd_check_ignore_resizing.exit.set_attr_crit_edge

nfsd_check_ignore_resizing.exit.set_attr_crit_edge: ; preds = %nfsd_check_ignore_resizing.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_attr

if.then128:                                       ; preds = %nfsd_check_ignore_resizing.exit
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %iap to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 432, ptr %iap, align 8
  %conv130 = zext i32 %v_mtime.0 to i64
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 6
  %92 = ptrtoint ptr %ia_mtime to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %conv130, ptr %ia_mtime, align 8
  %conv132 = zext i32 %v_atime.0 to i64
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 5
  %93 = ptrtoint ptr %ia_atime to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %conv132, ptr %ia_atime, align 8
  %tv_nsec = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 6, i32 1
  %94 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %tv_nsec, align 8
  %tv_nsec136 = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 5, i32 1
  %95 = ptrtoint ptr %tv_nsec136 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %tv_nsec136, align 8
  br label %set_attr

set_attr:                                         ; preds = %if.then128, %nfsd_check_ignore_resizing.exit.set_attr_crit_edge, %if.then103, %if.then101.set_attr_crit_edge, %if.else57
  %call138 = tail call fastcc i32 @nfsd_create_setattr(ptr noundef %rqstp, ptr noundef %resfhp, ptr noundef %iap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end143, label %set_attr.out_crit_edge

set_attr.out_crit_edge:                           ; preds = %set_attr
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end143:                                        ; preds = %set_attr
  %call141 = tail call fastcc i32 @commit_metadata(ptr noundef %fhp)
  %call142 = tail call i32 @nfserrno(i32 noundef %call141) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool144.not = icmp eq i32 %call142, 0
  br i1 %tobool144.not, label %if.then145, label %if.end143.out_crit_edge

if.end143.out_crit_edge:                          ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then145:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  %call146 = tail call i32 @fh_update(ptr noundef %resfhp) #12
  br label %out

out:                                              ; preds = %out_nfserr, %if.then145, %if.end143.out_crit_edge, %set_attr.out_crit_edge, %if.then.i, %sw.epilog.out_crit_edge, %sw.bb.out_crit_edge, %if.end34.out_crit_edge, %if.then29.out_crit_edge, %if.end14.out_crit_edge, %lor.lhs.false.out_crit_edge, %land.lhs.true3.out_crit_edge, %entry.out_crit_edge
  %dchild.0 = phi ptr [ null, %land.lhs.true3.out_crit_edge ], [ null, %lor.lhs.false.out_crit_edge ], [ null, %if.end14.out_crit_edge ], [ %dchild.1, %out_nfserr ], [ %call23, %if.then29.out_crit_edge ], [ %call23, %if.end34.out_crit_edge ], [ %call23, %if.end143.out_crit_edge ], [ %call23, %if.then145 ], [ %call23, %sw.bb.out_crit_edge ], [ null, %entry.out_crit_edge ], [ %call23, %sw.epilog.out_crit_edge ], [ %call23, %if.then.i ], [ %call23, %set_attr.out_crit_edge ]
  %err.2 = phi i32 [ 17, %land.lhs.true3.out_crit_edge ], [ 17, %lor.lhs.false.out_crit_edge ], [ %call, %if.end14.out_crit_edge ], [ %call153, %out_nfserr ], [ %call30, %if.then29.out_crit_edge ], [ %call35, %if.end34.out_crit_edge ], [ %call142, %if.end143.out_crit_edge ], [ %call146, %if.then145 ], [ 0, %sw.bb.out_crit_edge ], [ 1, %entry.out_crit_edge ], [ %err.0, %sw.epilog.out_crit_edge ], [ %err.0, %if.then.i ], [ %call138, %set_attr.out_crit_edge ]
  %fh_locked.i253 = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 4
  %96 = ptrtoint ptr %fh_locked.i253 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %fh_locked.i253, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i254 = icmp eq i8 %97, 0
  br i1 %tobool.not.i254, label %out.fh_unlock.exit_crit_edge, label %if.then.i258

out.fh_unlock.exit_crit_edge:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %fh_unlock.exit

if.then.i258:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fh_fill_post_attrs(ptr noundef %fhp) #12
  %fh_dentry.i255 = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %98 = ptrtoint ptr %fh_dentry.i255 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %fh_dentry.i255, align 8
  %d_inode.i.i256 = getelementptr inbounds %struct.dentry, ptr %99, i32 0, i32 5
  %100 = ptrtoint ptr %d_inode.i.i256 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %d_inode.i.i256, align 8
  %i_rwsem.i.i257 = getelementptr inbounds %struct.inode, ptr %101, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i.i257) #12
  %102 = ptrtoint ptr %fh_locked.i253 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %fh_locked.i253, align 8
  br label %fh_unlock.exit

fh_unlock.exit:                                   ; preds = %if.then.i258, %out.fh_unlock.exit_crit_edge
  %tobool148.not = icmp eq ptr %dchild.0, null
  %cmp.i260 = icmp ugt ptr %dchild.0, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool148.not, %cmp.i260
  br i1 %or.cond, label %fh_unlock.exit.if.end152_crit_edge, label %if.then151

fh_unlock.exit.if.end152_crit_edge:               ; preds = %fh_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

if.then151:                                       ; preds = %fh_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dput(ptr noundef nonnull %dchild.0) #12
  br label %if.end152

if.end152:                                        ; preds = %if.then151, %fh_unlock.exit.if.end152_crit_edge
  %fh_want_write.i261 = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 5
  %103 = ptrtoint ptr %fh_want_write.i261 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %fh_want_write.i261, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.not.i262 = icmp eq i8 %104, 0
  br i1 %tobool.not.i262, label %if.end152.fh_drop_write.exit267_crit_edge, label %if.then.i265

if.end152.fh_drop_write.exit267_crit_edge:        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %fh_drop_write.exit267

if.then.i265:                                     ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  %105 = ptrtoint ptr %fh_want_write.i261 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %fh_want_write.i261, align 1
  %fh_export.i263 = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %106 = ptrtoint ptr %fh_export.i263 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %fh_export.i263, align 4
  %ex_path.i264 = getelementptr inbounds %struct.svc_export, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %ex_path.i264 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ex_path.i264, align 8
  tail call void @mnt_drop_write(ptr noundef %109) #12
  br label %fh_drop_write.exit267

fh_drop_write.exit267:                            ; preds = %if.then.i265, %if.end152.fh_drop_write.exit267_crit_edge
  ret i32 %err.2

out_nfserr:                                       ; preds = %if.then.i246, %if.then121.out_nfserr_crit_edge, %fh_lock_nested.exit.out_nfserr_crit_edge, %if.end.i.out_nfserr_crit_edge
  %dchild.1 = phi ptr [ %call23, %fh_lock_nested.exit.out_nfserr_crit_edge ], [ null, %if.end.i.out_nfserr_crit_edge ], [ %call23, %if.then121.out_nfserr_crit_edge ], [ %call23, %if.then.i246 ]
  %host_err.0 = phi i32 [ %25, %fh_lock_nested.exit.out_nfserr_crit_edge ], [ %call.i, %if.end.i.out_nfserr_crit_edge ], [ %call118, %if.then121.out_nfserr_crit_edge ], [ %call118, %if.then.i246 ]
  %call153 = tail call i32 @nfserrno(i32 noundef %host_err.0) #12
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_readlink(ptr noundef %rqstp, ptr noundef %fhp, ptr nocapture noundef writeonly %buf, ptr nocapture noundef %lenp) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  %done = alloca %struct.delayed_call, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #12
  %0 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %done) #12
  %1 = ptrtoint ptr %done to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %done, align 8
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext -24576, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !120

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %2 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fh_export, align 4
  %ex_path = getelementptr inbounds %struct.svc_export, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ex_path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ex_path, align 8
  %6 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %path, align 4
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %7 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fh_dentry, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %8, align 8
  %and.i.i = and i32 %11, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 6291456
  br i1 %cmp.i, label %if.end15, label %if.end.cleanup_crit_edge, !prof !120

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @touch_atime(ptr noundef nonnull %path) #12
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %0, align 4
  %call17 = call ptr @vfs_get_link(ptr noundef %13, ptr noundef nonnull %done) #12
  %cmp.i39 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i39, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %call17 to i32
  %call21 = call i32 @nfserrno(i32 noundef %14) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %call23 = call i32 @strlen(ptr noundef %call17) #16
  %15 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lenp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call23, i32 %16)
  %cmp = icmp slt i32 %call23, %16
  br i1 %cmp, label %if.then24, label %if.end22.if.end25_crit_edge

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call23, ptr %lenp, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22.if.end25_crit_edge
  %18 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lenp, align 4
  %20 = call ptr @memcpy(ptr %buf, ptr %call17, i32 %19)
  %21 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %done, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end25.cleanup_crit_edge, label %if.then.i

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %arg.i = getelementptr inbounds %struct.delayed_call, ptr %done, i32 0, i32 1
  %23 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arg.i, align 4
  call void %22(ptr noundef %24) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end25.cleanup_crit_edge, %if.then19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.then19 ], [ %call, %entry.cleanup_crit_edge ], [ 22, %if.end.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %done) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vfs_get_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_symlink(ptr noundef %rqstp, ptr noundef %fhp, ptr noundef %fname, i32 noundef %flen, ptr noundef %path, ptr noundef %resfhp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flen)
  %tobool.not = icmp eq i32 %flen, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %path, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %flen)
  %cmp2 = icmp slt i32 %flen, 3
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %2 = ptrtoint ptr %fname to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fname, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %3)
  %cmp6 = icmp eq i8 %3, 46
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true8:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %flen)
  %cmp9 = icmp eq i32 %flen, 1
  br i1 %cmp9, label %land.lhs.true8.out_crit_edge, label %lor.lhs.false11

land.lhs.true8.out_crit_edge:                     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false11:                                  ; preds = %land.lhs.true8
  %arrayidx12 = getelementptr i8, ptr %fname, i32 1
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %5)
  %cmp14 = icmp eq i8 %5, 46
  br i1 %cmp14, label %lor.lhs.false11.out_crit_edge, label %lor.lhs.false11.if.end17_crit_edge

lor.lhs.false11.if.end17_crit_edge:               ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

lor.lhs.false11.out_crit_edge:                    ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end17:                                         ; preds = %lor.lhs.false11.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext 16384, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %if.end20, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end20:                                         ; preds = %if.end17
  %fh_want_write.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 5
  %6 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fh_want_write.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.if.end24_crit_edge

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.end.i:                                         ; preds = %if.end20
  %fh_export.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %8 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ex_path.i, align 8
  %call.i = tail call i32 @mnt_want_write(ptr noundef %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.out_nfserr_crit_edge

if.end.i.out_nfserr_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_nfserr

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %fh_want_write.i, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then2.i, %if.end20.if.end24_crit_edge
  %fh_dentry.i.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %13 = ptrtoint ptr %fh_dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fh_dentry.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !124

do.body4.i.i:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfsfh.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 360, 0\0A.popsection", ""() #12, !srcloc !125
  unreachable

do.end9.i.i:                                      ; preds = %if.end24
  %fh_locked.i.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 4
  %15 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fh_locked.i.i, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool10.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool10.not.i.i, label %if.end15.i.i, label %do.end14.i.i

do.end14.i.i:                                     ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %14) #15
  br label %fh_lock.exit

if.end15.i.i:                                     ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_rwsem.i.i.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i.i, i32 noundef 0) #12
  tail call void @fh_fill_pre_attrs(ptr noundef %fhp) #12
  %19 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %fh_locked.i.i, align 8
  br label %fh_lock.exit

fh_lock.exit:                                     ; preds = %if.end15.i.i, %do.end14.i.i
  %20 = ptrtoint ptr %fh_dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fh_dentry.i.i, align 8
  %call25 = tail call ptr @lookup_one_len(ptr noundef %fname, ptr noundef %21, i32 noundef %flen) #12
  %22 = ptrtoint ptr %call25 to i32
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %fh_lock.exit.out_nfserr_crit_edge, label %if.end29

fh_lock.exit.out_nfserr_crit_edge:                ; preds = %fh_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_nfserr

if.end29:                                         ; preds = %fh_lock.exit
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 5
  %23 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_inode.i, align 8
  %call31 = tail call i32 @vfs_symlink(ptr noundef nonnull @init_user_ns, ptr noundef %24, ptr noundef %call25, ptr noundef %path) #12
  %call32 = tail call i32 @nfserrno(i32 noundef %call31) #12
  %25 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fh_locked.i.i, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i68 = icmp eq i8 %26, 0
  br i1 %tobool.not.i68, label %if.end29.fh_unlock.exit_crit_edge, label %if.then.i

if.end29.fh_unlock.exit_crit_edge:                ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %fh_unlock.exit

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fh_fill_post_attrs(ptr noundef %fhp) #12
  %27 = ptrtoint ptr %fh_dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fh_dentry.i.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #12
  %31 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %fh_locked.i.i, align 8
  br label %fh_unlock.exit

fh_unlock.exit:                                   ; preds = %if.then.i, %if.end29.fh_unlock.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %fh_unlock.exit.if.end37_crit_edge

fh_unlock.exit.if.end37_crit_edge:                ; preds = %fh_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then34:                                        ; preds = %fh_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call35 = tail call fastcc i32 @commit_metadata(ptr noundef %fhp)
  %call36 = tail call i32 @nfserrno(i32 noundef %call35) #12
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %fh_unlock.exit.if.end37_crit_edge
  %err.0 = phi i32 [ %call32, %fh_unlock.exit.if.end37_crit_edge ], [ %call36, %if.then34 ]
  %32 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fh_want_write.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i71 = icmp eq i8 %33, 0
  br i1 %tobool.not.i71, label %if.end37.fh_drop_write.exit_crit_edge, label %if.then.i74

if.end37.fh_drop_write.exit_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %fh_drop_write.exit

if.then.i74:                                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %fh_want_write.i, align 1
  %fh_export.i72 = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %35 = ptrtoint ptr %fh_export.i72 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fh_export.i72, align 4
  %ex_path.i73 = getelementptr inbounds %struct.svc_export, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %ex_path.i73 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ex_path.i73, align 8
  tail call void @mnt_drop_write(ptr noundef %38) #12
  br label %fh_drop_write.exit

fh_drop_write.exit:                               ; preds = %if.then.i74, %if.end37.fh_drop_write.exit_crit_edge
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %39 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fh_export, align 4
  %call38 = tail call i32 @fh_compose(ptr noundef %resfhp, ptr noundef %40, ptr noundef %call25, ptr noundef %fhp) #12
  tail call void @dput(ptr noundef %call25) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp39 = icmp eq i32 %err.0, 0
  %spec.select = select i1 %cmp39, i32 %call38, i32 %err.0
  br label %out

out:                                              ; preds = %out_nfserr, %fh_drop_write.exit, %if.end17.out_crit_edge, %lor.lhs.false11.out_crit_edge, %land.lhs.true8.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %err.1 = phi i32 [ 2, %lor.lhs.false.out_crit_edge ], [ 17, %land.lhs.true8.out_crit_edge ], [ 17, %lor.lhs.false11.out_crit_edge ], [ %call, %if.end17.out_crit_edge ], [ %call43, %out_nfserr ], [ 2, %entry.out_crit_edge ], [ %spec.select, %fh_drop_write.exit ]
  ret i32 %err.1

out_nfserr:                                       ; preds = %fh_lock.exit.out_nfserr_crit_edge, %if.end.i.out_nfserr_crit_edge
  %host_err.0 = phi i32 [ %22, %fh_lock.exit.out_nfserr_crit_edge ], [ %call.i, %if.end.i.out_nfserr_crit_edge ]
  %call43 = tail call i32 @nfserrno(i32 noundef %host_err.0) #12
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_symlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_link(ptr noundef %rqstp, ptr noundef %ffhp, ptr noundef %name, i32 noundef %len, ptr noundef %tfhp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %ffhp, i16 noundef zeroext 16384, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %tfhp, i16 noundef zeroext 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %if.end
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %tfhp, i32 0, i32 2
  %0 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_dentry, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %4)
  %5 = icmp eq i32 %4, 2097152
  br i1 %5, label %if.end4.out_crit_edge, label %if.end7

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool8.not = icmp eq i32 %len, 0
  br i1 %tobool8.not, label %if.end7.out_crit_edge, label %if.end10

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp = icmp slt i32 %len, 3
  br i1 %cmp, label %land.lhs.true, label %if.end10.if.end21_crit_edge

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end10
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %7)
  %cmp11 = icmp eq i8 %7, 46
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true13:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp14 = icmp eq i32 %len, 1
  br i1 %cmp14, label %land.lhs.true13.out_crit_edge, label %lor.lhs.false

land.lhs.true13.out_crit_edge:                    ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false:                                    ; preds = %land.lhs.true13
  %arrayidx16 = getelementptr i8, ptr %name, i32 1
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %9)
  %cmp18 = icmp eq i8 %9, 46
  br i1 %cmp18, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false.if.end21_crit_edge

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end21:                                         ; preds = %lor.lhs.false.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %if.end10.if.end21_crit_edge
  %fh_want_write.i = getelementptr inbounds %struct.svc_fh, ptr %tfhp, i32 0, i32 5
  %10 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fh_want_write.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end21.if.end26_crit_edge

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end.i:                                         ; preds = %if.end21
  %fh_export.i = getelementptr inbounds %struct.svc_fh, ptr %tfhp, i32 0, i32 3
  %12 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ex_path.i, align 8
  %call.i = tail call i32 @mnt_want_write(ptr noundef %15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then24

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %fh_want_write.i, align 1
  br label %if.end26

if.then24:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call25 = tail call i32 @nfserrno(i32 noundef %call.i) #12
  br label %out

if.end26:                                         ; preds = %if.then2.i, %if.end21.if.end26_crit_edge
  tail call fastcc void @fh_lock_nested(ptr noundef %ffhp, i32 noundef 1)
  %fh_dentry27 = getelementptr inbounds %struct.svc_fh, ptr %ffhp, i32 0, i32 2
  %17 = ptrtoint ptr %fh_dentry27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fh_dentry27, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_inode.i, align 8
  %call29 = tail call ptr @lookup_one_len(ptr noundef %name, ptr noundef %18, i32 noundef %len) #12
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out_nfserr, label %if.end33

if.end33:                                         ; preds = %if.end26
  %21 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i89 = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %d_inode.i89 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_inode.i89, align 8
  %cmp.i90 = icmp eq ptr %24, null
  br i1 %cmp.i90, label %if.end33.out_dput_crit_edge, label %if.end37

if.end33.out_dput_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_dput

if.end37:                                         ; preds = %if.end33
  %call38 = tail call i32 @vfs_link(ptr noundef %22, ptr noundef nonnull @init_user_ns, ptr noundef %20, ptr noundef %call29, ptr noundef null) #12
  tail call fastcc void @fh_unlock(ptr noundef %ffhp)
  %25 = zext i32 %call38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call38, label %if.end37.out_dput.sink.split_crit_edge [
    i32 0, label %if.then40
    i32 -18, label %land.lhs.true50
  ]

if.end37.out_dput.sink.split_crit_edge:           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_dput.sink.split

if.then40:                                        ; preds = %if.end37
  %call41 = tail call fastcc i32 @commit_metadata(ptr noundef %ffhp)
  %call42 = tail call i32 @nfserrno(i32 noundef %call41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then44, label %if.then40.out_dput_crit_edge

if.then40.out_dput_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_dput

if.then44:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  %call45 = tail call fastcc i32 @commit_metadata(ptr noundef %tfhp)
  br label %out_dput.sink.split

land.lhs.true50:                                  ; preds = %if.end37
  %rq_vers = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %26 = ptrtoint ptr %rq_vers to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rq_vers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp51 = icmp eq i32 %27, 2
  br i1 %cmp51, label %land.lhs.true50.out_dput_crit_edge, label %land.lhs.true50.out_dput.sink.split_crit_edge

land.lhs.true50.out_dput.sink.split_crit_edge:    ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_dput.sink.split

land.lhs.true50.out_dput_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_dput

out_dput.sink.split:                              ; preds = %land.lhs.true50.out_dput.sink.split_crit_edge, %if.then44, %if.end37.out_dput.sink.split_crit_edge
  %call45.sink = phi i32 [ %call45, %if.then44 ], [ %call38, %if.end37.out_dput.sink.split_crit_edge ], [ %call38, %land.lhs.true50.out_dput.sink.split_crit_edge ]
  %call46 = tail call i32 @nfserrno(i32 noundef %call45.sink) #12
  br label %out_dput

out_dput:                                         ; preds = %out_dput.sink.split, %land.lhs.true50.out_dput_crit_edge, %if.then40.out_dput_crit_edge, %if.end33.out_dput_crit_edge
  %err.0 = phi i32 [ 2, %if.end33.out_dput_crit_edge ], [ %call42, %if.then40.out_dput_crit_edge ], [ 13, %land.lhs.true50.out_dput_crit_edge ], [ %call46, %out_dput.sink.split ]
  tail call void @dput(ptr noundef %call29) #12
  br label %out_unlock

out_unlock:                                       ; preds = %out_nfserr, %out_dput
  %err.1 = phi i32 [ %call58, %out_nfserr ], [ %err.0, %out_dput ]
  tail call fastcc void @fh_unlock(ptr noundef %ffhp)
  %28 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fh_want_write.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i92 = icmp eq i8 %29, 0
  br i1 %tobool.not.i92, label %out_unlock.out_crit_edge, label %if.then.i

out_unlock.out_crit_edge:                         ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then.i:                                        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %fh_want_write.i, align 1
  %fh_export.i93 = getelementptr inbounds %struct.svc_fh, ptr %tfhp, i32 0, i32 3
  %31 = ptrtoint ptr %fh_export.i93 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fh_export.i93, align 4
  %ex_path.i94 = getelementptr inbounds %struct.svc_export, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %ex_path.i94 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ex_path.i94, align 8
  tail call void @mnt_drop_write(ptr noundef %34) #12
  br label %out

out:                                              ; preds = %if.then.i, %out_unlock.out_crit_edge, %if.then24, %lor.lhs.false.out_crit_edge, %land.lhs.true13.out_crit_edge, %if.end7.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.2 = phi i32 [ %call, %entry.out_crit_edge ], [ %call1, %if.end.out_crit_edge ], [ 21, %if.end4.out_crit_edge ], [ 17, %land.lhs.true13.out_crit_edge ], [ 17, %lor.lhs.false.out_crit_edge ], [ %call25, %if.then24 ], [ 1, %if.end7.out_crit_edge ], [ %err.1, %out_unlock.out_crit_edge ], [ %err.1, %if.then.i ]
  ret i32 %err.2

out_nfserr:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %call29 to i32
  %call58 = tail call i32 @nfserrno(i32 noundef %35) #12
  br label %out_unlock
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_rename(ptr noundef %rqstp, ptr noundef %ffhp, ptr noundef %fname, i32 noundef %flen, ptr noundef %tfhp, ptr noundef %tname, i32 noundef %tlen) local_unnamed_addr #0 align 64 {
entry:
  %rd = alloca %struct.renamedata, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %ffhp, i16 noundef zeroext 16384, i32 noundef 19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %tfhp, i16 noundef zeroext 16384, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %if.end
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %ffhp, i32 0, i32 2
  %0 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %fh_dentry6 = getelementptr inbounds %struct.svc_fh, ptr %tfhp, i32 0, i32 2
  %4 = ptrtoint ptr %fh_dentry6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fh_dentry6, align 8
  %d_inode.i164 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i164 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i164, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flen)
  %tobool8.not = icmp eq i32 %flen, 0
  br i1 %tobool8.not, label %if.end4.out_crit_edge, label %lor.lhs.false

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %flen)
  %cmp = icmp slt i32 %flen, 3
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.lor.lhs.false19_crit_edge

lor.lhs.false.lor.lhs.false19_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false19

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %fname to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fname, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %9)
  %cmp9 = icmp eq i8 %9, 46
  br i1 %cmp9, label %land.lhs.true11, label %land.lhs.true.lor.lhs.false19_crit_edge

land.lhs.true.lor.lhs.false19_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false19

land.lhs.true11:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %flen)
  %cmp12 = icmp eq i32 %flen, 1
  br i1 %cmp12, label %land.lhs.true11.out_crit_edge, label %lor.lhs.false14

land.lhs.true11.out_crit_edge:                    ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false14:                                  ; preds = %land.lhs.true11
  %arrayidx15 = getelementptr i8, ptr %fname, i32 1
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %11)
  %cmp17 = icmp eq i8 %11, 46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tlen)
  %tobool20.not = icmp eq i32 %tlen, 0
  %or.cond = or i1 %tobool20.not, %cmp17
  br i1 %or.cond, label %lor.lhs.false14.out_crit_edge, label %lor.lhs.false14.lor.lhs.false21_crit_edge

lor.lhs.false14.lor.lhs.false21_crit_edge:        ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false21

lor.lhs.false14.out_crit_edge:                    ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false19:                                  ; preds = %land.lhs.true.lor.lhs.false19_crit_edge, %lor.lhs.false.lor.lhs.false19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tlen)
  %tobool20.not.old = icmp eq i32 %tlen, 0
  br i1 %tobool20.not.old, label %lor.lhs.false19.out_crit_edge, label %lor.lhs.false19.lor.lhs.false21_crit_edge

lor.lhs.false19.lor.lhs.false21_crit_edge:        ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false21

lor.lhs.false19.out_crit_edge:                    ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false21:                                  ; preds = %lor.lhs.false19.lor.lhs.false21_crit_edge, %lor.lhs.false14.lor.lhs.false21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %tlen)
  %cmp22 = icmp slt i32 %tlen, 3
  br i1 %cmp22, label %land.lhs.true24, label %lor.lhs.false21.if.end38_crit_edge

lor.lhs.false21.if.end38_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.lhs.true24:                                  ; preds = %lor.lhs.false21
  %12 = ptrtoint ptr %tname to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tname, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %13)
  %cmp27 = icmp eq i8 %13, 46
  br i1 %cmp27, label %land.lhs.true29, label %land.lhs.true24.if.end38_crit_edge

land.lhs.true24.if.end38_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.lhs.true29:                                  ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tlen)
  %cmp30 = icmp eq i32 %tlen, 1
  br i1 %cmp30, label %land.lhs.true29.out_crit_edge, label %lor.lhs.false32

land.lhs.true29.out_crit_edge:                    ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false32:                                  ; preds = %land.lhs.true29
  %arrayidx33 = getelementptr i8, ptr %tname, i32 1
  %14 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %15)
  %cmp35 = icmp eq i8 %15, 46
  br i1 %cmp35, label %lor.lhs.false32.out_crit_edge, label %lor.lhs.false32.if.end38_crit_edge

lor.lhs.false32.if.end38_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

lor.lhs.false32.out_crit_edge:                    ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end38:                                         ; preds = %lor.lhs.false32.if.end38_crit_edge, %land.lhs.true24.if.end38_crit_edge, %lor.lhs.false21.if.end38_crit_edge
  %fh_want_write.i = getelementptr inbounds %struct.svc_fh, ptr %ffhp, i32 0, i32 5
  %fh_export.i = getelementptr inbounds %struct.svc_fh, ptr %ffhp, i32 0, i32 3
  %fh_locked = getelementptr inbounds %struct.svc_fh, ptr %tfhp, i32 0, i32 4
  %fh_locked45 = getelementptr inbounds %struct.svc_fh, ptr %ffhp, i32 0, i32 4
  %fh_export67 = getelementptr inbounds %struct.svc_fh, ptr %tfhp, i32 0, i32 3
  %16 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 1
  %17 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 2
  %18 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 3
  %19 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 4
  %20 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 5
  %21 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 6
  %22 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 7
  br label %retry

retry:                                            ; preds = %nfsd_close_cached_files.exit, %if.end38
  %ndentry.0 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end38 ], [ %ndentry.1, %nfsd_close_cached_files.exit ]
  %23 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fh_want_write.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.end.i, label %retry.if.end43_crit_edge

retry.if.end43_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.end.i:                                         ; preds = %retry
  %25 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ex_path.i, align 8
  %call.i = call i32 @mnt_want_write(ptr noundef %28) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then41

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %fh_want_write.i, align 1
  br label %if.end43

if.then41:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call42 = call i32 @nfserrno(i32 noundef %call.i) #12
  br label %out

if.end43:                                         ; preds = %if.then2.i, %retry.if.end43_crit_edge
  %call44 = call ptr @lock_rename(ptr noundef %5, ptr noundef %1) #12
  %30 = ptrtoint ptr %fh_locked to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %fh_locked, align 8
  %31 = ptrtoint ptr %fh_locked45 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %fh_locked45, align 8
  call void @fh_fill_pre_attrs(ptr noundef %ffhp) #12
  call void @fh_fill_pre_attrs(ptr noundef %tfhp) #12
  %call46 = call ptr @lookup_one_len(ptr noundef %fname, ptr noundef %1, i32 noundef %flen) #12
  %cmp.i = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out_nfserr.thread, label %if.end50

out_nfserr.thread:                                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %call46 to i32
  %call99196 = call i32 @nfserrno(i32 noundef %32) #12
  br label %if.then101

if.end50:                                         ; preds = %if.end43
  %d_inode.i165 = getelementptr inbounds %struct.dentry, ptr %call46, i32 0, i32 5
  %33 = ptrtoint ptr %d_inode.i165 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_inode.i165, align 8
  %cmp.i166 = icmp eq ptr %34, null
  br i1 %cmp.i166, label %if.end50.out_nfserr_crit_edge, label %if.end53

if.end50.out_nfserr_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_nfserr

if.end53:                                         ; preds = %if.end50
  %cmp54 = icmp eq ptr %call46, %call44
  br i1 %cmp54, label %if.end53.out_nfserr_crit_edge, label %if.end57

if.end53.out_nfserr_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_nfserr

if.end57:                                         ; preds = %if.end53
  %call58 = call ptr @lookup_one_len(ptr noundef %tname, ptr noundef %5, i32 noundef %tlen) #12
  %35 = ptrtoint ptr %call58 to i32
  %cmp.i167 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %if.end57.out_nfserr_crit_edge, label %if.end62

if.end57.out_nfserr_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_nfserr

if.end62:                                         ; preds = %if.end57
  %cmp63 = icmp eq ptr %call58, %call44
  br i1 %cmp63, label %if.end62.out_dput_new_crit_edge, label %if.end66

if.end62.out_dput_new_crit_edge:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_dput_new

if.end66:                                         ; preds = %if.end62
  %36 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fh_export.i, align 4
  %ex_path = getelementptr inbounds %struct.svc_export, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %ex_path to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ex_path, align 8
  %40 = ptrtoint ptr %fh_export67 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fh_export67, align 4
  %ex_path68 = getelementptr inbounds %struct.svc_export, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %ex_path68 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ex_path68, align 8
  %cmp70.not = icmp eq ptr %39, %43
  br i1 %cmp70.not, label %if.end73, label %if.end66.out_dput_new_crit_edge

if.end66.out_dput_new_crit_edge:                  ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_dput_new

if.end73:                                         ; preds = %if.end66
  %dentry = getelementptr inbounds %struct.svc_export, ptr %37, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dentry, align 4
  %dentry78 = getelementptr inbounds %struct.svc_export, ptr %41, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %dentry78 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dentry78, align 4
  %cmp79.not = icmp eq ptr %45, %47
  br i1 %cmp79.not, label %if.end82, label %if.end73.out_dput_new_crit_edge

if.end73.out_dput_new_crit_edge:                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_dput_new

if.end82:                                         ; preds = %if.end73
  %d_sb = getelementptr inbounds %struct.dentry, ptr %call58, i32 0, i32 9
  %48 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %d_sb, align 4
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %s_export_op to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_export_op, align 16
  %flags = getelementptr inbounds %struct.export_operations, ptr %51, i32 0, i32 10
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 4
  %and = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool83.not = icmp eq i32 %and, 0
  br i1 %tobool83.not, label %if.end82.if.else_crit_edge, label %land.lhs.true84

if.end82.if.else_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true84:                                  ; preds = %if.end82
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call58, i32 0, i32 5
  %54 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %d_inode.i.i, align 8
  %tobool.not.i168 = icmp eq ptr %55, null
  br i1 %tobool.not.i168, label %land.lhs.true84.if.else_crit_edge, label %land.lhs.true.i

land.lhs.true84.if.else_crit_edge:                ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true.i:                                  ; preds = %land.lhs.true84
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %55, align 8
  %58 = and i16 %57, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %58)
  %cmp.i169 = icmp eq i16 %58, -32768
  br i1 %cmp.i169, label %nfsd_has_cached_files.exit, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

nfsd_has_cached_files.exit:                       ; preds = %land.lhs.true.i
  %call2.i = call zeroext i1 @nfsd_file_is_cached(ptr noundef nonnull %55) #12
  br i1 %call2.i, label %nfsd_has_cached_files.exit.out_nfserr_crit_edge, label %nfsd_has_cached_files.exit.if.else_crit_edge

nfsd_has_cached_files.exit.if.else_crit_edge:     ; preds = %nfsd_has_cached_files.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

nfsd_has_cached_files.exit.out_nfserr_crit_edge:  ; preds = %nfsd_has_cached_files.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_nfserr

if.else:                                          ; preds = %nfsd_has_cached_files.exit.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %land.lhs.true84.if.else_crit_edge, %if.end82.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rd) #12
  %59 = ptrtoint ptr %rd to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @init_user_ns, ptr %rd, align 4
  %60 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %3, ptr %16, align 4
  %61 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call46, ptr %17, align 4
  %62 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @init_user_ns, ptr %18, align 4
  %63 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %7, ptr %19, align 4
  %64 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call58, ptr %20, align 4
  %65 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %21, align 4
  %66 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %22, align 4
  %call89 = call i32 @vfs_rename(ptr noundef nonnull %rd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then91, label %if.else.if.end97_crit_edge

if.else.if.end97_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

if.then91:                                        ; preds = %if.else
  %call92 = call fastcc i32 @commit_metadata(ptr noundef %tfhp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then94, label %if.then91.if.end97_crit_edge

if.then91.if.end97_crit_edge:                     ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

if.then94:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  %call95 = call fastcc i32 @commit_metadata(ptr noundef %ffhp)
  br label %if.end97

if.end97:                                         ; preds = %if.then94, %if.then91.if.end97_crit_edge, %if.else.if.end97_crit_edge
  %host_err.0 = phi i32 [ %call89, %if.else.if.end97_crit_edge ], [ %call92, %if.then91.if.end97_crit_edge ], [ %call95, %if.then94 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rd) #12
  br label %out_dput_new

out_dput_new:                                     ; preds = %if.end97, %if.end73.out_dput_new_crit_edge, %if.end66.out_dput_new_crit_edge, %if.end62.out_dput_new_crit_edge
  %host_err.1 = phi i32 [ -39, %if.end62.out_dput_new_crit_edge ], [ -18, %if.end66.out_dput_new_crit_edge ], [ -18, %if.end73.out_dput_new_crit_edge ], [ %host_err.0, %if.end97 ]
  call void @dput(ptr noundef %call58) #12
  br label %out_nfserr

out_nfserr:                                       ; preds = %out_dput_new, %nfsd_has_cached_files.exit.out_nfserr_crit_edge, %if.end57.out_nfserr_crit_edge, %if.end53.out_nfserr_crit_edge, %if.end50.out_nfserr_crit_edge
  %ndentry.1 = phi ptr [ %ndentry.0, %if.end50.out_nfserr_crit_edge ], [ %ndentry.0, %if.end53.out_nfserr_crit_edge ], [ %call58, %if.end57.out_nfserr_crit_edge ], [ %call58, %out_dput_new ], [ %call58, %nfsd_has_cached_files.exit.out_nfserr_crit_edge ]
  %host_err.2 = phi i32 [ -2, %if.end50.out_nfserr_crit_edge ], [ -22, %if.end53.out_nfserr_crit_edge ], [ %35, %if.end57.out_nfserr_crit_edge ], [ %host_err.1, %out_dput_new ], [ -18, %nfsd_has_cached_files.exit.out_nfserr_crit_edge ]
  %close_cached.1.off0 = phi i1 [ false, %if.end50.out_nfserr_crit_edge ], [ false, %if.end53.out_nfserr_crit_edge ], [ false, %if.end57.out_nfserr_crit_edge ], [ false, %out_dput_new ], [ true, %nfsd_has_cached_files.exit.out_nfserr_crit_edge ]
  call void @dput(ptr noundef %call46) #12
  %call99 = call i32 @nfserrno(i32 noundef %host_err.2) #12
  br i1 %close_cached.1.off0, label %if.then106.critedge, label %out_nfserr.if.then101_crit_edge

out_nfserr.if.then101_crit_edge:                  ; preds = %out_nfserr
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then101

if.then101:                                       ; preds = %out_nfserr.if.then101_crit_edge, %out_nfserr.thread
  %call99197 = phi i32 [ %call99196, %out_nfserr.thread ], [ %call99, %out_nfserr.if.then101_crit_edge ]
  call void @fh_fill_post_attrs(ptr noundef %ffhp) #12
  call void @fh_fill_post_attrs(ptr noundef %tfhp) #12
  call void @unlock_rename(ptr noundef %5, ptr noundef %1) #12
  %67 = ptrtoint ptr %fh_locked to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %fh_locked, align 8
  %68 = ptrtoint ptr %fh_locked45 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %fh_locked45, align 8
  %69 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %fh_want_write.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i172 = icmp eq i8 %70, 0
  br i1 %tobool.not.i172, label %if.then101.out_crit_edge, label %if.then.i175

if.then101.out_crit_edge:                         ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then.i175:                                     ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %fh_want_write.i, align 1
  %72 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i174 = getelementptr inbounds %struct.svc_export, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %ex_path.i174 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ex_path.i174, align 8
  call void @mnt_drop_write(ptr noundef %75) #12
  br label %out

if.then106.critedge:                              ; preds = %out_nfserr
  call void @unlock_rename(ptr noundef %5, ptr noundef %1) #12
  %76 = ptrtoint ptr %fh_locked to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %fh_locked, align 8
  %77 = ptrtoint ptr %fh_locked45 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %fh_locked45, align 8
  %78 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %fh_want_write.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i178 = icmp eq i8 %79, 0
  br i1 %tobool.not.i178, label %if.then106.critedge.fh_drop_write.exit183_crit_edge, label %if.then.i181

if.then106.critedge.fh_drop_write.exit183_crit_edge: ; preds = %if.then106.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %fh_drop_write.exit183

if.then.i181:                                     ; preds = %if.then106.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %fh_want_write.i, align 1
  %81 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i180 = getelementptr inbounds %struct.svc_export, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %ex_path.i180 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ex_path.i180, align 8
  call void @mnt_drop_write(ptr noundef %84) #12
  br label %fh_drop_write.exit183

fh_drop_write.exit183:                            ; preds = %if.then.i181, %if.then106.critedge.fh_drop_write.exit183_crit_edge
  %d_inode.i.i184 = getelementptr inbounds %struct.dentry, ptr %ndentry.1, i32 0, i32 5
  %85 = ptrtoint ptr %d_inode.i.i184 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %d_inode.i.i184, align 8
  %tobool.not.i185 = icmp eq ptr %86, null
  br i1 %tobool.not.i185, label %fh_drop_write.exit183.nfsd_close_cached_files.exit_crit_edge, label %land.lhs.true.i187

fh_drop_write.exit183.nfsd_close_cached_files.exit_crit_edge: ; preds = %fh_drop_write.exit183
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsd_close_cached_files.exit

land.lhs.true.i187:                               ; preds = %fh_drop_write.exit183
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %86, align 8
  %89 = and i16 %88, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %89)
  %cmp.i186 = icmp eq i16 %89, -32768
  br i1 %cmp.i186, label %if.then.i188, label %land.lhs.true.i187.nfsd_close_cached_files.exit_crit_edge

land.lhs.true.i187.nfsd_close_cached_files.exit_crit_edge: ; preds = %land.lhs.true.i187
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsd_close_cached_files.exit

if.then.i188:                                     ; preds = %land.lhs.true.i187
  call void @__sanitizer_cov_trace_pc() #14
  call void @nfsd_file_close_inode_sync(ptr noundef nonnull %86) #12
  br label %nfsd_close_cached_files.exit

nfsd_close_cached_files.exit:                     ; preds = %if.then.i188, %land.lhs.true.i187.nfsd_close_cached_files.exit_crit_edge, %fh_drop_write.exit183.nfsd_close_cached_files.exit_crit_edge
  call void @dput(ptr noundef %ndentry.1) #12
  br label %retry

out:                                              ; preds = %if.then.i175, %if.then101.out_crit_edge, %if.then41, %lor.lhs.false32.out_crit_edge, %land.lhs.true29.out_crit_edge, %lor.lhs.false19.out_crit_edge, %lor.lhs.false14.out_crit_edge, %land.lhs.true11.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call1, %if.end.out_crit_edge ], [ 1, %land.lhs.true11.out_crit_edge ], [ 1, %lor.lhs.false14.out_crit_edge ], [ 1, %land.lhs.true29.out_crit_edge ], [ 1, %lor.lhs.false32.out_crit_edge ], [ %call42, %if.then41 ], [ 1, %lor.lhs.false19.out_crit_edge ], [ 1, %if.end4.out_crit_edge ], [ %call99197, %if.then101.out_crit_edge ], [ %call99197, %if.then.i175 ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lock_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fh_fill_pre_attrs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_rename(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fh_fill_post_attrs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_unlink(ptr noundef %rqstp, ptr noundef %fhp, i32 noundef %type, ptr noundef %fname, i32 noundef %flen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flen)
  %tobool.not = icmp eq i32 %flen, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %flen)
  %cmp = icmp slt i32 %flen, 3
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %0 = ptrtoint ptr %fname to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fname, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %1)
  %cmp1 = icmp eq i8 %1, 46
  br i1 %cmp1, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %flen)
  %cmp4 = icmp eq i32 %flen, 1
  br i1 %cmp4, label %land.lhs.true3.out_crit_edge, label %lor.lhs.false6

land.lhs.true3.out_crit_edge:                     ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false6:                                   ; preds = %land.lhs.true3
  %arrayidx7 = getelementptr i8, ptr %fname, i32 1
  %2 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %3)
  %cmp9 = icmp eq i8 %3, 46
  br i1 %cmp9, label %lor.lhs.false6.out_crit_edge, label %lor.lhs.false6.if.end_crit_edge

lor.lhs.false6.if.end_crit_edge:                  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false6.out_crit_edge:                     ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %lor.lhs.false6.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext 16384, i32 noundef 19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end13:                                         ; preds = %if.end
  %fh_want_write.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 5
  %4 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fh_want_write.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end.i:                                         ; preds = %if.end13
  %fh_export.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %6 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ex_path.i, align 8
  %call.i = tail call i32 @mnt_want_write(ptr noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.out_nfserr_crit_edge

if.end.i.out_nfserr_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_nfserr

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %fh_want_write.i, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then2.i, %if.end13.if.end17_crit_edge
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %11 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i88 = icmp eq ptr %12, null
  br i1 %tobool.not.i88, label %do.body4.i, label %do.end9.i, !prof !124

do.body4.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfsfh.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 360, 0\0A.popsection", ""() #12, !srcloc !125
  unreachable

do.end9.i:                                        ; preds = %if.end17
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 4
  %13 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fh_locked.i, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool10.not.i = icmp eq i8 %14, 0
  br i1 %tobool10.not.i, label %if.end15.i, label %do.end14.i

do.end14.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %12) #15
  br label %fh_lock_nested.exit

if.end15.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 1) #12
  tail call void @fh_fill_pre_attrs(ptr noundef %fhp) #12
  %17 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %fh_locked.i, align 8
  br label %fh_lock_nested.exit

fh_lock_nested.exit:                              ; preds = %if.end15.i, %do.end14.i
  %18 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fh_dentry.i, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode.i, align 8
  %call19 = tail call ptr @lookup_one_len(ptr noundef %fname, ptr noundef %19, i32 noundef %flen) #12
  %22 = ptrtoint ptr %call19 to i32
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %fh_lock_nested.exit.out_drop_write_crit_edge, label %if.end23

fh_lock_nested.exit.out_drop_write_crit_edge:     ; preds = %fh_lock_nested.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_drop_write

if.end23:                                         ; preds = %fh_lock_nested.exit
  %d_inode.i90 = getelementptr inbounds %struct.dentry, ptr %call19, i32 0, i32 5
  %23 = ptrtoint ptr %d_inode.i90 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_inode.i90, align 8
  %cmp.i91 = icmp eq ptr %24, null
  br i1 %cmp.i91, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dput(ptr noundef %call19) #12
  br label %out_drop_write

if.end26:                                         ; preds = %if.end23
  tail call void @ihold(ptr noundef nonnull %24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %tobool28.not = icmp eq i32 %type, 0
  br i1 %tobool28.not, label %if.then29, label %if.end26.if.end32_crit_edge

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %d_inode.i90 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_inode.i90, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %26, align 8
  %29 = and i16 %28, -4096
  %and = zext i16 %29 to i32
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end26.if.end32_crit_edge
  %type.addr.0 = phi i32 [ %type, %if.end26.if.end32_crit_edge ], [ %and, %if.then29 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %type.addr.0)
  %cmp33.not = icmp eq i32 %type.addr.0, 16384
  br i1 %cmp33.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end32
  %d_sb = getelementptr inbounds %struct.dentry, ptr %call19, i32 0, i32 9
  %30 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_sb, align 4
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %s_export_op to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_export_op, align 16
  %flags = getelementptr inbounds %struct.export_operations, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %and36 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.then35.if.end39_crit_edge, label %if.then38

if.then35.if.end39_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then38:                                        ; preds = %if.then35
  %36 = ptrtoint ptr %d_inode.i90 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %d_inode.i90, align 8
  %tobool.not.i95 = icmp eq ptr %37, null
  br i1 %tobool.not.i95, label %if.then38.if.end39_crit_edge, label %land.lhs.true.i

if.then38.if.end39_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

land.lhs.true.i:                                  ; preds = %if.then38
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %37, align 8
  %40 = and i16 %39, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %40)
  %cmp.i96 = icmp eq i16 %40, -32768
  br i1 %cmp.i96, label %if.then.i, label %land.lhs.true.i.if.end39_crit_edge

land.lhs.true.i.if.end39_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nfsd_file_close_inode_sync(ptr noundef nonnull %37) #12
  br label %if.end39

if.end39:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end39_crit_edge, %if.then38.if.end39_crit_edge, %if.then35.if.end39_crit_edge
  %call40 = tail call i32 @vfs_unlink(ptr noundef nonnull @init_user_ns, ptr noundef %21, ptr noundef %call19, ptr noundef null) #12
  br label %if.end42

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %call41 = tail call i32 @vfs_rmdir(ptr noundef nonnull @init_user_ns, ptr noundef %21, ptr noundef %call19) #12
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.end39
  %host_err.0 = phi i32 [ %call40, %if.end39 ], [ %call41, %if.else ]
  tail call fastcc void @fh_unlock(ptr noundef %fhp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %host_err.0)
  %tobool43.not = icmp eq i32 %host_err.0, 0
  br i1 %tobool43.not, label %if.then44, label %if.end42.if.end46_crit_edge

if.end42.if.end46_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %call45 = tail call fastcc i32 @commit_metadata(ptr noundef %fhp)
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end42.if.end46_crit_edge
  %host_err.1 = phi i32 [ %host_err.0, %if.end42.if.end46_crit_edge ], [ %call45, %if.then44 ]
  tail call void @dput(ptr noundef %call19) #12
  tail call void @iput(ptr noundef nonnull %24) #12
  br label %out_drop_write

out_drop_write:                                   ; preds = %if.end46, %if.then25, %fh_lock_nested.exit.out_drop_write_crit_edge
  %host_err.2 = phi i32 [ %22, %fh_lock_nested.exit.out_drop_write_crit_edge ], [ -2, %if.then25 ], [ %host_err.1, %if.end46 ]
  %41 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %fh_want_write.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i99 = icmp eq i8 %42, 0
  br i1 %tobool.not.i99, label %out_drop_write.out_nfserr_crit_edge, label %if.then.i102

out_drop_write.out_nfserr_crit_edge:              ; preds = %out_drop_write
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_nfserr

if.then.i102:                                     ; preds = %out_drop_write
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %fh_want_write.i, align 1
  %fh_export.i100 = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %44 = ptrtoint ptr %fh_export.i100 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fh_export.i100, align 4
  %ex_path.i101 = getelementptr inbounds %struct.svc_export, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %ex_path.i101 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ex_path.i101, align 8
  tail call void @mnt_drop_write(ptr noundef %47) #12
  br label %out_nfserr

out_nfserr:                                       ; preds = %if.then.i102, %out_drop_write.out_nfserr_crit_edge, %if.end.i.out_nfserr_crit_edge
  %host_err.3 = phi i32 [ %call.i, %if.end.i.out_nfserr_crit_edge ], [ %host_err.2, %out_drop_write.out_nfserr_crit_edge ], [ %host_err.2, %if.then.i102 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %host_err.3)
  %cmp47 = icmp eq i32 %host_err.3, -16
  br i1 %cmp47, label %if.then49, label %if.else55

if.then49:                                        ; preds = %out_nfserr
  %rq_prog.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 28
  %48 = ptrtoint ptr %rq_prog.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rq_prog.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100003, i32 %49)
  %cmp.i104 = icmp eq i32 %49, 100003
  br i1 %cmp.i104, label %nfsd_v4client.exit, label %if.then49.nfsd_v4client.exit.thread_crit_edge

if.then49.nfsd_v4client.exit.thread_crit_edge:    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsd_v4client.exit.thread

nfsd_v4client.exit:                               ; preds = %if.then49
  %rq_vers.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %50 = ptrtoint ptr %rq_vers.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rq_vers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %51)
  %cmp1.i.not = icmp eq i32 %51, 4
  br i1 %cmp1.i.not, label %nfsd_v4client.exit.out_crit_edge, label %nfsd_v4client.exit.nfsd_v4client.exit.thread_crit_edge

nfsd_v4client.exit.nfsd_v4client.exit.thread_crit_edge: ; preds = %nfsd_v4client.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsd_v4client.exit.thread

nfsd_v4client.exit.out_crit_edge:                 ; preds = %nfsd_v4client.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

nfsd_v4client.exit.thread:                        ; preds = %nfsd_v4client.exit.nfsd_v4client.exit.thread_crit_edge, %if.then49.nfsd_v4client.exit.thread_crit_edge
  br label %out

if.else55:                                        ; preds = %out_nfserr
  call void @__sanitizer_cov_trace_pc() #14
  %call56 = tail call i32 @nfserrno(i32 noundef %host_err.3) #12
  br label %out

out:                                              ; preds = %if.else55, %nfsd_v4client.exit.thread, %nfsd_v4client.exit.out_crit_edge, %if.end.out_crit_edge, %lor.lhs.false6.out_crit_edge, %land.lhs.true3.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ 13, %land.lhs.true3.out_crit_edge ], [ 13, %lor.lhs.false6.out_crit_edge ], [ %call, %if.end.out_crit_edge ], [ %call56, %if.else55 ], [ 13, %entry.out_crit_edge ], [ 13, %nfsd_v4client.exit.thread ], [ 10046, %nfsd_v4client.exit.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_unlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_rmdir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_readdir(ptr noundef %rqstp, ptr noundef %fhp, ptr nocapture noundef %offsetp, ptr noundef %cdp, ptr nocapture noundef readonly %func) local_unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca %struct.readdir_data, align 8
  %file = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %file) #12
  %0 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %file, align 4, !annotation !122
  %1 = ptrtoint ptr %offsetp to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %offsetp, align 8
  %rq_vers = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %3 = ptrtoint ptr %rq_vers to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rq_vers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp ugt i32 %4, 2
  %spec.select = select i1 %cmp, i32 4100, i32 4
  %call = call i32 @nfsd_open(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext 16384, i32 noundef %spec.select, ptr noundef nonnull %file)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end2:                                          ; preds = %entry
  %5 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %file, align 4
  %call3 = tail call i64 @vfs_llseek(ptr noundef %6, i64 noundef %2, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call3)
  %cmp4 = icmp slt i64 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i64 %call3 to i32
  %call6 = tail call i32 @nfserrno(i32 noundef %conv) #12
  br label %out_close

if.end7:                                          ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #12
  %7 = call ptr @memset(ptr %buf.i, i32 0, i32 32)
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nfsd_buffered_filldir, ptr %buf.i, align 8
  %dirent.i = getelementptr inbounds %struct.readdir_data, ptr %buf.i, i32 0, i32 1
  %call.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #12
  %9 = inttoptr i32 %call.i to ptr
  %10 = ptrtoint ptr %dirent.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %dirent.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = tail call i32 @nfserrno(i32 noundef -12) #12
  br label %nfsd_buffered_readdir.exit

if.end.i:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %offsetp to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %offsetp, align 8
  %used.i = getelementptr inbounds %struct.readdir_data, ptr %buf.i, i32 0, i32 2
  %full.i = getelementptr inbounds %struct.readdir_data, ptr %buf.i, i32 0, i32 3
  %13 = ptrtoint ptr %cdp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 30001, ptr %cdp, align 4
  %14 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %used.i, align 4
  %15 = ptrtoint ptr %full.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %full.i, align 8
  %call489.i = call i32 @iterate_dir(ptr noundef %6, ptr noundef nonnull %buf.i) #12
  %16 = ptrtoint ptr %full.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %full.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool6.not90.i = icmp eq i32 %17, 0
  %spec.store.select91.i = select i1 %tobool6.not90.i, i32 %call489.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select91.i)
  %cmp92.i = icmp slt i32 %spec.store.select91.i, 0
  br i1 %cmp92.i, label %if.end.i.while.end39.thread.i_crit_edge, label %if.end10.i.preheader

if.end.i.while.end39.thread.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end39.thread.i

if.end10.i.preheader:                             ; preds = %if.end.i
  %18 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not.i31 = icmp eq i32 %19, 0
  br i1 %tobool12.not.i31, label %if.end10.i.preheader.while.end39.i_crit_edge, label %if.end10.i.preheader.if.end14.i_crit_edge

if.end10.i.preheader.if.end14.i_crit_edge:        ; preds = %if.end10.i.preheader
  br label %if.end14.i

if.end10.i.preheader.while.end39.i_crit_edge:     ; preds = %if.end10.i.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end39.i

while.end39.thread.i:                             ; preds = %cleanup.i.while.end39.thread.i_crit_edge, %if.end.i.while.end39.thread.i_crit_edge
  %spec.store.select.lcssa.i = phi i32 [ %call489.i, %if.end.i.while.end39.thread.i_crit_edge ], [ %call4.i, %cleanup.i.while.end39.thread.i_crit_edge ]
  %20 = ptrtoint ptr %dirent.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dirent.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @free_pages(i32 noundef %22, i32 noundef 0) #12
  br label %if.then42.i

if.end10.i:                                       ; preds = %cleanup.i
  %23 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %used.i, align 4
  %tobool12.not.i = icmp eq i32 %24, 0
  br i1 %tobool12.not.i, label %if.end10.i.while.end39.i_crit_edge, label %if.end10.i.if.end14.i_crit_edge

if.end10.i.if.end14.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.end10.i.while.end39.i_crit_edge:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end39.i

if.end14.i:                                       ; preds = %if.end10.i.if.end14.i_crit_edge, %if.end10.i.preheader.if.end14.i_crit_edge
  %25 = phi i32 [ %24, %if.end10.i.if.end14.i_crit_edge ], [ %19, %if.end10.i.preheader.if.end14.i_crit_edge ]
  %spec.store.select94.i32 = phi i32 [ %spec.store.select.i, %if.end10.i.if.end14.i_crit_edge ], [ %spec.store.select91.i, %if.end10.i.preheader.if.end14.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp1786.i = icmp sgt i32 %25, 0
  br i1 %cmp1786.i, label %while.body18.preheader.i, label %if.end14.i.cleanup.i_crit_edge

if.end14.i.cleanup.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

while.body18.preheader.i:                         ; preds = %if.end14.i
  %26 = ptrtoint ptr %dirent.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dirent.i, align 8
  br label %while.body18.i

while.body18.i:                                   ; preds = %if.end28.i.while.body18.i_crit_edge, %while.body18.preheader.i
  %size.088.i = phi i32 [ %sub.i, %if.end28.i.while.body18.i_crit_edge ], [ %25, %while.body18.preheader.i ]
  %de.087.i = phi ptr [ %add.ptr.i, %if.end28.i.while.body18.i_crit_edge ], [ %27, %while.body18.preheader.i ]
  %offset19.i = getelementptr inbounds %struct.buffered_dirent, ptr %de.087.i, i32 0, i32 1
  %28 = ptrtoint ptr %offset19.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %offset19.i, align 8
  %name.i = getelementptr inbounds %struct.buffered_dirent, ptr %de.087.i, i32 0, i32 4
  %namlen.i = getelementptr inbounds %struct.buffered_dirent, ptr %de.087.i, i32 0, i32 2
  %30 = ptrtoint ptr %namlen.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %namlen.i, align 8
  %32 = ptrtoint ptr %de.087.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %de.087.i, align 8
  %d_type.i = getelementptr inbounds %struct.buffered_dirent, ptr %de.087.i, i32 0, i32 3
  %34 = ptrtoint ptr %d_type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %d_type.i, align 4
  %call21.i = call i32 %func(ptr noundef %cdp, ptr noundef %name.i, i32 noundef %31, i64 noundef %29, i64 noundef %33, i32 noundef %35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %while.body18.i.while.end39.i_crit_edge

while.body18.i.while.end39.i_crit_edge:           ; preds = %while.body18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end39.i

if.end24.i:                                       ; preds = %while.body18.i
  %36 = ptrtoint ptr %cdp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cdp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp26.not.i = icmp eq i32 %37, 0
  br i1 %cmp26.not.i, label %if.end28.i, label %if.end24.i.while.end39.i_crit_edge

if.end24.i.while.end39.i_crit_edge:               ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end39.i

if.end28.i:                                       ; preds = %if.end24.i
  %38 = ptrtoint ptr %de.087.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %de.087.i, align 8
  %40 = ptrtoint ptr %namlen.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %namlen.i, align 8
  call fastcc void @trace_nfsd_dirent(ptr noundef %fhp, i64 noundef %39, ptr noundef %name.i, i32 noundef %41) #12
  %42 = ptrtoint ptr %namlen.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %namlen.i, align 8
  %add34.i = add i32 %43, 31
  %and.i = and i32 %add34.i, -8
  %sub.i = sub i32 %size.088.i, %and.i
  %add.ptr.i = getelementptr i8, ptr %de.087.i, i32 %and.i
  %cmp17.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp17.i, label %if.end28.i.while.body18.i_crit_edge, label %if.end28.i.cleanup.i_crit_edge

if.end28.i.cleanup.i_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end28.i.while.body18.i_crit_edge:              ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body18.i

cleanup.i:                                        ; preds = %if.end28.i.cleanup.i_crit_edge, %if.end14.i.cleanup.i_crit_edge
  %call38.i = call i64 @vfs_llseek(ptr noundef %6, i64 noundef 0, i32 noundef 1) #12
  %44 = ptrtoint ptr %cdp to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 30001, ptr %cdp, align 4
  %45 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %used.i, align 4
  %46 = ptrtoint ptr %full.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %full.i, align 8
  %call4.i = call i32 @iterate_dir(ptr noundef %6, ptr noundef nonnull %buf.i) #12
  %47 = ptrtoint ptr %full.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %full.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool6.not.i = icmp eq i32 %48, 0
  %spec.store.select.i = select i1 %tobool6.not.i, i32 %call4.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %cmp.i = icmp slt i32 %spec.store.select.i, 0
  br i1 %cmp.i, label %cleanup.i.while.end39.thread.i_crit_edge, label %if.end10.i

cleanup.i.while.end39.thread.i_crit_edge:         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end39.thread.i

while.end39.i:                                    ; preds = %if.end24.i.while.end39.i_crit_edge, %while.body18.i.while.end39.i_crit_edge, %if.end10.i.while.end39.i_crit_edge, %if.end10.i.preheader.while.end39.i_crit_edge
  %spec.store.select94.i30 = phi i32 [ %spec.store.select91.i, %if.end10.i.preheader.while.end39.i_crit_edge ], [ %spec.store.select94.i32, %while.body18.i.while.end39.i_crit_edge ], [ %spec.store.select94.i32, %if.end24.i.while.end39.i_crit_edge ], [ %spec.store.select.i, %if.end10.i.while.end39.i_crit_edge ]
  %offset.3.ph.i = phi i64 [ %12, %if.end10.i.preheader.while.end39.i_crit_edge ], [ %29, %while.body18.i.while.end39.i_crit_edge ], [ %29, %if.end24.i.while.end39.i_crit_edge ], [ %call38.i, %if.end10.i.while.end39.i_crit_edge ]
  %49 = ptrtoint ptr %dirent.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dirent.i, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @free_pages(i32 noundef %51, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select94.i30)
  %tobool41.not.i = icmp eq i32 %spec.store.select94.i30, 0
  br i1 %tobool41.not.i, label %if.end44.i, label %while.end39.i.if.then42.i_crit_edge

while.end39.i.if.then42.i_crit_edge:              ; preds = %while.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then42.i

if.then42.i:                                      ; preds = %while.end39.i.if.then42.i_crit_edge, %while.end39.thread.i
  %spec.store.select82.i = phi i32 [ %spec.store.select.lcssa.i, %while.end39.thread.i ], [ %spec.store.select94.i30, %while.end39.i.if.then42.i_crit_edge ]
  %call43.i = call i32 @nfserrno(i32 noundef %spec.store.select82.i) #12
  br label %nfsd_buffered_readdir.exit

if.end44.i:                                       ; preds = %while.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %offsetp to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %offset.3.ph.i, ptr %offsetp, align 8
  %53 = ptrtoint ptr %cdp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cdp, align 4
  br label %nfsd_buffered_readdir.exit

nfsd_buffered_readdir.exit:                       ; preds = %if.end44.i, %if.then42.i, %if.then.i
  %retval.0.i = phi i32 [ %call43.i, %if.then42.i ], [ %54, %if.end44.i ], [ %call2.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #12
  %55 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %retval.0.i, label %nfsd_buffered_readdir.exit.out_close_crit_edge [
    i32 30001, label %nfsd_buffered_readdir.exit.if.then13_crit_edge
    i32 10005, label %nfsd_buffered_readdir.exit.if.then13_crit_edge68
  ]

nfsd_buffered_readdir.exit.if.then13_crit_edge68: ; preds = %nfsd_buffered_readdir.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

nfsd_buffered_readdir.exit.if.then13_crit_edge:   ; preds = %nfsd_buffered_readdir.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

nfsd_buffered_readdir.exit.out_close_crit_edge:   ; preds = %nfsd_buffered_readdir.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_close

if.then13:                                        ; preds = %nfsd_buffered_readdir.exit.if.then13_crit_edge, %nfsd_buffered_readdir.exit.if.then13_crit_edge68
  br label %out_close

out_close:                                        ; preds = %if.then13, %nfsd_buffered_readdir.exit.out_close_crit_edge, %if.then5
  %err.0 = phi i32 [ %call6, %if.then5 ], [ 0, %if.then13 ], [ %retval.0.i, %nfsd_buffered_readdir.exit.out_close_crit_edge ]
  call void @fput(ptr noundef %6) #12
  br label %out

out:                                              ; preds = %out_close, %entry.out_crit_edge
  %err.1 = phi i32 [ %call, %entry.out_crit_edge ], [ %err.0, %out_close ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %file) #12
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_statfs(ptr noundef %rqstp, ptr noundef %fhp, ptr noundef %stat, i32 noundef %access) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext 0, i32 noundef %access) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #12
  %0 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %1 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fh_export, align 4
  %ex_path = getelementptr inbounds %struct.svc_export, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %ex_path to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ex_path, align 8
  %5 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %path, align 4
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %6 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fh_dentry, align 8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %0, align 4
  %call2 = call i32 @vfs_statfs(ptr noundef nonnull %path, ptr noundef %stat) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %tobool3.not, i32 0, i32 5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry.if.end5_crit_edge
  %err.1 = phi i32 [ %call, %entry.if.end5_crit_edge ], [ %spec.select, %if.then ]
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_statfs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_getxattr(ptr noundef %rqstp, ptr noundef %fhp, ptr noundef %name, ptr nocapture noundef writeonly %bufp, ptr nocapture noundef %lenp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext 0, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %0 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_read(ptr noundef %i_rwsem.i) #12
  %call2 = tail call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %name, ptr noundef null, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %bufp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bufp, align 4
  %5 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %lenp, align 4
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp5 = icmp slt i32 %call2, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %6 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call2, label %sw.epilog.i [
    i32 -61, label %if.then6.out_crit_edge
    i32 -7, label %sw.bb1.i
    i32 -34, label %sw.bb2.i
  ]

if.then6.out_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb1.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb2.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.epilog.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @nfserrno(i32 noundef %call2) #12
  br label %out

if.end8:                                          ; preds = %if.end4
  %7 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lenp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %8)
  %cmp9 = icmp sgt i32 %call2, %8
  br i1 %cmp9, label %if.end8.out_crit_edge, label %if.end11

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end11:                                         ; preds = %if.end8
  %call.i46 = tail call noalias ptr @kvmalloc_node(i32 noundef %call2, i32 noundef 3264, i32 noundef -1) #17
  %cmp13 = icmp eq ptr %call.i46, null
  br i1 %cmp13, label %if.end11.out_crit_edge, label %if.end15

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %name, ptr noundef nonnull %call.i46, i32 noundef %call2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 1
  br i1 %cmp17, label %if.then18, label %if.end15.if.end20_crit_edge

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  tail call void @kvfree(ptr noundef nonnull %call.i46) #12
  %9 = zext i32 %call16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call16, label %sw.epilog.i50 [
    i32 -61, label %if.then18.if.end20_crit_edge
    i32 -7, label %sw.bb1.i47
    i32 -34, label %sw.bb2.i48
  ]

if.then18.if.end20_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

sw.bb1.i47:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

sw.bb2.i48:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

sw.epilog.i50:                                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %call.i49 = tail call i32 @nfserrno(i32 noundef %call16) #12
  br label %if.end20

if.end20:                                         ; preds = %sw.epilog.i50, %sw.bb2.i48, %sw.bb1.i47, %if.then18.if.end20_crit_edge, %if.end15.if.end20_crit_edge
  %err.0 = phi i32 [ 0, %if.end15.if.end20_crit_edge ], [ %call.i49, %sw.epilog.i50 ], [ 10005, %sw.bb2.i48 ], [ 10096, %sw.bb1.i47 ], [ 10095, %if.then18.if.end20_crit_edge ]
  %buf.0 = phi ptr [ %call.i46, %if.end15.if.end20_crit_edge ], [ null, %sw.epilog.i50 ], [ null, %sw.bb2.i48 ], [ null, %sw.bb1.i47 ], [ null, %if.then18.if.end20_crit_edge ]
  %10 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call16, ptr %lenp, align 4
  %11 = ptrtoint ptr %bufp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf.0, ptr %bufp, align 4
  br label %out

out:                                              ; preds = %if.end20, %if.end11.out_crit_edge, %if.end8.out_crit_edge, %sw.epilog.i, %sw.bb2.i, %sw.bb1.i, %if.then6.out_crit_edge, %if.then3
  %err.1 = phi i32 [ 0, %if.then3 ], [ %err.0, %if.end20 ], [ 10005, %if.end8.out_crit_edge ], [ 10008, %if.end11.out_crit_edge ], [ %call.i, %sw.epilog.i ], [ 10005, %sw.bb2.i ], [ 10096, %sw.bb1.i ], [ 10095, %if.then6.out_crit_edge ]
  tail call void @up_read(ptr noundef %i_rwsem.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_listxattr(ptr noundef %rqstp, ptr noundef %fhp, ptr nocapture noundef writeonly %bufp, ptr nocapture noundef writeonly %lenp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext 0, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %0 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %4 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %lenp, align 4
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_read(ptr noundef %i_rwsem.i) #12
  %call2 = tail call i32 @vfs_listxattr(ptr noundef %1, ptr noundef null, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call2, label %sw.epilog.i [
    i32 -61, label %if.then3.out_crit_edge
    i32 -7, label %sw.bb1.i
    i32 -34, label %sw.bb2.i
  ]

if.then3.out_crit_edge:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb1.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb2.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.epilog.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @nfserrno(i32 noundef %call2) #12
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call2)
  %cmp6 = icmp ugt i32 %call2, 65536
  br i1 %cmp6, label %if.end5.out_crit_edge, label %if.end8

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end8:                                          ; preds = %if.end5
  %call.i39 = tail call noalias ptr @kvmalloc_node(i32 noundef %call2, i32 noundef 3264, i32 noundef -1) #17
  %cmp10 = icmp eq ptr %call.i39, null
  br i1 %cmp10, label %if.end8.out_crit_edge, label %if.end12

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @vfs_listxattr(ptr noundef %1, ptr noundef nonnull %call.i39, i32 noundef %call2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  tail call void @kvfree(ptr noundef nonnull %call.i39) #12
  %6 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call13, label %sw.epilog.i43 [
    i32 -61, label %if.then15.out_crit_edge
    i32 -7, label %sw.bb1.i40
    i32 -34, label %sw.bb2.i41
  ]

if.then15.out_crit_edge:                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb1.i40:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb2.i41:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.epilog.i43:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %call.i42 = tail call i32 @nfserrno(i32 noundef %call13) #12
  br label %out

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call13, ptr %lenp, align 4
  %8 = ptrtoint ptr %bufp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i39, ptr %bufp, align 4
  br label %out

out:                                              ; preds = %if.end17, %sw.epilog.i43, %sw.bb2.i41, %sw.bb1.i40, %if.then15.out_crit_edge, %if.end8.out_crit_edge, %if.end5.out_crit_edge, %sw.epilog.i, %sw.bb2.i, %sw.bb1.i, %if.then3.out_crit_edge
  %err.0 = phi i32 [ 0, %if.end17 ], [ 10096, %if.end5.out_crit_edge ], [ 10008, %if.end8.out_crit_edge ], [ %call.i, %sw.epilog.i ], [ 10005, %sw.bb2.i ], [ 10096, %sw.bb1.i ], [ 10095, %if.then3.out_crit_edge ], [ %call.i42, %sw.epilog.i43 ], [ 10005, %sw.bb2.i41 ], [ 10096, %sw.bb1.i40 ], [ 10095, %if.then15.out_crit_edge ]
  tail call void @up_read(ptr noundef %i_rwsem.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_listxattr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_removexattr(ptr noundef %rqstp, ptr noundef %fhp, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext 0, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %fh_want_write.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 5
  %0 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fh_want_write.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end.i:                                         ; preds = %if.end
  %fh_export.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %2 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ex_path.i, align 8
  %call.i = tail call i32 @mnt_want_write(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then3

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %fh_want_write.i, align 1
  br label %if.end5

if.then3:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 @nfserrno(i32 noundef %call.i) #12
  br label %cleanup

if.end5:                                          ; preds = %if.then2.i, %if.end.if.end5_crit_edge
  %fh_dentry.i.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %7 = ptrtoint ptr %fh_dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fh_dentry.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !124

do.body4.i.i:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfsfh.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 360, 0\0A.popsection", ""() #12, !srcloc !125
  unreachable

do.end9.i.i:                                      ; preds = %if.end5
  %fh_locked.i.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 4
  %9 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fh_locked.i.i, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool10.not.i.i, label %if.end15.i.i, label %do.end14.i.i

do.end14.i.i:                                     ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %8) #15
  br label %fh_lock.exit

if.end15.i.i:                                     ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %11 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_rwsem.i.i.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i.i, i32 noundef 0) #12
  tail call void @fh_fill_pre_attrs(ptr noundef %fhp) #12
  %13 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %fh_locked.i.i, align 8
  br label %fh_lock.exit

fh_lock.exit:                                     ; preds = %if.end15.i.i, %do.end14.i.i
  %14 = ptrtoint ptr %fh_dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fh_dentry.i.i, align 8
  %call6 = tail call i32 @__vfs_removexattr_locked(ptr noundef nonnull @init_user_ns, ptr noundef %15, ptr noundef %name, ptr noundef null) #12
  %16 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fh_locked.i.i, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i17 = icmp eq i8 %17, 0
  br i1 %tobool.not.i17, label %fh_lock.exit.fh_unlock.exit_crit_edge, label %if.then.i

fh_lock.exit.fh_unlock.exit_crit_edge:            ; preds = %fh_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fh_unlock.exit

if.then.i:                                        ; preds = %fh_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fh_fill_post_attrs(ptr noundef %fhp) #12
  %18 = ptrtoint ptr %fh_dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fh_dentry.i.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #12
  %22 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %fh_locked.i.i, align 8
  br label %fh_unlock.exit

fh_unlock.exit:                                   ; preds = %if.then.i, %fh_lock.exit.fh_unlock.exit_crit_edge
  %23 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fh_want_write.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i20 = icmp eq i8 %24, 0
  br i1 %tobool.not.i20, label %fh_unlock.exit.fh_drop_write.exit_crit_edge, label %if.then.i23

fh_unlock.exit.fh_drop_write.exit_crit_edge:      ; preds = %fh_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fh_drop_write.exit

if.then.i23:                                      ; preds = %fh_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %fh_want_write.i, align 1
  %fh_export.i21 = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %26 = ptrtoint ptr %fh_export.i21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fh_export.i21, align 4
  %ex_path.i22 = getelementptr inbounds %struct.svc_export, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %ex_path.i22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ex_path.i22, align 8
  tail call void @mnt_drop_write(ptr noundef %29) #12
  br label %fh_drop_write.exit

fh_drop_write.exit:                               ; preds = %if.then.i23, %fh_unlock.exit.fh_drop_write.exit_crit_edge
  %30 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %call6, label %sw.epilog.i [
    i32 -61, label %fh_drop_write.exit.cleanup_crit_edge
    i32 -7, label %sw.bb1.i
    i32 -34, label %sw.bb2.i
  ]

fh_drop_write.exit.cleanup_crit_edge:             ; preds = %fh_drop_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb1.i:                                         ; preds = %fh_drop_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb2.i:                                         ; preds = %fh_drop_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog.i:                                      ; preds = %fh_drop_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i25 = tail call i32 @nfserrno(i32 noundef %call6) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %sw.bb2.i, %sw.bb1.i, %fh_drop_write.exit.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i25, %sw.epilog.i ], [ 10005, %sw.bb2.i ], [ 10096, %sw.bb1.i ], [ 10095, %fh_drop_write.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vfs_removexattr_locked(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_setxattr(ptr noundef %rqstp, ptr noundef %fhp, ptr noundef %name, ptr noundef %buf, i32 noundef %len, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext 0, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %fh_want_write.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 5
  %0 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fh_want_write.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end.i:                                         ; preds = %if.end
  %fh_export.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %2 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ex_path.i, align 8
  %call.i = tail call i32 @mnt_want_write(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then3

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %fh_want_write.i, align 1
  br label %if.end5

if.then3:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 @nfserrno(i32 noundef %call.i) #12
  br label %cleanup

if.end5:                                          ; preds = %if.then2.i, %if.end.if.end5_crit_edge
  %fh_dentry.i.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %7 = ptrtoint ptr %fh_dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fh_dentry.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !124

do.body4.i.i:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfsfh.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 360, 0\0A.popsection", ""() #12, !srcloc !125
  unreachable

do.end9.i.i:                                      ; preds = %if.end5
  %fh_locked.i.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 4
  %9 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fh_locked.i.i, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool10.not.i.i, label %if.end15.i.i, label %do.end14.i.i

do.end14.i.i:                                     ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %8) #15
  br label %fh_lock.exit

if.end15.i.i:                                     ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %11 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_rwsem.i.i.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i.i, i32 noundef 0) #12
  tail call void @fh_fill_pre_attrs(ptr noundef %fhp) #12
  %13 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %fh_locked.i.i, align 8
  br label %fh_lock.exit

fh_lock.exit:                                     ; preds = %if.end15.i.i, %do.end14.i.i
  %14 = ptrtoint ptr %fh_dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fh_dentry.i.i, align 8
  %call6 = tail call i32 @__vfs_setxattr_locked(ptr noundef nonnull @init_user_ns, ptr noundef %15, ptr noundef %name, ptr noundef %buf, i32 noundef %len, i32 noundef %flags, ptr noundef null) #12
  %16 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fh_locked.i.i, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i17 = icmp eq i8 %17, 0
  br i1 %tobool.not.i17, label %fh_lock.exit.fh_unlock.exit_crit_edge, label %if.then.i

fh_lock.exit.fh_unlock.exit_crit_edge:            ; preds = %fh_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fh_unlock.exit

if.then.i:                                        ; preds = %fh_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fh_fill_post_attrs(ptr noundef %fhp) #12
  %18 = ptrtoint ptr %fh_dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fh_dentry.i.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #12
  %22 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %fh_locked.i.i, align 8
  br label %fh_unlock.exit

fh_unlock.exit:                                   ; preds = %if.then.i, %fh_lock.exit.fh_unlock.exit_crit_edge
  %23 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fh_want_write.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i20 = icmp eq i8 %24, 0
  br i1 %tobool.not.i20, label %fh_unlock.exit.fh_drop_write.exit_crit_edge, label %if.then.i23

fh_unlock.exit.fh_drop_write.exit_crit_edge:      ; preds = %fh_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fh_drop_write.exit

if.then.i23:                                      ; preds = %fh_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %fh_want_write.i, align 1
  %fh_export.i21 = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %26 = ptrtoint ptr %fh_export.i21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fh_export.i21, align 4
  %ex_path.i22 = getelementptr inbounds %struct.svc_export, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %ex_path.i22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ex_path.i22, align 8
  tail call void @mnt_drop_write(ptr noundef %29) #12
  br label %fh_drop_write.exit

fh_drop_write.exit:                               ; preds = %if.then.i23, %fh_unlock.exit.fh_drop_write.exit_crit_edge
  %30 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call6, label %sw.epilog.i [
    i32 -61, label %fh_drop_write.exit.cleanup_crit_edge
    i32 -7, label %sw.bb1.i
    i32 -34, label %sw.bb2.i
  ]

fh_drop_write.exit.cleanup_crit_edge:             ; preds = %fh_drop_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb1.i:                                         ; preds = %fh_drop_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb2.i:                                         ; preds = %fh_drop_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog.i:                                      ; preds = %fh_drop_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i25 = tail call i32 @nfserrno(i32 noundef %call6) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %sw.bb2.i, %sw.bb1.i, %fh_drop_write.exit.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i25, %sw.epilog.i ], [ 10005, %sw.bb2.i ], [ 10096, %sw.bb1.i ], [ 10095, %fh_drop_write.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vfs_setxattr_locked(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mnt_is_readonly(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rqst_exp_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @follow_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_check(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_inode_metadata(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_clone_file_range_err(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_writeverf_reset(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__break_lease(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_file_check(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_read_splice(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__splice_from_pipe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_splice_actor(ptr nocapture noundef readnone %pipe, ptr nocapture noundef readonly %buf, ptr nocapture noundef readonly %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %page_len = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 19, i32 5
  %4 = ptrtoint ptr %page_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @svc_rqst_replace_page(ptr noundef %1, ptr noundef %3) #12
  %offset = getelementptr inbounds %struct.pipe_buffer, ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %page_base = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 19, i32 4
  %8 = ptrtoint ptr %page_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %page_base, align 8
  br label %if.end5

if.else:                                          ; preds = %entry
  %rq_next_page = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 22
  %9 = ptrtoint ptr %rq_next_page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rq_next_page, align 8
  %arrayidx = getelementptr ptr, ptr %10, i32 -1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %cmp3.not = icmp eq ptr %3, %12
  br i1 %cmp3.not, label %if.else.if.end5_crit_edge, label %if.then4

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @svc_rqst_replace_page(ptr noundef %1, ptr noundef %3) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.else.if.end5_crit_edge, %if.then
  %len = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 1
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %15 = ptrtoint ptr %page_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %page_len, align 4
  %add = add i32 %16, %14
  store i32 %add, ptr %page_len, align 4
  %17 = load i32, ptr %len, align 4
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_rqst_replace_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_read_io_done(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_io_done, i32 0, i32 1), ptr blockaddress(@trace_nfsd_read_io_done, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !133

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !120

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !167
  %call42 = tail call i32 @__traceiter_nfsd_read_io_done(ptr noundef null, ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !168
  %13 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !120

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_io_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_io_done, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfsd_read_io_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfsd_read_io_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 340, ptr noundef nonnull @.str.11) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
define internal fastcc void @trace_nfsd_read_err(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_err, i32 0, i32 1), ptr blockaddress(@trace_nfsd_read_err, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !133

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !120

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !169
  %call42 = tail call i32 @__traceiter_nfsd_read_err(ptr noundef null, ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !170
  %13 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !120

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfsd_read_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfsd_read_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 378, ptr noundef nonnull @.str.11) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_read_io_done(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_read_err(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_read_vector(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_write_opened(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_write_io_done(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_write_err(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_read_start(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_read_done(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_write_start(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_write_done(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfsd_file_is_cached(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_file_close_inode_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd_buffered_filldir(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %name, i32 noundef %namlen, i64 noundef %offset, i64 noundef %ino, i32 noundef %d_type) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %used = getelementptr inbounds %struct.readdir_data, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %used, align 4
  %add2 = add i32 %namlen, 31
  %and = and i32 %add2, -8
  %add4 = add i32 %1, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add4)
  %cmp = icmp ugt i32 %add4, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %full = getelementptr inbounds %struct.readdir_data, ptr %ctx, i32 0, i32 3
  %2 = ptrtoint ptr %full to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %full, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dirent = getelementptr inbounds %struct.readdir_data, ptr %ctx, i32 0, i32 1
  %3 = ptrtoint ptr %dirent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dirent, align 8
  %add.ptr1 = getelementptr i8, ptr %4, i32 %1
  %namlen5 = getelementptr inbounds %struct.buffered_dirent, ptr %add.ptr1, i32 0, i32 2
  %5 = ptrtoint ptr %namlen5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %namlen, ptr %namlen5, align 8
  %offset6 = getelementptr inbounds %struct.buffered_dirent, ptr %add.ptr1, i32 0, i32 1
  %6 = ptrtoint ptr %offset6 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %offset, ptr %offset6, align 8
  %7 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %ino, ptr %add.ptr1, align 8
  %d_type8 = getelementptr inbounds %struct.buffered_dirent, ptr %add.ptr1, i32 0, i32 3
  %8 = ptrtoint ptr %d_type8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %d_type, ptr %d_type8, align 4
  %name9 = getelementptr inbounds %struct.buffered_dirent, ptr %add.ptr1, i32 0, i32 4
  %9 = call ptr @memcpy(ptr %name9, ptr %name, i32 %namlen)
  %10 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %used, align 4
  %add11 = add i32 %11, %and
  store i32 %add11, ptr %used, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iterate_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_dirent(ptr noundef %fhp, i64 noundef %ino, ptr noundef %name, i32 noundef %namlen) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_dirent, i32 0, i32 1), ptr blockaddress(@trace_nfsd_dirent, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !133

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !120

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !171
  %call42 = tail call i32 @__traceiter_nfsd_dirent(ptr noundef null, ptr noundef %fhp, i64 noundef %ino, ptr noundef %name, i32 noundef %namlen) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !172
  %13 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !120

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_dirent, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_dirent, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfsd_dirent.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfsd_dirent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 400, ptr noundef nonnull @.str.11) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_dirent(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsexp_flags(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !14, !15, !16, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !44, !45, !47, !49, !51, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !107}
!llvm.named.register.sp = !{!108}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfsd/vfs.c", i32 183, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nfsd_lookup_dentry._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nfsd_lookup_dentry._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfsd/vfs.c", i32 493, i32 42}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../fs/nfsd/vfs.c", i32 1248, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/nfsd/vfs.c", i32 1306, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @nfsd_create_locked._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @nfsd_create_locked._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../fs/nfsd/vfs.c", i32 2422, i32 27}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/nfsd/nfsfh.h", i32 363, i32 3}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @fh_lock_nested._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @fh_lock_nested._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../fs/nfsd/trace.h", i32 450, i32 1}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../fs/nfsd/trace.h", i32 577, i32 1}
!44 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!45 = !{ptr @nfs3_regaccess, !46, !"nfs3_regaccess", i1 false, i1 false}
!46 = !{!"../fs/nfsd/vfs.c", i32 619, i32 25}
!47 = !{ptr @nfs3_diraccess, !48, !"nfs3_diraccess", i1 false, i1 false}
!48 = !{!"../fs/nfsd/vfs.c", i32 634, i32 25}
!49 = !{ptr @nfs3_anyaccess, !50, !"nfs3_anyaccess", i1 false, i1 false}
!50 = !{!"../fs/nfsd/vfs.c", i32 650, i32 25}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../fs/nfsd/vfs.c", i32 774, i32 35}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../fs/nfsd/trace.h", i32 338, i32 1}
!55 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../fs/nfsd/trace.h", i32 340, i32 1}
!58 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../fs/nfsd/trace.h", i32 378, i32 1}
!61 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../fs/nfsd/trace.h", i32 339, i32 1}
!64 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../fs/nfsd/trace.h", i32 343, i32 1}
!67 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!68 = !{ptr @wait_for_concurrent_writes.last_ino, !69, !"last_ino", i1 false, i1 false}
!69 = !{!"../fs/nfsd/vfs.c", i32 952, i32 15}
!70 = !{ptr @wait_for_concurrent_writes.last_dev, !71, !"last_dev", i1 false, i1 false}
!71 = !{!"../fs/nfsd/vfs.c", i32 953, i32 15}
!72 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/nfsd/vfs.c", i32 958, i32 3}
!74 = !{ptr @.str.18, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @wait_for_concurrent_writes._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @wait_for_concurrent_writes._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/nfsd/vfs.c", i32 960, i32 3}
!79 = !{ptr @wait_for_concurrent_writes._entry.19, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @wait_for_concurrent_writes._entry_ptr.21, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/nfsd/vfs.c", i32 964, i32 3}
!83 = !{ptr @wait_for_concurrent_writes._entry.22, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @wait_for_concurrent_writes._entry_ptr.24, !82, !"_entry_ptr", i1 false, i1 false}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../fs/nfsd/trace.h", i32 344, i32 1}
!87 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../fs/nfsd/trace.h", i32 379, i32 1}
!90 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../fs/nfsd/trace.h", i32 337, i32 1}
!93 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../fs/nfsd/trace.h", i32 341, i32 1}
!96 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../fs/nfsd/trace.h", i32 342, i32 1}
!99 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../fs/nfsd/trace.h", i32 345, i32 1}
!102 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!103 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!104 = !{!"../fs/nfsd/vfs.c", i32 1208, i32 14}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../fs/nfsd/trace.h", i32 381, i32 1}
!107 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!108 = !{!"sp"}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{i64 2148800075}
!119 = !{i64 2148714515, i64 2148714547, i64 2148714576, i64 2148714610, i64 2148714641, i64 2148714664}
!120 = !{!"branch_weights", i32 2000, i32 1}
!121 = !{i64 2150421164}
!122 = !{!"auto-init"}
!123 = !{i64 2148712050, i64 2148712082, i64 2148712111, i64 2148712145, i64 2148712176, i64 2148712199}
!124 = !{!"branch_weights", i32 1, i32 2000}
!125 = !{i64 2157769856, i64 2157770336, i64 2157769893, i64 2157769949, i64 2157769983, i64 2157770007, i64 2157770048, i64 2157770069, i64 2157770097, i64 2157770131}
!126 = !{i8 0, i8 2}
!127 = !{i64 2148812367}
!128 = !{i64 1196033, i64 1196057, i64 1196078, i64 1196095, i64 1196112}
!129 = !{i64 2148812593}
!130 = !{i64 2148712985, i64 2148713011, i64 2148713040, i64 2148713074, i64 2148713105, i64 2148713128}
!131 = !{i64 2149522966}
!132 = !{i64 2149523232}
!133 = !{i64 2148535118, i64 2148535123, i64 2148535136, i64 2148535180, i64 2148535214, i64 2148535235}
!134 = !{i64 2158409157}
!135 = !{i64 2158409502}
!136 = !{i64 2149531525}
!137 = !{i64 2149532561}
!138 = !{i64 2158890931}
!139 = !{i64 2158891166}
!140 = !{i64 2152576759}
!141 = !{i64 2148338375}
!142 = !{i64 2158202480}
!143 = !{i64 2158202721}
!144 = !{i64 1115200, i64 1115261}
!145 = !{i64 1117932}
!146 = !{i64 1118217}
!147 = !{i64 2152553351}
!148 = !{i64 2152553193}
!149 = !{i64 2152553521}
!150 = !{i64 2150139335}
!151 = !{i64 2158224136}
!152 = !{i64 2158224377}
!153 = !{i64 2158298523}
!154 = !{i64 2158298766}
!155 = !{i64 2158316252}
!156 = !{i64 2158316497}
!157 = !{i64 2158372848}
!158 = !{i64 2158373085}
!159 = !{i64 2158184939}
!160 = !{i64 2158185178}
!161 = !{i64 2158259340}
!162 = !{i64 2158259577}
!163 = !{i64 2158276827}
!164 = !{i64 2158277068}
!165 = !{i64 2158333915}
!166 = !{i64 2158334154}
!167 = !{i64 2158241771}
!168 = !{i64 2158242014}
!169 = !{i64 2158351382}
!170 = !{i64 2158351617}
!171 = !{i64 2158389711}
!172 = !{i64 2158389940}
