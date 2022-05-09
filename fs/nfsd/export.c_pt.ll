; ModuleID = '/llk/IR_all_yes/fs/nfsd/export.c_pt.bc'
source_filename = "../fs/nfsd/export.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.cache_detail = type { ptr, i32, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.list_head, i64, i32, %struct.list_head, %struct.atomic_t, i64, i64, %union.anon.159, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%union.anon.159 = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%union.anon.63 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.flags = type { i32, [2 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.svc_export = type { %struct.cache_head, ptr, i32, %struct.path, %struct.kuid_t, %struct.kgid_t, i32, ptr, %struct.nfsd4_fs_locations, i32, [8 x %struct.exp_flavor_info], i32, ptr, ptr, %struct.callback_head, %struct.export_stats }
%struct.cache_head = type { %struct.hlist_node, i64, i64, %struct.kref, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.path = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.nfsd4_fs_locations = type { i32, ptr, i32 }
%struct.exp_flavor_info = type { i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.export_stats = type { i64, [3 x %struct.percpu_counter] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.svc_fh = type { %struct.knfsd_fh, i32, ptr, ptr, i8, i8, i8, i8, i32, i8, i8, i64, %struct.timespec64, %struct.timespec64, i64, %struct.kstat, i64 }
%struct.knfsd_fh = type { i32, %union.anon.157 }
%union.anon.157 = type { %struct.anon.158, [124 x i8] }
%struct.anon.158 = type { i8, i8, i8, i8, [0 x i32] }
%struct.timespec64 = type { i64, i32 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.nfsd_net = type { ptr, ptr, ptr, ptr, ptr, %struct.lock_manager, i8, i64, ptr, ptr, i32, ptr, %struct.rb_root, ptr, %struct.rb_root, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, %struct.spinlock, %struct.spinlock, ptr, i8, ptr, i64, i64, i8, i8, %struct.atomic_t, i8, i8, %struct.seqlock_t, [8 x i8], i32, i32, i32, i32, ptr, i32, i32, %struct.idr, %struct.spinlock, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, [2 x %struct.percpu_counter], i32, i32, %struct.shrinker, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, [65 x i8], ptr, %struct.siphash_key_t }
%struct.lock_manager = type { %struct.list_head, i8 }
%struct.rb_root = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.siphash_key_t = type { [2 x i64] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.69, %struct.list_head, %struct.list_head, %union.anon.70 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.24, ptr }
%union.anon.24 = type { i64 }
%struct.lockref = type { %union.anon.26 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.spinlock, i32 }
%union.anon.69 = type { %struct.list_head }
%union.anon.70 = type { %struct.hlist_node }
%struct.auth_domain = type { %struct.kref, %struct.hlist_node, ptr, ptr, %struct.callback_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.146, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.147, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.148, ptr, %struct.address_space, %struct.list_head, %union.anon.149, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.146 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.147 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.148 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.149 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
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
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.143, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.143 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.93, i32, %struct.spinlock }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { ptr, ptr }
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
%struct.svc_expkey = type { %struct.cache_head, ptr, i32, [6 x i32], %struct.path, %struct.callback_head }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.23, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.23 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.36 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.36 = type { %struct.callback_head }
%struct.nfsd4_fs_location = type { ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@nfsd_net_id = external dso_local local_unnamed_addr global i32, align 4
@exp_rootfh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nfsd: exp_rootfh path not found %s\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exp_rootfh\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/nfsd/export.c\00", [47 x i8] zeroinitializer }, align 32
@exp_rootfh._entry_ptr = internal global ptr @exp_rootfh._entry, section ".printk_index", align 4
@nfsd_debug = external dso_local local_unnamed_addr global i32, align 4
@exp_rootfh._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nfsd: exp_rootfh(%s [%p] %s:%s/%ld)\0A\00", [59 x i8] zeroinitializer }, align 32
@exp_rootfh._entry_ptr.5 = internal global ptr @exp_rootfh._entry.3, section ".printk_index", align 4
@nfs_exports_op = dso_local constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @cache_seq_start_rcu, ptr @cache_seq_stop_rcu, ptr @cache_seq_next_rcu, ptr @e_show }, [16 x i8] zeroinitializer }, align 32
@nfsd_export_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"nfsd: initializing export module (net: %x).\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfsd_export_init\00", [47 x i8] zeroinitializer }, align 32
@nfsd_export_init._entry_ptr = internal global ptr @nfsd_export_init._entry, section ".printk_index", align 4
@svc_export_cache_template = internal constant { %struct.cache_detail, [56 x i8] } { %struct.cache_detail { ptr null, i32 256, ptr null, %struct.spinlock zeroinitializer, ptr @.str.64, ptr @svc_export_put, ptr @svc_export_upcall, ptr @svc_export_request, ptr @svc_export_parse, ptr @svc_export_show, ptr null, ptr @svc_export_alloc, ptr null, ptr @svc_export_match, ptr @svc_export_init, ptr @export_update, i64 0, %struct.list_head zeroinitializer, i64 0, i32 0, %struct.list_head zeroinitializer, %struct.atomic_t zeroinitializer, i64 0, i64 0, %union.anon.159 zeroinitializer, ptr null }, [56 x i8] zeroinitializer }, align 32
@svc_expkey_cache_template = internal constant { %struct.cache_detail, [56 x i8] } { %struct.cache_detail { ptr null, i32 256, ptr null, %struct.spinlock zeroinitializer, ptr @.str.80, ptr @expkey_put, ptr @expkey_upcall, ptr @expkey_request, ptr @expkey_parse, ptr @expkey_show, ptr null, ptr @expkey_alloc, ptr @expkey_flush, ptr @expkey_match, ptr @expkey_init, ptr @expkey_update, i64 0, %struct.list_head zeroinitializer, i64 0, i32 0, %struct.list_head zeroinitializer, %struct.atomic_t zeroinitializer, i64 0, i64 0, %union.anon.159 zeroinitializer, ptr null }, [56 x i8] zeroinitializer }, align 32
@nfsd_export_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 1384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nfsd: shutting down export module (net: %x).\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfsd_export_shutdown\00", [43 x i8] zeroinitializer }, align 32
@nfsd_export_shutdown._entry_ptr = internal global ptr @nfsd_export_shutdown._entry, section ".printk_index", align 4
@nfsd_export_shutdown._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 1392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"nfsd: export shutdown complete (net: %x).\0A\00", [53 x i8] zeroinitializer }, align 32
@nfsd_export_shutdown._entry_ptr.12 = internal global ptr @nfsd_export_shutdown._entry.10, section ".printk_index", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_nfsd_exp_get_by_name = external dso_local global %struct.tracepoint, align 4
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/nfsd/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_nfsd_exp_get_by_name.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_nfsd_exp_find_key = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_exp_find_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"# Version 1.1\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"# Path Client Start-time\0A#\09Stats\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"# Path Client(Flags) # IPs\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"export_stats\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"#path domain start-time\0A#\09stats\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"#path domain(flags)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" \09\0A\\\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\09%lld\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09fh_stale: %lld\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09io_read: %lld\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09io_write: %lld\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",uuid=\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c")\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",fsid=%d\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",anonuid=%u\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",anongid=%u\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"refer\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"replicas\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c",%s=\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",;@ \09\0A\\\00", [24 x i8] zeroinitializer }, align 32
@expflags = internal constant { [15 x %struct.flags], [44 x i8] } { [15 x %struct.flags] [%struct.flags { i32 1, [2 x ptr] [ptr @.str.44, ptr @.str.45] }, %struct.flags { i32 2, [2 x ptr] [ptr @.str.46, ptr @.str.43] }, %struct.flags { i32 4, [2 x ptr] [ptr @.str.47, ptr @.str.48] }, %struct.flags { i32 8, [2 x ptr] [ptr @.str.49, ptr @.str.43] }, %struct.flags { i32 16, [2 x ptr] [ptr @.str.50, ptr @.str.51] }, %struct.flags { i32 32, [2 x ptr] [ptr @.str.52, ptr @.str.53] }, %struct.flags { i32 64, [2 x ptr] [ptr @.str.54, ptr @.str.43] }, %struct.flags { i32 512, [2 x ptr] [ptr @.str.55, ptr @.str.43] }, %struct.flags { i32 16384, [2 x ptr] [ptr @.str.56, ptr @.str.43] }, %struct.flags { i32 1024, [2 x ptr] [ptr @.str.57, ptr @.str.43] }, %struct.flags { i32 2048, [2 x ptr] [ptr @.str.58, ptr @.str.43] }, %struct.flags { i32 65536, [2 x ptr] [ptr @.str.59, ptr @.str.43] }, %struct.flags { i32 131072, [2 x ptr] [ptr @.str.60, ptr @.str.43] }, %struct.flags { i32 128, [2 x ptr] [ptr @.str.61, ptr @.str.43] }, %struct.flags { i32 0, [2 x ptr] [ptr @.str.43, ptr @.str.43] }], [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ro\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rw\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"insecure\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"root_squash\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"no_root_squash\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"all_squash\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"async\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wdelay\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no_wdelay\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nordirplus\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nohide\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"crossmnt\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no_subtree_check\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"insecure_locks\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"v4root\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pnfs\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"security_label\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",sec=%d\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c":%d\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nfsd.export\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fsloc\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uuid\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"secinfo\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_export._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"exp_export: export of non-dev fs without fsid\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"check_export\00", [19 x i8] zeroinitializer }, align 32
@check_export._entry_ptr = internal global ptr @check_export._entry, section ".printk_index", align 4
@check_export._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"exp_export: export of invalid fs type.\0A\00", [56 x i8] zeroinitializer }, align 32
@check_export._entry_ptr.73 = internal global ptr @check_export._entry.71, section ".printk_index", align 4
@check_export._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"exp_export: export of idmapped mounts not yet supported.\0A\00", [38 x i8] zeroinitializer }, align 32
@check_export._entry_ptr.76 = internal global ptr @check_export._entry.74, section ".printk_index", align 4
@check_export._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.70, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: %s does not support subtree checking!\0A\00", [53 x i8] zeroinitializer }, align 32
@check_export._entry_ptr.79 = internal global ptr @check_export._entry.77, section ".printk_index", align 4
@__tracepoint_nfsd_export_update = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_export_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nfsd.fh\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@expkey_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"found domain %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"expkey_parse\00", [19 x i8] zeroinitializer }, align 32
@expkey_parse._entry_ptr = internal global ptr @expkey_parse._entry, section ".printk_index", align 4
@expkey_parse._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"found fsidtype %d\0A\00", [45 x i8] zeroinitializer }, align 32
@expkey_parse._entry_ptr.86 = internal global ptr @expkey_parse._entry.84, section ".printk_index", align 4
@expkey_parse._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"found fsid length %d\0A\00", [42 x i8] zeroinitializer }, align 32
@expkey_parse._entry_ptr.89 = internal global ptr @expkey_parse._entry.87, section ".printk_index", align 4
@expkey_parse._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.83, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Path seems to be <%s>\0A\00", [41 x i8] zeroinitializer }, align 32
@expkey_parse._entry_ptr.92 = internal global ptr @expkey_parse._entry.90, section ".printk_index", align 4
@expkey_parse._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.83, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Found the path %s\0A\00", [45 x i8] zeroinitializer }, align 32
@expkey_parse._entry_ptr.95 = internal global ptr @expkey_parse._entry.93, section ".printk_index", align 4
@__tracepoint_nfsd_expkey_update = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_expkey_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.96 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"#domain fsidtype fsid [path]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s %d 0x\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%08x\00", [27 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\\ \09\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@nfsd_mutex = external dso_local global %struct.mutex, align 4
@switch.table.exp_find = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 8, i32 4, i32 12, i32 8, i32 8, i32 8], [40 x i8] zeroinitializer }, align 32
@switch.table.svc_expkey_lookup = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 4, i32 12, i32 8, i32 8, i32 8, i32 16, i32 24], [32 x i8] zeroinitializer }, align 32
@switch.table.expkey_request = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 4, i32 12, i32 8, i32 8, i32 8, i32 16, i32 24], [32 x i8] zeroinitializer }, align 32
@switch.table.expkey_parse = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 4, i32 12, i32 8, i32 8, i32 8, i32 16, i32 24], [32 x i8] zeroinitializer }, align 32
@switch.table.expkey_show = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 1, i32 3, i32 2, i32 2, i32 2, i32 4, i32 6], [32 x i8] zeroinitializer }, align 32
@switch.table.expkey_match = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 4, i32 12, i32 8, i32 8, i32 8, i32 16, i32 24], [32 x i8] zeroinitializer }, align 32
@switch.table.svc_expkey_update = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 4, i32 12, i32 8, i32 8, i32 8, i32 16, i32 24], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 988, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 993, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [15 x i8] c"nfs_exports_op\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1320, i32 29 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1336, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [26 x i8] c"svc_export_cache_template\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 843, i32 34 }
@___asan_gen_.137 = private unnamed_addr constant [26 x i8] c"svc_expkey_cache_template\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 257, i32 34 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1384, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1392, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 45, i32 7 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 695, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 723, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [19 x i8] c"../fs/nfsd/trace.h\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 265, i32 1 }
@___asan_gen_.174 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 108, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1305, i32 15 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1307, i32 16 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1309, i32 16 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 725, i32 54 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 737, i32 16 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 739, i32 16 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 743, i32 29 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 747, i32 17 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 748, i32 17 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 750, i32 17 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 752, i32 17 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 764, i32 16 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 768, i32 19 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 773, i32 14 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1273, i32 17 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1276, i32 17 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1279, i32 17 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1281, i32 39 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1281, i32 49 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1284, i32 17 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1285, i32 43 }
@___asan_gen_.239 = private unnamed_addr constant [9 x i8] c"expflags\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1189, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1217, i32 18 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1217, i32 34 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1217, i32 38 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1190, i32 22 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1190, i32 28 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1191, i32 27 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1192, i32 24 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1192, i32 39 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1193, i32 23 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1194, i32 19 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1194, i32 28 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1195, i32 29 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1195, i32 39 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1196, i32 27 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1197, i32 20 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1198, i32 24 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1199, i32 28 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1200, i32 23 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1201, i32 20 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1202, i32 18 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1203, i32 28 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1239, i32 16 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1242, i32 17 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 846, i32 11 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 647, i32 20 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 649, i32 25 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 651, i32 25 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 420, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 426, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 431, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 437, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 260, i32 11 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 68, i32 20 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 107, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 115, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 120, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 144, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 158, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 185, i32 15 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 189, i32 16 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 192, i32 17 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 195, i32 17 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 196, i32 29 }
@___asan_gen_.404 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.405 = private constant [20 x i8] c"../fs/nfsd/export.c\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 198, i32 16 }
@___asan_gen_.407 = private unnamed_addr constant [22 x i8] c"switch.table.exp_find\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [31 x i8] c"switch.table.svc_expkey_lookup\00", align 1
@___asan_gen_.409 = private unnamed_addr constant [28 x i8] c"switch.table.expkey_request\00", align 1
@___asan_gen_.410 = private unnamed_addr constant [26 x i8] c"switch.table.expkey_parse\00", align 1
@___asan_gen_.411 = private unnamed_addr constant [25 x i8] c"switch.table.expkey_show\00", align 1
@___asan_gen_.412 = private unnamed_addr constant [26 x i8] c"switch.table.expkey_match\00", align 1
@___asan_gen_.413 = private unnamed_addr constant [31 x i8] c"switch.table.svc_expkey_update\00", align 1
@llvm.compiler.used = appending global [122 x ptr] [ptr @check_export._entry, ptr @check_export._entry.71, ptr @check_export._entry.74, ptr @check_export._entry.77, ptr @check_export._entry_ptr, ptr @check_export._entry_ptr.73, ptr @check_export._entry_ptr.76, ptr @check_export._entry_ptr.79, ptr @exp_rootfh._entry, ptr @exp_rootfh._entry.3, ptr @exp_rootfh._entry_ptr, ptr @exp_rootfh._entry_ptr.5, ptr @expkey_parse._entry, ptr @expkey_parse._entry.84, ptr @expkey_parse._entry.87, ptr @expkey_parse._entry.90, ptr @expkey_parse._entry.93, ptr @expkey_parse._entry_ptr, ptr @expkey_parse._entry_ptr.86, ptr @expkey_parse._entry_ptr.89, ptr @expkey_parse._entry_ptr.92, ptr @expkey_parse._entry_ptr.95, ptr @nfsd_export_init._entry, ptr @nfsd_export_init._entry_ptr, ptr @nfsd_export_shutdown._entry, ptr @nfsd_export_shutdown._entry.10, ptr @nfsd_export_shutdown._entry_ptr, ptr @nfsd_export_shutdown._entry_ptr.12, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @nfs_exports_op, ptr @.str.6, ptr @.str.7, ptr @svc_export_cache_template, ptr @svc_expkey_cache_template, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @expflags, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @switch.table.exp_find, ptr @switch.table.svc_expkey_lookup, ptr @switch.table.expkey_request, ptr @switch.table.expkey_parse, ptr @switch.table.expkey_show, ptr @switch.table.expkey_match, ptr @switch.table.svc_expkey_update], section "llvm.metadata"
@0 = internal global [108 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exp_rootfh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exp_rootfh._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_exports_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_export_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_export_cache_template to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_expkey_cache_template to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_export_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_export_shutdown._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expflags to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_export._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_export._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_export._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_export._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expkey_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expkey_parse._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expkey_parse._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expkey_parse._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expkey_parse._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.exp_find to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.svc_expkey_lookup to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.expkey_request to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.expkey_parse to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.expkey_show to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.expkey_match to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.svc_expkey_update to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exp_rootfh(ptr noundef %net, ptr noundef %clp, ptr noundef %name, ptr nocapture noundef writeonly %f, i32 noundef %maxsize) local_unnamed_addr #0 align 64 {
entry:
  %key.i26.i = alloca %struct.svc_export, align 8
  %key.i.i = alloca %struct.svc_export, align 8
  %path = alloca %struct.path, align 8
  %fh = alloca %struct.svc_fh, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #17
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 8, !annotation !223
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 360, ptr nonnull %fh) #17
  %3 = call ptr @memset(ptr %fh, i32 255, i32 360)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %4 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %4)
  %svc_export_cache = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %svc_export_cache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %svc_export_cache, align 8
  %call1 = call i32 @kern_path(ptr noundef %name, i32 noundef 0, ptr noundef nonnull %path) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %7 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.do.end16_crit_edge, label %do.end9

if.end.do.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end16

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  %name12 = getelementptr inbounds %struct.auth_domain, ptr %clp, i32 0, i32 2
  %12 = ptrtoint ptr %name12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name12, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 39
  %i_ino = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino, align 8
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name, ptr noundef %9, ptr noundef %13, ptr noundef %s_id, i32 noundef %17) #20
  br label %do.end16

do.end16:                                         ; preds = %do.end9, %if.end.do.end16_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %do.end16.dget.exit.i_crit_edge, label %if.then.i.i

do.end16.dget.exit.i_crit_edge:                   ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %dget.exit.i

if.then.i.i:                                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #19
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i.i) #17
  br label %dget.exit.i

dget.exit.i:                                      ; preds = %if.then.i.i, %do.end16.dget.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %key.i.i) #17
  %20 = call ptr @memset(ptr %key.i.i, i32 255, i32 392)
  %tobool.not.i25.i = icmp eq ptr %clp, null
  br i1 %tobool.not.i25.i, label %exp_get_by_name.exit.thread.i, label %if.end.i.i

exp_get_by_name.exit.thread.i:                    ; preds = %dget.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %key.i.i) #17
  %.pre = ptrtoint ptr %clp to i32
  %.pre46 = mul i32 %.pre, 1640531527
  br label %land.rhs.lr.ph.i

if.end.i.i:                                       ; preds = %dget.exit.i
  %ex_client.i.i = getelementptr inbounds %struct.svc_export, ptr %key.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %ex_client.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %clp, ptr %ex_client.i.i, align 8
  %ex_path.i.i = getelementptr inbounds %struct.svc_export, ptr %key.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %path to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %path, align 8
  %24 = ptrtoint ptr %ex_path.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %ex_path.i.i, align 8
  %cd1.i.i = getelementptr inbounds %struct.svc_export, ptr %key.i.i, i32 0, i32 13
  %25 = ptrtoint ptr %cd1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %6, ptr %cd1.i.i, align 8
  %26 = ptrtoint ptr %clp to i32
  %mul.i.i.i.i.i.i.i = mul i32 %26, 1640531527
  %27 = trunc i64 %23 to i32
  %mul.i.i.i9.i.i.i.i = mul i32 %27, 1640531527
  %shr.i.i13.i.i.i.i = xor i32 %mul.i.i.i9.i.i.i.i, %mul.i.i.i.i.i.i.i
  %28 = lshr i64 %23, 32
  %29 = trunc i64 %28 to i32
  %mul.i.i.i11.i.i.i.i = mul i32 %29, 1640531527
  %xor14.i.i.i.i = xor i32 %shr.i.i13.i.i.i.i, %mul.i.i.i11.i.i.i.i
  %xor4.i.i.i.i = lshr i32 %xor14.i.i.i.i, 24
  %call1.i.i.i = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %6, ptr noundef nonnull %key.i.i, i32 noundef %xor4.i.i.i.i) #17
  %cmp.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp.i.i, label %exp_get_by_name.exit.thread51.i, label %if.end5.i.i

exp_get_by_name.exit.thread51.i:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %key.i.i) #17
  br label %exp_parent.exit

if.end5.i.i:                                      ; preds = %if.end.i.i
  %call6.i.i = call i32 @cache_check(ptr noundef %6, ptr noundef nonnull %call1.i.i.i, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end5.i.i.exp_get_by_name.exit.i_crit_edge, label %if.then8.i.i

if.end5.i.i.exp_get_by_name.exit.i_crit_edge:     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %exp_get_by_name.exit.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @trace_nfsd_exp_get_by_name(ptr noundef nonnull %key.i.i, i32 noundef %call6.i.i) #17
  %30 = inttoptr i32 %call6.i.i to ptr
  br label %exp_get_by_name.exit.i

exp_get_by_name.exit.i:                           ; preds = %if.then8.i.i, %if.end5.i.i.exp_get_by_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.then8.i.i ], [ %call1.i.i.i, %if.end5.i.i.exp_get_by_name.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %key.i.i) #17
  %cmp46.i = icmp eq ptr %retval.0.i.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp46.i, label %exp_get_by_name.exit.i.land.rhs.lr.ph.i_crit_edge, label %exp_get_by_name.exit.i.exp_parent.exit_crit_edge

exp_get_by_name.exit.i.exp_parent.exit_crit_edge: ; preds = %exp_get_by_name.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %exp_parent.exit

exp_get_by_name.exit.i.land.rhs.lr.ph.i_crit_edge: ; preds = %exp_get_by_name.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.lr.ph.i

land.rhs.lr.ph.i:                                 ; preds = %exp_get_by_name.exit.i.land.rhs.lr.ph.i_crit_edge, %exp_get_by_name.exit.thread.i
  %mul.i.i.i.i.i.i31.i.pre-phi = phi i32 [ %mul.i.i.i.i.i.i.i, %exp_get_by_name.exit.i.land.rhs.lr.ph.i_crit_edge ], [ %.pre46, %exp_get_by_name.exit.thread.i ]
  %ex_client.i28.i = getelementptr inbounds %struct.svc_export, ptr %key.i26.i, i32 0, i32 1
  %ex_path.i29.i = getelementptr inbounds %struct.svc_export, ptr %key.i26.i, i32 0, i32 3
  %cd1.i30.i = getelementptr inbounds %struct.svc_export, ptr %key.i26.i, i32 0, i32 13
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %exp_get_by_name.exit45.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_parent.i, align 8
  %cmp5.not.i = icmp eq ptr %32, %34
  br i1 %cmp5.not.i, label %land.rhs.i.exp_parent.exit_crit_edge, label %while.body.i

land.rhs.i.exp_parent.exit_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %exp_parent.exit

while.body.i:                                     ; preds = %land.rhs.i
  %call7.i = call ptr @dget_parent(ptr noundef %32) #17
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  call void @dput(ptr noundef %36) #17
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %key.i26.i) #17
  %38 = call ptr @memset(ptr %key.i26.i, i32 255, i32 392)
  br i1 %tobool.not.i25.i, label %while.body.i.exp_get_by_name.exit45.i_crit_edge, label %if.end.i39.i

while.body.i.exp_get_by_name.exit45.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %exp_get_by_name.exit45.i

if.end.i39.i:                                     ; preds = %while.body.i
  %39 = ptrtoint ptr %ex_client.i28.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %clp, ptr %ex_client.i28.i, align 8
  %40 = ptrtoint ptr %path to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %path, align 8
  %42 = ptrtoint ptr %ex_path.i29.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %ex_path.i29.i, align 8
  %43 = ptrtoint ptr %cd1.i30.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %6, ptr %cd1.i30.i, align 8
  %44 = trunc i64 %41 to i32
  %mul.i.i.i9.i.i.i32.i = mul i32 %44, 1640531527
  %shr.i.i13.i.i.i33.i = xor i32 %mul.i.i.i9.i.i.i32.i, %mul.i.i.i.i.i.i31.i.pre-phi
  %45 = lshr i64 %41, 32
  %46 = trunc i64 %45 to i32
  %mul.i.i.i11.i.i.i34.i = mul i32 %46, 1640531527
  %xor14.i.i.i35.i = xor i32 %shr.i.i13.i.i.i33.i, %mul.i.i.i11.i.i.i34.i
  %xor4.i.i.i36.i = lshr i32 %xor14.i.i.i35.i, 24
  %call1.i.i37.i = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %6, ptr noundef nonnull %key.i26.i, i32 noundef %xor4.i.i.i36.i) #17
  %cmp.i38.i = icmp eq ptr %call1.i.i37.i, null
  br i1 %cmp.i38.i, label %exp_get_by_name.exit45.thread.i, label %if.end5.i42.i

exp_get_by_name.exit45.thread.i:                  ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %key.i26.i) #17
  br label %exp_parent.exit

if.end5.i42.i:                                    ; preds = %if.end.i39.i
  %call6.i40.i = call i32 @cache_check(ptr noundef %6, ptr noundef nonnull %call1.i.i37.i, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i40.i)
  %tobool7.not.i41.i = icmp eq i32 %call6.i40.i, 0
  br i1 %tobool7.not.i41.i, label %if.end5.i42.i.exp_get_by_name.exit45.i_crit_edge, label %if.then8.i43.i

if.end5.i42.i.exp_get_by_name.exit45.i_crit_edge: ; preds = %if.end5.i42.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %exp_get_by_name.exit45.i

if.then8.i43.i:                                   ; preds = %if.end5.i42.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @trace_nfsd_exp_get_by_name(ptr noundef nonnull %key.i26.i, i32 noundef %call6.i40.i) #17
  %47 = inttoptr i32 %call6.i40.i to ptr
  br label %exp_get_by_name.exit45.i

exp_get_by_name.exit45.i:                         ; preds = %if.then8.i43.i, %if.end5.i42.i.exp_get_by_name.exit45.i_crit_edge, %while.body.i.exp_get_by_name.exit45.i_crit_edge
  %retval.0.i44.i = phi ptr [ %47, %if.then8.i43.i ], [ %call1.i.i37.i, %if.end5.i42.i.exp_get_by_name.exit45.i_crit_edge ], [ inttoptr (i32 -2 to ptr), %while.body.i.exp_get_by_name.exit45.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %key.i26.i) #17
  %cmp.i = icmp eq ptr %retval.0.i44.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp.i, label %exp_get_by_name.exit45.i.land.rhs.i_crit_edge, label %exp_get_by_name.exit45.i.exp_parent.exit_crit_edge

exp_get_by_name.exit45.i.exp_parent.exit_crit_edge: ; preds = %exp_get_by_name.exit45.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %exp_parent.exit

exp_get_by_name.exit45.i.land.rhs.i_crit_edge:    ; preds = %exp_get_by_name.exit45.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i

exp_parent.exit:                                  ; preds = %exp_get_by_name.exit45.i.exp_parent.exit_crit_edge, %exp_get_by_name.exit45.thread.i, %land.rhs.i.exp_parent.exit_crit_edge, %exp_get_by_name.exit.i.exp_parent.exit_crit_edge, %exp_get_by_name.exit.thread51.i
  %exp.0.lcssa.i = phi ptr [ %retval.0.i.i, %exp_get_by_name.exit.i.exp_parent.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %exp_get_by_name.exit.thread51.i ], [ inttoptr (i32 -12 to ptr), %exp_get_by_name.exit45.thread.i ], [ inttoptr (i32 -2 to ptr), %land.rhs.i.exp_parent.exit_crit_edge ], [ %retval.0.i44.i, %exp_get_by_name.exit45.i.exp_parent.exit_crit_edge ]
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  call void @dput(ptr noundef %49) #17
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %19, ptr %1, align 4
  %cmp.i42 = icmp ugt ptr %exp.0.lcssa.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42, label %if.then19, label %if.end21

if.then19:                                        ; preds = %exp_parent.exit
  call void @__sanitizer_cov_trace_pc() #19
  %51 = ptrtoint ptr %exp.0.lcssa.i to i32
  br label %out

if.end21:                                         ; preds = %exp_parent.exit
  %52 = call ptr @memset(ptr %fh, i32 0, i32 360)
  %fh_maxsize.i = getelementptr inbounds %struct.svc_fh, ptr %fh, i32 0, i32 1
  %53 = ptrtoint ptr %fh_maxsize.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %maxsize, ptr %fh_maxsize.i, align 4
  %call24 = call i32 @fh_compose(ptr noundef nonnull %fh, ptr noundef %exp.0.lcssa.i, ptr noundef %19, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  %. = select i1 %tobool25.not, i32 0, i32 -22
  %54 = call ptr @memcpy(ptr %f, ptr %fh, i32 132)
  call void @fh_put(ptr noundef nonnull %fh) #17
  %cd.i = getelementptr inbounds %struct.svc_export, ptr %exp.0.lcssa.i, i32 0, i32 13
  %55 = ptrtoint ptr %cd.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cd.i, align 8
  %ref.i.i = getelementptr inbounds %struct.cache_head, ptr %exp.0.lcssa.i, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i, i32 noundef 4) #17
  %57 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %ref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %58)
  %cmp.i.i43 = icmp ult i32 %58, 3
  br i1 %cmp.i.i43, label %land.lhs.true.i.i, label %if.end21.if.end.i.i45_crit_edge

if.end21.if.end.i.i45_crit_edge:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i45

land.lhs.true.i.i:                                ; preds = %if.end21
  %expiry_time.i.i = getelementptr inbounds %struct.cache_head, ptr %exp.0.lcssa.i, i32 0, i32 1
  %59 = ptrtoint ptr %expiry_time.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %expiry_time.i.i, align 8
  %nextcheck.i.i = getelementptr inbounds %struct.cache_detail, ptr %56, i32 0, i32 18
  %61 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %nextcheck.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %60, i64 %62)
  %cmp1.i.i = icmp slt i64 %60, %62
  br i1 %cmp1.i.i, label %if.then.i.i44, label %land.lhs.true.i.i.if.end.i.i45_crit_edge

land.lhs.true.i.i.if.end.i.i45_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i45

if.then.i.i44:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %63 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %60, ptr %nextcheck.i.i, align 8
  br label %if.end.i.i45

if.end.i.i45:                                     ; preds = %if.then.i.i44, %land.lhs.true.i.i.if.end.i.i45_crit_edge, %if.end21.if.end.i.i45_crit_edge
  %cache_put.i.i = getelementptr inbounds %struct.cache_detail, ptr %56, i32 0, i32 5
  %64 = ptrtoint ptr %cache_put.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cache_put.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !224
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #17
  %66 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #17, !srcloc !225
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !226

if.end5.i.i.i.i.i.i.out_crit_edge:                ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #17
  br label %out

if.then.i.i.i:                                    ; preds = %if.end.i.i45
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !227
  call void %65(ptr noundef %ref.i.i) #17
  br label %out

out:                                              ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.out_crit_edge, %if.then19
  %err.1 = phi i32 [ %51, %if.then19 ], [ %., %if.end5.i.i.i.i.i.i.out_crit_edge ], [ %., %if.then10.i.i.i.i.i.i ], [ %., %if.then.i.i.i ]
  call void @path_put(ptr noundef nonnull %path) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ %err.1, %out ]
  call void @llvm.lifetime.end.p0(i64 360, ptr nonnull %fh) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #17
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #17
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !228
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 45, ptr noundef nonnull @.str.14) #17
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !229
  %8 = tail call i32 @llvm.read_register.i32(metadata !213) #17
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fh_compose(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fh_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exp_put(ptr noundef %exp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %cd = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 13
  %0 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cd, align 8
  %ref.i = getelementptr inbounds %struct.cache_head, ptr %exp, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #17
  %2 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i = icmp ult i32 %3, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %expiry_time.i = getelementptr inbounds %struct.cache_head, ptr %exp, i32 0, i32 1
  %4 = ptrtoint ptr %expiry_time.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %expiry_time.i, align 8
  %nextcheck.i = getelementptr inbounds %struct.cache_detail, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %nextcheck.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp1.i = icmp slt i64 %5, %7
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %5, ptr %nextcheck.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %cache_put.i = getelementptr inbounds %struct.cache_detail, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %cache_put.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cache_put.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !224
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #17
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #17, !srcloc !225
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cache_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !226

if.end5.i.i.i.i.i.cache_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cache_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #17
  br label %cache_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !227
  tail call void %10(ptr noundef %ref.i) #17
  br label %cache_put.exit

cache_put.exit:                                   ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cache_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @check_nfsd_access(ptr noundef readonly %exp, ptr noundef %rqstp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ex_flavors = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 10
  %ex_nflavors = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 9
  %0 = ptrtoint ptr %ex_nflavors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ex_nflavors, align 4
  %add.ptr = getelementptr %struct.exp_flavor_info, ptr %ex_flavors, i32 %1
  %ex_client = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 1
  %2 = ptrtoint ptr %ex_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ex_client, align 8
  %rq_gssclient = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 44
  %4 = ptrtoint ptr %rq_gssclient to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq_gssclient, align 4
  %cmp = icmp eq ptr %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %cmp334 = icmp ult ptr %ex_flavors, %add.ptr
  br i1 %cmp334, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cr_flavor = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11, i32 3
  %6 = ptrtoint ptr %cr_flavor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cr_flavor, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %incdec.ptr = getelementptr %struct.exp_flavor_info, ptr %f.035, i32 1
  %cmp3 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp3, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %f.035 = phi ptr [ %ex_flavors, %for.body.lr.ph ], [ %incdec.ptr, %for.cond.for.body_crit_edge ]
  %8 = ptrtoint ptr %f.035 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f.035, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp4 = icmp eq i32 %9, %7
  br i1 %cmp4, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8 = icmp eq i32 %1, 0
  br i1 %cmp8, label %if.then9, label %for.end.if.end18_crit_edge

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

if.then9:                                         ; preds = %for.end
  %cr_flavor11 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11, i32 3
  %10 = ptrtoint ptr %cr_flavor11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cr_flavor11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %switch = icmp ult i32 %11, 2
  br i1 %switch, label %if.then9.cleanup_crit_edge, label %if.then9.if.end18_crit_edge

if.then9.if.end18_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end18:                                         ; preds = %if.then9.if.end18_crit_edge, %for.end.if.end18_crit_edge
  %call = tail call zeroext i1 @nfsd4_spo_must_allow(ptr noundef %rqstp) #17
  br i1 %call, label %if.end18.cleanup_crit_edge, label %if.end20

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end20:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  %rq_vers = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %12 = ptrtoint ptr %rq_vers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rq_vers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp21 = icmp ult i32 %13, 4
  %cond = select i1 %cmp21, i32 13, i32 10016
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end18.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end20 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfsd4_spo_must_allow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rqst_exp_get_by_name(ptr noundef %rqstp, ptr nocapture noundef readonly %path) local_unnamed_addr #0 align 64 {
entry:
  %key.i53 = alloca %struct.svc_export, align 8
  %key.i = alloca %struct.svc_export, align 8
  call void @__sanitizer_cov_trace_pc() #19
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
  %call2 = tail call fastcc ptr @net_generic(ptr noundef %cond, i32 noundef %3)
  %svc_export_cache = getelementptr inbounds %struct.nfsd_net, ptr %call2, i32 0, i32 2
  %4 = ptrtoint ptr %svc_export_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %svc_export_cache, align 8
  %rq_client = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 43
  %6 = ptrtoint ptr %rq_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rq_client, align 8
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %entry.gss_crit_edge, label %if.end.i

entry.gss_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %gss

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %key.i) #17
  %8 = call ptr @memset(ptr %key.i, i32 255, i32 392)
  %ex_client.i = getelementptr inbounds %struct.svc_export, ptr %key.i, i32 0, i32 1
  %9 = ptrtoint ptr %ex_client.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %ex_client.i, align 8
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %key.i, i32 0, i32 3
  %10 = ptrtoint ptr %path to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %path, align 4
  %12 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %ex_path.i, align 8
  %cd1.i = getelementptr inbounds %struct.svc_export, ptr %key.i, i32 0, i32 13
  %13 = ptrtoint ptr %cd1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %cd1.i, align 8
  %14 = ptrtoint ptr %7 to i32
  %mul.i.i.i.i.i.i = mul i32 %14, 1640531527
  %15 = trunc i64 %11 to i32
  %mul.i.i.i9.i.i.i = mul i32 %15, 1640531527
  %shr.i.i13.i.i.i = xor i32 %mul.i.i.i9.i.i.i, %mul.i.i.i.i.i.i
  %16 = lshr i64 %11, 32
  %17 = trunc i64 %16 to i32
  %mul.i.i.i11.i.i.i = mul i32 %17, 1640531527
  %xor14.i.i.i = xor i32 %shr.i.i13.i.i.i, %mul.i.i.i11.i.i.i
  %xor4.i.i.i = lshr i32 %xor14.i.i.i, 24
  %call1.i.i = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %5, ptr noundef nonnull %key.i, i32 noundef %xor4.i.i.i) #17
  %cmp.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.i, label %if.end8.thread, label %if.end5.i

if.end8.thread:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %key.i) #17
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %rq_chandle = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 42
  %call6.i = call i32 @cache_check(ptr noundef %5, ptr noundef nonnull %call1.i.i, ptr noundef %rq_chandle) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.exp_get_by_name.exit_crit_edge, label %if.then8.i

if.end5.i.exp_get_by_name.exit_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %exp_get_by_name.exit

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @trace_nfsd_exp_get_by_name(ptr noundef nonnull %key.i, i32 noundef %call6.i) #17
  %18 = inttoptr i32 %call6.i to ptr
  br label %exp_get_by_name.exit

exp_get_by_name.exit:                             ; preds = %if.then8.i, %if.end5.i.exp_get_by_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.then8.i ], [ %call1.i.i, %if.end5.i.exp_get_by_name.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %key.i) #17
  %cmp6 = icmp eq ptr %retval.0.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp6, label %exp_get_by_name.exit.gss_crit_edge, label %if.end8

exp_get_by_name.exit.gss_crit_edge:               ; preds = %exp_get_by_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %gss

if.end8:                                          ; preds = %exp_get_by_name.exit
  %cmp.i52 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i52, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %ex_nflavors = getelementptr inbounds %struct.svc_export, ptr %retval.0.i, i32 0, i32 9
  %19 = ptrtoint ptr %ex_nflavors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ex_nflavors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp12.not = icmp eq i32 %20, 0
  br i1 %cmp12.not, label %if.end11.gss_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11.gss_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %gss

gss:                                              ; preds = %if.end11.gss_crit_edge, %exp_get_by_name.exit.gss_crit_edge, %entry.gss_crit_edge
  %exp.0 = phi ptr [ inttoptr (i32 -2 to ptr), %entry.gss_crit_edge ], [ inttoptr (i32 -2 to ptr), %exp_get_by_name.exit.gss_crit_edge ], [ %retval.0.i, %if.end11.gss_crit_edge ]
  %rq_gssclient = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 44
  %21 = ptrtoint ptr %rq_gssclient to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rq_gssclient, align 4
  %cmp15 = icmp eq ptr %22, null
  br i1 %cmp15, label %gss.cleanup_crit_edge, label %if.end.i66

gss.cleanup_crit_edge:                            ; preds = %gss
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i66:                                       ; preds = %gss
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %key.i53) #17
  %23 = call ptr @memset(ptr %key.i53, i32 255, i32 392)
  %ex_client.i55 = getelementptr inbounds %struct.svc_export, ptr %key.i53, i32 0, i32 1
  %24 = ptrtoint ptr %ex_client.i55 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %ex_client.i55, align 8
  %ex_path.i56 = getelementptr inbounds %struct.svc_export, ptr %key.i53, i32 0, i32 3
  %25 = ptrtoint ptr %path to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %path, align 4
  %27 = ptrtoint ptr %ex_path.i56 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %ex_path.i56, align 8
  %cd1.i57 = getelementptr inbounds %struct.svc_export, ptr %key.i53, i32 0, i32 13
  %28 = ptrtoint ptr %cd1.i57 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %5, ptr %cd1.i57, align 8
  %29 = ptrtoint ptr %22 to i32
  %mul.i.i.i.i.i.i58 = mul i32 %29, 1640531527
  %30 = trunc i64 %26 to i32
  %mul.i.i.i9.i.i.i59 = mul i32 %30, 1640531527
  %shr.i.i13.i.i.i60 = xor i32 %mul.i.i.i9.i.i.i59, %mul.i.i.i.i.i.i58
  %31 = lshr i64 %26, 32
  %32 = trunc i64 %31 to i32
  %mul.i.i.i11.i.i.i61 = mul i32 %32, 1640531527
  %xor14.i.i.i62 = xor i32 %shr.i.i13.i.i.i60, %mul.i.i.i11.i.i.i61
  %xor4.i.i.i63 = lshr i32 %xor14.i.i.i62, 24
  %call1.i.i64 = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %5, ptr noundef nonnull %key.i53, i32 noundef %xor4.i.i.i63) #17
  %cmp.i65 = icmp eq ptr %call1.i.i64, null
  br i1 %cmp.i65, label %exp_get_by_name.exit72.thread, label %if.end5.i69

exp_get_by_name.exit72.thread:                    ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %key.i53) #17
  br label %if.end24

if.end5.i69:                                      ; preds = %if.end.i66
  %rq_chandle19 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 42
  %call6.i67 = call i32 @cache_check(ptr noundef %5, ptr noundef nonnull %call1.i.i64, ptr noundef %rq_chandle19) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i67)
  %tobool7.not.i68 = icmp eq i32 %call6.i67, 0
  br i1 %tobool7.not.i68, label %if.end5.i69.exp_get_by_name.exit72_crit_edge, label %if.then8.i70

if.end5.i69.exp_get_by_name.exit72_crit_edge:     ; preds = %if.end5.i69
  call void @__sanitizer_cov_trace_pc() #19
  br label %exp_get_by_name.exit72

if.then8.i70:                                     ; preds = %if.end5.i69
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @trace_nfsd_exp_get_by_name(ptr noundef nonnull %key.i53, i32 noundef %call6.i67) #17
  %33 = inttoptr i32 %call6.i67 to ptr
  br label %exp_get_by_name.exit72

exp_get_by_name.exit72:                           ; preds = %if.then8.i70, %if.end5.i69.exp_get_by_name.exit72_crit_edge
  %retval.0.i71 = phi ptr [ %33, %if.then8.i70 ], [ %call1.i.i64, %if.end5.i69.exp_get_by_name.exit72_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %key.i53) #17
  %cmp22 = icmp eq ptr %retval.0.i71, inttoptr (i32 -2 to ptr)
  br i1 %cmp22, label %exp_get_by_name.exit72.cleanup_crit_edge, label %exp_get_by_name.exit72.if.end24_crit_edge

exp_get_by_name.exit72.if.end24_crit_edge:        ; preds = %exp_get_by_name.exit72
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24

exp_get_by_name.exit72.cleanup_crit_edge:         ; preds = %exp_get_by_name.exit72
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end24:                                         ; preds = %exp_get_by_name.exit72.if.end24_crit_edge, %exp_get_by_name.exit72.thread
  %retval.0.i7181 = phi ptr [ inttoptr (i32 -12 to ptr), %exp_get_by_name.exit72.thread ], [ %retval.0.i71, %exp_get_by_name.exit72.if.end24_crit_edge ]
  %cmp.i73 = icmp ugt ptr %exp.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %if.end24.cleanup_crit_edge, label %if.then26

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then26:                                        ; preds = %if.end24
  %cd.i = getelementptr inbounds %struct.svc_export, ptr %exp.0, i32 0, i32 13
  %34 = ptrtoint ptr %cd.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cd.i, align 8
  %ref.i.i = getelementptr inbounds %struct.cache_head, ptr %exp.0, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i, i32 noundef 4) #17
  %36 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %ref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp.i.i = icmp ult i32 %37, 3
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then26.if.end.i.i_crit_edge

if.then26.if.end.i.i_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then26
  %expiry_time.i.i = getelementptr inbounds %struct.cache_head, ptr %exp.0, i32 0, i32 1
  %38 = ptrtoint ptr %expiry_time.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %expiry_time.i.i, align 8
  %nextcheck.i.i = getelementptr inbounds %struct.cache_detail, ptr %35, i32 0, i32 18
  %40 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %nextcheck.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %41)
  %cmp1.i.i = icmp slt i64 %39, %41
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %39, ptr %nextcheck.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then26.if.end.i.i_crit_edge
  %cache_put.i.i = getelementptr inbounds %struct.cache_detail, ptr %35, i32 0, i32 5
  %43 = ptrtoint ptr %cache_put.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cache_put.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !224
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #17
  %45 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #17, !srcloc !225
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !226

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #17
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !227
  call void %44(ptr noundef %ref.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %exp_get_by_name.exit72.cleanup_crit_edge, %gss.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end8.thread
  %retval.0 = phi ptr [ %retval.0.i, %if.end8.cleanup_crit_edge ], [ %retval.0.i, %if.end11.cleanup_crit_edge ], [ %exp.0, %gss.cleanup_crit_edge ], [ %exp.0, %exp_get_by_name.exit72.cleanup_crit_edge ], [ %retval.0.i7181, %if.end24.cleanup_crit_edge ], [ %retval.0.i7181, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %retval.0.i7181, %if.then10.i.i.i.i.i.i ], [ %retval.0.i7181, %if.then.i.i.i ], [ inttoptr (i32 -12 to ptr), %if.end8.thread ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rqst_exp_find(ptr noundef %rqstp, i32 noundef %fsid_type, ptr nocapture noundef readonly %fsidv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
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
  %call2 = tail call fastcc ptr @net_generic(ptr noundef %cond, i32 noundef %3)
  %svc_export_cache = getelementptr inbounds %struct.nfsd_net, ptr %call2, i32 0, i32 2
  %4 = ptrtoint ptr %svc_export_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %svc_export_cache, align 8
  %rq_client = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 43
  %6 = ptrtoint ptr %rq_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rq_client, align 8
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %entry.gss_crit_edge, label %if.end

entry.gss_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %gss

if.end:                                           ; preds = %entry
  %rq_chandle = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 42
  %call4 = tail call fastcc ptr @exp_find(ptr noundef %5, ptr noundef nonnull %7, i32 noundef %fsid_type, ptr noundef %fsidv, ptr noundef %rq_chandle)
  %cmp6 = icmp eq ptr %call4, inttoptr (i32 -2 to ptr)
  br i1 %cmp6, label %if.end.gss_crit_edge, label %if.end8

if.end.gss_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %gss

if.end8:                                          ; preds = %if.end
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %ex_nflavors = getelementptr inbounds %struct.svc_export, ptr %call4, i32 0, i32 9
  %8 = ptrtoint ptr %ex_nflavors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ex_nflavors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp12.not = icmp eq i32 %9, 0
  br i1 %cmp12.not, label %if.end11.gss_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11.gss_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %gss

gss:                                              ; preds = %if.end11.gss_crit_edge, %if.end.gss_crit_edge, %entry.gss_crit_edge
  %exp.0 = phi ptr [ inttoptr (i32 -2 to ptr), %entry.gss_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end.gss_crit_edge ], [ %call4, %if.end11.gss_crit_edge ]
  %rq_gssclient = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 44
  %10 = ptrtoint ptr %rq_gssclient to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rq_gssclient, align 4
  %cmp15 = icmp eq ptr %11, null
  br i1 %cmp15, label %gss.cleanup_crit_edge, label %if.end17

gss.cleanup_crit_edge:                            ; preds = %gss
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end17:                                         ; preds = %gss
  %rq_chandle19 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 42
  %call20 = tail call fastcc ptr @exp_find(ptr noundef %5, ptr noundef nonnull %11, i32 noundef %fsid_type, ptr noundef %fsidv, ptr noundef %rq_chandle19)
  %cmp22 = icmp eq ptr %call20, inttoptr (i32 -2 to ptr)
  br i1 %cmp22, label %if.end17.cleanup_crit_edge, label %if.end24

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %cmp.i53 = icmp ugt ptr %exp.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i53, label %if.end24.cleanup_crit_edge, label %if.then26

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then26:                                        ; preds = %if.end24
  %cd.i = getelementptr inbounds %struct.svc_export, ptr %exp.0, i32 0, i32 13
  %12 = ptrtoint ptr %cd.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cd.i, align 8
  %ref.i.i = getelementptr inbounds %struct.cache_head, ptr %exp.0, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i, i32 noundef 4) #17
  %14 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %ref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp.i.i = icmp ult i32 %15, 3
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then26.if.end.i.i_crit_edge

if.then26.if.end.i.i_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then26
  %expiry_time.i.i = getelementptr inbounds %struct.cache_head, ptr %exp.0, i32 0, i32 1
  %16 = ptrtoint ptr %expiry_time.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %expiry_time.i.i, align 8
  %nextcheck.i.i = getelementptr inbounds %struct.cache_detail, ptr %13, i32 0, i32 18
  %18 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %nextcheck.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %19)
  %cmp1.i.i = icmp slt i64 %17, %19
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %20 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %17, ptr %nextcheck.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then26.if.end.i.i_crit_edge
  %cache_put.i.i = getelementptr inbounds %struct.cache_detail, ptr %13, i32 0, i32 5
  %21 = ptrtoint ptr %cache_put.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cache_put.i.i, align 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !224
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #17
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #17, !srcloc !225
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !226

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #17
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !227
  tail call void %22(ptr noundef %ref.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %gss.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end8.cleanup_crit_edge ], [ %call4, %if.end11.cleanup_crit_edge ], [ %exp.0, %gss.cleanup_crit_edge ], [ %exp.0, %if.end17.cleanup_crit_edge ], [ %call20, %if.end24.cleanup_crit_edge ], [ %call20, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call20, %if.then10.i.i.i.i.i.i ], [ %call20, %if.then.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @exp_find(ptr noundef %cd, ptr noundef %clp, i32 noundef %fsid_type, ptr nocapture noundef readonly %fsidv, ptr noundef %reqp) unnamed_addr #0 align 64 {
entry:
  %key.i22 = alloca %struct.svc_export, align 8
  %key.i = alloca %struct.svc_expkey, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.cache_detail, ptr %cd, i32 0, i32 25
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %2 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %svc_expkey_cache = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %svc_expkey_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %svc_expkey_cache, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %key.i) #17
  %5 = call ptr @memset(ptr %key.i, i32 255, i32 80)
  %tobool.not.i = icmp eq ptr %clp, null
  br i1 %tobool.not.i, label %entry.exp_find_key.exit.thread_crit_edge, label %if.end.i

entry.exp_find_key.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %exp_find_key.exit.thread

if.end.i:                                         ; preds = %entry
  %ek_client.i = getelementptr inbounds %struct.svc_expkey, ptr %key.i, i32 0, i32 1
  %6 = ptrtoint ptr %ek_client.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %clp, ptr %ek_client.i, align 8
  %ek_fsidtype.i = getelementptr inbounds %struct.svc_expkey, ptr %key.i, i32 0, i32 2
  %7 = ptrtoint ptr %ek_fsidtype.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %fsid_type, ptr %ek_fsidtype.i, align 4
  %ek_fsid.i = getelementptr inbounds %struct.svc_expkey, ptr %key.i, i32 0, i32 3
  %8 = zext i32 %fsid_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %fsid_type, label %sw.default.i.i [
    i32 0, label %if.end.i.key_len.exit.i_crit_edge
    i32 1, label %key_len.exit.thread.i
    i32 2, label %key_len.exit.thread21.i
    i32 3, label %if.end.i.key_len.exit.i_crit_edge39
    i32 4, label %if.end.i.key_len.exit.i_crit_edge40
    i32 5, label %if.end.i.key_len.exit.i_crit_edge41
    i32 6, label %key_len.exit.thread23.i
    i32 7, label %key_len.exit.thread25.i
  ]

if.end.i.key_len.exit.i_crit_edge41:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %key_len.exit.i

if.end.i.key_len.exit.i_crit_edge40:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %key_len.exit.i

if.end.i.key_len.exit.i_crit_edge39:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %key_len.exit.i

if.end.i.key_len.exit.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %key_len.exit.i

key_len.exit.thread.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %fsidv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fsidv, align 4
  %11 = ptrtoint ptr %ek_fsid.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ek_fsid.i, align 8
  br label %svc_expkey_lookup.exit.i

key_len.exit.thread21.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %12 = call ptr @memcpy(ptr %ek_fsid.i, ptr %fsidv, i32 12)
  br label %svc_expkey_lookup.exit.i

key_len.exit.thread23.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %13 = call ptr @memcpy(ptr %ek_fsid.i, ptr %fsidv, i32 16)
  br label %svc_expkey_lookup.exit.i

key_len.exit.thread25.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %14 = call ptr @memcpy(ptr %ek_fsid.i, ptr %fsidv, i32 24)
  br label %svc_expkey_lookup.exit.i

sw.default.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %key_len.exit.i

key_len.exit.i:                                   ; preds = %sw.default.i.i, %if.end.i.key_len.exit.i_crit_edge, %if.end.i.key_len.exit.i_crit_edge39, %if.end.i.key_len.exit.i_crit_edge40, %if.end.i.key_len.exit.i_crit_edge41
  %retval.0.i.i = phi i32 [ 0, %sw.default.i.i ], [ 8, %if.end.i.key_len.exit.i_crit_edge ], [ 8, %if.end.i.key_len.exit.i_crit_edge39 ], [ 8, %if.end.i.key_len.exit.i_crit_edge40 ], [ 8, %if.end.i.key_len.exit.i_crit_edge41 ]
  %15 = call ptr @memcpy(ptr %ek_fsid.i, ptr %fsidv, i32 %retval.0.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %fsid_type)
  %16 = icmp ult i32 %fsid_type, 6
  br i1 %16, label %switch.lookup, label %key_len.exit.i.svc_expkey_lookup.exit.i_crit_edge

key_len.exit.i.svc_expkey_lookup.exit.i_crit_edge: ; preds = %key_len.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %svc_expkey_lookup.exit.i

switch.lookup:                                    ; preds = %key_len.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.exp_find, i32 0, i32 %fsid_type
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %svc_expkey_lookup.exit.i

svc_expkey_lookup.exit.i:                         ; preds = %switch.lookup, %key_len.exit.i.svc_expkey_lookup.exit.i_crit_edge, %key_len.exit.thread25.i, %key_len.exit.thread23.i, %key_len.exit.thread21.i, %key_len.exit.thread.i
  %retval.0.i.i.i.i = phi i32 [ 24, %key_len.exit.thread25.i ], [ 16, %key_len.exit.thread23.i ], [ 12, %key_len.exit.thread21.i ], [ 4, %key_len.exit.thread.i ], [ %switch.load, %switch.lookup ], [ 0, %key_len.exit.i.svc_expkey_lookup.exit.i_crit_edge ]
  %call.i.i.i.i = call i32 @full_name_hash(ptr noundef null, ptr noundef %ek_fsid.i, i32 noundef %retval.0.i.i.i.i) #21
  %shr.i.i.i.i = lshr i32 %call.i.i.i.i, 24
  %18 = ptrtoint ptr %clp to i32
  %mul.i.i.i.i.i.i = mul i32 %18, 1640531527
  %shr.i.i.i.i.i = lshr i32 %mul.i.i.i.i.i.i, 24
  %.masked.i.i.i = and i32 %fsid_type, 255
  %xor.masked.i.i.i = xor i32 %shr.i.i.i.i.i, %.masked.i.i.i
  %and.i.i.i = xor i32 %xor.masked.i.i.i, %shr.i.i.i.i
  %call1.i.i = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %4, ptr noundef nonnull %key.i, i32 noundef %and.i.i.i) #17
  %cmp.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.i, label %svc_expkey_lookup.exit.i.exp_find_key.exit.thread_crit_edge, label %if.end5.i

svc_expkey_lookup.exit.i.exp_find_key.exit.thread_crit_edge: ; preds = %svc_expkey_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %exp_find_key.exit.thread

if.end5.i:                                        ; preds = %svc_expkey_lookup.exit.i
  %call6.i = call i32 @cache_check(ptr noundef %4, ptr noundef nonnull %call1.i.i, ptr noundef %reqp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.exp_find_key.exit_crit_edge, label %if.then8.i

if.end5.i.exp_find_key.exit_crit_edge:            ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %exp_find_key.exit

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @trace_nfsd_exp_find_key(ptr noundef nonnull %key.i, i32 noundef %call6.i) #17
  %19 = inttoptr i32 %call6.i to ptr
  br label %exp_find_key.exit

exp_find_key.exit.thread:                         ; preds = %svc_expkey_lookup.exit.i.exp_find_key.exit.thread_crit_edge, %entry.exp_find_key.exit.thread_crit_edge
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -12 to ptr), %svc_expkey_lookup.exit.i.exp_find_key.exit.thread_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.exp_find_key.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %key.i) #17
  br label %cleanup

exp_find_key.exit:                                ; preds = %if.then8.i, %if.end5.i.exp_find_key.exit_crit_edge
  %retval.0.i = phi ptr [ %19, %if.then8.i ], [ %call1.i.i, %if.end5.i.exp_find_key.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %key.i) #17
  %cmp.i21 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i21, label %exp_find_key.exit.cleanup_crit_edge, label %if.end.i27

exp_find_key.exit.cleanup_crit_edge:              ; preds = %exp_find_key.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i27:                                       ; preds = %exp_find_key.exit
  %ek_path = getelementptr inbounds %struct.svc_expkey, ptr %retval.0.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %key.i22) #17
  %20 = call ptr @memset(ptr %key.i22, i32 255, i32 392)
  %ex_client.i = getelementptr inbounds %struct.svc_export, ptr %key.i22, i32 0, i32 1
  %21 = ptrtoint ptr %ex_client.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %clp, ptr %ex_client.i, align 8
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %key.i22, i32 0, i32 3
  %22 = ptrtoint ptr %ek_path to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %ek_path, align 4
  %24 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %ex_path.i, align 8
  %cd1.i = getelementptr inbounds %struct.svc_export, ptr %key.i22, i32 0, i32 13
  %25 = ptrtoint ptr %cd1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %cd, ptr %cd1.i, align 8
  %26 = trunc i64 %23 to i32
  %mul.i.i.i9.i.i.i = mul i32 %26, 1640531527
  %shr.i.i13.i.i.i = xor i32 %mul.i.i.i9.i.i.i, %mul.i.i.i.i.i.i
  %27 = lshr i64 %23, 32
  %28 = trunc i64 %27 to i32
  %mul.i.i.i11.i.i.i = mul i32 %28, 1640531527
  %xor14.i.i.i = xor i32 %shr.i.i13.i.i.i, %mul.i.i.i11.i.i.i
  %xor4.i.i.i = lshr i32 %xor14.i.i.i, 24
  %call1.i.i25 = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %cd, ptr noundef nonnull %key.i22, i32 noundef %xor4.i.i.i) #17
  %cmp.i26 = icmp eq ptr %call1.i.i25, null
  br i1 %cmp.i26, label %if.end.i27.exp_get_by_name.exit_crit_edge, label %if.end5.i30

if.end.i27.exp_get_by_name.exit_crit_edge:        ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %exp_get_by_name.exit

if.end5.i30:                                      ; preds = %if.end.i27
  %call6.i28 = call i32 @cache_check(ptr noundef %cd, ptr noundef nonnull %call1.i.i25, ptr noundef %reqp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i28)
  %tobool7.not.i29 = icmp eq i32 %call6.i28, 0
  br i1 %tobool7.not.i29, label %if.end5.i30.exp_get_by_name.exit_crit_edge, label %if.then8.i31

if.end5.i30.exp_get_by_name.exit_crit_edge:       ; preds = %if.end5.i30
  call void @__sanitizer_cov_trace_pc() #19
  br label %exp_get_by_name.exit

if.then8.i31:                                     ; preds = %if.end5.i30
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @trace_nfsd_exp_get_by_name(ptr noundef nonnull %key.i22, i32 noundef %call6.i28) #17
  %29 = inttoptr i32 %call6.i28 to ptr
  br label %exp_get_by_name.exit

exp_get_by_name.exit:                             ; preds = %if.then8.i31, %if.end5.i30.exp_get_by_name.exit_crit_edge, %if.end.i27.exp_get_by_name.exit_crit_edge
  %retval.0.i32 = phi ptr [ %29, %if.then8.i31 ], [ %call1.i.i25, %if.end5.i30.exp_get_by_name.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i27.exp_get_by_name.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %key.i22) #17
  %30 = ptrtoint ptr %svc_expkey_cache to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %svc_expkey_cache, align 4
  %ref.i = getelementptr inbounds %struct.cache_head, ptr %retval.0.i, i32 0, i32 3
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #17
  %32 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp.i33 = icmp ult i32 %33, 3
  br i1 %cmp.i33, label %land.lhs.true.i, label %exp_get_by_name.exit.if.end.i34_crit_edge

exp_get_by_name.exit.if.end.i34_crit_edge:        ; preds = %exp_get_by_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i34

land.lhs.true.i:                                  ; preds = %exp_get_by_name.exit
  %expiry_time.i = getelementptr inbounds %struct.cache_head, ptr %retval.0.i, i32 0, i32 1
  %34 = ptrtoint ptr %expiry_time.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %expiry_time.i, align 8
  %nextcheck.i = getelementptr inbounds %struct.cache_detail, ptr %31, i32 0, i32 18
  %36 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %nextcheck.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %37)
  %cmp1.i = icmp slt i64 %35, %37
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.if.end.i34_crit_edge

land.lhs.true.i.if.end.i34_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i34

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %38 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %35, ptr %nextcheck.i, align 8
  br label %if.end.i34

if.end.i34:                                       ; preds = %if.then.i, %land.lhs.true.i.if.end.i34_crit_edge, %exp_get_by_name.exit.if.end.i34_crit_edge
  %cache_put.i = getelementptr inbounds %struct.cache_detail, ptr %31, i32 0, i32 5
  %39 = ptrtoint ptr %cache_put.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cache_put.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !224
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #17
  %41 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #17, !srcloc !225
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !226

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #17
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !227
  call void %40(ptr noundef %ref.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %exp_find_key.exit.cleanup_crit_edge, %exp_find_key.exit.thread
  %retval.0 = phi ptr [ %retval.0.i.ph, %exp_find_key.exit.thread ], [ %retval.0.i, %exp_find_key.exit.cleanup_crit_edge ], [ %retval.0.i32, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %retval.0.i32, %if.then10.i.i.i.i.i ], [ %retval.0.i32, %if.then.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rqst_exp_parent(ptr noundef %rqstp, ptr nocapture noundef %path) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dget.exit_crit_edge, label %if.then.i

entry.dget.exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %dget.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #17
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %entry.dget.exit_crit_edge
  %call1 = tail call ptr @rqst_exp_get_by_name(ptr noundef %rqstp, ptr noundef %path)
  %cmp24 = icmp eq ptr %call1, inttoptr (i32 -2 to ptr)
  br i1 %cmp24, label %dget.exit.land.rhs_crit_edge, label %dget.exit.while.end_crit_edge

dget.exit.while.end_crit_edge:                    ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

dget.exit.land.rhs_crit_edge:                     ; preds = %dget.exit
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %dget.exit.land.rhs_crit_edge
  %2 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry, align 4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_parent, align 8
  %cmp5.not = icmp eq ptr %3, %5
  br i1 %cmp5.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %call7 = tail call ptr @dget_parent(ptr noundef %3) #17
  %6 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dentry, align 4
  tail call void @dput(ptr noundef %7) #17
  %8 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %dentry, align 4
  %call10 = tail call ptr @rqst_exp_get_by_name(ptr noundef %rqstp, ptr noundef %path)
  %cmp = icmp eq ptr %call10, inttoptr (i32 -2 to ptr)
  br i1 %cmp, label %while.body.land.rhs_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %dget.exit.while.end_crit_edge
  %exp.0.lcssa = phi ptr [ %call1, %dget.exit.while.end_crit_edge ], [ %call10, %while.body.while.end_crit_edge ], [ inttoptr (i32 -2 to ptr), %land.rhs.while.end_crit_edge ]
  %9 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dentry, align 4
  tail call void @dput(ptr noundef %10) #17
  %11 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %dentry, align 4
  ret ptr %exp.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rqst_find_fsidzero_export(ptr noundef %rqstp) local_unnamed_addr #0 align 64 {
entry:
  %fsidv = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fsidv) #17
  %0 = getelementptr inbounds [2 x i32], ptr %fsidv, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !223
  %2 = ptrtoint ptr %fsidv to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %fsidv, align 4
  %call = call ptr @rqst_exp_find(ptr noundef %rqstp, i32 noundef 1, ptr noundef nonnull %fsidv)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fsidv) #17
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exp_pseudoroot(ptr noundef %rqstp, ptr noundef %fhp) local_unnamed_addr #0 align 64 {
entry:
  %fsidv.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fsidv.i) #17
  %0 = getelementptr inbounds [2 x i32], ptr %fsidv.i, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !223
  %2 = ptrtoint ptr %fsidv.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %fsidv.i, align 4
  %call.i = call ptr @rqst_exp_find(ptr noundef %rqstp, i32 noundef 1, ptr noundef nonnull %fsidv.i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fsidv.i) #17
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %3 = ptrtoint ptr %call.i to i32
  %call3 = tail call i32 @nfserrno(i32 noundef %3) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.svc_export, ptr %call.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry, align 4
  %call4 = tail call i32 @fh_compose(ptr noundef %fhp, ptr noundef %call.i, ptr noundef %5, ptr noundef null) #17
  %cd.i = getelementptr inbounds %struct.svc_export, ptr %call.i, i32 0, i32 13
  %6 = ptrtoint ptr %cd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cd.i, align 8
  %ref.i.i = getelementptr inbounds %struct.cache_head, ptr %call.i, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i, i32 noundef 4) #17
  %8 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %ref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp.i.i = icmp ult i32 %9, 3
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.if.end.i.i_crit_edge

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %expiry_time.i.i = getelementptr inbounds %struct.cache_head, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %expiry_time.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %expiry_time.i.i, align 8
  %nextcheck.i.i = getelementptr inbounds %struct.cache_detail, ptr %7, i32 0, i32 18
  %12 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %nextcheck.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp1.i.i = icmp slt i64 %11, %13
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %11, ptr %nextcheck.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end.if.end.i.i_crit_edge
  %cache_put.i.i = getelementptr inbounds %struct.cache_detail, ptr %7, i32 0, i32 5
  %15 = ptrtoint ptr %cache_put.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cache_put.i.i, align 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !224
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #17
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #17, !srcloc !225
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !226

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #17
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !227
  tail call void %16(ptr noundef %ref.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call4, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call4, %if.then10.i.i.i.i.i.i ], [ %call4, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfserrno(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cache_seq_start_rcu(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_seq_stop_rcu(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cache_seq_next_rcu(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e_show(ptr noundef %m, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %cmp = icmp eq ptr %p, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %file.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %2 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file.i, align 4
  %dentry.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry.i, align 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i, align 8
  %call.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(13) @.str.23) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.20) #17
  br i1 %tobool.not.i.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.21) #17
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.22) #17
  br label %cleanup

if.end3:                                          ; preds = %entry
  %ref.i.i = getelementptr inbounds %struct.cache_head, ptr %p, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #17
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #17, !srcloc !230
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end3.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !231

if.end3.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end3
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.exp_get.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !226

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.exp_get.exit_crit_edge:       ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %exp_get.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end3.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end3.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #17
  br label %exp_get.exit

exp_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.exp_get.exit_crit_edge
  %call5 = tail call i32 @cache_check(ptr noundef %1, ptr noundef %p, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %exp_get.exit.cleanup_crit_edge

exp_get.exit.cleanup_crit_edge:                   ; preds = %exp_get.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end8:                                          ; preds = %exp_get.exit
  %cd.i = getelementptr inbounds %struct.svc_export, ptr %p, i32 0, i32 13
  %10 = ptrtoint ptr %cd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cd.i, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i, i32 noundef 4) #17
  %12 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %ref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i.i = icmp ult i32 %13, 3
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end8.if.end.i.i_crit_edge

if.end8.if.end.i.i_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end8
  %expiry_time.i.i = getelementptr inbounds %struct.cache_head, ptr %p, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %18 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %15, ptr %nextcheck.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end8.if.end.i.i_crit_edge
  %cache_put.i.i = getelementptr inbounds %struct.cache_detail, ptr %11, i32 0, i32 5
  %19 = ptrtoint ptr %cache_put.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cache_put.i.i, align 4
  %call.i.i.i.i.i.i.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !224
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #17
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #17, !srcloc !225
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i25 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i25, label %if.end5.i.i.i.i.i.i.exp_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !226

if.end5.i.i.i.i.i.i.exp_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %exp_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #17
  br label %exp_put.exit

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !227
  tail call void %20(ptr noundef %ref.i.i) #17
  br label %exp_put.exit

exp_put.exit:                                     ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.exp_put.exit_crit_edge
  %call9 = tail call i32 @svc_export_show(ptr noundef %m, ptr noundef %1, ptr noundef %p)
  br label %cleanup

cleanup:                                          ; preds = %exp_put.exit, %exp_get.exit.cleanup_crit_edge, %if.else, %if.then2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_export_init(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %1 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %inum = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 14, i32 2
  %2 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inum, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %3) #20
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call ptr @cache_create_net(ptr noundef nonnull @svc_export_cache_template, ptr noundef %net) #17
  %svc_export_cache = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %svc_export_cache to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %svc_export_cache, align 8
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %do.end4
  %call13 = tail call i32 @cache_register_net(ptr noundef %call5, ptr noundef %net) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.destroy_export_cache_crit_edge

if.end11.destroy_export_cache_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %destroy_export_cache

if.end16:                                         ; preds = %if.end11
  %call17 = tail call ptr @cache_create_net(ptr noundef nonnull @svc_expkey_cache_template, ptr noundef %net) #17
  %svc_expkey_cache = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %svc_expkey_cache to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call17, ptr %svc_expkey_cache, align 4
  %cmp.i53 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i53, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %call17 to i32
  br label %unregister_export_cache

if.end23:                                         ; preds = %if.end16
  %call25 = tail call i32 @cache_register_net(ptr noundef %call17, ptr noundef %net) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %destroy_expkey_cache

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

destroy_expkey_cache:                             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %svc_expkey_cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %svc_expkey_cache, align 4
  tail call void @cache_destroy_net(ptr noundef %9, ptr noundef %net) #17
  br label %unregister_export_cache

unregister_export_cache:                          ; preds = %destroy_expkey_cache, %if.then20
  %rv.0 = phi i32 [ %7, %if.then20 ], [ %call25, %destroy_expkey_cache ]
  %10 = ptrtoint ptr %svc_export_cache to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %svc_export_cache, align 8
  tail call void @cache_unregister_net(ptr noundef %11, ptr noundef %net) #17
  br label %destroy_export_cache

destroy_export_cache:                             ; preds = %unregister_export_cache, %if.end11.destroy_export_cache_crit_edge
  %rv.1 = phi i32 [ %call13, %if.end11.destroy_export_cache_crit_edge ], [ %rv.0, %unregister_export_cache ]
  %12 = ptrtoint ptr %svc_export_cache to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %svc_export_cache, align 8
  tail call void @cache_destroy_net(ptr noundef %13, ptr noundef %net) #17
  br label %cleanup

cleanup:                                          ; preds = %destroy_export_cache, %if.end23.cleanup_crit_edge, %if.then8
  %retval.0 = phi i32 [ %5, %if.then8 ], [ %rv.1, %destroy_export_cache ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cache_create_net(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cache_register_net(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_destroy_net(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_unregister_net(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd_export_flush(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %svc_expkey_cache = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %svc_expkey_cache to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %svc_expkey_cache, align 4
  tail call void @cache_purge(ptr noundef %2) #17
  %svc_export_cache = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %svc_export_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %svc_export_cache, align 8
  tail call void @cache_purge(ptr noundef %4) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd_export_shutdown(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %1 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %inum = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 14, i32 2
  %2 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inum, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %3) #20
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %svc_expkey_cache = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %svc_expkey_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %svc_expkey_cache, align 4
  tail call void @cache_unregister_net(ptr noundef %5, ptr noundef %net) #17
  %svc_export_cache = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %svc_export_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %svc_export_cache, align 8
  tail call void @cache_unregister_net(ptr noundef %7, ptr noundef %net) #17
  %8 = ptrtoint ptr %svc_expkey_cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %svc_expkey_cache, align 4
  tail call void @cache_destroy_net(ptr noundef %9, ptr noundef %net) #17
  %10 = ptrtoint ptr %svc_export_cache to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %svc_export_cache, align 8
  tail call void @cache_destroy_net(ptr noundef %11, ptr noundef %net) #17
  tail call void @svcauth_unix_purge(ptr noundef %net) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %12 = load i32, ptr @nfsd_debug, align 4
  %and8 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.end4.do.end20_crit_edge, label %do.end13

do.end4.do.end20_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end20

do.end13:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #19
  %inum16 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 14, i32 2
  %13 = ptrtoint ptr %inum16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %inum16, align 8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %14) #20
  br label %do.end20

do.end20:                                         ; preds = %do.end13, %do.end4.do.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svcauth_unix_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @svc_export_lookup(ptr noundef %exp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ex_client.i = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 1
  %0 = ptrtoint ptr %ex_client.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ex_client.i, align 8
  %2 = ptrtoint ptr %1 to i32
  %mul.i.i.i.i = mul i32 %2, 1640531527
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 3
  %dentry.i = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dentry.i, align 4
  %5 = ptrtoint ptr %4 to i32
  %mul.i.i.i9.i = mul i32 %5, 1640531527
  %shr.i.i13.i = xor i32 %mul.i.i.i9.i, %mul.i.i.i.i
  %6 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ex_path.i, align 8
  %8 = ptrtoint ptr %7 to i32
  %mul.i.i.i11.i = mul i32 %8, 1640531527
  %xor14.i = xor i32 %shr.i.i13.i, %mul.i.i.i11.i
  %xor4.i = lshr i32 %xor14.i, 24
  %cd = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 13
  %9 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cd, align 8
  %call1 = tail call ptr @sunrpc_cache_lookup_rcu(ptr noundef %10, ptr noundef %exp, i32 noundef %xor4.i) #17
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cache_check(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_exp_get_by_name(ptr noundef %key, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_exp_get_by_name, i32 0, i32 1), ptr blockaddress(@trace_nfsd_exp_get_by_name, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !232

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !226

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !213) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !233
  %call42 = tail call i32 @__traceiter_nfsd_exp_get_by_name(ptr noundef null, ptr noundef %key, i32 noundef %status) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !234
  %13 = tail call i32 @llvm.read_register.i32(metadata !213) #17
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !226

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !213) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !235
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_exp_get_by_name, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_exp_get_by_name, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_exp_get_by_name.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_nfsd_exp_get_by_name.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 284, ptr noundef nonnull @.str.14) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !236
  %31 = tail call i32 @llvm.read_register.i32(metadata !213) #17
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
declare dso_local ptr @sunrpc_cache_lookup_rcu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_exp_get_by_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @svc_expkey_lookup(ptr noundef %cd, ptr noundef %item) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ek_fsidtype.i = getelementptr inbounds %struct.svc_expkey, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %ek_fsidtype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ek_fsidtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %2 = icmp ult i32 %1, 8
  br i1 %2, label %switch.lookup, label %entry.svc_expkey_hash.exit_crit_edge

entry.svc_expkey_hash.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %svc_expkey_hash.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.svc_expkey_lookup, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %svc_expkey_hash.exit

svc_expkey_hash.exit:                             ; preds = %switch.lookup, %entry.svc_expkey_hash.exit_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.svc_expkey_hash.exit_crit_edge ]
  %ek_fsid.i = getelementptr inbounds %struct.svc_expkey, ptr %item, i32 0, i32 3
  %call.i.i = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %ek_fsid.i, i32 noundef %retval.0.i.i) #21
  %shr.i.i = lshr i32 %call.i.i, 24
  %ek_client.i = getelementptr inbounds %struct.svc_expkey, ptr %item, i32 0, i32 1
  %4 = ptrtoint ptr %ek_client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ek_client.i, align 8
  %6 = ptrtoint ptr %5 to i32
  %mul.i.i.i.i = mul i32 %6, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %.masked.i = and i32 %1, 255
  %xor.masked.i = xor i32 %shr.i.i, %.masked.i
  %and.i = xor i32 %xor.masked.i, %shr.i.i.i
  %call1 = tail call ptr @sunrpc_cache_lookup_rcu(ptr noundef %cd, ptr noundef %item, i32 noundef %and.i) #17
  ret ptr %call1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_exp_find_key(ptr noundef %key, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_exp_find_key, i32 0, i32 1), ptr blockaddress(@trace_nfsd_exp_find_key, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !232

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !226

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !213) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !237
  %call42 = tail call i32 @__traceiter_nfsd_exp_find_key(ptr noundef null, ptr noundef %key, i32 noundef %status) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !238
  %13 = tail call i32 @llvm.read_register.i32(metadata !213) #17
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !226

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !213) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !235
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_exp_find_key, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_exp_find_key, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_exp_find_key.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_nfsd_exp_find_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 237, ptr noundef nonnull @.str.14) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !236
  %31 = tail call i32 @llvm.read_register.i32(metadata !213) #17
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

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_exp_find_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_export_show(ptr noundef %m, ptr nocapture noundef readnone %cd, ptr noundef %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %file.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file.i, align 4
  %dentry.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry.i, align 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name.i, align 8
  %call.i = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(13) @.str.23) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  %cmp = icmp eq ptr %h, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.24) #17
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.25) #17
  br label %cleanup

if.end3:                                          ; preds = %entry
  %ex_path = getelementptr inbounds %struct.svc_export, ptr %h, i32 0, i32 3
  %call4 = tail call i32 @seq_path(ptr noundef %m, ptr noundef %ex_path, ptr noundef nonnull @.str.26) #17
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 9) #17
  %ex_client = getelementptr inbounds %struct.svc_export, ptr %h, i32 0, i32 1
  %6 = ptrtoint ptr %ex_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ex_client, align 8
  %name = getelementptr inbounds %struct.auth_domain, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %call.i.i = tail call i32 @strlen(ptr noundef %9) #22
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef %9, i32 noundef %call.i.i, i32 noundef 8, ptr noundef nonnull @.str.26) #17
  br i1 %tobool.not.i.not, label %if.then6, label %if.end17

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %ex_stats = getelementptr inbounds %struct.svc_export, ptr %h, i32 0, i32 15
  %10 = ptrtoint ptr %ex_stats to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ex_stats, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27, i64 noundef %11) #17
  %counter = getelementptr inbounds %struct.svc_export, ptr %h, i32 0, i32 15, i32 1
  %call.i78 = tail call i64 @__percpu_counter_sum(ptr noundef %counter) #17
  %12 = tail call i64 @llvm.smax.i64(i64 %call.i78, i64 0) #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.28, i64 noundef %12) #17
  %arrayidx11 = getelementptr %struct.svc_export, ptr %h, i32 0, i32 15, i32 1, i32 1
  %call.i79 = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx11) #17
  %13 = tail call i64 @llvm.smax.i64(i64 %call.i79, i64 0) #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.29, i64 noundef %13) #17
  %arrayidx15 = getelementptr %struct.svc_export, ptr %h, i32 0, i32 15, i32 1, i32 2
  %call.i80 = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx15) #17
  %14 = tail call i64 @llvm.smax.i64(i64 %call.i80, i64 0) #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.30, i64 noundef %14) #17
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #17
  br label %cleanup

if.end17:                                         ; preds = %if.end3
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 40) #17
  %flags = getelementptr inbounds %struct.cache_head, ptr %h, i32 0, i32 4
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool19.not = icmp eq i32 %and1.i, 0
  br i1 %tobool19.not, label %if.end17.if.end36_crit_edge, label %land.lhs.true

if.end17.if.end36_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end17
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool22.not = icmp eq i32 %19, 0
  br i1 %tobool22.not, label %if.then23, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

if.then23:                                        ; preds = %land.lhs.true
  %ex_flags = getelementptr inbounds %struct.svc_export, ptr %h, i32 0, i32 2
  %20 = ptrtoint ptr %ex_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ex_flags, align 4
  %ex_fsid = getelementptr inbounds %struct.svc_export, ptr %h, i32 0, i32 6
  %22 = ptrtoint ptr %ex_fsid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ex_fsid, align 8
  %ex_anon_uid = getelementptr inbounds %struct.svc_export, ptr %h, i32 0, i32 4
  %ex_anon_gid = getelementptr inbounds %struct.svc_export, ptr %h, i32 0, i32 5
  %24 = ptrtoint ptr %ex_anon_uid to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack = load i32, ptr %ex_anon_uid, align 8
  %25 = ptrtoint ptr %ex_anon_gid to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack76 = load i32, ptr %ex_anon_gid, align 4
  %26 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %29, i32 0, i32 25
  %30 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %user_ns.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then23
  %32 = phi i32 [ 1, %if.then23 ], [ %38, %for.inc.i.i.for.body.i.i_crit_edge ]
  %first.021.i.i = phi i32 [ 0, %if.then23 ], [ %first.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %flg.019.i.i = phi ptr [ @expflags, %if.then23 ], [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %and.i.i = and i32 %32, -261888
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %and4.i.i = and i32 %32, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  %cond.i.i = zext i1 %tobool5.not.i.i to i32
  %arrayidx.i.i = getelementptr %struct.flags, ptr %flg.019.i.i, i32 0, i32 1, i32 %cond.i.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool6.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %if.then7.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %inc.i.i = add i32 %first.021.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first.021.i.i)
  %tobool8.not.i.i = icmp eq i32 %first.021.i.i, 0
  %cond9.i.i = select i1 %tobool8.not.i.i, ptr @.str.43, ptr @.str.42
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond9.i.i, ptr noundef %34) #17
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then7.i.i, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %first.1.i.i = phi i32 [ %first.021.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %inc.i.i, %if.then7.i.i ], [ %first.021.i.i, %if.end.i.i.for.inc.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr %struct.flags, ptr %flg.019.i.i, i32 1
  %37 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %incdec.ptr.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i, label %show_expflags.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

show_expflags.exit.i:                             ; preds = %for.inc.i.i
  %ex_fslocs = getelementptr inbounds %struct.svc_export, ptr %h, i32 0, i32 8
  %39 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %40 = insertvalue [1 x i32] undef, i32 %.unpack76, 0
  %and.i = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i82 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i82, label %show_expflags.exit.i.if.end.i_crit_edge, label %if.then.i

show_expflags.exit.i.if.end.i_crit_edge:          ; preds = %show_expflags.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %show_expflags.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.34, i32 noundef %23) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %show_expflags.exit.i.if.end.i_crit_edge
  %call.i83 = tail call i32 @make_kuid(ptr noundef %31, i32 noundef -2) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %call.i83)
  %cmp.i.i = icmp eq i32 %.unpack, %call.i83
  br i1 %cmp.i.i, label %if.end.i.if.end15.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %call7.i = tail call i32 @make_kuid(ptr noundef %31, i32 noundef 65534) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %call7.i)
  %cmp.i98.i = icmp eq i32 %.unpack, %call7.i
  br i1 %cmp.i98.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %if.then12.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %call14.i = tail call i32 @from_kuid_munged(ptr noundef %31, [1 x i32] %39) #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.35, i32 noundef %call14.i) #17
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %land.lhs.true.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  %call17.i = tail call i32 @make_kgid(ptr noundef %31, i32 noundef -2) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack76, i32 %call17.i)
  %cmp.i99.i = icmp eq i32 %.unpack76, %call17.i
  br i1 %cmp.i99.i, label %if.end15.i.if.end32.i_crit_edge, label %land.lhs.true22.i

if.end15.i.if.end32.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32.i

land.lhs.true22.i:                                ; preds = %if.end15.i
  %call24.i = tail call i32 @make_kgid(ptr noundef %31, i32 noundef 65534) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack76, i32 %call24.i)
  %cmp.i101.i = icmp eq i32 %.unpack76, %call24.i
  br i1 %cmp.i101.i, label %land.lhs.true22.i.if.end32.i_crit_edge, label %if.then29.i

land.lhs.true22.i.if.end32.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32.i

if.then29.i:                                      ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #19
  %call31.i = tail call i32 @from_kgid_munged(ptr noundef %31, [1 x i32] %40) #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, i32 noundef %call31.i) #17
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %land.lhs.true22.i.if.end32.i_crit_edge, %if.end15.i.if.end32.i_crit_edge
  %tobool33.not.i = icmp eq ptr %ex_fslocs, null
  br i1 %tobool33.not.i, label %if.end32.i.exp_flags.exit_crit_edge, label %land.lhs.true34.i

if.end32.i.exp_flags.exit_crit_edge:              ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %exp_flags.exit

land.lhs.true34.i:                                ; preds = %if.end32.i
  %41 = ptrtoint ptr %ex_fslocs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ex_fslocs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.not.i = icmp eq i32 %42, 0
  br i1 %cmp.not.i, label %land.lhs.true34.i.exp_flags.exit_crit_edge, label %if.then35.i

land.lhs.true34.i.exp_flags.exit_crit_edge:       ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %exp_flags.exit

if.then35.i:                                      ; preds = %land.lhs.true34.i
  %migrated.i = getelementptr inbounds %struct.svc_export, ptr %h, i32 0, i32 8, i32 2
  %43 = ptrtoint ptr %migrated.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %migrated.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool36.not.i = icmp eq i32 %44, 0
  %cond.i = select i1 %tobool36.not.i, ptr @.str.38, ptr @.str.37
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39, ptr noundef nonnull %cond.i) #17
  %locations.i = getelementptr inbounds %struct.svc_export, ptr %h, i32 0, i32 8, i32 1
  %45 = ptrtoint ptr %locations.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %locations.i, align 4
  %path.i = getelementptr inbounds %struct.nfsd4_fs_location, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %path.i, align 4
  %call.i.i.i = tail call i32 @strlen(ptr noundef %48) #22
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef %48, i32 noundef %call.i.i.i, i32 noundef 8, ptr noundef nonnull @.str.40) #17
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 64) #17
  %49 = ptrtoint ptr %locations.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %locations.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %call.i.i102.i = tail call i32 @strlen(ptr noundef %52) #22
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef %52, i32 noundef %call.i.i102.i, i32 noundef 8, ptr noundef nonnull @.str.40) #17
  %53 = ptrtoint ptr %ex_fslocs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ex_fslocs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp40105.i = icmp ugt i32 %54, 1
  br i1 %cmp40105.i, label %if.then35.i.for.body.i_crit_edge, label %if.then35.i.exp_flags.exit_crit_edge

if.then35.i.exp_flags.exit_crit_edge:             ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %exp_flags.exit

if.then35.i.for.body.i_crit_edge:                 ; preds = %if.then35.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then35.i.for.body.i_crit_edge
  %i.0106.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.then35.i.for.body.i_crit_edge ]
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 59) #17
  %55 = ptrtoint ptr %locations.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %locations.i, align 4
  %path43.i = getelementptr %struct.nfsd4_fs_location, ptr %56, i32 %i.0106.i, i32 1
  %57 = ptrtoint ptr %path43.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %path43.i, align 4
  %call.i.i103.i = tail call i32 @strlen(ptr noundef %58) #22
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef %58, i32 noundef %call.i.i103.i, i32 noundef 8, ptr noundef nonnull @.str.40) #17
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 64) #17
  %59 = ptrtoint ptr %locations.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %locations.i, align 4
  %arrayidx45.i = getelementptr %struct.nfsd4_fs_location, ptr %60, i32 %i.0106.i
  %61 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx45.i, align 4
  %call.i.i104.i = tail call i32 @strlen(ptr noundef %62) #22
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef %62, i32 noundef %call.i.i104.i, i32 noundef 8, ptr noundef nonnull @.str.40) #17
  %inc.i = add nuw i32 %i.0106.i, 1
  %63 = ptrtoint ptr %ex_fslocs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ex_fslocs, align 4
  %cmp40.i = icmp ult i32 %inc.i, %64
  br i1 %cmp40.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.exp_flags.exit_crit_edge

for.body.i.exp_flags.exit_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %exp_flags.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

exp_flags.exit:                                   ; preds = %for.body.i.exp_flags.exit_crit_edge, %if.then35.i.exp_flags.exit_crit_edge, %land.lhs.true34.i.exp_flags.exit_crit_edge, %if.end32.i.exp_flags.exit_crit_edge
  %ex_uuid = getelementptr inbounds %struct.svc_export, ptr %h, i32 0, i32 7
  %65 = ptrtoint ptr %ex_uuid to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ex_uuid, align 4
  %tobool25.not = icmp eq ptr %66, null
  br i1 %tobool25.not, label %exp_flags.exit.if.end35_crit_edge, label %if.then26

exp_flags.exit.if.end35_crit_edge:                ; preds = %exp_flags.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.then26:                                        ; preds = %exp_flags.exit
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.31) #17
  br label %for.body

for.body:                                         ; preds = %if.end32.for.body_crit_edge, %if.then26
  %i.086 = phi i32 [ 0, %if.then26 ], [ %inc, %if.end32.for.body_crit_edge ]
  %and = and i32 %i.086, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp28 = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.086)
  %tobool30.not = icmp eq i32 %i.086, 0
  %or.cond = or i1 %tobool30.not, %cmp28
  br i1 %or.cond, label %for.body.if.end32_crit_edge, label %if.then31

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 58) #17
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %for.body.if.end32_crit_edge
  %67 = ptrtoint ptr %ex_uuid to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ex_uuid, align 4
  %arrayidx34 = getelementptr i8, ptr %68, i32 %i.086
  %69 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx34, align 1
  %conv = zext i8 %70 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, i32 noundef %conv) #17
  %inc = add nuw nsw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %if.end32.if.end35_crit_edge, label %if.end32.for.body_crit_edge

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.end32.if.end35_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.end35:                                         ; preds = %if.end32.if.end35_crit_edge, %exp_flags.exit.if.end35_crit_edge
  %ex_flavors.i = getelementptr inbounds %struct.svc_export, ptr %h, i32 0, i32 10
  %ex_nflavors.i = getelementptr inbounds %struct.svc_export, ptr %h, i32 0, i32 9
  %71 = ptrtoint ptr %ex_nflavors.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ex_nflavors.i, align 4
  %add.ptr.i = getelementptr %struct.exp_flavor_info, ptr %ex_flavors.i, i32 %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp.i = icmp eq i32 %72, 0
  br i1 %cmp.i, label %if.end35.if.end36_crit_edge, label %if.end.i84

if.end35.if.end36_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

if.end.i84:                                       ; preds = %if.end35
  %flags1.i.i = getelementptr inbounds %struct.svc_export, ptr %h, i32 0, i32 10, i32 0, i32 1
  %73 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags1.i.i, align 4
  %75 = ptrtoint ptr %ex_flavors.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ex_flavors.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.62, i32 noundef %76) #17
  %storemerge14.i.i = getelementptr %struct.svc_export, ptr %h, i32 0, i32 10, i32 1
  %cmp.not15.i.i = icmp eq ptr %storemerge14.i.i, %add.ptr.i
  br i1 %cmp.not15.i.i, label %if.end.i84.show_secinfo_run.exit.i_crit_edge, label %if.end.i84.land.rhs.i.i_crit_edge

if.end.i84.land.rhs.i.i_crit_edge:                ; preds = %if.end.i84
  br label %land.rhs.i.i

if.end.i84.show_secinfo_run.exit.i_crit_edge:     ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #19
  br label %show_secinfo_run.exit.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %if.end.i84.land.rhs.i.i_crit_edge
  %f.0.i = phi ptr [ %storemerge.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %storemerge14.i.i, %if.end.i84.land.rhs.i.i_crit_edge ]
  %.pn16.i.i = phi ptr [ %f.0.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %ex_flavors.i, %if.end.i84.land.rhs.i.i_crit_edge ]
  %flags2.i.i = getelementptr %struct.exp_flavor_info, ptr %.pn16.i.i, i32 1, i32 1
  %77 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags2.i.i, align 4
  %79 = xor i32 %78, %74
  %80 = and i32 %79, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.i.i.i = icmp eq i32 %80, 0
  br i1 %cmp.i.i.i, label %while.body.i.i, label %land.rhs.i.i.show_secinfo_run.exit.i_crit_edge

land.rhs.i.i.show_secinfo_run.exit.i_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %show_secinfo_run.exit.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %81 = ptrtoint ptr %f.0.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %f.0.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, i32 noundef %82) #17
  %storemerge.i.i = getelementptr %struct.exp_flavor_info, ptr %f.0.i, i32 1
  %cmp.not.i.i = icmp eq ptr %storemerge.i.i, %add.ptr.i
  br i1 %cmp.not.i.i, label %while.body.i.i.show_secinfo_run.exit.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.i

while.body.i.i.show_secinfo_run.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %show_secinfo_run.exit.i

show_secinfo_run.exit.i:                          ; preds = %while.body.i.i.show_secinfo_run.exit.i_crit_edge, %land.rhs.i.i.show_secinfo_run.exit.i_crit_edge, %if.end.i84.show_secinfo_run.exit.i_crit_edge
  %f.1.i = phi ptr [ %add.ptr.i, %if.end.i84.show_secinfo_run.exit.i_crit_edge ], [ %add.ptr.i, %while.body.i.i.show_secinfo_run.exit.i_crit_edge ], [ %f.0.i, %land.rhs.i.i.show_secinfo_run.exit.i_crit_edge ]
  %83 = ptrtoint ptr %ex_flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ex_flags, align 4
  %85 = xor i32 %84, %74
  %86 = and i32 %85, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp.i.i85 = icmp eq i32 %86, 0
  br i1 %cmp.i.i85, label %show_secinfo_run.exit.i.if.end6.i_crit_edge, label %if.then5.i

show_secinfo_run.exit.i.if.end6.i_crit_edge:      ; preds = %show_secinfo_run.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i

if.then5.i:                                       ; preds = %show_secinfo_run.exit.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.42) #17
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then5.i
  %87 = phi i32 [ 1, %if.then5.i ], [ %93, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %first.021.i.i.i = phi i32 [ 0, %if.then5.i ], [ %first.1.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %flg.019.i.i.i = phi ptr [ @expflags, %if.then5.i ], [ %incdec.ptr.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %87)
  %tobool2.not.i.i.i = icmp ult i32 %87, 16
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %and4.i.i.i = and i32 %87, %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and4.i.i.i, 0
  %cond.i.i.i = zext i1 %tobool5.not.i.i.i to i32
  %arrayidx.i.i.i = getelementptr %struct.flags, ptr %flg.019.i.i.i, i32 0, i32 1, i32 %cond.i.i.i
  %88 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i.i.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %89, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool6.not.i.i.i = icmp eq i8 %91, 0
  br i1 %tobool6.not.i.i.i, label %if.end.i.i.i.for.inc.i.i.i_crit_edge, label %if.then7.i.i.i

if.end.i.i.i.for.inc.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i.i

if.then7.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %inc.i.i.i = add i32 %first.021.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first.021.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %first.021.i.i.i, 0
  %cond9.i.i.i = select i1 %tobool8.not.i.i.i, ptr @.str.43, ptr @.str.42
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond9.i.i.i, ptr noundef %89) #17
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then7.i.i.i, %if.end.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %first.1.i.i.i = phi i32 [ %first.021.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge ], [ %inc.i.i.i, %if.then7.i.i.i ], [ %first.021.i.i.i, %if.end.i.i.i.for.inc.i.i.i_crit_edge ]
  %incdec.ptr.i.i.i = getelementptr %struct.flags, ptr %flg.019.i.i.i, i32 1
  %92 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %incdec.ptr.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq i32 %93, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i.if.end6.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i.i

for.inc.i.i.i.if.end6.i_crit_edge:                ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i

if.end6.i:                                        ; preds = %for.inc.i.i.i.if.end6.i_crit_edge, %show_secinfo_run.exit.i.if.end6.i_crit_edge
  %cmp7.not57.i = icmp eq ptr %f.1.i, %add.ptr.i
  br i1 %cmp7.not57.i, label %if.end6.i.if.end36_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  br label %while.body.i

if.end6.i.if.end36_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

while.cond.loopexit.i:                            ; preds = %for.inc.i.i53.i
  %cmp7.not.i = icmp eq ptr %f.4.i, %add.ptr.i
  br i1 %cmp7.not.i, label %while.cond.loopexit.i.if.end36_crit_edge, label %while.cond.loopexit.i.while.body.i_crit_edge

while.cond.loopexit.i.while.body.i_crit_edge:     ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

while.cond.loopexit.i.if.end36_crit_edge:         ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

while.body.i:                                     ; preds = %while.cond.loopexit.i.while.body.i_crit_edge, %if.end6.i.while.body.i_crit_edge
  %f.258.i = phi ptr [ %f.4.i, %while.cond.loopexit.i.while.body.i_crit_edge ], [ %f.1.i, %if.end6.i.while.body.i_crit_edge ]
  %flags1.i22.i = getelementptr inbounds %struct.exp_flavor_info, ptr %f.258.i, i32 0, i32 1
  %94 = ptrtoint ptr %flags1.i22.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags1.i22.i, align 4
  %96 = ptrtoint ptr %f.258.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %f.258.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.62, i32 noundef %97) #17
  %storemerge14.i24.i = getelementptr %struct.exp_flavor_info, ptr %f.258.i, i32 1
  %cmp.not15.i25.i = icmp eq ptr %storemerge14.i24.i, %add.ptr.i
  br i1 %cmp.not15.i25.i, label %while.body.i.show_secinfo_run.exit35.i_crit_edge, label %while.body.i.land.rhs.i30.i_crit_edge

while.body.i.land.rhs.i30.i_crit_edge:            ; preds = %while.body.i
  br label %land.rhs.i30.i

while.body.i.show_secinfo_run.exit35.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %show_secinfo_run.exit35.i

land.rhs.i30.i:                                   ; preds = %while.body.i34.i.land.rhs.i30.i_crit_edge, %while.body.i.land.rhs.i30.i_crit_edge
  %f.3.i = phi ptr [ %storemerge.i32.i, %while.body.i34.i.land.rhs.i30.i_crit_edge ], [ %storemerge14.i24.i, %while.body.i.land.rhs.i30.i_crit_edge ]
  %.pn16.i27.i = phi ptr [ %f.3.i, %while.body.i34.i.land.rhs.i30.i_crit_edge ], [ %f.258.i, %while.body.i.land.rhs.i30.i_crit_edge ]
  %flags2.i28.i = getelementptr %struct.exp_flavor_info, ptr %.pn16.i27.i, i32 1, i32 1
  %98 = ptrtoint ptr %flags2.i28.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags2.i28.i, align 4
  %100 = xor i32 %99, %95
  %101 = and i32 %100, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp.i.i29.i = icmp eq i32 %101, 0
  br i1 %cmp.i.i29.i, label %while.body.i34.i, label %land.rhs.i30.i.show_secinfo_run.exit35.i_crit_edge

land.rhs.i30.i.show_secinfo_run.exit35.i_crit_edge: ; preds = %land.rhs.i30.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %show_secinfo_run.exit35.i

while.body.i34.i:                                 ; preds = %land.rhs.i30.i
  %102 = ptrtoint ptr %f.3.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %f.3.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, i32 noundef %103) #17
  %storemerge.i32.i = getelementptr %struct.exp_flavor_info, ptr %f.3.i, i32 1
  %cmp.not.i33.i = icmp eq ptr %storemerge.i32.i, %add.ptr.i
  br i1 %cmp.not.i33.i, label %while.body.i34.i.show_secinfo_run.exit35.i_crit_edge, label %while.body.i34.i.land.rhs.i30.i_crit_edge

while.body.i34.i.land.rhs.i30.i_crit_edge:        ; preds = %while.body.i34.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i30.i

while.body.i34.i.show_secinfo_run.exit35.i_crit_edge: ; preds = %while.body.i34.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %show_secinfo_run.exit35.i

show_secinfo_run.exit35.i:                        ; preds = %while.body.i34.i.show_secinfo_run.exit35.i_crit_edge, %land.rhs.i30.i.show_secinfo_run.exit35.i_crit_edge, %while.body.i.show_secinfo_run.exit35.i_crit_edge
  %f.4.i = phi ptr [ %add.ptr.i, %while.body.i.show_secinfo_run.exit35.i_crit_edge ], [ %add.ptr.i, %while.body.i34.i.show_secinfo_run.exit35.i_crit_edge ], [ %f.3.i, %land.rhs.i30.i.show_secinfo_run.exit35.i_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.42) #17
  br label %for.body.i.i39.i

for.body.i.i39.i:                                 ; preds = %for.inc.i.i53.i.for.body.i.i39.i_crit_edge, %show_secinfo_run.exit35.i
  %104 = phi i32 [ 1, %show_secinfo_run.exit35.i ], [ %110, %for.inc.i.i53.i.for.body.i.i39.i_crit_edge ]
  %first.021.i.i36.i = phi i32 [ 0, %show_secinfo_run.exit35.i ], [ %first.1.i.i50.i, %for.inc.i.i53.i.for.body.i.i39.i_crit_edge ]
  %flg.019.i.i37.i = phi ptr [ @expflags, %show_secinfo_run.exit35.i ], [ %incdec.ptr.i.i51.i, %for.inc.i.i53.i.for.body.i.i39.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %104)
  %tobool2.not.i.i38.i = icmp ult i32 %104, 16
  br i1 %tobool2.not.i.i38.i, label %if.end.i.i45.i, label %for.body.i.i39.i.for.inc.i.i53.i_crit_edge

for.body.i.i39.i.for.inc.i.i53.i_crit_edge:       ; preds = %for.body.i.i39.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i53.i

if.end.i.i45.i:                                   ; preds = %for.body.i.i39.i
  %and4.i.i40.i = and i32 %104, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i40.i)
  %tobool5.not.i.i41.i = icmp eq i32 %and4.i.i40.i, 0
  %cond.i.i42.i = zext i1 %tobool5.not.i.i41.i to i32
  %arrayidx.i.i43.i = getelementptr %struct.flags, ptr %flg.019.i.i37.i, i32 0, i32 1, i32 %cond.i.i42.i
  %105 = ptrtoint ptr %arrayidx.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i.i43.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %106, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool6.not.i.i44.i = icmp eq i8 %108, 0
  br i1 %tobool6.not.i.i44.i, label %if.end.i.i45.i.for.inc.i.i53.i_crit_edge, label %if.then7.i.i49.i

if.end.i.i45.i.for.inc.i.i53.i_crit_edge:         ; preds = %if.end.i.i45.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i53.i

if.then7.i.i49.i:                                 ; preds = %if.end.i.i45.i
  call void @__sanitizer_cov_trace_pc() #19
  %inc.i.i46.i = add i32 %first.021.i.i36.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first.021.i.i36.i)
  %tobool8.not.i.i47.i = icmp eq i32 %first.021.i.i36.i, 0
  %cond9.i.i48.i = select i1 %tobool8.not.i.i47.i, ptr @.str.43, ptr @.str.42
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond9.i.i48.i, ptr noundef %106) #17
  br label %for.inc.i.i53.i

for.inc.i.i53.i:                                  ; preds = %if.then7.i.i49.i, %if.end.i.i45.i.for.inc.i.i53.i_crit_edge, %for.body.i.i39.i.for.inc.i.i53.i_crit_edge
  %first.1.i.i50.i = phi i32 [ %first.021.i.i36.i, %for.body.i.i39.i.for.inc.i.i53.i_crit_edge ], [ %inc.i.i46.i, %if.then7.i.i49.i ], [ %first.021.i.i36.i, %if.end.i.i45.i.for.inc.i.i53.i_crit_edge ]
  %incdec.ptr.i.i51.i = getelementptr %struct.flags, ptr %flg.019.i.i37.i, i32 1
  %109 = ptrtoint ptr %incdec.ptr.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %incdec.ptr.i.i51.i, align 4
  %tobool.not.i.i52.i = icmp eq i32 %110, 0
  br i1 %tobool.not.i.i52.i, label %while.cond.loopexit.i, label %for.inc.i.i53.i.for.body.i.i39.i_crit_edge

for.inc.i.i53.i.for.body.i.i39.i_crit_edge:       ; preds = %for.inc.i.i53.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i39.i

if.end36:                                         ; preds = %while.cond.loopexit.i.if.end36_crit_edge, %if.end6.i.if.end36_crit_edge, %if.end35.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %if.end17.if.end36_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.33) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then6, %if.else, %if.then2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_escape_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_export_put(ptr noundef %ref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ref, i32 -24
  %ex_path = getelementptr i8, ptr %ref, i32 16
  tail call void @path_put(ptr noundef %ex_path) #17
  %ex_client = getelementptr i8, ptr %ref, i32 8
  %0 = ptrtoint ptr %ex_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ex_client, align 8
  tail call void @auth_domain_put(ptr noundef %1) #17
  %ex_fslocs = getelementptr i8, ptr %ref, i32 40
  %locations1.i = getelementptr i8, ptr %ref, i32 44
  %2 = ptrtoint ptr %locations1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %locations1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.nfsd4_fslocs_free.exit_crit_edge, label %for.cond.preheader.i

entry.nfsd4_fslocs_free.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %nfsd4_fslocs_free.exit

for.cond.preheader.i:                             ; preds = %entry
  %4 = ptrtoint ptr %ex_fslocs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ex_fslocs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13.not.i = icmp eq i32 %5, 0
  br i1 %cmp13.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nfsd4_fs_location, ptr %3, i32 %i.014.i
  %path.i = getelementptr %struct.nfsd4_fs_location, ptr %3, i32 %i.014.i, i32 1
  %6 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %path.i, align 4
  tail call void @kfree(ptr noundef %7) #17
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %9) #17
  %inc.i = add nuw i32 %i.014.i, 1
  %10 = ptrtoint ptr %ex_fslocs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ex_fslocs, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %3) #17
  %12 = ptrtoint ptr %locations1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %locations1.i, align 4
  br label %nfsd4_fslocs_free.exit

nfsd4_fslocs_free.exit:                           ; preds = %for.end.i, %entry.nfsd4_fslocs_free.exit_crit_edge
  %counter.i = getelementptr i8, ptr %ref, i32 152
  tail call void @nfsd_percpu_counters_destroy(ptr noundef %counter.i, i32 noundef 3) #17
  %ex_uuid = getelementptr i8, ptr %ref, i32 36
  %13 = ptrtoint ptr %ex_uuid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ex_uuid, align 4
  tail call void @kfree(ptr noundef %14) #17
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %nfsd4_fslocs_free.exit.if.end_crit_edge, label %do.end

nfsd4_fslocs_free.exit.if.end_crit_edge:          ; preds = %nfsd4_fslocs_free.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %nfsd4_fslocs_free.exit
  call void @__sanitizer_cov_trace_pc() #19
  %ex_rcu = getelementptr i8, ptr %ref, i32 132
  tail call void @kvfree_call_rcu(ptr noundef %ex_rcu, ptr noundef nonnull inttoptr (i32 156 to ptr)) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %nfsd4_fslocs_free.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_export_upcall(ptr noundef %cd, ptr noundef %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sunrpc_cache_pipe_upcall(ptr noundef %cd, ptr noundef %h) #17
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_export_request(ptr nocapture noundef readnone %cd, ptr noundef %h, ptr noundef %bpp, ptr noundef %blen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ex_client = getelementptr inbounds %struct.svc_export, ptr %h, i32 0, i32 1
  %0 = ptrtoint ptr %ex_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ex_client, align 8
  %name = getelementptr inbounds %struct.auth_domain, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  tail call void @qword_add(ptr noundef %bpp, ptr noundef %blen, ptr noundef %3) #17
  %ex_path = getelementptr inbounds %struct.svc_export, ptr %h, i32 0, i32 3
  %4 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bpp, align 4
  %6 = ptrtoint ptr %blen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blen, align 4
  %call = tail call ptr @d_path(ptr noundef %ex_path, ptr noundef %5, i32 noundef %7) #17
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bpp, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @qword_add(ptr noundef %bpp, ptr noundef %blen, ptr noundef %call) #17
  %10 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bpp, align 4
  %arrayidx2 = getelementptr i8, ptr %11, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %arrayidx2.sink = phi ptr [ %arrayidx2, %if.end ], [ %9, %if.then ]
  %12 = ptrtoint ptr %arrayidx2.sink to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 10, ptr %arrayidx2.sink, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_export_parse(ptr noundef %cd, ptr noundef %mesg, i32 noundef %mlen) #0 align 64 {
entry:
  %buf.i.i = alloca [50 x i8], align 1
  %ll.i.i = alloca i64, align 8
  %boot.i = alloca %struct.timespec64, align 8
  %mesg.addr = alloca ptr, align 4
  %exp = alloca %struct.svc_export, align 8
  %an_int = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mesg.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mesg, ptr %mesg.addr, align 4
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %exp) #17
  %1 = call ptr @memset(ptr %exp, i32 0, i32 392)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %an_int) #17
  %2 = ptrtoint ptr %an_int to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %an_int, align 4, !annotation !223
  %sub = add i32 %mlen, -1
  %arrayidx = getelementptr i8, ptr %mesg, i32 %sub
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %4)
  %cmp.not = icmp eq i8 %4, 10
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 4096) #23
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %call7.i, i32 noundef 4096) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %if.end5.out_crit_edge, label %if.end10

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end10:                                         ; preds = %if.end5
  %call11 = call ptr @auth_domain_find(ptr noundef nonnull %call7.i) #17
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.out_crit_edge, label %if.end14

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end14:                                         ; preds = %if.end10
  %call15 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %call7.i, i32 noundef 4096) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %if.end14.out1_crit_edge, label %if.end19

if.end14.out1_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %out1

if.end19:                                         ; preds = %if.end14
  %ex_path = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 3
  %call20 = call i32 @kern_path(ptr noundef nonnull %call7.i, i32 noundef 0, ptr noundef %ex_path) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.out1_crit_edge

if.end19.out1_crit_edge:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %out1

if.end23:                                         ; preds = %if.end19
  %ex_client = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 1
  %7 = ptrtoint ptr %ex_client to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %ex_client, align 8
  %cd24 = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 13
  %8 = ptrtoint ptr %cd24 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cd, ptr %cd24, align 8
  %ex_devid_map = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 12
  %9 = ptrtoint ptr %ex_devid_map to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %ex_devid_map, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %boot.i) #17
  %10 = call ptr @memset(ptr %boot.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i.i) #17
  %11 = call ptr @memset(ptr %buf.i.i, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ll.i.i) #17
  %12 = ptrtoint ptr %ll.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %ll.i.i, align 8, !annotation !223
  %call.i.i = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %buf.i.i, i32 noundef 50) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %13 = icmp slt i32 %call.i.i, 1
  br i1 %13, label %if.end23.get_time.exit.thread.i_crit_edge, label %if.end3.i.i

if.end23.get_time.exit.thread.i_crit_edge:        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_time.exit.thread.i

if.end3.i.i:                                      ; preds = %if.end23
  %call5.i.i = call i32 @kstrtoll(ptr noundef nonnull %buf.i.i, i32 noundef 0, ptr noundef nonnull %ll.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %if.end3.i.i.get_time.exit.thread.i_crit_edge

if.end3.i.i.get_time.exit.thread.i_crit_edge:     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_time.exit.thread.i

get_time.exit.thread.i:                           ; preds = %if.end3.i.i.get_time.exit.thread.i_crit_edge, %if.end23.get_time.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ll.i.i) #17
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i.i) #17
  br label %get_expiry.exit.thread

if.end.i:                                         ; preds = %if.end3.i.i
  %14 = ptrtoint ptr %ll.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ll.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ll.i.i) #17
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %cmp.i = icmp slt i64 %15, 0
  br i1 %cmp.i, label %if.end.i.get_expiry.exit.thread_crit_edge, label %get_expiry.exit

if.end.i.get_expiry.exit.thread_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_expiry.exit.thread

get_expiry.exit.thread:                           ; preds = %if.end.i.get_expiry.exit.thread_crit_edge, %get_time.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot.i) #17
  %expiry_time173 = getelementptr inbounds %struct.cache_head, ptr %exp, i32 0, i32 1
  %16 = ptrtoint ptr %expiry_time173 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %expiry_time173, align 8
  br label %out3

get_expiry.exit:                                  ; preds = %if.end.i
  call void @getboottime64(ptr noundef nonnull %boot.i) #17
  %17 = ptrtoint ptr %boot.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %boot.i, align 8
  %sub.i = sub i64 %15, %18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot.i) #17
  %expiry_time = getelementptr inbounds %struct.cache_head, ptr %exp, i32 0, i32 1
  %19 = ptrtoint ptr %expiry_time to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %sub.i, ptr %expiry_time, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %18)
  %cmp28 = icmp eq i64 %15, %18
  br i1 %cmp28, label %get_expiry.exit.out3_crit_edge, label %if.end31

get_expiry.exit.out3_crit_edge:                   ; preds = %get_expiry.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out3

if.end31:                                         ; preds = %get_expiry.exit
  %call32 = call fastcc i32 @get_int(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %an_int)
  %20 = zext i32 %call32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %call32, label %if.end31.out3_crit_edge [
    i32 -2, label %if.then35
    i32 0, label %lor.lhs.false
  ]

if.end31.out3_crit_edge:                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %out3

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  %flags = getelementptr inbounds %struct.cache_head, ptr %exp, i32 0, i32 4
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #17
  br label %if.end121

lor.lhs.false:                                    ; preds = %if.end31
  %21 = ptrtoint ptr %an_int to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %an_int, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp38 = icmp slt i32 %22, 0
  br i1 %cmp38, label %lor.lhs.false.out3_crit_edge, label %if.end41

lor.lhs.false.out3_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %out3

if.end41:                                         ; preds = %lor.lhs.false
  %ex_flags = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 2
  %23 = ptrtoint ptr %ex_flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %ex_flags, align 4
  %call42 = call fastcc i32 @get_int(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %an_int)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.out3_crit_edge

if.end41.out3_crit_edge:                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %out3

if.end45:                                         ; preds = %if.end41
  %ex_anon_uid = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 4
  %24 = call i32 @llvm.read_register.i32(metadata !213) #17
  %and.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 99
  %28 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %29, i32 0, i32 25
  %30 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %user_ns, align 4
  %32 = ptrtoint ptr %an_int to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %an_int, align 4
  %call49 = call i32 @make_kuid(ptr noundef %31, i32 noundef %33) #17
  %34 = ptrtoint ptr %ex_anon_uid to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call49, ptr %ex_anon_uid, align 8
  %call50 = call fastcc i32 @get_int(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %an_int)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end45.out3_crit_edge

if.end45.out3_crit_edge:                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #19
  br label %out3

if.end53:                                         ; preds = %if.end45
  %ex_anon_gid = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 5
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %cred62 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 99
  %37 = ptrtoint ptr %cred62 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cred62, align 16
  %user_ns63 = getelementptr inbounds %struct.cred, ptr %38, i32 0, i32 25
  %39 = ptrtoint ptr %user_ns63 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %user_ns63, align 4
  %41 = ptrtoint ptr %an_int to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %an_int, align 4
  %call64 = call i32 @make_kgid(ptr noundef %40, i32 noundef %42) #17
  %43 = ptrtoint ptr %ex_anon_gid to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call64, ptr %ex_anon_gid, align 4
  %call66 = call fastcc i32 @get_int(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %an_int)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end53.out3_crit_edge

if.end53.out3_crit_edge:                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  br label %out3

if.end69:                                         ; preds = %if.end53
  %44 = ptrtoint ptr %an_int to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %an_int, align 4
  %ex_fsid = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 6
  %46 = ptrtoint ptr %ex_fsid to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %ex_fsid, align 8
  %ex_uuid = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 7
  %ex_fslocs = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 8
  br label %while.cond

while.cond:                                       ; preds = %if.end93.while.cond_crit_edge, %if.end69
  %call70 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %call7.i, i32 noundef 4096) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp sgt i32 %call70, 0
  br i1 %cmp71, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %while.cond
  %call73 = call i32 @strcmp(ptr noundef nonnull %call7.i, ptr noundef nonnull dereferenceable(6) @.str.66) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp eq i32 %call73, 0
  br i1 %cmp74, label %if.then76, label %if.else78

if.then76:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %call77 = call fastcc i32 @fsloc_parse(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %call7.i, ptr noundef %ex_fslocs)
  br label %if.end93

if.else78:                                        ; preds = %while.body
  %call79 = call i32 @strcmp(ptr noundef nonnull %call7.i, ptr noundef nonnull dereferenceable(5) @.str.67) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp eq i32 %call79, 0
  br i1 %cmp80, label %if.then82, label %if.else84

if.then82:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #19
  %call83 = call fastcc i32 @nfsd_uuid_parse(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %call7.i, ptr noundef %ex_uuid)
  br label %if.end93

if.else84:                                        ; preds = %if.else78
  %call85 = call i32 @strcmp(ptr noundef nonnull %call7.i, ptr noundef nonnull dereferenceable(8) @.str.68) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %if.then88, label %if.else84.while.end_crit_edge

if.else84.while.end_crit_edge:                    ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

if.then88:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #19
  %call89 = call fastcc i32 @secinfo_parse(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %exp)
  br label %if.end93

if.end93:                                         ; preds = %if.then88, %if.then82, %if.then76
  %err.0 = phi i32 [ %call77, %if.then76 ], [ %call83, %if.then82 ], [ %call89, %if.then88 ]
  %tobool94.not = icmp eq i32 %err.0, 0
  br i1 %tobool94.not, label %if.end93.while.cond_crit_edge, label %if.end93.out4_crit_edge

if.end93.out4_crit_edge:                          ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #19
  br label %out4

if.end93.while.cond_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond

while.end:                                        ; preds = %if.else84.while.end_crit_edge, %while.cond.while.end_crit_edge
  %47 = ptrtoint ptr %ex_uuid to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ex_uuid, align 4
  %call100 = call fastcc i32 @check_export(ptr noundef %ex_path, ptr noundef %ex_flags, ptr noundef %48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end103, label %while.end.out4_crit_edge

while.end.out4_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out4

if.end103:                                        ; preds = %while.end
  %49 = ptrtoint ptr %expiry_time to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %expiry_time, align 8
  %call106 = call fastcc i64 @seconds_since_boot()
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %call106)
  %cmp107 = icmp slt i64 %50, %call106
  br i1 %cmp107, label %if.end103.out4_crit_edge, label %if.end110

if.end103.out4_crit_edge:                         ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #19
  br label %out4

if.end110:                                        ; preds = %if.end103
  %51 = ptrtoint ptr %ex_anon_uid to i32
  call void @__asan_load4_noabort(i32 %51)
  %.fca.0.load = load i32, ptr %ex_anon_uid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.fca.0.load)
  %cmp.i170.not = icmp eq i32 %.fca.0.load, -1
  br i1 %cmp.i170.not, label %if.end110.out4_crit_edge, label %if.end115

if.end110.out4_crit_edge:                         ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #19
  br label %out4

if.end115:                                        ; preds = %if.end110
  %52 = ptrtoint ptr %ex_anon_gid to i32
  call void @__asan_load4_noabort(i32 %52)
  %.fca.0.load145 = load i32, ptr %ex_anon_gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.fca.0.load145)
  %cmp.i171.not = icmp eq i32 %.fca.0.load145, -1
  br i1 %cmp.i171.not, label %if.end115.out4_crit_edge, label %if.end120

if.end115.out4_crit_edge:                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #19
  br label %out4

if.end120:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #19
  call void @nfsd4_setup_layout_type(ptr noundef nonnull %exp) #17
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.then35
  %call122 = call fastcc ptr @svc_export_lookup(ptr noundef nonnull %exp)
  %tobool123.not = icmp eq ptr %call122, null
  br i1 %tobool123.not, label %if.end121.out4_crit_edge, label %if.end125

if.end121.out4_crit_edge:                         ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #19
  br label %out4

if.end125:                                        ; preds = %if.end121
  %call126 = call fastcc ptr @svc_export_update(ptr noundef nonnull %exp, ptr noundef nonnull %call122)
  %tobool127.not = icmp eq ptr %call126, null
  br i1 %tobool127.not, label %if.end125.out4_crit_edge, label %if.then128

if.end125.out4_crit_edge:                         ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #19
  br label %out4

if.then128:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @trace_nfsd_export_update(ptr noundef nonnull %call126)
  call void @cache_flush() #17
  call fastcc void @exp_put(ptr noundef nonnull %call126)
  br label %out4

out4:                                             ; preds = %if.then128, %if.end125.out4_crit_edge, %if.end121.out4_crit_edge, %if.end115.out4_crit_edge, %if.end110.out4_crit_edge, %if.end103.out4_crit_edge, %while.end.out4_crit_edge, %if.end93.out4_crit_edge
  %err.2 = phi i32 [ 0, %if.then128 ], [ %call100, %while.end.out4_crit_edge ], [ 0, %if.end103.out4_crit_edge ], [ -22, %if.end115.out4_crit_edge ], [ -22, %if.end110.out4_crit_edge ], [ -12, %if.end121.out4_crit_edge ], [ -12, %if.end125.out4_crit_edge ], [ %err.0, %if.end93.out4_crit_edge ]
  %ex_fslocs131 = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 8
  call fastcc void @nfsd4_fslocs_free(ptr noundef %ex_fslocs131)
  %ex_uuid132 = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 7
  %53 = ptrtoint ptr %ex_uuid132 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ex_uuid132, align 4
  call void @kfree(ptr noundef %54) #17
  br label %out3

out3:                                             ; preds = %out4, %if.end53.out3_crit_edge, %if.end45.out3_crit_edge, %if.end41.out3_crit_edge, %lor.lhs.false.out3_crit_edge, %if.end31.out3_crit_edge, %get_expiry.exit.out3_crit_edge, %get_expiry.exit.thread
  %err.3 = phi i32 [ -22, %get_expiry.exit.out3_crit_edge ], [ %err.2, %out4 ], [ 0, %lor.lhs.false.out3_crit_edge ], [ %call42, %if.end41.out3_crit_edge ], [ %call50, %if.end45.out3_crit_edge ], [ %call66, %if.end53.out3_crit_edge ], [ %call32, %if.end31.out3_crit_edge ], [ -22, %get_expiry.exit.thread ]
  call void @path_put(ptr noundef %ex_path) #17
  br label %out1

out1:                                             ; preds = %out3, %if.end19.out1_crit_edge, %if.end14.out1_crit_edge
  %err.4 = phi i32 [ -22, %if.end14.out1_crit_edge ], [ %call20, %if.end19.out1_crit_edge ], [ %err.3, %out3 ]
  call void @auth_domain_put(ptr noundef nonnull %call11) #17
  br label %out

out:                                              ; preds = %out1, %if.end10.out_crit_edge, %if.end5.out_crit_edge
  %err.5 = phi i32 [ -22, %if.end5.out_crit_edge ], [ %err.4, %out1 ], [ -2, %if.end10.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.5, %out ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %an_int) #17
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %exp) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @svc_export_alloc() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 392) #23
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %ex_stats = getelementptr inbounds %struct.svc_export, ptr %call7.i, i32 0, i32 15
  %call.i = tail call i64 @ktime_get_seconds() #17
  %1 = ptrtoint ptr %ex_stats to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %call.i, ptr %ex_stats, align 8
  %counter.i = getelementptr inbounds %struct.svc_export, ptr %call7.i, i32 0, i32 15, i32 1
  %call1.i = tail call i32 @nfsd_percpu_counters_init(ptr noundef %counter.i, i32 noundef 3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call7.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then3 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @svc_export_match(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ex_client = getelementptr inbounds %struct.svc_export, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %ex_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ex_client, align 8
  %ex_client4 = getelementptr inbounds %struct.svc_export, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %ex_client4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ex_client4, align 8
  %cmp = icmp eq ptr %1, %3
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end

land.rhs:                                         ; preds = %entry
  %ex_path = getelementptr inbounds %struct.svc_export, ptr %a, i32 0, i32 3
  %ex_path5 = getelementptr inbounds %struct.svc_export, ptr %b, i32 0, i32 3
  %4 = ptrtoint ptr %ex_path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ex_path, align 4
  %6 = ptrtoint ptr %ex_path5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ex_path5, align 4
  %cmp.i = icmp eq ptr %5, %7
  br i1 %cmp.i, label %land.rhs.i, label %land.rhs.land.end_crit_edge

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end

land.rhs.i:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  %dentry.i = getelementptr inbounds %struct.svc_export, ptr %a, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dentry.i, align 4
  %dentry2.i = getelementptr inbounds %struct.svc_export, ptr %b, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry2.i, align 4
  %cmp3.i = icmp eq ptr %9, %11
  %phi.cast8 = zext i1 %cmp3.i to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs.i, %land.rhs.land.end_crit_edge, %entry.land.end_crit_edge
  %12 = phi i32 [ 0, %entry.land.end_crit_edge ], [ 0, %land.rhs.land.end_crit_edge ], [ %phi.cast8, %land.rhs.i ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_export_init(ptr noundef %cnew, ptr noundef %citem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ex_client = getelementptr inbounds %struct.svc_export, ptr %citem, i32 0, i32 1
  %0 = ptrtoint ptr %ex_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ex_client, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #17
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #17, !srcloc !230
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !231

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !226

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %.sink.i.i.i.i) #17
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %4 = ptrtoint ptr %ex_client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ex_client, align 8
  %ex_client5 = getelementptr inbounds %struct.svc_export, ptr %cnew, i32 0, i32 1
  %6 = ptrtoint ptr %ex_client5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %ex_client5, align 8
  %ex_path = getelementptr inbounds %struct.svc_export, ptr %cnew, i32 0, i32 3
  %ex_path6 = getelementptr inbounds %struct.svc_export, ptr %citem, i32 0, i32 3
  %7 = ptrtoint ptr %ex_path6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ex_path6, align 8
  %9 = ptrtoint ptr %ex_path to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %ex_path, align 8
  tail call void @path_get(ptr noundef %ex_path6) #17
  %ex_layout_types = getelementptr inbounds %struct.svc_export, ptr %cnew, i32 0, i32 11
  %10 = ptrtoint ptr %ex_layout_types to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ex_layout_types, align 8
  %ex_uuid = getelementptr inbounds %struct.svc_export, ptr %cnew, i32 0, i32 7
  %cd = getelementptr inbounds %struct.svc_export, ptr %citem, i32 0, i32 13
  %11 = call ptr @memset(ptr %ex_uuid, i32 0, i32 16)
  %12 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cd, align 8
  %cd10 = getelementptr inbounds %struct.svc_export, ptr %cnew, i32 0, i32 13
  %14 = ptrtoint ptr %cd10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %cd10, align 8
  %counter.i = getelementptr inbounds %struct.svc_export, ptr %cnew, i32 0, i32 15, i32 1
  tail call void @nfsd_percpu_counters_reset(ptr noundef %counter.i, i32 noundef 3) #17
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @export_update(ptr nocapture noundef writeonly %cnew, ptr nocapture noundef %citem) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ex_flags = getelementptr inbounds %struct.svc_export, ptr %citem, i32 0, i32 2
  %0 = ptrtoint ptr %ex_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ex_flags, align 4
  %ex_flags4 = getelementptr inbounds %struct.svc_export, ptr %cnew, i32 0, i32 2
  %2 = ptrtoint ptr %ex_flags4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %ex_flags4, align 4
  %ex_anon_uid = getelementptr inbounds %struct.svc_export, ptr %cnew, i32 0, i32 4
  %ex_anon_uid5 = getelementptr inbounds %struct.svc_export, ptr %citem, i32 0, i32 4
  %3 = ptrtoint ptr %ex_anon_uid5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ex_anon_uid5, align 8
  %5 = ptrtoint ptr %ex_anon_uid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ex_anon_uid, align 8
  %ex_anon_gid = getelementptr inbounds %struct.svc_export, ptr %cnew, i32 0, i32 5
  %ex_anon_gid6 = getelementptr inbounds %struct.svc_export, ptr %citem, i32 0, i32 5
  %6 = ptrtoint ptr %ex_anon_gid6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ex_anon_gid6, align 4
  %8 = ptrtoint ptr %ex_anon_gid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %ex_anon_gid, align 4
  %ex_fsid = getelementptr inbounds %struct.svc_export, ptr %citem, i32 0, i32 6
  %9 = ptrtoint ptr %ex_fsid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ex_fsid, align 8
  %ex_fsid7 = getelementptr inbounds %struct.svc_export, ptr %cnew, i32 0, i32 6
  %11 = ptrtoint ptr %ex_fsid7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ex_fsid7, align 8
  %ex_devid_map = getelementptr inbounds %struct.svc_export, ptr %citem, i32 0, i32 12
  %12 = ptrtoint ptr %ex_devid_map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ex_devid_map, align 4
  %ex_devid_map8 = getelementptr inbounds %struct.svc_export, ptr %cnew, i32 0, i32 12
  %14 = ptrtoint ptr %ex_devid_map8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %ex_devid_map8, align 4
  store ptr null, ptr %ex_devid_map, align 4
  %ex_uuid = getelementptr inbounds %struct.svc_export, ptr %citem, i32 0, i32 7
  %15 = ptrtoint ptr %ex_uuid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ex_uuid, align 4
  %ex_uuid10 = getelementptr inbounds %struct.svc_export, ptr %cnew, i32 0, i32 7
  %17 = ptrtoint ptr %ex_uuid10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %ex_uuid10, align 4
  store ptr null, ptr %ex_uuid, align 4
  %ex_fslocs = getelementptr inbounds %struct.svc_export, ptr %citem, i32 0, i32 8
  %locations = getelementptr inbounds %struct.svc_export, ptr %citem, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %locations to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %locations, align 4
  %ex_fslocs12 = getelementptr inbounds %struct.svc_export, ptr %cnew, i32 0, i32 8
  %locations13 = getelementptr inbounds %struct.svc_export, ptr %cnew, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %locations13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %locations13, align 4
  store ptr null, ptr %locations, align 4
  %21 = ptrtoint ptr %ex_fslocs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ex_fslocs, align 8
  %23 = ptrtoint ptr %ex_fslocs12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %ex_fslocs12, align 8
  store i32 0, ptr %ex_fslocs, align 8
  %migrated = getelementptr inbounds %struct.svc_export, ptr %citem, i32 0, i32 8, i32 2
  %24 = ptrtoint ptr %migrated to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %migrated, align 8
  %migrated23 = getelementptr inbounds %struct.svc_export, ptr %cnew, i32 0, i32 8, i32 2
  %26 = ptrtoint ptr %migrated23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %migrated23, align 8
  store i32 0, ptr %migrated, align 8
  %ex_layout_types = getelementptr inbounds %struct.svc_export, ptr %citem, i32 0, i32 11
  %27 = ptrtoint ptr %ex_layout_types to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ex_layout_types, align 8
  %ex_layout_types26 = getelementptr inbounds %struct.svc_export, ptr %cnew, i32 0, i32 11
  %29 = ptrtoint ptr %ex_layout_types26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ex_layout_types26, align 8
  %ex_nflavors = getelementptr inbounds %struct.svc_export, ptr %citem, i32 0, i32 9
  %30 = ptrtoint ptr %ex_nflavors to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ex_nflavors, align 4
  %ex_nflavors27 = getelementptr inbounds %struct.svc_export, ptr %cnew, i32 0, i32 9
  %32 = ptrtoint ptr %ex_nflavors27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %ex_nflavors27, align 4
  %arrayidx = getelementptr %struct.svc_export, ptr %cnew, i32 0, i32 10, i32 0
  %arrayidx29 = getelementptr %struct.svc_export, ptr %citem, i32 0, i32 10, i32 0
  %33 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx29, align 8
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx, align 8
  %arrayidx.1 = getelementptr %struct.svc_export, ptr %cnew, i32 0, i32 10, i32 1
  %arrayidx29.1 = getelementptr %struct.svc_export, ptr %citem, i32 0, i32 10, i32 1
  %36 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx29.1, align 8
  %38 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %arrayidx.1, align 8
  %arrayidx.2 = getelementptr %struct.svc_export, ptr %cnew, i32 0, i32 10, i32 2
  %arrayidx29.2 = getelementptr %struct.svc_export, ptr %citem, i32 0, i32 10, i32 2
  %39 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx29.2, align 8
  %41 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %arrayidx.2, align 8
  %arrayidx.3 = getelementptr %struct.svc_export, ptr %cnew, i32 0, i32 10, i32 3
  %arrayidx29.3 = getelementptr %struct.svc_export, ptr %citem, i32 0, i32 10, i32 3
  %42 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx29.3, align 8
  %44 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %arrayidx.3, align 8
  %arrayidx.4 = getelementptr %struct.svc_export, ptr %cnew, i32 0, i32 10, i32 4
  %arrayidx29.4 = getelementptr %struct.svc_export, ptr %citem, i32 0, i32 10, i32 4
  %45 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx29.4, align 8
  %47 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %arrayidx.4, align 8
  %arrayidx.5 = getelementptr %struct.svc_export, ptr %cnew, i32 0, i32 10, i32 5
  %arrayidx29.5 = getelementptr %struct.svc_export, ptr %citem, i32 0, i32 10, i32 5
  %48 = ptrtoint ptr %arrayidx29.5 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx29.5, align 8
  %50 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %arrayidx.5, align 8
  %arrayidx.6 = getelementptr %struct.svc_export, ptr %cnew, i32 0, i32 10, i32 6
  %arrayidx29.6 = getelementptr %struct.svc_export, ptr %citem, i32 0, i32 10, i32 6
  %51 = ptrtoint ptr %arrayidx29.6 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx29.6, align 8
  %53 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %arrayidx.6, align 8
  %arrayidx.7 = getelementptr %struct.svc_export, ptr %cnew, i32 0, i32 10, i32 7
  %arrayidx29.7 = getelementptr %struct.svc_export, ptr %citem, i32 0, i32 10, i32 7
  %54 = ptrtoint ptr %arrayidx29.7 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx29.7, align 8
  %56 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %arrayidx.7, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @auth_domain_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfsd4_fslocs_free(ptr nocapture noundef %fsloc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %locations1 = getelementptr inbounds %struct.nfsd4_fs_locations, ptr %fsloc, i32 0, i32 1
  %0 = ptrtoint ptr %locations1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %locations1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %fsloc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fsloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not = icmp eq i32 %3, 0
  br i1 %cmp13.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nfsd4_fs_location, ptr %1, i32 %i.014
  %path = getelementptr %struct.nfsd4_fs_location, ptr %1, i32 %i.014, i32 1
  %4 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %path, align 4
  tail call void @kfree(ptr noundef %5) #17
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %7) #17
  %inc = add nuw i32 %i.014, 1
  %8 = ptrtoint ptr %fsloc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fsloc, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #17
  %10 = ptrtoint ptr %locations1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %locations1, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_percpu_counters_destroy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunrpc_cache_pipe_upcall(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qword_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qword_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @auth_domain_find(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @get_expiry(ptr noundef %bpp) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [50 x i8], align 1
  %ll.i = alloca i64, align 8
  %boot = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %boot) #17
  %0 = call ptr @memset(ptr %boot, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i) #17
  %1 = call ptr @memset(ptr %buf.i, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ll.i) #17
  %2 = ptrtoint ptr %ll.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %ll.i, align 8, !annotation !223
  %call.i = call i32 @qword_get(ptr noundef %bpp, ptr noundef nonnull %buf.i, i32 noundef 50) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %3 = icmp slt i32 %call.i, 1
  br i1 %3, label %entry.get_time.exit.thread_crit_edge, label %if.end3.i

entry.get_time.exit.thread_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_time.exit.thread

if.end3.i:                                        ; preds = %entry
  %call5.i = call i32 @kstrtoll(ptr noundef nonnull %buf.i, i32 noundef 0, ptr noundef nonnull %ll.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end3.i.get_time.exit.thread_crit_edge

if.end3.i.get_time.exit.thread_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_time.exit.thread

get_time.exit.thread:                             ; preds = %if.end3.i.get_time.exit.thread_crit_edge, %entry.get_time.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ll.i) #17
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #17
  br label %cleanup

if.end:                                           ; preds = %if.end3.i
  %4 = ptrtoint ptr %ll.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ll.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ll.i) #17
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp = icmp slt i64 %5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @getboottime64(ptr noundef nonnull %boot) #17
  %6 = ptrtoint ptr %boot to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %boot, align 8
  %sub = sub i64 %5, %7
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %get_time.exit.thread
  %retval.0 = phi i64 [ %sub, %if.end2 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %get_time.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot) #17
  ret i64 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_int(ptr noundef %bpp, ptr nocapture noundef writeonly %anint) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [50 x i8], align 1
  %ep = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf) #17
  %0 = call ptr @memset(ptr %buf, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep) #17
  %1 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep, align 4, !annotation !223
  %call = call i32 @qword_get(ptr noundef %bpp, ptr noundef nonnull %buf, i32 noundef 50) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call5 = call i32 @simple_strtol(ptr noundef nonnull %buf, ptr noundef nonnull %ep, i32 noundef 0) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %anint to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call5, ptr %anint, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep) #17
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsloc_parse(ptr noundef %mesg, ptr noundef %buf, ptr noundef %fsloc) unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [50 x i8], align 1
  %migrated = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %migrated) #17
  %0 = ptrtoint ptr %migrated to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %migrated, align 4, !annotation !223
  %locations = getelementptr inbounds %struct.nfsd4_fs_locations, ptr %fsloc, i32 0, i32 1
  %1 = ptrtoint ptr %locations to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %locations, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i) #17
  %3 = call ptr @memset(ptr %buf.i, i32 255, i32 50)
  %call.i = call i32 @qword_get(ptr noundef %mesg, ptr noundef nonnull %buf.i, i32 noundef 50) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.get_uint.exit.thread_crit_edge, label %if.end.i

if.end.get_uint.exit.thread_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_uint.exit.thread

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.i, label %if.end.i.get_uint.exit.thread_crit_edge, label %if.end3.i

if.end.i.get_uint.exit.thread_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_uint.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @kstrtouint(ptr noundef nonnull %buf.i, i32 noundef 0, ptr noundef %fsloc) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end3, label %if.end3.i.get_uint.exit.thread_crit_edge

if.end3.i.get_uint.exit.thread_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_uint.exit.thread

get_uint.exit.thread:                             ; preds = %if.end3.i.get_uint.exit.thread_crit_edge, %if.end.i.get_uint.exit.thread_crit_edge, %if.end.get_uint.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end3.i.get_uint.exit.thread_crit_edge ], [ -2, %if.end.i.get_uint.exit.thread_crit_edge ], [ -22, %if.end.get_uint.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #17
  br label %cleanup

if.end3:                                          ; preds = %if.end3.i
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #17
  %4 = ptrtoint ptr %fsloc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fsloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %5)
  %cmp = icmp ugt i32 %5, 128
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8 = icmp eq i32 %5, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end7.i.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end6
  %6 = shl nuw nsw i32 %5, 3
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #25
  %7 = ptrtoint ptr %locations to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8.i.i, ptr %locations, align 4
  %tobool15.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool15.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  %8 = ptrtoint ptr %fsloc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fsloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1992.not = icmp eq i32 %9, 0
  br i1 %cmp1992.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond:                                         ; preds = %if.end35
  %inc = add nuw i32 %i.093, 1
  %10 = ptrtoint ptr %fsloc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fsloc, align 4
  %cmp19 = icmp ult i32 %inc, %11
  br i1 %cmp19, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.093 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call20 = call i32 @qword_get(ptr noundef %mesg, ptr noundef %buf, i32 noundef 4096) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %for.body.out_free_allthread-pre-split_crit_edge, label %if.end23

for.body.out_free_allthread-pre-split_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free_allthread-pre-split

if.end23:                                         ; preds = %for.body
  %call24 = call noalias ptr @kstrdup(ptr noundef %buf, i32 noundef 3264) #17
  %12 = ptrtoint ptr %locations to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %locations, align 4
  %arrayidx = getelementptr %struct.nfsd4_fs_location, ptr %13, i32 %i.093
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call24, ptr %arrayidx, align 4
  %15 = load ptr, ptr %locations, align 4
  %arrayidx27 = getelementptr %struct.nfsd4_fs_location, ptr %15, i32 %i.093
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx27, align 4
  %tobool29.not = icmp eq ptr %17, null
  br i1 %tobool29.not, label %if.end23.out_free_all_crit_edge, label %if.end31

if.end23.out_free_all_crit_edge:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free_all

if.end31:                                         ; preds = %if.end23
  %call32 = call i32 @qword_get(ptr noundef %mesg, ptr noundef %buf, i32 noundef 4096) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 1
  br i1 %cmp33, label %if.end31.out_free_allthread-pre-split_crit_edge, label %if.end35

if.end31.out_free_allthread-pre-split_crit_edge:  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free_allthread-pre-split

if.end35:                                         ; preds = %if.end31
  %call36 = call noalias ptr @kstrdup(ptr noundef %buf, i32 noundef 3264) #17
  %18 = ptrtoint ptr %locations to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %locations, align 4
  %path = getelementptr %struct.nfsd4_fs_location, ptr %19, i32 %i.093, i32 1
  %20 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call36, ptr %path, align 4
  %21 = load ptr, ptr %locations, align 4
  %path41 = getelementptr %struct.nfsd4_fs_location, ptr %21, i32 %i.093, i32 1
  %22 = ptrtoint ptr %path41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %path41, align 4
  %tobool42.not = icmp eq ptr %23, null
  br i1 %tobool42.not, label %if.end35.out_free_all_crit_edge, label %for.cond

if.end35.out_free_all_crit_edge:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free_all

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call45 = call fastcc i32 @get_int(ptr noundef %mesg, ptr noundef nonnull %migrated)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %for.end.out_free_allthread-pre-split_crit_edge

for.end.out_free_allthread-pre-split_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free_allthread-pre-split

if.end48:                                         ; preds = %for.end
  %24 = ptrtoint ptr %migrated to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %migrated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %26 = icmp ugt i32 %25, 1
  br i1 %26, label %if.end48.out_free_allthread-pre-split_crit_edge, label %if.end52

if.end48.out_free_allthread-pre-split_crit_edge:  ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free_allthread-pre-split

if.end52:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  %migrated53 = getelementptr inbounds %struct.nfsd4_fs_locations, ptr %fsloc, i32 0, i32 2
  %27 = ptrtoint ptr %migrated53 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %migrated53, align 4
  br label %cleanup

out_free_allthread-pre-split:                     ; preds = %if.end48.out_free_allthread-pre-split_crit_edge, %for.end.out_free_allthread-pre-split_crit_edge, %if.end31.out_free_allthread-pre-split_crit_edge, %for.body.out_free_allthread-pre-split_crit_edge
  %err.0.ph = phi i32 [ -22, %if.end48.out_free_allthread-pre-split_crit_edge ], [ %call45, %for.end.out_free_allthread-pre-split_crit_edge ], [ -22, %if.end31.out_free_allthread-pre-split_crit_edge ], [ -22, %for.body.out_free_allthread-pre-split_crit_edge ]
  %28 = ptrtoint ptr %locations to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load ptr, ptr %locations, align 4
  br label %out_free_all

out_free_all:                                     ; preds = %out_free_allthread-pre-split, %if.end35.out_free_all_crit_edge, %if.end23.out_free_all_crit_edge
  %29 = phi ptr [ %.pr, %out_free_allthread-pre-split ], [ %15, %if.end23.out_free_all_crit_edge ], [ %21, %if.end35.out_free_all_crit_edge ]
  %err.0 = phi i32 [ %err.0.ph, %out_free_allthread-pre-split ], [ -12, %if.end23.out_free_all_crit_edge ], [ -12, %if.end35.out_free_all_crit_edge ]
  %tobool.not.i86 = icmp eq ptr %29, null
  br i1 %tobool.not.i86, label %out_free_all.cleanup_crit_edge, label %for.cond.preheader.i

out_free_all.cleanup_crit_edge:                   ; preds = %out_free_all
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader.i:                             ; preds = %out_free_all
  %30 = ptrtoint ptr %fsloc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fsloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp13.not.i = icmp eq i32 %31, 0
  br i1 %cmp13.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nfsd4_fs_location, ptr %29, i32 %i.014.i
  %path.i = getelementptr %struct.nfsd4_fs_location, ptr %29, i32 %i.014.i, i32 1
  %32 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %path.i, align 4
  call void @kfree(ptr noundef %33) #17
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  call void @kfree(ptr noundef %35) #17
  %inc.i = add nuw i32 %i.014.i, 1
  %36 = ptrtoint ptr %fsloc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fsloc, align 4
  %cmp.i87 = icmp ult i32 %inc.i, %37
  br i1 %cmp.i87, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  call void @kfree(ptr noundef nonnull %29) #17
  %38 = ptrtoint ptr %locations to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %locations, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %out_free_all.cleanup_crit_edge, %if.end52, %if.end7.i.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %get_uint.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end52 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ %retval.0.i.ph, %get_uint.exit.thread ], [ %err.0, %out_free_all.cleanup_crit_edge ], [ %err.0, %for.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %migrated) #17
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfsd_uuid_parse(ptr noundef %mesg, ptr noundef %buf, ptr nocapture noundef %puuid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %puuid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %puuid, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @qword_get(ptr noundef %mesg, ptr noundef %buf, i32 noundef 4096) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call)
  %cmp.not = icmp eq i32 %call, 16
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call3 = tail call ptr @kmemdup(ptr noundef %buf, i32 noundef 16, i32 noundef 3264) #17
  %2 = ptrtoint ptr %puuid to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %puuid, align 4
  %cmp4 = icmp eq ptr %call3, null
  %. = select i1 %cmp4, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %., %if.end2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @secinfo_parse(ptr noundef %mesg, ptr noundef %exp) unnamed_addr #0 align 64 {
entry:
  %buf.i12 = alloca [50 x i8], align 1
  %buf.i1 = alloca [50 x i8], align 1
  %buf.i = alloca [50 x i8], align 1
  %listsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %listsize) #17
  %0 = ptrtoint ptr %listsize to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %listsize, align 4, !annotation !223
  %ex_nflavors = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 9
  %1 = ptrtoint ptr %ex_nflavors to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ex_nflavors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i) #17
  %3 = call ptr @memset(ptr %buf.i, i32 255, i32 50)
  %call.i = call i32 @qword_get(ptr noundef %mesg, ptr noundef nonnull %buf.i, i32 noundef 50) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.get_uint.exit.thread_crit_edge, label %if.end.i

if.end.get_uint.exit.thread_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_uint.exit.thread

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.i, label %if.end.i.get_uint.exit.thread_crit_edge, label %if.end3.i

if.end.i.get_uint.exit.thread_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_uint.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @kstrtouint(ptr noundef nonnull %buf.i, i32 noundef 0, ptr noundef nonnull %listsize) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end3, label %if.end3.i.get_uint.exit.thread_crit_edge

if.end3.i.get_uint.exit.thread_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_uint.exit.thread

get_uint.exit.thread:                             ; preds = %if.end3.i.get_uint.exit.thread_crit_edge, %if.end.i.get_uint.exit.thread_crit_edge, %if.end.get_uint.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end3.i.get_uint.exit.thread_crit_edge ], [ -2, %if.end.i.get_uint.exit.thread_crit_edge ], [ -22, %if.end.get_uint.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #17
  br label %cleanup

if.end3:                                          ; preds = %if.end3.i
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #17
  %4 = ptrtoint ptr %listsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %listsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp = icmp ugt i32 %5, 8
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %ex_flavors = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 10
  %6 = ptrtoint ptr %listsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %listsize, align 4
  %add.ptr34 = getelementptr %struct.exp_flavor_info, ptr %ex_flavors, i32 %7
  %cmp835 = icmp ult ptr %ex_flavors, %add.ptr34
  br i1 %cmp835, label %for.body.lr.ph, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %ex_flags = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %if.end16
  %incdec.ptr = getelementptr %struct.exp_flavor_info, ptr %f.036, i32 1
  %8 = ptrtoint ptr %listsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %listsize, align 4
  %add.ptr = getelementptr %struct.exp_flavor_info, ptr %ex_flavors, i32 %9
  %cmp8 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp8, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %f.036 = phi ptr [ %ex_flavors, %for.body.lr.ph ], [ %incdec.ptr, %for.cond.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i1) #17
  %10 = call ptr @memset(ptr %buf.i1, i32 255, i32 50)
  %call.i2 = call i32 @qword_get(ptr noundef %mesg, ptr noundef nonnull %buf.i1, i32 noundef 50) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp.i3 = icmp slt i32 %call.i2, 0
  br i1 %cmp.i3, label %for.body.get_uint.exit11.thread_crit_edge, label %if.end.i5

for.body.get_uint.exit11.thread_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_uint.exit11.thread

if.end.i5:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp1.i4 = icmp eq i32 %call.i2, 0
  br i1 %cmp1.i4, label %if.end.i5.get_uint.exit11.thread_crit_edge, label %if.end3.i9

if.end.i5.get_uint.exit11.thread_crit_edge:       ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_uint.exit11.thread

if.end3.i9:                                       ; preds = %if.end.i5
  %call5.i6 = call i32 @kstrtouint(ptr noundef nonnull %buf.i1, i32 noundef 0, ptr noundef %f.036) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i6)
  %tobool.not.i7 = icmp eq i32 %call5.i6, 0
  br i1 %tobool.not.i7, label %if.end12, label %if.end3.i9.get_uint.exit11.thread_crit_edge

if.end3.i9.get_uint.exit11.thread_crit_edge:      ; preds = %if.end3.i9
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_uint.exit11.thread

get_uint.exit11.thread:                           ; preds = %if.end3.i9.get_uint.exit11.thread_crit_edge, %if.end.i5.get_uint.exit11.thread_crit_edge, %for.body.get_uint.exit11.thread_crit_edge
  %retval.0.i10.ph = phi i32 [ -22, %if.end3.i9.get_uint.exit11.thread_crit_edge ], [ -2, %if.end.i5.get_uint.exit11.thread_crit_edge ], [ -22, %for.body.get_uint.exit11.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i1) #17
  br label %cleanup

if.end12:                                         ; preds = %if.end3.i9
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i1) #17
  %flags = getelementptr inbounds %struct.exp_flavor_info, ptr %f.036, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i12) #17
  %11 = call ptr @memset(ptr %buf.i12, i32 255, i32 50)
  %call.i13 = call i32 @qword_get(ptr noundef %mesg, ptr noundef nonnull %buf.i12, i32 noundef 50) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %cmp.i14 = icmp slt i32 %call.i13, 0
  br i1 %cmp.i14, label %if.end12.get_uint.exit22.thread_crit_edge, label %if.end.i16

if.end12.get_uint.exit22.thread_crit_edge:        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_uint.exit22.thread

if.end.i16:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %cmp1.i15 = icmp eq i32 %call.i13, 0
  br i1 %cmp1.i15, label %if.end.i16.get_uint.exit22.thread_crit_edge, label %if.end3.i20

if.end.i16.get_uint.exit22.thread_crit_edge:      ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_uint.exit22.thread

if.end3.i20:                                      ; preds = %if.end.i16
  %call5.i17 = call i32 @kstrtouint(ptr noundef nonnull %buf.i12, i32 noundef 0, ptr noundef %flags) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i17)
  %tobool.not.i18 = icmp eq i32 %call5.i17, 0
  br i1 %tobool.not.i18, label %if.end16, label %if.end3.i20.get_uint.exit22.thread_crit_edge

if.end3.i20.get_uint.exit22.thread_crit_edge:     ; preds = %if.end3.i20
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_uint.exit22.thread

get_uint.exit22.thread:                           ; preds = %if.end3.i20.get_uint.exit22.thread_crit_edge, %if.end.i16.get_uint.exit22.thread_crit_edge, %if.end12.get_uint.exit22.thread_crit_edge
  %retval.0.i21.ph = phi i32 [ -22, %if.end3.i20.get_uint.exit22.thread_crit_edge ], [ -2, %if.end.i16.get_uint.exit22.thread_crit_edge ], [ -22, %if.end12.get_uint.exit22.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i12) #17
  br label %cleanup

if.end16:                                         ; preds = %if.end3.i20
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i12) #17
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %14 = ptrtoint ptr %ex_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ex_flags, align 4
  %xor = xor i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %xor)
  %tobool18.not = icmp ult i32 %xor, 16
  br i1 %tobool18.not, label %for.cond, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end5.for.end_crit_edge
  %.lcssa = phi i32 [ %7, %if.end5.for.end_crit_edge ], [ %9, %for.cond.for.end_crit_edge ]
  %16 = ptrtoint ptr %ex_nflavors to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.lcssa, ptr %ex_nflavors, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end16.cleanup_crit_edge, %get_uint.exit22.thread, %get_uint.exit11.thread, %if.end3.cleanup_crit_edge, %get_uint.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %retval.0.i.ph, %get_uint.exit.thread ], [ %retval.0.i10.ph, %get_uint.exit11.thread ], [ %retval.0.i21.ph, %get_uint.exit22.thread ], [ -22, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %listsize) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_export(ptr nocapture noundef readonly %path, ptr nocapture noundef %flags, ptr noundef readnone %uuid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 8
  %6 = and i16 %5, -4096
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.103)
  switch i16 %6, label %entry.cleanup_crit_edge [
    i16 16384, label %entry.if.end_crit_edge
    i16 -24576, label %entry.if.end_crit_edge103
    i16 -32768, label %entry.if.end_crit_edge104
  ]

entry.if.end_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

entry.if.end_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge103, %entry.if.end_crit_edge104
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and13 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not = icmp eq i32 %and13, 0
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %if.then14

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %or = or i32 %9, 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %flags, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end.if.end15_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_type = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_type, align 32
  %fs_flags = getelementptr inbounds %struct.file_system_type, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %fs_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fs_flags, align 4
  %and16 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %if.end15.if.end33_crit_edge

if.end15.if.end33_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33

land.lhs.true18:                                  ; preds = %if.end15
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and19 = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %cmp22 = icmp eq ptr %uuid, null
  %or.cond = and i1 %cmp22, %tobool20.not
  br i1 %or.cond, label %do.body, label %land.lhs.true18.if.end33_crit_edge

land.lhs.true18.if.end33_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33

do.body:                                          ; preds = %land.lhs.true18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %19 = load i32, ptr @nfsd_debug, align 4
  %and25 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #20
  br label %cleanup

if.end33:                                         ; preds = %land.lhs.true18.if.end33_crit_edge, %if.end15.if.end33_crit_edge
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 9
  %20 = ptrtoint ptr %s_export_op to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_export_op, align 16
  %tobool35.not = icmp eq ptr %21, null
  br i1 %tobool35.not, label %if.end33.do.body40_crit_edge, label %lor.lhs.false

if.end33.do.body40_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body40

lor.lhs.false:                                    ; preds = %if.end33
  %fh_to_dentry = getelementptr inbounds %struct.export_operations, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %fh_to_dentry to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fh_to_dentry, align 4
  %tobool38.not = icmp eq ptr %23, null
  br i1 %tobool38.not, label %lor.lhs.false.do.body40_crit_edge, label %if.end52

lor.lhs.false.do.body40_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body40

do.body40:                                        ; preds = %lor.lhs.false.do.body40_crit_edge, %if.end33.do.body40_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %24 = load i32, ptr @nfsd_debug, align 4
  %and41 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %do.body40.cleanup_crit_edge, label %do.end46

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end46:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #19
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #20
  br label %cleanup

if.end52:                                         ; preds = %lor.lhs.false
  %25 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %path, align 4
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !239
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mnt_sb.i, align 4
  %s_user_ns.i = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 53
  %31 = ptrtoint ptr %s_user_ns.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_user_ns.i, align 8
  %cmp.i.not = icmp eq ptr %28, %32
  br i1 %cmp.i.not, label %if.end67, label %do.body55

do.body55:                                        ; preds = %if.end52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %33 = load i32, ptr @nfsd_debug, align 4
  %and56 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body55.cleanup_crit_edge, label %do.end61

do.body55.cleanup_crit_edge:                      ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end61:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #19
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #20
  br label %cleanup

if.end67:                                         ; preds = %if.end52
  %34 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb, align 4
  %s_export_op69 = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %s_export_op69 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_export_op69, align 16
  %flags70 = getelementptr inbounds %struct.export_operations, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %flags70 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags70, align 4
  %and71 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end67.cleanup_crit_edge, label %land.lhs.true73

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true73:                                  ; preds = %if.end67
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  %and74 = and i32 %41, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %do.body77, label %land.lhs.true73.cleanup_crit_edge

land.lhs.true73.cleanup_crit_edge:                ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body77:                                        ; preds = %land.lhs.true73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %42 = load i32, ptr @nfsd_debug, align 4
  %and78 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %do.body77.cleanup_crit_edge, label %do.end83

do.body77.cleanup_crit_edge:                      ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end83:                                         ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #19
  %s_type86 = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 5
  %43 = ptrtoint ptr %s_type86 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_type86, align 32
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.70, ptr noundef %46) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end83, %do.body77.cleanup_crit_edge, %land.lhs.true73.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %do.end61, %do.body55.cleanup_crit_edge, %do.end46, %do.body40.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -20, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end46 ], [ -22, %do.body40.cleanup_crit_edge ], [ -22, %do.end61 ], [ -22, %do.body55.cleanup_crit_edge ], [ -22, %do.end83 ], [ -22, %do.body77.cleanup_crit_edge ], [ 0, %land.lhs.true73.cleanup_crit_edge ], [ 0, %if.end67.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @seconds_since_boot() unnamed_addr #2 align 64 {
entry:
  %boot = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %boot) #17
  %0 = call ptr @memset(ptr %boot, i32 255, i32 16)
  call void @getboottime64(ptr noundef nonnull %boot) #17
  %call = call i64 @ktime_get_real_seconds() #17
  %1 = ptrtoint ptr %boot to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %boot, align 8
  %sub = sub i64 %call, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot) #17
  ret i64 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_setup_layout_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @svc_export_update(ptr noundef %new, ptr noundef %old) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ex_client.i = getelementptr inbounds %struct.svc_export, ptr %old, i32 0, i32 1
  %0 = ptrtoint ptr %ex_client.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ex_client.i, align 8
  %2 = ptrtoint ptr %1 to i32
  %mul.i.i.i.i = mul i32 %2, 1640531527
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %old, i32 0, i32 3
  %dentry.i = getelementptr inbounds %struct.svc_export, ptr %old, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dentry.i, align 4
  %5 = ptrtoint ptr %4 to i32
  %mul.i.i.i9.i = mul i32 %5, 1640531527
  %shr.i.i13.i = xor i32 %mul.i.i.i9.i, %mul.i.i.i.i
  %6 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ex_path.i, align 8
  %8 = ptrtoint ptr %7 to i32
  %mul.i.i.i11.i = mul i32 %8, 1640531527
  %xor14.i = xor i32 %shr.i.i13.i, %mul.i.i.i11.i
  %xor4.i = lshr i32 %xor14.i, 24
  %cd = getelementptr inbounds %struct.svc_export, ptr %old, i32 0, i32 13
  %9 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cd, align 8
  %call2 = tail call ptr @sunrpc_cache_update(ptr noundef %10, ptr noundef %new, ptr noundef %old, i32 noundef %xor4.i) #17
  ret ptr %call2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_export_update(ptr noundef %key) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_export_update, i32 0, i32 1), ptr blockaddress(@trace_nfsd_export_update, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !232

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !226

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !213) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !240
  %call42 = tail call i32 @__traceiter_nfsd_export_update(ptr noundef null, ptr noundef %key) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !241
  %13 = tail call i32 @llvm.read_register.i32(metadata !213) #17
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !226

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !213) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !235
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_export_update, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_export_update, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_export_update.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_nfsd_export_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 304, ptr noundef nonnull @.str.14) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !236
  %31 = tail call i32 @llvm.read_register.i32(metadata !213) #17
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
declare dso_local void @cache_flush() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @getboottime64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunrpc_cache_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_export_update(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_percpu_counters_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_percpu_counters_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @expkey_put(ptr noundef %ref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ref, i32 -24
  %flags = getelementptr i8, ptr %ref, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %ek_path = getelementptr i8, ptr %ref, i32 40
  tail call void @path_put(ptr noundef %ek_path) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ek_client = getelementptr i8, ptr %ref, i32 8
  %5 = ptrtoint ptr %ek_client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ek_client, align 8
  tail call void @auth_domain_put(ptr noundef %6) #17
  %tobool5.not = icmp eq ptr %add.ptr, null
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %do.end

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %ek_rcu = getelementptr i8, ptr %ref, i32 48
  tail call void @kvfree_call_rcu(ptr noundef %ek_rcu, ptr noundef nonnull inttoptr (i32 72 to ptr)) #17
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @expkey_upcall(ptr noundef %cd, ptr noundef %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sunrpc_cache_pipe_upcall(ptr noundef %cd, ptr noundef %h) #17
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @expkey_request(ptr nocapture noundef readnone %cd, ptr noundef %h, ptr noundef %bpp, ptr noundef %blen) #0 align 64 {
entry:
  %type = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %type) #17
  %ek_client = getelementptr inbounds %struct.svc_expkey, ptr %h, i32 0, i32 1
  %0 = call ptr @memset(ptr %type, i32 255, i32 5)
  %1 = ptrtoint ptr %ek_client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ek_client, align 8
  %name = getelementptr inbounds %struct.auth_domain, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  tail call void @qword_add(ptr noundef %bpp, ptr noundef %blen, ptr noundef %4) #17
  %ek_fsidtype = getelementptr inbounds %struct.svc_expkey, ptr %h, i32 0, i32 2
  %5 = ptrtoint ptr %ek_fsidtype to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ek_fsidtype, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %type, i32 noundef 5, ptr noundef nonnull @.str.81, i32 noundef %6)
  call void @qword_add(ptr noundef %bpp, ptr noundef %blen, ptr noundef nonnull %type) #17
  %7 = ptrtoint ptr %ek_fsidtype to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ek_fsidtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %9 = icmp ult i32 %8, 8
  br i1 %9, label %switch.lookup, label %entry.key_len.exit_crit_edge

entry.key_len.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %key_len.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.expkey_request, i32 0, i32 %8
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %key_len.exit

key_len.exit:                                     ; preds = %switch.lookup, %entry.key_len.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.key_len.exit_crit_edge ]
  %ek_fsid = getelementptr inbounds %struct.svc_expkey, ptr %h, i32 0, i32 3
  call void @qword_addhex(ptr noundef %bpp, ptr noundef %blen, ptr noundef %ek_fsid, i32 noundef %retval.0.i) #17
  %11 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bpp, align 4
  %arrayidx = getelementptr i8, ptr %12, i32 -1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 10, ptr %arrayidx, align 1
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %type) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @expkey_parse(ptr noundef %cd, ptr noundef %mesg, i32 noundef %mlen) #0 align 64 {
entry:
  %mesg.addr = alloca ptr, align 4
  %ep = alloca ptr, align 4
  %key = alloca %struct.svc_expkey, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mesg.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mesg, ptr %mesg.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep) #17
  %1 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %key) #17
  %2 = call ptr @memset(ptr %key, i32 255, i32 80)
  %sub = add i32 %mlen, -1
  %arrayidx = getelementptr i8, ptr %mesg, i32 %sub
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %4)
  %cmp.not = icmp eq i8 %4, 10
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 4096) #23
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.if.end138_crit_edge, label %if.end5

if.end.if.end138_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end138

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %call7.i, i32 noundef 4096) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %if.end5.if.end138_crit_edge, label %if.end10

if.end5.if.end138_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end138

if.end10:                                         ; preds = %if.end5
  %call11 = call ptr @auth_domain_find(ptr noundef nonnull %call7.i) #17
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.if.end138_crit_edge, label %do.body

if.end10.if.end138_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end138

do.body:                                          ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %7 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %do.body.do.end21_crit_edge, label %do.end

do.body.do.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end21

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull %call7.i) #20
  br label %do.end21

do.end21:                                         ; preds = %do.end, %do.body.do.end21_crit_edge
  %call22 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %call7.i, i32 noundef 4096) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 1
  br i1 %cmp23, label %do.end21.if.then137_crit_edge, label %if.end26

do.end21.if.then137_crit_edge:                    ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then137

if.end26:                                         ; preds = %do.end21
  %call27 = call i32 @simple_strtoul(ptr noundef nonnull %call7.i, ptr noundef nonnull %ep, i32 noundef 10) #17
  %8 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool28.not = icmp eq i8 %11, 0
  br i1 %tobool28.not, label %do.body31, label %if.end26.if.then137_crit_edge

if.end26.if.then137_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then137

do.body31:                                        ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %12 = load i32, ptr @nfsd_debug, align 4
  %and32 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body31.do.end42_crit_edge, label %do.end37

do.body31.do.end42_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end42

do.end37:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #19
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %call27) #20
  br label %do.end42

do.end42:                                         ; preds = %do.end37, %do.body31.do.end42_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call27)
  %switch = icmp ult i32 %call27, 8
  br i1 %switch, label %if.end47, label %do.end42.if.then137_crit_edge

do.end42.if.then137_crit_edge:                    ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then137

if.end47:                                         ; preds = %do.end42
  %call48 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %call7.i, i32 noundef 4096) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 1
  br i1 %cmp49, label %if.end47.if.then137_crit_edge, label %do.body53

if.end47.if.then137_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then137

do.body53:                                        ; preds = %if.end47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %13 = load i32, ptr @nfsd_debug, align 4
  %and54 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.body53.do.end64_crit_edge, label %do.end59

do.body53.do.end64_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end64

do.end59:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #19
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %call48) #20
  br label %do.end64

do.end64:                                         ; preds = %do.end59, %do.body53.do.end64_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call27)
  %14 = icmp ult i32 %call27, 8
  br i1 %14, label %switch.lookup, label %do.end64.if.then137_crit_edge

do.end64.if.then137_crit_edge:                    ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then137

switch.lookup:                                    ; preds = %do.end64
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.expkey_parse, i32 0, i32 %call27
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call48, i32 %switch.load)
  %cmp66.not = icmp eq i32 %call48, %switch.load
  br i1 %cmp66.not, label %if.end69, label %switch.lookup.if.then137_crit_edge

switch.lookup.if.then137_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then137

if.end69:                                         ; preds = %switch.lookup
  %flags = getelementptr inbounds %struct.cache_head, ptr %key, i32 0, i32 4
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %flags, align 4
  %call70 = call fastcc i64 @get_expiry(ptr noundef nonnull %mesg.addr)
  %expiry_time = getelementptr inbounds %struct.cache_head, ptr %key, i32 0, i32 1
  %17 = ptrtoint ptr %expiry_time to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call70, ptr %expiry_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call70)
  %cmp74 = icmp eq i64 %call70, 0
  br i1 %cmp74, label %if.end69.if.then137_crit_edge, label %if.end77

if.end69.if.then137_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then137

if.end77:                                         ; preds = %if.end69
  %ek_client = getelementptr inbounds %struct.svc_expkey, ptr %key, i32 0, i32 1
  %18 = ptrtoint ptr %ek_client to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call11, ptr %ek_client, align 8
  %ek_fsidtype = getelementptr inbounds %struct.svc_expkey, ptr %key, i32 0, i32 2
  %19 = ptrtoint ptr %ek_fsidtype to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call27, ptr %ek_fsidtype, align 4
  %ek_fsid = getelementptr inbounds %struct.svc_expkey, ptr %key, i32 0, i32 3
  %20 = call ptr @memcpy(ptr %ek_fsid, ptr %call7.i, i32 %call48)
  %call78 = call fastcc ptr @svc_expkey_lookup(ptr noundef %cd, ptr noundef nonnull %key)
  %tobool79.not = icmp eq ptr %call78, null
  br i1 %tobool79.not, label %if.end77.if.then137_crit_edge, label %if.end81

if.end77.if.then137_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then137

if.end81:                                         ; preds = %if.end77
  %call82 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %call7.i, i32 noundef 4096) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.end81.if.then133_crit_edge, label %do.body87

if.end81.if.then133_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then133

do.body87:                                        ; preds = %if.end81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %21 = load i32, ptr @nfsd_debug, align 4
  %and88 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %do.body87.do.end98_crit_edge, label %do.end93

do.body87.do.end98_crit_edge:                     ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end98

do.end93:                                         ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #19
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull %call7.i) #20
  br label %do.end98

do.end98:                                         ; preds = %do.end93, %do.body87.do.end98_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp99 = icmp eq i32 %call82, 0
  br i1 %cmp99, label %if.then101, label %if.else108

if.then101:                                       ; preds = %do.end98
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #17
  %call104 = call fastcc ptr @svc_expkey_update(ptr noundef %cd, ptr noundef nonnull %key, ptr noundef nonnull %call78)
  %tobool105.not = icmp eq ptr %call104, null
  br i1 %tobool105.not, label %out.thread209, label %out.thread213

out.thread209:                                    ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #19
  call void @cache_flush() #17
  br label %if.then137

out.thread213:                                    ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @trace_nfsd_expkey_update(ptr noundef nonnull %call104, ptr noundef null)
  call void @cache_flush() #17
  br label %if.then133

if.else108:                                       ; preds = %do.end98
  %ek_path = getelementptr inbounds %struct.svc_expkey, ptr %key, i32 0, i32 4
  %call109 = call i32 @kern_path(ptr noundef nonnull %call7.i, i32 noundef 0, ptr noundef %ek_path) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %do.body113, label %if.else108.if.then133_crit_edge

if.else108.if.then133_crit_edge:                  ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then133

do.body113:                                       ; preds = %if.else108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %22 = load i32, ptr @nfsd_debug, align 4
  %and114 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %do.body113.do.end124_crit_edge, label %do.end119

do.body113.do.end124_crit_edge:                   ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end124

do.end119:                                        ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #19
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull %call7.i) #20
  br label %do.end124

do.end124:                                        ; preds = %do.end119, %do.body113.do.end124_crit_edge
  %call125 = call fastcc ptr @svc_expkey_update(ptr noundef %cd, ptr noundef nonnull %key, ptr noundef nonnull %call78)
  %tobool126.not = icmp eq ptr %call125, null
  br i1 %tobool126.not, label %do.end124.out_crit_edge, label %if.then127

do.end124.out_crit_edge:                          ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then127:                                       ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @trace_nfsd_expkey_update(ptr noundef nonnull %call125, ptr noundef nonnull %call7.i)
  br label %out

out:                                              ; preds = %if.then127, %do.end124.out_crit_edge
  %err.0 = phi i32 [ 0, %if.then127 ], [ -12, %do.end124.out_crit_edge ]
  call void @path_put(ptr noundef %ek_path) #17
  call void @cache_flush() #17
  br i1 %tobool126.not, label %out.if.then137_crit_edge, label %out.if.then133_crit_edge

out.if.then133_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then133

out.if.then137_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then137

if.then133:                                       ; preds = %out.if.then133_crit_edge, %if.else108.if.then133_crit_edge, %out.thread213, %if.end81.if.then133_crit_edge
  %err.2207 = phi i32 [ %err.0, %out.if.then133_crit_edge ], [ 0, %out.thread213 ], [ %call109, %if.else108.if.then133_crit_edge ], [ -22, %if.end81.if.then133_crit_edge ]
  %ek.1206 = phi ptr [ %call125, %out.if.then133_crit_edge ], [ %call104, %out.thread213 ], [ %call78, %if.else108.if.then133_crit_edge ], [ %call78, %if.end81.if.then133_crit_edge ]
  %ref.i = getelementptr inbounds %struct.cache_head, ptr %ek.1206, i32 0, i32 3
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #17
  %23 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp.i = icmp ult i32 %24, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then133.if.end.i_crit_edge

if.then133.if.end.i_crit_edge:                    ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then133
  %expiry_time.i = getelementptr inbounds %struct.cache_head, ptr %ek.1206, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %29 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %26, ptr %nextcheck.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then133.if.end.i_crit_edge
  %cache_put.i = getelementptr inbounds %struct.cache_detail, ptr %cd, i32 0, i32 5
  %30 = ptrtoint ptr %cache_put.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cache_put.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !224
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #17
  %32 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #17, !srcloc !225
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.then137_crit_edge, label %if.then10.i.i.i.i.i, !prof !226

if.end5.i.i.i.i.i.if.then137_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then137

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #17
  br label %if.then137

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !227
  call void %31(ptr noundef %ref.i) #17
  br label %if.then137

if.then137:                                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.then137_crit_edge, %out.if.then137_crit_edge, %out.thread209, %if.end77.if.then137_crit_edge, %if.end69.if.then137_crit_edge, %switch.lookup.if.then137_crit_edge, %do.end64.if.then137_crit_edge, %if.end47.if.then137_crit_edge, %do.end42.if.then137_crit_edge, %if.end26.if.then137_crit_edge, %do.end21.if.then137_crit_edge
  %err.2197221 = phi i32 [ %err.2207, %if.then.i.i ], [ %err.2207, %if.then10.i.i.i.i.i ], [ %err.2207, %if.end5.i.i.i.i.i.if.then137_crit_edge ], [ -12, %out.thread209 ], [ %err.0, %out.if.then137_crit_edge ], [ -22, %do.end21.if.then137_crit_edge ], [ -22, %if.end26.if.then137_crit_edge ], [ -22, %if.end47.if.then137_crit_edge ], [ -22, %switch.lookup.if.then137_crit_edge ], [ -22, %if.end69.if.then137_crit_edge ], [ -12, %if.end77.if.then137_crit_edge ], [ -22, %do.end42.if.then137_crit_edge ], [ -22, %do.end64.if.then137_crit_edge ]
  call void @auth_domain_put(ptr noundef nonnull %call11) #17
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %if.end10.if.end138_crit_edge, %if.end5.if.end138_crit_edge, %if.end.if.end138_crit_edge
  %err.2197222 = phi i32 [ %err.2197221, %if.then137 ], [ -12, %if.end.if.end138_crit_edge ], [ -2, %if.end10.if.end138_crit_edge ], [ -22, %if.end5.if.end138_crit_edge ]
  call void @kfree(ptr noundef %call7.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end138, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2197222, %if.end138 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %key) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @expkey_show(ptr noundef %m, ptr nocapture noundef readnone %cd, ptr noundef %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %h, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.96) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %ek_client = getelementptr inbounds %struct.svc_expkey, ptr %h, i32 0, i32 1
  %0 = ptrtoint ptr %ek_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ek_client, align 8
  %name = getelementptr inbounds %struct.auth_domain, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %ek_fsidtype = getelementptr inbounds %struct.svc_expkey, ptr %h, i32 0, i32 2
  %4 = ptrtoint ptr %ek_fsidtype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ek_fsidtype, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.97, ptr noundef %3, i32 noundef %5) #17
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %for.body ]
  %6 = ptrtoint ptr %ek_fsidtype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ek_fsidtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %8 = icmp ult i32 %7, 8
  br i1 %8, label %switch.lookup, label %for.cond.key_len.exit_crit_edge

for.cond.key_len.exit_crit_edge:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %key_len.exit

switch.lookup:                                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.expkey_show, i32 0, i32 %7
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %key_len.exit

key_len.exit:                                     ; preds = %switch.lookup, %for.cond.key_len.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %for.cond.key_len.exit_crit_edge ]
  %cmp2 = icmp ult i32 %i.0, %retval.0.i
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %key_len.exit
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx = getelementptr %struct.svc_expkey, ptr %h, i32 0, i32 3, i32 %i.0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.98, i32 noundef %11) #17
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %key_len.exit
  %flags = getelementptr inbounds %struct.cache_head, ptr %h, i32 0, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %for.end.if.end9_crit_edge, label %land.lhs.true

for.end.if.end9_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

land.lhs.true:                                    ; preds = %for.end
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not = icmp eq i32 %16, 0
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.99) #17
  %ek_path = getelementptr inbounds %struct.svc_expkey, ptr %h, i32 0, i32 4
  %call8 = tail call i32 @seq_path(ptr noundef %m, ptr noundef %ek_path, ptr noundef nonnull @.str.100) #17
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %land.lhs.true.if.end9_crit_edge, %for.end.if.end9_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.101) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @expkey_alloc() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 80) #23
  ret ptr %call7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @expkey_flush() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nfsd_mutex, i32 noundef 0) #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #17
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_ns, align 4
  tail call void @nfsd_file_cache_purge(ptr noundef %7) #17
  tail call void @mutex_unlock(ptr noundef nonnull @nfsd_mutex) #17
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @expkey_match(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %ek_fsidtype = getelementptr inbounds %struct.svc_expkey, ptr %a, i32 0, i32 2
  %0 = ptrtoint ptr %ek_fsidtype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ek_fsidtype, align 4
  %ek_fsidtype4 = getelementptr inbounds %struct.svc_expkey, ptr %b, i32 0, i32 2
  %2 = ptrtoint ptr %ek_fsidtype4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ek_fsidtype4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ek_client = getelementptr inbounds %struct.svc_expkey, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %ek_client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ek_client, align 8
  %ek_client5 = getelementptr inbounds %struct.svc_expkey, ptr %b, i32 0, i32 1
  %6 = ptrtoint ptr %ek_client5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ek_client5, align 8
  %cmp6.not = icmp eq ptr %5, %7
  br i1 %cmp6.not, label %lor.lhs.false7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %ek_fsid = getelementptr inbounds %struct.svc_expkey, ptr %a, i32 0, i32 3
  %ek_fsid8 = getelementptr inbounds %struct.svc_expkey, ptr %b, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %8 = icmp ult i32 %1, 8
  br i1 %8, label %switch.lookup, label %lor.lhs.false7.key_len.exit_crit_edge

lor.lhs.false7.key_len.exit_crit_edge:            ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #19
  br label %key_len.exit

switch.lookup:                                    ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.expkey_match, i32 0, i32 %1
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %key_len.exit

key_len.exit:                                     ; preds = %switch.lookup, %lor.lhs.false7.key_len.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %lor.lhs.false7.key_len.exit_crit_edge ]
  %bcmp = tail call i32 @bcmp(ptr %ek_fsid, ptr %ek_fsid8, i32 %retval.0.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp12.not = icmp eq i32 %bcmp, 0
  %spec.select = zext i1 %cmp12.not to i32
  br label %cleanup

cleanup:                                          ; preds = %key_len.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %key_len.exit ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @expkey_init(ptr nocapture noundef writeonly %cnew, ptr nocapture noundef readonly %citem) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %ek_client = getelementptr inbounds %struct.svc_expkey, ptr %citem, i32 0, i32 1
  %0 = ptrtoint ptr %ek_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ek_client, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #17
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #17, !srcloc !230
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !231

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !226

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %.sink.i.i.i.i) #17
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %4 = ptrtoint ptr %ek_client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ek_client, align 8
  %ek_client5 = getelementptr inbounds %struct.svc_expkey, ptr %cnew, i32 0, i32 1
  %6 = ptrtoint ptr %ek_client5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %ek_client5, align 8
  %ek_fsidtype = getelementptr inbounds %struct.svc_expkey, ptr %citem, i32 0, i32 2
  %7 = ptrtoint ptr %ek_fsidtype to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ek_fsidtype, align 4
  %ek_fsidtype6 = getelementptr inbounds %struct.svc_expkey, ptr %cnew, i32 0, i32 2
  %9 = ptrtoint ptr %ek_fsidtype6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %ek_fsidtype6, align 4
  %ek_fsid = getelementptr inbounds %struct.svc_expkey, ptr %cnew, i32 0, i32 3
  %ek_fsid7 = getelementptr inbounds %struct.svc_expkey, ptr %citem, i32 0, i32 3
  %10 = call ptr @memcpy(ptr %ek_fsid, ptr %ek_fsid7, i32 24)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @expkey_update(ptr nocapture noundef writeonly %cnew, ptr noundef %citem) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %ek_path = getelementptr inbounds %struct.svc_expkey, ptr %cnew, i32 0, i32 4
  %ek_path4 = getelementptr inbounds %struct.svc_expkey, ptr %citem, i32 0, i32 4
  %0 = ptrtoint ptr %ek_path4 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ek_path4, align 8
  %2 = ptrtoint ptr %ek_path to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %ek_path, align 8
  tail call void @path_get(ptr noundef %ek_path4) #17
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @qword_addhex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @svc_expkey_update(ptr noundef %cd, ptr noundef %new, ptr noundef %old) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ek_fsidtype.i = getelementptr inbounds %struct.svc_expkey, ptr %new, i32 0, i32 2
  %0 = ptrtoint ptr %ek_fsidtype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ek_fsidtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %2 = icmp ult i32 %1, 8
  br i1 %2, label %switch.lookup, label %entry.svc_expkey_hash.exit_crit_edge

entry.svc_expkey_hash.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %svc_expkey_hash.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.svc_expkey_update, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %svc_expkey_hash.exit

svc_expkey_hash.exit:                             ; preds = %switch.lookup, %entry.svc_expkey_hash.exit_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.svc_expkey_hash.exit_crit_edge ]
  %ek_fsid.i = getelementptr inbounds %struct.svc_expkey, ptr %new, i32 0, i32 3
  %call.i.i = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %ek_fsid.i, i32 noundef %retval.0.i.i) #21
  %shr.i.i = lshr i32 %call.i.i, 24
  %ek_client.i = getelementptr inbounds %struct.svc_expkey, ptr %new, i32 0, i32 1
  %4 = ptrtoint ptr %ek_client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ek_client.i, align 8
  %6 = ptrtoint ptr %5 to i32
  %mul.i.i.i.i = mul i32 %6, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %.masked.i = and i32 %1, 255
  %xor.masked.i = xor i32 %shr.i.i, %.masked.i
  %and.i = xor i32 %xor.masked.i, %shr.i.i.i
  %call2 = tail call ptr @sunrpc_cache_update(ptr noundef %cd, ptr noundef %new, ptr noundef %old, i32 noundef %and.i) #17
  ret ptr %call2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_expkey_update(ptr noundef %key, ptr noundef %exp_path) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_expkey_update, i32 0, i32 1), ptr blockaddress(@trace_nfsd_expkey_update, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !232

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !226

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !213) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !242
  %call42 = tail call i32 @__traceiter_nfsd_expkey_update(ptr noundef null, ptr noundef %key, ptr noundef %exp_path) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !243
  %13 = tail call i32 @llvm.read_register.i32(metadata !213) #17
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !226

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !213) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !235
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_expkey_update, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_expkey_update, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_expkey_update.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_nfsd_expkey_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 263, ptr noundef nonnull @.str.14) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !236
  %31 = tail call i32 @llvm.read_register.i32(metadata !213) #17
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
declare dso_local i32 @__traceiter_nfsd_expkey_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_file_cache_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { nobuiltin nounwind }
attributes #23 = { nounwind allocsize(2) }
attributes #24 = { nobuiltin }
attributes #25 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !173, !175, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !203, !205, !207, !209, !211}
!llvm.named.register.sp = !{!213}
!llvm.module.flags = !{!214, !215, !216, !217, !218, !219, !220, !221}
!llvm.ident = !{!222}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfsd/export.c", i32 988, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @exp_rootfh._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @exp_rootfh._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfsd/export.c", i32 993, i32 2}
!8 = !{ptr @exp_rootfh._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @exp_rootfh._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @nfs_exports_op, !11, !"nfs_exports_op", i1 false, i1 false}
!11 = !{!"../fs/nfsd/export.c", i32 1320, i32 29}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/nfsd/export.c", i32 1336, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nfsd_export_init._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @nfsd_export_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/nfsd/export.c", i32 1384, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nfsd_export_shutdown._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @nfsd_export_shutdown._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/nfsd/export.c", i32 1392, i32 2}
!24 = !{ptr @nfsd_export_shutdown._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @nfsd_export_shutdown._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../fs/nfsd/trace.h", i32 265, i32 1}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../fs/nfsd/trace.h", i32 215, i32 1}
!46 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/nfsd/export.c", i32 1305, i32 15}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/nfsd/export.c", i32 1307, i32 16}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/nfsd/export.c", i32 1309, i32 16}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/nfsd/export.c", i32 725, i32 54}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/nfsd/export.c", i32 737, i32 16}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/nfsd/export.c", i32 739, i32 16}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/nfsd/export.c", i32 743, i32 29}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/nfsd/export.c", i32 747, i32 17}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/nfsd/export.c", i32 748, i32 17}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/nfsd/export.c", i32 750, i32 17}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/nfsd/export.c", i32 752, i32 17}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/nfsd/export.c", i32 764, i32 16}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/nfsd/export.c", i32 768, i32 19}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/nfsd/export.c", i32 773, i32 14}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/nfsd/export.c", i32 1273, i32 17}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/nfsd/export.c", i32 1276, i32 17}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/nfsd/export.c", i32 1279, i32 17}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/nfsd/export.c", i32 1281, i32 39}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/nfsd/export.c", i32 1281, i32 49}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/nfsd/export.c", i32 1284, i32 17}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/nfsd/export.c", i32 1285, i32 43}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/nfsd/export.c", i32 1217, i32 18}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/nfsd/export.c", i32 1217, i32 34}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/nfsd/export.c", i32 1217, i32 38}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/nfsd/export.c", i32 1190, i32 22}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/nfsd/export.c", i32 1190, i32 28}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/nfsd/export.c", i32 1191, i32 27}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/nfsd/export.c", i32 1192, i32 24}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/nfsd/export.c", i32 1192, i32 39}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/nfsd/export.c", i32 1193, i32 23}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/nfsd/export.c", i32 1194, i32 19}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/nfsd/export.c", i32 1194, i32 28}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/nfsd/export.c", i32 1195, i32 29}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/nfsd/export.c", i32 1195, i32 39}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/nfsd/export.c", i32 1196, i32 27}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/nfsd/export.c", i32 1197, i32 20}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/nfsd/export.c", i32 1198, i32 24}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/nfsd/export.c", i32 1199, i32 28}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/nfsd/export.c", i32 1200, i32 23}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/nfsd/export.c", i32 1201, i32 20}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/nfsd/export.c", i32 1202, i32 18}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/nfsd/export.c", i32 1203, i32 28}
!131 = !{ptr @expflags, !132, !"expflags", i1 false, i1 false}
!132 = !{!"../fs/nfsd/export.c", i32 1189, i32 3}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/nfsd/export.c", i32 1239, i32 16}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/nfsd/export.c", i32 1242, i32 17}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/nfsd/export.c", i32 846, i32 11}
!139 = !{ptr @svc_export_cache_template, !140, !"svc_export_cache_template", i1 false, i1 false}
!140 = !{!"../fs/nfsd/export.c", i32 843, i32 34}
!141 = distinct !{null, !142, !"__warned", i1 false, i1 false}
!142 = !{!"../fs/nfsd/export.c", i32 632, i32 30}
!143 = distinct !{null, !144, !"__warned", i1 false, i1 false}
!144 = !{!"../fs/nfsd/export.c", i32 638, i32 30}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/nfsd/export.c", i32 647, i32 20}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/nfsd/export.c", i32 649, i32 25}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/nfsd/export.c", i32 651, i32 25}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/nfsd/export.c", i32 420, i32 3}
!153 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @check_export._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @check_export._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/nfsd/export.c", i32 426, i32 3}
!158 = !{ptr @check_export._entry.71, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @check_export._entry_ptr.73, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/nfsd/export.c", i32 431, i32 3}
!162 = !{ptr @check_export._entry.74, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @check_export._entry_ptr.76, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/nfsd/export.c", i32 437, i32 3}
!166 = !{ptr @check_export._entry.77, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @check_export._entry_ptr.79, !165, !"_entry_ptr", i1 false, i1 false}
!168 = distinct !{null, !169, !"__already_done", i1 false, i1 false}
!169 = !{!"../fs/nfsd/trace.h", i32 286, i32 1}
!170 = distinct !{null, !169, !"__warned", i1 false, i1 false}
!171 = !{ptr @.str.80, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/nfsd/export.c", i32 260, i32 11}
!173 = !{ptr @svc_expkey_cache_template, !174, !"svc_expkey_cache_template", i1 false, i1 false}
!174 = !{!"../fs/nfsd/export.c", i32 257, i32 34}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/nfsd/export.c", i32 68, i32 20}
!177 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/nfsd/export.c", i32 107, i32 2}
!179 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @expkey_parse._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @expkey_parse._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/nfsd/export.c", i32 115, i32 2}
!184 = !{ptr @expkey_parse._entry.84, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @expkey_parse._entry_ptr.86, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/nfsd/export.c", i32 120, i32 2}
!188 = !{ptr @expkey_parse._entry.87, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @expkey_parse._entry_ptr.89, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.91, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/nfsd/export.c", i32 144, i32 2}
!192 = !{ptr @expkey_parse._entry.90, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @expkey_parse._entry_ptr.92, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.94, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/nfsd/export.c", i32 158, i32 3}
!196 = !{ptr @expkey_parse._entry.93, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @expkey_parse._entry_ptr.95, !195, !"_entry_ptr", i1 false, i1 false}
!198 = distinct !{null, !199, !"__already_done", i1 false, i1 false}
!199 = !{!"../fs/nfsd/trace.h", i32 239, i32 1}
!200 = distinct !{null, !199, !"__warned", i1 false, i1 false}
!201 = !{ptr @.str.96, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/nfsd/export.c", i32 185, i32 15}
!203 = !{ptr @.str.97, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/nfsd/export.c", i32 189, i32 16}
!205 = !{ptr @.str.98, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/nfsd/export.c", i32 192, i32 17}
!207 = !{ptr @.str.99, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/nfsd/export.c", i32 195, i32 17}
!209 = !{ptr @.str.100, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/nfsd/export.c", i32 196, i32 29}
!211 = !{ptr @.str.101, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/nfsd/export.c", i32 198, i32 16}
!213 = !{!"sp"}
!214 = !{i32 1, !"wchar_size", i32 2}
!215 = !{i32 1, !"min_enum_size", i32 4}
!216 = !{i32 8, !"branch-target-enforcement", i32 0}
!217 = !{i32 8, !"sign-return-address", i32 0}
!218 = !{i32 8, !"sign-return-address-all", i32 0}
!219 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!220 = !{i32 7, !"uwtable", i32 1}
!221 = !{i32 7, !"frame-pointer", i32 2}
!222 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!223 = !{!"auto-init"}
!224 = !{i64 2148703691}
!225 = !{i64 2148618131, i64 2148618163, i64 2148618192, i64 2148618226, i64 2148618257, i64 2148618280}
!226 = !{!"branch_weights", i32 2000, i32 1}
!227 = !{i64 2149901464}
!228 = !{i64 2149951007}
!229 = !{i64 2149951273}
!230 = !{i64 2148615666, i64 2148615698, i64 2148615727, i64 2148615761, i64 2148615792, i64 2148615815}
!231 = !{!"branch_weights", i32 1, i32 2000}
!232 = !{i64 2148234862, i64 2148234867, i64 2148234880, i64 2148234924, i64 2148234958, i64 2148234979}
!233 = !{i64 2157798343}
!234 = !{i64 2157798568}
!235 = !{i64 2149959566}
!236 = !{i64 2149960602}
!237 = !{i64 2157764687}
!238 = !{i64 2157764906}
!239 = !{i64 2152842106}
!240 = !{i64 2157814913}
!241 = !{i64 2157815118}
!242 = !{i64 2157781493}
!243 = !{i64 2157781718}
