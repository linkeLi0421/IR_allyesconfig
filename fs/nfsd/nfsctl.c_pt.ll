; ModuleID = '/llk/IR_all_yes/fs/nfsd/nfsctl.c_pt.bc'
source_filename = "../fs/nfsd/nfsctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_descr = type { ptr, ptr, i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.136, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.137, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.138, ptr, %struct.address_space, %struct.list_head, %union.anon.139, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.136 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.137 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.138 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.139 = type { ptr }
%struct.nfsd_net = type { ptr, ptr, ptr, ptr, ptr, %struct.lock_manager, i8, i64, ptr, ptr, i32, ptr, %struct.rb_root, ptr, %struct.rb_root, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, %struct.spinlock, %struct.spinlock, ptr, i8, ptr, i64, i64, i8, i8, %struct.atomic_t, i8, i8, %struct.seqlock_t, [8 x i8], i32, i32, i32, i32, ptr, i32, i32, %struct.idr, %struct.spinlock, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, [2 x %struct.percpu_counter], i32, i32, %struct.shrinker, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, [65 x i8], ptr, %struct.siphash_key_t }
%struct.lock_manager = type { %struct.list_head, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.siphash_key_t = type { [2 x i64] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.134, %struct.list_head, %struct.list_head, %union.anon.135 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.134 = type { %struct.list_head }
%union.anon.135 = type { %struct.hlist_node }
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
%struct.nfsdfs_client = type { %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ctl_table_header = type { %union.anon.38, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.94, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.94 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.28 }
%union.anon.28 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.115, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.21 }
%union.anon.21 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.23 }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.115 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.7, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.7 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.knfsd_fh = type { i32, %union.anon.160 }
%union.anon.160 = type { %struct.anon.161, [124 x i8] }
%struct.anon.161 = type { i8, i8, i8, i8, [0 x i32] }
%struct.__kernel_sockaddr_storage = type { %union.anon.125 }
%union.anon.125 = type { ptr, [124 x i8] }
%struct.svc_serv = type { ptr, ptr, %struct.spinlock, %struct.kref, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, %struct.timer_list, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@nfsd_client_rmdir.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/nfsd/nfsctl.c\00", [47 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias493 = internal constant [19 x i8] c"nfsd.alias=fs-nfsd\00", section ".modinfo", align 1
@nfsd_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @nfsd_init_net, ptr null, ptr @nfsd_exit_net, ptr null, ptr @nfsd_net_id, i32 976 }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/nfs/exports\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fs/nfs\00", [25 x i8] zeroinitializer }, align 32
@nfsd_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.13, i32 0, ptr @nfsd_init_fs_context, ptr null, ptr null, ptr @nfsd_umount, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author494 = internal constant [43 x i8] c"nfsd.author=Olaf Kirch <okir@monad.swb.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file495 = internal constant [23 x i8] c"nfsd.file=fs/nfsd/nfsd\00", section ".modinfo", align 1
@__UNIQUE_ID_license496 = internal constant [17 x i8] c"nfsd.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_nfsd__497_1583_init_nfsd6 = internal global ptr @init_nfsd, section ".initcall6.init", align 4
@__exitcall_exit_nfsd = internal global ptr @exit_nfsd, section ".exitcall.exit", align 4
@nfsd_max_blksize = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@nfsd_net_id = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@simple_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@nfsdfs_remove_files.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfsdfs_remove_file.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fsnotify_unlink.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/fsnotify.h\00", [39 x i8] zeroinitializer }, align 32
@fsnotify_rmdir.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfsd_init_net.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&nn->writeverf_lock)->lock\00", [35 x i8] zeroinitializer }, align 32
@nfsd_init_net.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&____s->seqcount\00", [47 x i8] zeroinitializer }, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nfsd\00", [27 x i8] zeroinitializer }, align 32
@nfsd_fs_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr @nfsd_fs_free_fc, ptr null, ptr null, ptr null, ptr @nfsd_fs_get_tree, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfsd_fill_super.nfsd_files = internal constant { [22 x %struct.tree_descr], [88 x i8] } { [22 x %struct.tree_descr] [%struct.tree_descr zeroinitializer, %struct.tree_descr zeroinitializer, %struct.tree_descr { ptr @.str.14, ptr @exports_nfsd_operations, i32 292 }, %struct.tree_descr { ptr @.str.15, ptr @exports_nfsd_operations, i32 292 }, %struct.tree_descr { ptr @.str.16, ptr @export_features_operations, i32 292 }, %struct.tree_descr { ptr @.str.17, ptr @transaction_ops, i32 384 }, %struct.tree_descr { ptr @.str.18, ptr @transaction_ops, i32 384 }, %struct.tree_descr { ptr @.str.19, ptr @transaction_ops, i32 384 }, %struct.tree_descr { ptr @.str.20, ptr @transaction_ops, i32 384 }, %struct.tree_descr { ptr @.str.21, ptr @transaction_ops, i32 384 }, %struct.tree_descr { ptr @.str.22, ptr @pool_stats_operations, i32 292 }, %struct.tree_descr { ptr @.str.23, ptr @reply_cache_stats_operations, i32 292 }, %struct.tree_descr { ptr @.str.24, ptr @transaction_ops, i32 384 }, %struct.tree_descr { ptr @.str.25, ptr @transaction_ops, i32 420 }, %struct.tree_descr { ptr @.str.26, ptr @transaction_ops, i32 420 }, %struct.tree_descr { ptr @.str.27, ptr @transaction_ops, i32 420 }, %struct.tree_descr { ptr @.str.28, ptr @supported_enctypes_ops, i32 292 }, %struct.tree_descr { ptr @.str.29, ptr @transaction_ops, i32 384 }, %struct.tree_descr { ptr @.str.30, ptr @transaction_ops, i32 384 }, %struct.tree_descr { ptr @.str.31, ptr @transaction_ops, i32 384 }, %struct.tree_descr { ptr @.str.32, ptr @transaction_ops, i32 420 }, %struct.tree_descr { ptr @.str.33, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"exports\00", [24 x i8] zeroinitializer }, align 32
@exports_nfsd_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @exports_nfsd_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"export_stats\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"export_features\00", [16 x i8] zeroinitializer }, align 32
@export_features_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @export_features_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"filehandle\00", [21 x i8] zeroinitializer }, align 32
@transaction_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @nfsctl_transaction_read, ptr @nfsctl_transaction_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @simple_transaction_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unlock_ip\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unlock_filesystem\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"threads\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pool_threads\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pool_stats\00", [21 x i8] zeroinitializer }, align 32
@pool_stats_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @nfsd_pool_stats_open, ptr null, ptr @nfsd_pool_stats_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reply_cache_stats\00", [46 x i8] zeroinitializer }, align 32
@reply_cache_stats_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @nfsd_reply_cache_stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"versions\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"portlist\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max_block_size\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max_connections\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"supported_krb5_enctypes\00", [40 x i8] zeroinitializer }, align 32
@supported_enctypes_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @supported_enctypes_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nfsv4leasetime\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nfsv4gracetime\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfsv4recoverydir\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"v4_end_grace\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clients\00", [24 x i8] zeroinitializer }, align 32
@nfs_exports_op = external dso_local constant %struct.seq_operations, align 4
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0x%x 0x%x\0A\00", [21 x i8] zeroinitializer }, align 32
@write_op = internal constant { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr @write_filehandle, ptr @write_unlock_ip, ptr @write_unlock_fs, ptr @write_threads, ptr @write_pool_threads, ptr null, ptr null, ptr @write_versions, ptr @write_ports, ptr @write_maxblksize, ptr @write_maxconn, ptr null, ptr @write_leasetime, ptr @write_gracetime, ptr @write_recoverydir, ptr @write_v4_end_grace], [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@nfsd_mutex = external dso_local global %struct.mutex, align 4
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%d%c\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s%c%u\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s%c%u.%u\00", [22 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__write_ports_addfd._entry = internal constant %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.1, i32 736, ptr null, ptr null }, align 1
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: socket net is different to NFSd's one\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__write_ports_addfd\00", [44 x i8] zeroinitializer }, align 32
@__write_ports_addfd._entry_ptr = internal global ptr @__write_ports_addfd._entry, section ".printk_index", align 4
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%15s %5u\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%c\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"18,17,16\00", [23 x i8] zeroinitializer }, align 32
@init_nfsd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.1, i32 1520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016Installing knfsd (copyright (C) 1996 okir@monad.swb.de).\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_nfsd\00", [22 x i8] zeroinitializer }, align 32
@init_nfsd._entry_ptr = internal global ptr @init_nfsd._entry, section ".printk_index", align 4
@exports_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @exports_proc_open, ptr @seq_read, ptr null, ptr null, ptr @seq_lseek, ptr @seq_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 43, i64 45]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 8, i64 49, i64 89, i64 121]
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1316, i32 16 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1341, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [13 x i8] c"nfsd_net_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1510, i32 33 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1572, i32 20 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1573, i32 20 }
@___asan_gen_.70 = private unnamed_addr constant [13 x i8] c"nfsd_fs_type\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1430, i32 32 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"nfsd_max_blksize\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 870, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant [12 x i8] c"nfsd_net_id\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1460, i32 14 }
@___asan_gen_.80 = private unnamed_addr constant [28 x i8] c"../include/linux/fsnotify.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 271, i32 6 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1488, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 45, i32 7 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 695, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 723, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1432, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c"nfsd_fs_context_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1407, i32 43 }
@___asan_gen_.115 = private unnamed_addr constant [11 x i8] c"nfsd_files\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1355, i32 33 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1356, i32 18 }
@___asan_gen_.121 = private unnamed_addr constant [24 x i8] c"exports_nfsd_operations\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 173, i32 37 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1358, i32 26 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1359, i32 29 }
@___asan_gen_.130 = private unnamed_addr constant [27 x i8] c"export_features_operations\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 191, i32 37 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1365, i32 16 }
@___asan_gen_.136 = private unnamed_addr constant [16 x i8] c"transaction_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 134, i32 37 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1361, i32 25 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1363, i32 25 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1366, i32 21 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1367, i32 26 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1368, i32 24 }
@___asan_gen_.154 = private unnamed_addr constant [22 x i8] c"pool_stats_operations\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 218, i32 37 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1369, i32 31 }
@___asan_gen_.160 = private unnamed_addr constant [29 x i8] c"reply_cache_stats_operations\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 225, i32 37 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1370, i32 22 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1371, i32 19 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1372, i32 24 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1373, i32 28 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1375, i32 31 }
@___asan_gen_.178 = private unnamed_addr constant [23 x i8] c"supported_enctypes_ops\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 210, i32 37 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1378, i32 23 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1379, i32 23 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1380, i32 25 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1381, i32 24 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1383, i32 19 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1389, i32 40 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 182, i32 16 }
@___asan_gen_.202 = private unnamed_addr constant [9 x i8] c"write_op\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 81, i32 24 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 453, i32 50 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 500, i32 15 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 532, i32 24 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 655, i32 11 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 659, i32 33 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 548, i32 35 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 548, i32 46 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 736, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 765, i32 18 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 956, i32 50 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 989, i32 50 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1070, i32 50 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1144, i32 50 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 201, i32 16 }
@___asan_gen_.250 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1520, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"exports_proc_ops\00", align 1
@___asan_gen_.260 = private constant [20 x i8] c"../fs/nfsd/nfsctl.c\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 161, i32 30 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_alias493, ptr @__UNIQUE_ID_author494, ptr @__UNIQUE_ID_file495, ptr @__UNIQUE_ID_license496, ptr @__exitcall_exit_nfsd, ptr @__initcall__kmod_nfsd__497_1583_init_nfsd6, ptr @__write_ports_addfd._entry, ptr @__write_ports_addfd._entry_ptr, ptr @exit_nfsd, ptr @init_nfsd._entry, ptr @init_nfsd._entry_ptr, ptr @.str, ptr @.str.1, ptr @nfsd_net_ops, ptr @.str.2, ptr @.str.3, ptr @nfsd_fs_type, ptr @nfsd_max_blksize, ptr @nfsd_net_id, ptr @.str.4, ptr @nfsd_init_net.__key, ptr @.str.5, ptr @nfsd_init_net.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @nfsd_fs_context_ops, ptr @nfsd_fill_super.nfsd_files, ptr @.str.14, ptr @exports_nfsd_operations, ptr @.str.15, ptr @.str.16, ptr @export_features_operations, ptr @.str.17, ptr @transaction_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @pool_stats_operations, ptr @.str.23, ptr @reply_cache_stats_operations, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @supported_enctypes_ops, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @write_op, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @exports_proc_ops], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_max_blksize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_init_net.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_init_net.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_fs_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_fill_super.nfsd_files to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exports_nfsd_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @export_features_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transaction_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pool_stats_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reply_cache_stats_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_enctypes_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_op to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_nfsd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exports_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_nfsdfs_client(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @down_read(ptr noundef %i_rwsem.i) #12
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.__get_nfsdfs_client.exit_crit_edge, label %if.then.i

entry.__get_nfsdfs_client.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__get_nfsdfs_client.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #12, !srcloc !165
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !166

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.__get_nfsdfs_client.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !167

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.__get_nfsdfs_client.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__get_nfsdfs_client.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef %.sink.i.i.i.i.i) #12
  br label %__get_nfsdfs_client.exit

__get_nfsdfs_client.exit:                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.__get_nfsdfs_client.exit_crit_edge, %entry.__get_nfsdfs_client.exit_crit_edge
  tail call void @up_read(ptr noundef %i_rwsem.i) #12
  ret ptr %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfsd_client_mkdir(ptr nocapture noundef readonly %nn, ptr noundef %ncl, i32 noundef %id, ptr nocapture noundef readonly %files, ptr noundef writeonly %fdentries) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i.i = alloca %struct.timespec64, align 8
  %name = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %name) #12
  %0 = call ptr @memset(ptr %name, i32 255, i32 11)
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str, i32 noundef %id)
  %nfsd_client_dir = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 8
  %1 = ptrtoint ptr %nfsd_client_dir to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nfsd_client_dir, align 8
  %call2 = call fastcc ptr @nfsd_mkdir(ptr noundef %2, ptr noundef %ncl, ptr noundef nonnull %name)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call2, i32 0, i32 5
  %3 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i) #12
  %5 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %files, align 4
  %tobool.not47.i = icmp eq ptr %6, null
  br i1 %tobool.not47.i, label %if.end.nfsdfs_create_files.exit.thread_crit_edge, label %land.rhs.lr.ph.i

if.end.nfsdfs_create_files.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsdfs_create_files.exit.thread

land.rhs.lr.ph.i:                                 ; preds = %if.end
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 54
  %i_sb.i.i.i.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %tobool13.not.i = icmp eq ptr %fdentries, null
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %7 = phi ptr [ %6, %land.rhs.lr.ph.i ], [ %37, %for.inc.i.land.rhs.i_crit_edge ]
  %i.049.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ]
  %files.addr.048.i = phi ptr [ %files, %land.rhs.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.land.rhs.i_crit_edge ]
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not.i = icmp eq i8 %9, 0
  br i1 %tobool2.not.i, label %land.rhs.i.nfsdfs_create_files.exit.thread_crit_edge, label %for.body.i

land.rhs.i.nfsdfs_create_files.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsdfs_create_files.exit.thread

for.body.i:                                       ; preds = %land.rhs.i
  %call4.i = call ptr @d_alloc_name(ptr noundef %call2, ptr noundef nonnull %7) #12
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %for.body.i.if.then5_crit_edge, label %if.end.i

for.body.i.if.then5_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.end.i:                                         ; preds = %for.body.i
  %10 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i, align 4
  %mode.i = getelementptr inbounds %struct.tree_descr, ptr %files.addr.048.i, i32 0, i32 2
  %14 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode.i, align 4
  %call.i.i = call ptr @new_inode(ptr noundef %13) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then10.i, label %if.end11.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dput(ptr noundef nonnull %call4.i) #12
  br label %if.then5

if.end11.i:                                       ; preds = %if.end.i
  %16 = trunc i32 %15 to i16
  %conv7.i = or i16 %16, -32768
  %call1.i.i = call i32 @iunique(ptr noundef %13, i32 noundef 21) #12
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call1.i.i, ptr %i_ino.i.i, align 8
  %18 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv7.i, ptr %call.i.i, align 8
  %i_atime.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 15
  %i_mtime.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 16
  %i_ctime.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i.i, ptr noundef nonnull %call.i.i) #12
  %19 = call ptr @memcpy(ptr %i_ctime.i.i, ptr %tmp.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i) #12
  %20 = call ptr @memcpy(ptr %i_mtime.i.i, ptr %i_ctime.i.i, i32 16)
  %21 = call ptr @memcpy(ptr %i_atime.i.i, ptr %i_ctime.i.i, i32 16)
  %ops.i = getelementptr inbounds %struct.tree_descr, ptr %files.addr.048.i, i32 0, i32 1
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %24 = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 44
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %24, align 8
  %26 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_private.i.i, align 4
  %tobool.not.i42.i = icmp eq ptr %27, null
  br i1 %tobool.not.i42.i, label %if.end11.i.__get_nfsdfs_client.exit.i_crit_edge, label %if.then.i.i

if.end11.i.__get_nfsdfs_client.exit.i_crit_edge:  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__get_nfsdfs_client.exit.i

if.then.i.i:                                      ; preds = %if.end11.i
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %27, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull %27, i32 1, i32 3, i32 1) #12
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %27, ptr nonnull %27, i32 1, ptr nonnull elementtype(i32) %27) #12, !srcloc !165
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !166

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %29 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %.not.i.i.i.i.i.i = icmp sgt i32 %29, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.__get_nfsdfs_client.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !167

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.__get_nfsdfs_client.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__get_nfsdfs_client.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %27, i32 noundef %.sink.i.i.i.i.i.i) #12
  br label %__get_nfsdfs_client.exit.i

__get_nfsdfs_client.exit.i:                       ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.__get_nfsdfs_client.exit.i_crit_edge, %if.end11.i.__get_nfsdfs_client.exit.i_crit_edge
  %i_private.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 54
  %30 = ptrtoint ptr %i_private.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %i_private.i, align 4
  call void @d_add(ptr noundef nonnull %call4.i, ptr noundef nonnull %call.i.i) #12
  %31 = ptrtoint ptr %i_sb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb.i.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 48
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i.i, i32 noundef 4) #12
  %33 = ptrtoint ptr %s_fsnotify_connectors.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i.i.i = icmp eq i32 %34, 0
  br i1 %cmp.i.i.i.i, label %__get_nfsdfs_client.exit.i.fsnotify_create.exit.i_crit_edge, label %if.end.i.i.i.i

__get_nfsdfs_client.exit.i.fsnotify_create.exit.i_crit_edge: ; preds = %__get_nfsdfs_client.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_create.exit.i

if.end.i.i.i.i:                                   ; preds = %__get_nfsdfs_client.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %d_name.i.i.i = getelementptr inbounds %struct.dentry, ptr %call4.i, i32 0, i32 4
  %call1.i.i.i.i = call i32 @fsnotify(i32 noundef 256, ptr noundef nonnull %call4.i, i32 noundef 3, ptr noundef %4, ptr noundef %d_name.i.i.i, ptr noundef null, i32 noundef 0) #12
  br label %fsnotify_create.exit.i

fsnotify_create.exit.i:                           ; preds = %if.end.i.i.i.i, %__get_nfsdfs_client.exit.i.fsnotify_create.exit.i_crit_edge
  br i1 %tobool13.not.i, label %fsnotify_create.exit.i.for.inc.i_crit_edge, label %if.then14.i

fsnotify_create.exit.i.for.inc.i_crit_edge:       ; preds = %fsnotify_create.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then14.i:                                      ; preds = %fsnotify_create.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx15.i = getelementptr ptr, ptr %fdentries, i32 %i.049.i
  %35 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call4.i, ptr %arrayidx15.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then14.i, %fsnotify_create.exit.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.049.i, 1
  %incdec.ptr.i = getelementptr %struct.tree_descr, ptr %files.addr.048.i, i32 1
  %36 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %for.inc.i.nfsdfs_create_files.exit.thread_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

for.inc.i.nfsdfs_create_files.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsdfs_create_files.exit.thread

nfsdfs_create_files.exit.thread:                  ; preds = %for.inc.i.nfsdfs_create_files.exit.thread_crit_edge, %land.rhs.i.nfsdfs_create_files.exit.thread_crit_edge, %if.end.nfsdfs_create_files.exit.thread_crit_edge
  call void @up_write(ptr noundef %i_rwsem.i.i) #12
  br label %cleanup

if.then5:                                         ; preds = %if.then10.i, %for.body.i.if.then5_crit_edge
  call fastcc void @nfsdfs_remove_files(ptr noundef %call2) #12
  call void @up_write(ptr noundef %i_rwsem.i.i) #12
  call void @nfsd_client_rmdir(ptr noundef %call2)
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %nfsdfs_create_files.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then5 ], [ null, %entry.cleanup_crit_edge ], [ %call2, %nfsdfs_create_files.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %name) #12
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfsd_mkdir(ptr noundef %parent, ptr noundef %ncl, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  %tmp.i.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode = getelementptr inbounds %struct.dentry, ptr %parent, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #12
  %call = tail call ptr @d_alloc_name(ptr noundef %parent, ptr noundef %name) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_err_crit_edge, label %if.end

entry.out_err_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_err

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %call.i.i = tail call ptr @new_inode(ptr noundef %5) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.out_err_crit_edge, label %if.end.i

if.end.out_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_err

if.end.i:                                         ; preds = %if.end
  %call1.i.i = tail call i32 @iunique(ptr noundef %5, i32 noundef 21) #12
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call1.i.i, ptr %i_ino.i.i, align 8
  %7 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 16768, ptr %call.i.i, align 8
  %i_atime.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 15
  %i_mtime.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 16
  %i_ctime.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i.i, ptr noundef nonnull %call.i.i) #12
  %8 = call ptr @memcpy(ptr %i_ctime.i.i, ptr %tmp.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i) #12
  %9 = call ptr @memcpy(ptr %i_mtime.i.i, ptr %i_ctime.i.i, i32 16)
  %10 = call ptr @memcpy(ptr %i_atime.i.i, ptr %i_ctime.i.i, i32 16)
  %11 = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 44
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @simple_dir_operations, ptr %11, align 8
  %i_op.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %i_op.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @simple_dir_inode_operations, ptr %i_op.i.i, align 8
  call void @inc_nlink(ptr noundef nonnull %call.i.i) #12
  %tobool1.not.i = icmp eq ptr %ncl, null
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  %i_private.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 54
  %14 = ptrtoint ptr %i_private.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ncl, ptr %i_private.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ncl, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull %ncl, i32 1, i32 3, i32 1) #12
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %ncl, ptr nonnull %ncl, i32 1, ptr nonnull elementtype(i32) %ncl) #12, !srcloc !165
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then2.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !166

if.then2.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then2.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end3.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !167

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end3.i_crit_edge:            ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then2.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then2.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %ncl, i32 noundef %.sink.i.i.i.i.i) #12
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  call void @d_add(ptr noundef nonnull %call, ptr noundef nonnull %call.i.i) #12
  call void @inc_nlink(ptr noundef %3) #12
  %17 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i, align 4
  %s_fsnotify_connectors.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 48
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i.i, i32 noundef 4) #12
  %19 = ptrtoint ptr %s_fsnotify_connectors.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i.i.i = icmp eq i32 %20, 0
  br i1 %cmp.i.i.i.i, label %if.end3.i.out_crit_edge, label %if.end.i.i.i.i

if.end3.i.out_crit_edge:                          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.i.i.i.i:                                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %d_name.i.i.i = getelementptr inbounds %struct.dentry, ptr %call, i32 0, i32 4
  %call1.i.i.i.i = call i32 @fsnotify(i32 noundef 1073742080, ptr noundef nonnull %call, i32 noundef 3, ptr noundef %3, ptr noundef %d_name.i.i.i, ptr noundef null, i32 noundef 0) #12
  br label %out

out:                                              ; preds = %out_err, %if.end.i.i.i.i, %if.end3.i.out_crit_edge
  %dentry.0 = phi ptr [ inttoptr (i32 -12 to ptr), %out_err ], [ %call, %if.end3.i.out_crit_edge ], [ %call, %if.end.i.i.i.i ]
  call void @up_write(ptr noundef %i_rwsem.i) #12
  ret ptr %dentry.0

out_err:                                          ; preds = %if.end.out_err_crit_edge, %entry.out_err_crit_edge
  tail call void @dput(ptr noundef %call) #12
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd_client_rmdir(ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %d_inode.i52 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i52 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i52, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #12
  tail call fastcc void @nfsdfs_remove_files(ptr noundef %dentry)
  %i_private.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 54
  %6 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_private.i, align 4
  store ptr null, ptr %i_private.i, align 4
  %cl_release.i = getelementptr inbounds %struct.nfsdfs_client, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %cl_release.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cl_release.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %7, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @llvm.prefetch.p0(ptr %7, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #12, !srcloc !169
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.clear_ncl.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !167

if.end5.i.i.i.i.i.clear_ncl.exit_crit_edge:       ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_ncl.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef 3) #12
  br label %clear_ncl.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void %9(ptr noundef %7) #12
  br label %clear_ncl.exit

clear_ncl.exit:                                   ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.clear_ncl.exit_crit_edge
  %tobool.not.i = icmp eq ptr %dentry, null
  br i1 %tobool.not.i, label %clear_ncl.exit.dget.exit_crit_edge, label %if.then.i

clear_ncl.exit.dget.exit_crit_edge:               ; preds = %clear_ncl.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dget.exit

if.then.i:                                        ; preds = %clear_ncl.exit
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #12
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %clear_ncl.exit.dget.exit_crit_edge
  %call3 = tail call i32 @simple_rmdir(ptr noundef %3, ptr noundef %dentry) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %dget.exit.if.end31_crit_edge, label %land.rhs

dget.exit.if.end31_crit_edge:                     ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

land.rhs:                                         ; preds = %dget.exit
  %.b51 = load i1, ptr @nfsd_client_rmdir.__already_done, align 1
  br i1 %.b51, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !167

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nfsd_client_rmdir.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1341, i32 noundef 9, ptr noundef null) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %dget.exit.if.end31_crit_edge
  tail call void @d_drop(ptr noundef %dentry) #12
  %11 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dentry, align 8
  %and.i.i.i.i = and i32 %12, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.rhs.i, label %if.end37.critedge.i

land.rhs.i:                                       ; preds = %if.end31
  %.b43.i = load i1, ptr @fsnotify_rmdir.__already_done, align 1
  br i1 %.b43.i, label %land.rhs.i.fsnotify_rmdir.exit_crit_edge, label %if.then.i53, !prof !167

land.rhs.i.fsnotify_rmdir.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_rmdir.exit

if.then.i53:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fsnotify_rmdir.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 298, i32 noundef 9, ptr noundef null) #12
  br label %fsnotify_rmdir.exit

if.end37.critedge.i:                              ; preds = %if.end31
  %13 = ptrtoint ptr %d_inode.i52 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_inode.i52, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %14, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 48
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #12
  %19 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i45.i = icmp eq i32 %20, 0
  br i1 %cmp.i.i45.i, label %if.end37.critedge.i.fsnotify_rmdir.exit_crit_edge, label %if.end.i.i.i

if.end37.critedge.i.fsnotify_rmdir.exit_crit_edge: ; preds = %if.end37.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_rmdir.exit

if.end.i.i.i:                                     ; preds = %if.end37.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  %d_name.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %21 = and i16 %16, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %21)
  %cmp.i.i = icmp eq i16 %21, 16384
  %spec.select.i.i = select i1 %cmp.i.i, i32 1073742336, i32 512
  %call1.i.i.i = tail call i32 @fsnotify(i32 noundef %spec.select.i.i, ptr noundef %14, i32 noundef 2, ptr noundef %3, ptr noundef %d_name.i.i, ptr noundef null, i32 noundef 0) #12
  br label %fsnotify_rmdir.exit

fsnotify_rmdir.exit:                              ; preds = %if.end.i.i.i, %if.end37.critedge.i.fsnotify_rmdir.exit_crit_edge, %if.then.i53, %land.rhs.i.fsnotify_rmdir.exit_crit_edge
  tail call void @dput(ptr noundef %dentry) #12
  tail call void @up_write(ptr noundef %i_rwsem.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfsdfs_remove_files(ptr noundef readonly %root) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_subdirs = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 14
  %0 = ptrtoint ptr %d_subdirs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_subdirs, align 8
  %cmp.not66 = icmp eq ptr %1, %d_subdirs
  br i1 %cmp.not66, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in67 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn69, %for.inc.for.body_crit_edge ]
  %dentry.068 = getelementptr i8, ptr %.pn.in67, i32 -184
  %2 = ptrtoint ptr %.pn.in67 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn69 = load ptr, ptr %.pn.in67, align 8
  %d_inode.i.i = getelementptr i8, ptr %.pn.in67, i32 -112
  %3 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.not.i = icmp eq ptr %4, null
  br i1 %cmp.i.not.i, label %for.body.land.end_crit_edge, label %simple_positive.exit

for.body.land.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

simple_positive.exit:                             ; preds = %for.body
  %pprev.i.i.i = getelementptr i8, ptr %.pn.in67, i32 -140
  %5 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i.not = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i.not, label %simple_positive.exit.land.end_crit_edge, label %if.end44

simple_positive.exit.land.end_crit_edge:          ; preds = %simple_positive.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.end:                                         ; preds = %simple_positive.exit.land.end_crit_edge, %for.body.land.end_crit_edge
  %.b59 = load i1, ptr @nfsdfs_remove_files.__already_done, align 1
  br i1 %.b59, label %land.end.for.inc_crit_edge, label %land.end.for.inc.sink.split_crit_edge, !prof !167

land.end.for.inc.sink.split_crit_edge:            ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split

land.end.for.inc_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end44:                                         ; preds = %simple_positive.exit
  %7 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i, align 8
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 54
  %9 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_private.i.i, align 4
  store ptr null, ptr %i_private.i.i, align 4
  %cl_release.i.i = getelementptr inbounds %struct.nfsdfs_client, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %cl_release.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cl_release.i.i, align 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %10, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @llvm.prefetch.p0(ptr %10, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #12, !srcloc !169
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.clear_ncl.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !167

if.end5.i.i.i.i.i.i.clear_ncl.exit.i_crit_edge:   ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_ncl.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef 3) #12
  br label %clear_ncl.exit.i

if.then.i.i.i:                                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void %12(ptr noundef %10) #12
  br label %clear_ncl.exit.i

clear_ncl.exit.i:                                 ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.clear_ncl.exit.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %dentry.068, null
  br i1 %tobool.not.i.i, label %clear_ncl.exit.i.dget.exit.i_crit_edge, label %if.then.i.i

clear_ncl.exit.i.dget.exit.i_crit_edge:           ; preds = %clear_ncl.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dget.exit.i

if.then.i.i:                                      ; preds = %clear_ncl.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i.i = getelementptr i8, ptr %.pn.in67, i32 -72
  tail call void @lockref_get(ptr noundef %d_lockref.i.i) #12
  br label %dget.exit.i

dget.exit.i:                                      ; preds = %if.then.i.i, %clear_ncl.exit.i.dget.exit.i_crit_edge
  %call2.i = tail call i32 @simple_unlink(ptr noundef %8, ptr noundef %dentry.068) #12
  tail call void @d_drop(ptr noundef %dentry.068) #12
  %14 = ptrtoint ptr %dentry.068 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dentry.068, align 8
  %and.i.i.i.i.i = and i32 %15, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %land.rhs.i.i, label %if.end37.critedge.i.i

land.rhs.i.i:                                     ; preds = %dget.exit.i
  %.b43.i.i = load i1, ptr @fsnotify_unlink.__already_done, align 1
  br i1 %.b43.i.i, label %land.rhs.i.i.fsnotify_unlink.exit.i_crit_edge, label %if.then.i47.i, !prof !167

land.rhs.i.i.fsnotify_unlink.exit.i_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_unlink.exit.i

if.then.i47.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fsnotify_unlink.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %fsnotify_unlink.exit.i

if.end37.critedge.i.i:                            ; preds = %dget.exit.i
  %16 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 8
  %i_sb.i.i.i.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 48
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i.i, i32 noundef 4) #12
  %22 = ptrtoint ptr %s_fsnotify_connectors.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i45.i.i = icmp eq i32 %23, 0
  br i1 %cmp.i.i45.i.i, label %if.end37.critedge.i.i.fsnotify_unlink.exit.i_crit_edge, label %if.end.i.i.i.i

if.end37.critedge.i.i.fsnotify_unlink.exit.i_crit_edge: ; preds = %if.end37.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_unlink.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end37.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %d_name.i.i.i = getelementptr i8, ptr %.pn.in67, i32 -128
  %24 = and i16 %19, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %24)
  %cmp.i.i.i = icmp eq i16 %24, 16384
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 1073742336, i32 512
  %call1.i.i.i.i = tail call i32 @fsnotify(i32 noundef %spec.select.i.i.i, ptr noundef %17, i32 noundef 2, ptr noundef %8, ptr noundef %d_name.i.i.i, ptr noundef null, i32 noundef 0) #12
  br label %fsnotify_unlink.exit.i

fsnotify_unlink.exit.i:                           ; preds = %if.end.i.i.i.i, %if.end37.critedge.i.i.fsnotify_unlink.exit.i_crit_edge, %if.then.i47.i, %land.rhs.i.i.fsnotify_unlink.exit.i_crit_edge
  tail call void @dput(ptr noundef %dentry.068) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %fsnotify_unlink.exit.i.for.inc_crit_edge, label %land.rhs.i62

fsnotify_unlink.exit.i.for.inc_crit_edge:         ; preds = %fsnotify_unlink.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.rhs.i62:                                     ; preds = %fsnotify_unlink.exit.i
  %.b46.i = load i1, ptr @nfsdfs_remove_file.__already_done, align 1
  br i1 %.b46.i, label %land.rhs.i62.for.inc_crit_edge, label %land.rhs.i62.for.inc.sink.split_crit_edge, !prof !167

land.rhs.i62.for.inc.sink.split_crit_edge:        ; preds = %land.rhs.i62
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split

land.rhs.i62.for.inc_crit_edge:                   ; preds = %land.rhs.i62
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc.sink.split:                               ; preds = %land.rhs.i62.for.inc.sink.split_crit_edge, %land.end.for.inc.sink.split_crit_edge
  %nfsdfs_remove_file.__already_done.sink = phi ptr [ @nfsdfs_remove_files.__already_done, %land.end.for.inc.sink.split_crit_edge ], [ @nfsdfs_remove_file.__already_done, %land.rhs.i62.for.inc.sink.split_crit_edge ]
  %.sink = phi i32 [ 1262, %land.end.for.inc.sink.split_crit_edge ], [ 1253, %land.rhs.i62.for.inc.sink.split_crit_edge ]
  %25 = ptrtoint ptr %nfsdfs_remove_file.__already_done.sink to i32
  call void @__asan_store1_noabort(i32 %25)
  store i1 true, ptr %nfsdfs_remove_file.__already_done.sink, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #12
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %land.rhs.i62.for.inc_crit_edge, %fsnotify_unlink.exit.i.for.inc_crit_edge, %land.end.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn69, %d_subdirs
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_rmdir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_nfsd() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unregister_cld_notifier() #12
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @nfsd_net_ops) #12
  tail call void @nfsd_drc_slab_free() #12
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.2, ptr noundef null) #12
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.3, ptr noundef null) #12
  tail call void @nfsd_stat_shutdown() #12
  tail call void @nfsd_lockd_shutdown() #12
  tail call void @nfsd4_free_slabs() #12
  tail call void @nfsd4_exit_pnfs() #12
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @nfsd_fs_type) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_cld_notifier() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_drc_slab_free() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_stat_shutdown() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_lockd_shutdown() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_free_slabs() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_exit_pnfs() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_nfsd() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #15
  %call2 = tail call i32 @nfsd4_init_slabs() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @nfsd4_init_pnfs() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_free_slabs_crit_edge

if.end.out_free_slabs_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_slabs

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @nfsd_stat_init() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.out_free_pnfs_crit_edge

if.end6.out_free_pnfs_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_pnfs

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @nfsd_drc_slab_create() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.out_free_stat_crit_edge

if.end10.out_free_stat_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_stat

if.end14:                                         ; preds = %if.end10
  tail call void @nfsd_lockd_init() #12
  %call15 = tail call fastcc i32 @create_proc_exports_entry()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.out_free_lockd_crit_edge

if.end14.out_free_lockd_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_lockd

if.end18:                                         ; preds = %if.end14
  %call19 = tail call i32 @register_filesystem(ptr noundef nonnull @nfsd_fs_type) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.out_free_exports_crit_edge

if.end18.out_free_exports_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_exports

if.end22:                                         ; preds = %if.end18
  %call23 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @nfsd_net_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.end22.out_free_filesystem_crit_edge, label %if.end25

if.end22.out_free_filesystem_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_filesystem

if.end25:                                         ; preds = %if.end22
  %call26 = tail call i32 @register_cld_notifier() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %out_free_all

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

out_free_all:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @nfsd_net_ops) #12
  br label %out_free_filesystem

out_free_filesystem:                              ; preds = %out_free_all, %if.end22.out_free_filesystem_crit_edge
  %retval1.0 = phi i32 [ %call23, %if.end22.out_free_filesystem_crit_edge ], [ %call26, %out_free_all ]
  %call30 = tail call i32 @unregister_filesystem(ptr noundef nonnull @nfsd_fs_type) #12
  br label %out_free_exports

out_free_exports:                                 ; preds = %out_free_filesystem, %if.end18.out_free_exports_crit_edge
  %retval1.1 = phi i32 [ %call19, %if.end18.out_free_exports_crit_edge ], [ %retval1.0, %out_free_filesystem ]
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.2, ptr noundef null) #12
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.3, ptr noundef null) #12
  br label %out_free_lockd

out_free_lockd:                                   ; preds = %out_free_exports, %if.end14.out_free_lockd_crit_edge
  %retval1.2 = phi i32 [ %call15, %if.end14.out_free_lockd_crit_edge ], [ %retval1.1, %out_free_exports ]
  tail call void @nfsd_lockd_shutdown() #12
  tail call void @nfsd_drc_slab_free() #12
  br label %out_free_stat

out_free_stat:                                    ; preds = %out_free_lockd, %if.end10.out_free_stat_crit_edge
  %retval1.3 = phi i32 [ %call11, %if.end10.out_free_stat_crit_edge ], [ %retval1.2, %out_free_lockd ]
  tail call void @nfsd_stat_shutdown() #12
  br label %out_free_pnfs

out_free_pnfs:                                    ; preds = %out_free_stat, %if.end6.out_free_pnfs_crit_edge
  %retval1.4 = phi i32 [ %call7, %if.end6.out_free_pnfs_crit_edge ], [ %retval1.3, %out_free_stat ]
  tail call void @nfsd4_exit_pnfs() #12
  br label %out_free_slabs

out_free_slabs:                                   ; preds = %out_free_pnfs, %if.end.out_free_slabs_crit_edge
  %retval1.5 = phi i32 [ %call3, %if.end.out_free_slabs_crit_edge ], [ %retval1.4, %out_free_pnfs ]
  tail call void @nfsd4_free_slabs() #12
  br label %cleanup

cleanup:                                          ; preds = %out_free_slabs, %if.end25.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.5, %out_free_slabs ], [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iunique(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_unlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_init_net(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call2 = tail call i32 @nfsd_export_init(ptr noundef %net) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @nfsd_idmap_init(ptr noundef %net) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_idmap_error_crit_edge

if.end.out_idmap_error_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_idmap_error

if.end6:                                          ; preds = %if.end
  %nfsd_versions = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 44
  %1 = ptrtoint ptr %nfsd_versions to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %nfsd_versions, align 8
  %nfsd4_minorversions = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 45
  %2 = ptrtoint ptr %nfsd4_minorversions to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %nfsd4_minorversions, align 4
  %call7 = tail call i32 @nfsd_reply_cache_init(ptr noundef %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %out_drc_error

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %nfsd4_lease = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 26
  %3 = ptrtoint ptr %nfsd4_lease to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 90, ptr %nfsd4_lease, align 8
  %nfsd4_grace = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 27
  %4 = ptrtoint ptr %nfsd4_grace to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 90, ptr %nfsd4_grace, align 8
  %somebody_reclaimed = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 28
  %5 = ptrtoint ptr %somebody_reclaimed to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %somebody_reclaimed, align 8
  %track_reclaim_completes = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 29
  %6 = ptrtoint ptr %track_reclaim_completes to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %track_reclaim_completes, align 1
  %call11 = tail call i32 @prandom_u32() #12
  %clverifier_counter = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 38
  %7 = ptrtoint ptr %clverifier_counter to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call11, ptr %clverifier_counter, align 8
  %call12 = tail call i32 @prandom_u32() #12
  %clientid_base = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 36
  %8 = ptrtoint ptr %clientid_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call12, ptr %clientid_base, align 8
  %add = add i32 %call12, 1
  %clientid_counter = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 37
  %inc = add i32 %call12, 2
  %9 = ptrtoint ptr %clientid_counter to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %clientid_counter, align 4
  %s2s_cp_cl_id = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 41
  %10 = ptrtoint ptr %s2s_cp_cl_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %s2s_cp_cl_id, align 4
  %siphash_key = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 60
  tail call void @get_random_bytes(ptr noundef %siphash_key, i32 noundef 16) #12
  %writeverf_lock = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 33
  %lock = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 33, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @nfsd_init_net.__key, i16 noundef signext 3) #12
  %dep_map.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 33, i32 0, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @nfsd_init_net.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %11 = ptrtoint ptr %writeverf_lock to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %writeverf_lock, align 4
  %lock25 = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 33, i32 0, i32 1
  %12 = ptrtoint ptr %lock25 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %lock, ptr %lock25, align 4
  br label %cleanup

out_drc_error:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nfsd_idmap_shutdown(ptr noundef %net) #12
  br label %out_idmap_error

out_idmap_error:                                  ; preds = %out_drc_error, %if.end.out_idmap_error_crit_edge
  %retval1.0 = phi i32 [ %call3, %if.end.out_idmap_error_crit_edge ], [ %call7, %out_drc_error ]
  tail call void @nfsd_export_shutdown(ptr noundef %net) #12
  br label %cleanup

cleanup:                                          ; preds = %out_idmap_error, %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call2, %entry.cleanup_crit_edge ], [ %retval1.0, %out_idmap_error ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd_exit_net(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  tail call void @nfsd_reply_cache_shutdown(ptr noundef %call) #12
  tail call void @nfsd_idmap_shutdown(ptr noundef %net) #12
  tail call void @nfsd_export_shutdown(ptr noundef %net) #12
  %1 = load i32, ptr @nfsd_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %1)
  tail call void @nfsd_netns_free_versions(ptr noundef %call1) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !155) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !171
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #12
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 45, ptr noundef nonnull @.str.9) #12
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !172
  %8 = tail call i32 @llvm.read_register.i32(metadata !155) #12
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_export_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_idmap_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_reply_cache_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_idmap_shutdown(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_export_shutdown(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_reply_cache_shutdown(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_netns_free_versions(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_init_fs_context(ptr nocapture noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ns = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 6
  %0 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ns, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.put_user_ns.exit_crit_edge, label %land.lhs.true.i

entry.put_user_ns.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_user_ns.exit

land.lhs.true.i:                                  ; preds = %entry
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %1, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #12, !srcloc !169
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, label %if.then10.i.i.i.i, !prof !167

if.end5.i.i.i.i.put_user_ns.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_user_ns.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #12
  br label %put_user_ns.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @__put_user_ns(ptr noundef nonnull %1) #12
  br label %put_user_ns.exit

put_user_ns.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, %entry.put_user_ns.exit_crit_edge
  %net_ns = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 7
  %3 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net_ns, align 4
  %user_ns1 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %user_ns1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %user_ns1, align 4
  %tobool.not.i6 = icmp eq ptr %6, null
  br i1 %tobool.not.i6, label %put_user_ns.exit.get_user_ns.exit_crit_edge, label %if.then.i9

put_user_ns.exit.get_user_ns.exit_crit_edge:      ; preds = %put_user_ns.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_user_ns.exit

if.then.i9:                                       ; preds = %put_user_ns.exit
  %count.i7 = getelementptr inbounds %struct.user_namespace, ptr %6, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i7, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %count.i7, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i7, ptr %count.i7, i32 1, ptr elementtype(i32) %count.i7) #12, !srcloc !165
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i9.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !166

if.then.i9.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i9
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i10 = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i10, label %if.else.i.i.i.i.get_user_ns.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !167

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_user_ns.exit_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_user_ns.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i9.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i9.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i7, i32 noundef %.sink.i.i.i.i) #12
  br label %get_user_ns.exit

get_user_ns.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_user_ns.exit_crit_edge, %put_user_ns.exit.get_user_ns.exit_crit_edge
  %9 = ptrtoint ptr %user_ns to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %user_ns, align 4
  %10 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @nfsd_fs_context_ops, ptr %fc, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd_umount(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  tail call void @nfsd_shutdown_threads(ptr noundef %1) #12
  tail call void @kill_litter_super(ptr noundef %sb) #12
  %count.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #12, !srcloc !169
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_net.exit_crit_edge, label %if.then10.i.i.i.i, !prof !167

if.end5.i.i.i.i.put_net.exit_crit_edge:           ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_net.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #12
  br label %put_net.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @__put_net(ptr noundef %1) #12
  br label %put_net.exit

put_net.exit:                                     ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_net.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_user_ns(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd_fs_free_fc(ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %count.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #12, !srcloc !169
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !167

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #12
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @__put_net(ptr noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_fs_get_tree(ptr noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %net_ns = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 7
  %0 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_ns, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #12, !srcloc !165
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !166

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_net.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !167

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_net.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_net.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #12
  br label %get_net.exit

get_net.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_net.exit_crit_edge
  %call1 = tail call i32 @get_tree_keyed(ptr noundef %fc, ptr noundef nonnull @nfsd_fill_super, ptr noundef %1) #12
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_keyed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_fill_super(ptr noundef %sb, ptr nocapture noundef readnone %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !155) #12
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
  %8 = load i32, ptr @nfsd_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %7, i32 noundef %8)
  %call2 = tail call i32 @simple_fill_super(ptr noundef %sb, i32 noundef 1852207972, ptr noundef nonnull @nfsd_fill_super.nfsd_files) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %9 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_root, align 64
  %call3 = tail call fastcc ptr @nfsd_mkdir(ptr noundef %10, ptr noundef null, ptr noundef nonnull @.str.34)
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %nfsd_client_dir = getelementptr inbounds %struct.nfsd_net, ptr %call1, i32 0, i32 8
  %12 = ptrtoint ptr %nfsd_client_dir to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call3, ptr %nfsd_client_dir, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then5 ], [ 0, %if.end7 ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_fill_super(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exports_nfsd_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %4 = load i32, ptr @nfsd_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %3, i32 noundef %4) #12
  %call1.i = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @nfs_exports_op) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.exports_net_open.exit_crit_edge

entry.exports_net_open.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %exports_net_open.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %5 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data.i, align 4
  %svc_export_cache.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %svc_export_cache.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %svc_export_cache.i, align 8
  %private.i = getelementptr inbounds %struct.seq_file, ptr %6, i32 0, i32 11
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %private.i, align 8
  br label %exports_net_open.exit

exports_net_open.exit:                            ; preds = %if.end.i, %entry.exports_net_open.exit_crit_edge
  ret i32 %call1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @export_features_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @export_features_show, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @export_features_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.35, i32 noundef 261887, i32 noundef 15) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsctl_transaction_read(ptr noundef %file, ptr noundef %buf, i32 noundef %size, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.then:                                          ; preds = %entry
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i.i, align 8
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %5)
  %cmp.i = icmp ugt i32 %5, 20
  br i1 %cmp.i, label %if.then.return_crit_edge, label %lor.lhs.false.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false.i:                                  ; preds = %if.then
  %arrayidx.i = getelementptr [21 x ptr], ptr @write_op, i32 0, i32 %5
  %6 = lshr i32 68639, %5
  %7 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.not.i, label %if.end.i, label %lor.lhs.false.i.return_crit_edge

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call1.i = tail call ptr @simple_transaction_get(ptr noundef %file, ptr noundef %buf, i32 noundef 0) #12
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %nfsctl_transaction_write.exit, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %call7.i = tail call i32 %9(ptr noundef %file, ptr noundef %call1.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7.i)
  %cmp8.i = icmp sgt i32 %call7.i, -1
  br i1 %cmp8.i, label %nfsctl_transaction_write.exit.thread12, label %if.end5.i.return_crit_edge

if.end5.i.return_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

nfsctl_transaction_write.exit.thread12:           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @simple_transaction_set(ptr noundef %file, i32 noundef %call7.i) #12
  br label %if.end2

nfsctl_transaction_write.exit:                    ; preds = %if.end.i
  %10 = ptrtoint ptr %call1.i to i32
  %cmp.not = icmp slt ptr %call1.i, null
  br i1 %cmp.not, label %nfsctl_transaction_write.exit.return_crit_edge, label %nfsctl_transaction_write.exit.if.end2_crit_edge

nfsctl_transaction_write.exit.if.end2_crit_edge:  ; preds = %nfsctl_transaction_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

nfsctl_transaction_write.exit.return_crit_edge:   ; preds = %nfsctl_transaction_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end2:                                          ; preds = %nfsctl_transaction_write.exit.if.end2_crit_edge, %nfsctl_transaction_write.exit.thread12, %entry.if.end2_crit_edge
  %call3 = tail call i32 @simple_transaction_read(ptr noundef %file, ptr noundef %buf, i32 noundef %size, ptr noundef %pos) #12
  br label %return

return:                                           ; preds = %if.end2, %nfsctl_transaction_write.exit.return_crit_edge, %if.end5.i.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %if.then.return_crit_edge
  %retval.1 = phi i32 [ %call3, %if.end2 ], [ %10, %nfsctl_transaction_write.exit.return_crit_edge ], [ %call7.i, %if.end5.i.return_crit_edge ], [ -22, %if.then.return_crit_edge ], [ -22, %lor.lhs.false.i.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsctl_transaction_write(ptr noundef %file, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %3)
  %cmp = icmp ugt i32 %3, 20
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr [21 x ptr], ptr @write_op, i32 0, i32 %3
  %4 = lshr i32 68639, %3
  %5 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.not = icmp eq i32 %5, 0
  br i1 %tobool.not.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call1 = tail call ptr @simple_transaction_get(ptr noundef %file, ptr noundef %buf, i32 noundef %size) #12
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call7 = tail call i32 %8(ptr noundef %file, ptr noundef %call1, i32 noundef %size) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7)
  %cmp8 = icmp sgt i32 %call7, -1
  br i1 %cmp8, label %if.then9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @simple_transaction_set(ptr noundef %file, i32 noundef %call7) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end5.cleanup_crit_edge, %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then3 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %size, %if.then9 ], [ %call7, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_transaction_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_transaction_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_transaction_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_transaction_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_filehandle(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %buf.i = alloca [50 x i8], align 1
  %ep.i = alloca ptr, align 4
  %mesg = alloca ptr, align 4
  %len = alloca i32, align 4
  %fh = alloca %struct.knfsd_fh, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mesg) #12
  %0 = ptrtoint ptr %mesg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buf, ptr %mesg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #12
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %fh) #12
  %1 = call ptr @memset(ptr %fh, i32 255, i32 132)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %size, -1
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp1.not = icmp eq i8 %3, 10
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  %call = call i32 @qword_get(ptr noundef nonnull %mesg, ptr noundef %buf, i32 noundef %size) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp7 = icmp slt i32 %call, 1
  br i1 %cmp7, label %if.end4.cleanup_crit_edge, label %if.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %add.ptr = getelementptr i8, ptr %buf, i32 %call
  %add.ptr11 = getelementptr i8, ptr %add.ptr, i32 1
  %call12 = call i32 @qword_get(ptr noundef nonnull %mesg, ptr noundef %add.ptr11, i32 noundef %size) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 1
  br i1 %cmp13, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i) #12
  %5 = call ptr @memset(ptr %buf.i, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep.i) #12
  %6 = ptrtoint ptr %ep.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep.i, align 4, !annotation !173
  %call.i = call i32 @qword_get(ptr noundef nonnull %mesg, ptr noundef nonnull %buf.i, i32 noundef 50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end16.get_int.exit.thread_crit_edge, label %if.end.i

if.end16.get_int.exit.thread_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_int.exit.thread

if.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.i, label %if.end.i.get_int.exit.thread_crit_edge, label %if.end3.i

if.end.i.get_int.exit.thread_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_int.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @simple_strtol(ptr noundef nonnull %buf.i, ptr noundef nonnull %ep.i, i32 noundef 0) #12
  %7 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ep.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end19, label %if.end3.i.get_int.exit.thread_crit_edge

if.end3.i.get_int.exit.thread_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_int.exit.thread

get_int.exit.thread:                              ; preds = %if.end3.i.get_int.exit.thread_crit_edge, %if.end.i.get_int.exit.thread_crit_edge, %if.end16.get_int.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end3.i.get_int.exit.thread_crit_edge ], [ -2, %if.end.i.get_int.exit.thread_crit_edge ], [ -22, %if.end16.get_int.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i) #12
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #12
  br label %cleanup

if.end19:                                         ; preds = %if.end3.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i) #12
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call5.i)
  %cmp20 = icmp slt i32 %call5.i, 32
  br i1 %cmp20, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %11 = call i32 @llvm.umin.i32(i32 %call5.i, i32 64)
  %12 = ptrtoint ptr %mesg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mesg, align 4
  %call26 = call i32 @qword_get(ptr noundef nonnull %mesg, ptr noundef %13, i32 noundef %size) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp sgt i32 %call26, 0
  br i1 %cmp27, label %if.end23.cleanup_crit_edge, label %if.end30

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %call31 = call ptr @unix_domain_find(ptr noundef %buf) #12
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end30.cleanup_crit_edge, label %if.end34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %14 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %call36 = call i32 @exp_rootfh(ptr noundef %19, ptr noundef nonnull %call31, ptr noundef %add.ptr11, ptr noundef nonnull %fh, i32 noundef %11) #12
  call void @auth_domain_put(ptr noundef nonnull %call31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %mesg to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf, ptr %mesg, align 4
  %21 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4092, ptr %len, align 4
  %22 = getelementptr inbounds %struct.knfsd_fh, ptr %fh, i32 0, i32 1
  %23 = ptrtoint ptr %fh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fh, align 4
  call void @qword_addhex(ptr noundef nonnull %mesg, ptr noundef nonnull %len, ptr noundef %22, i32 noundef %24) #12
  %25 = ptrtoint ptr %mesg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mesg, align 4
  %arrayidx40 = getelementptr i8, ptr %26, i32 -1
  %27 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 10, ptr %arrayidx40, align 1
  %28 = load ptr, ptr %mesg, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end34.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %get_int.exit.thread, %if.end10.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.sub, %if.end39 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ], [ -22, %if.end23.cleanup_crit_edge ], [ -12, %if.end30.cleanup_crit_edge ], [ %call36, %if.end34.cleanup_crit_edge ], [ %retval.0.i.ph, %get_int.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %fh) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mesg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_unlock_ip(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %buf.addr = alloca ptr, align 4
  %address = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buf, ptr %buf.addr, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %address) #12
  %1 = call ptr @memset(ptr %address, i32 255, i32 128)
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %size, -1
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %9)
  %cmp1.not = icmp eq i8 %9, 10
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @qword_get(ptr noundef nonnull %buf.addr, ptr noundef %buf, i32 noundef %size) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call10 = call i32 @rpc_pton(ptr noundef %7, ptr noundef %buf, i32 noundef %size, ptr noundef nonnull %address, i32 noundef 128) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = call i32 @nlmsvc_unlock_all_by_ip(ptr noundef nonnull %address) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %address) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_unlock_fs(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %buf.addr = alloca ptr, align 4
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buf, ptr %buf.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #12
  %1 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !173
  %2 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %size, -1
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp1.not = icmp eq i8 %5, 10
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call = call i32 @qword_get(ptr noundef nonnull %buf.addr, ptr noundef %buf, i32 noundef %size) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @kern_path(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %path) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_sb, align 4
  %call12 = call i32 @nlmsvc_unlock_all_by_sb(ptr noundef %9) #12
  call void @path_put(ptr noundef nonnull %path) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_threads(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %buf.i = alloca [50 x i8], align 1
  %ep.i = alloca ptr, align 4
  %mesg = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mesg) #12
  %0 = ptrtoint ptr %mesg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buf, ptr %mesg, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.not = icmp eq i32 %size, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i) #12
  %7 = call ptr @memset(ptr %buf.i, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep.i) #12
  %8 = ptrtoint ptr %ep.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep.i, align 4, !annotation !173
  %call.i = call i32 @qword_get(ptr noundef nonnull %mesg, ptr noundef nonnull %buf.i, i32 noundef 50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.get_int.exit.thread_crit_edge, label %if.end.i

if.then.get_int.exit.thread_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_int.exit.thread

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.i, label %if.end.i.get_int.exit.thread_crit_edge, label %if.end3.i

if.end.i.get_int.exit.thread_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_int.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @simple_strtol(ptr noundef nonnull %buf.i, ptr noundef nonnull %ep.i, i32 noundef 0) #12
  %9 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ep.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.end, label %if.end3.i.get_int.exit.thread_crit_edge

if.end3.i.get_int.exit.thread_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_int.exit.thread

get_int.exit.thread:                              ; preds = %if.end3.i.get_int.exit.thread_crit_edge, %if.end.i.get_int.exit.thread_crit_edge, %if.then.get_int.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end3.i.get_int.exit.thread_crit_edge ], [ -2, %if.end.i.get_int.exit.thread_crit_edge ], [ -22, %if.then.get_int.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i) #12
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #12
  br label %cleanup13

if.end:                                           ; preds = %if.end3.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i) #12
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp3 = icmp slt i32 %call5.i, 0
  br i1 %cmp3, label %if.end.cleanup13_crit_edge, label %cleanup

if.end.cleanup13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup13

cleanup:                                          ; preds = %if.end
  %f_cred = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 12
  %13 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %f_cred, align 8
  %call6 = call i32 @nfsd_svc(i32 noundef %call5.i, ptr noundef %6, ptr noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %cleanup.cleanup13_crit_edge, label %cleanup.if.end11_crit_edge

cleanup.if.end11_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

cleanup.cleanup13_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = tail call i32 @nfsd_nrthreads(ptr noundef %6) #12
  br label %if.end11

if.end11:                                         ; preds = %if.else, %cleanup.if.end11_crit_edge
  %rv.1 = phi i32 [ %call6, %cleanup.if.end11_crit_edge ], [ %call10, %if.else ]
  %call12 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4092, ptr noundef nonnull @.str.36, i32 noundef %rv.1) #12
  br label %cleanup13

cleanup13:                                        ; preds = %if.end11, %cleanup.cleanup13_crit_edge, %if.end.cleanup13_crit_edge, %get_int.exit.thread
  %retval.1 = phi i32 [ %call12, %if.end11 ], [ %call6, %cleanup.cleanup13_crit_edge ], [ %retval.0.i.ph, %get_int.exit.thread ], [ -22, %if.end.cleanup13_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mesg) #12
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_pool_threads(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %buf.i = alloca [50 x i8], align 1
  %ep.i = alloca ptr, align 4
  %mesg = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mesg) #12
  %0 = ptrtoint ptr %mesg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buf, ptr %mesg, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @mutex_lock_nested(ptr noundef nonnull @nfsd_mutex, i32 noundef 0) #12
  %call1 = tail call i32 @nfsd_nrpools(ptr noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef nonnull @nfsd_mutex) #12
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.37, i32 3)
  %call3 = tail call i32 @strlen(ptr noundef %buf) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call1, i32 4) #12
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %if.end.out_free_crit_edge, label %if.end7.i.i, !prof !166

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end7.i.i:                                      ; preds = %if.end
  %10 = extractvalue { i32, i1 } %8, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #17
  %cmp5 = icmp eq ptr %call8.i.i, null
  br i1 %cmp5, label %if.end7.i.i.out_free_crit_edge, label %if.end7

if.end7.i.i.out_free_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end7:                                          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp8.not = icmp eq i32 %size, 0
  br i1 %cmp8.not, label %if.end7.if.end25_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.if.end25_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7.for.body_crit_edge
  %i.097 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %call8.i.i, i32 %i.097
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i) #12
  %11 = call ptr @memset(ptr %buf.i, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep.i) #12
  %12 = ptrtoint ptr %ep.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep.i, align 4, !annotation !173
  %call.i = call i32 @qword_get(ptr noundef nonnull %mesg, ptr noundef nonnull %buf.i, i32 noundef 50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.body.get_int.exit.thread_crit_edge, label %if.end.i

for.body.get_int.exit.thread_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_int.exit.thread

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.i, label %get_int.exit.thread90, label %if.end3.i

get_int.exit.thread90:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i) #12
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #12
  br label %for.end

if.end3.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @simple_strtol(ptr noundef nonnull %buf.i, ptr noundef nonnull %ep.i, i32 noundef 0) #12
  %13 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ep.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.end16, label %if.end3.i.get_int.exit.thread_crit_edge

if.end3.i.get_int.exit.thread_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_int.exit.thread

get_int.exit.thread:                              ; preds = %if.end3.i.get_int.exit.thread_crit_edge, %for.body.get_int.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i) #12
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #12
  br label %out_free

if.end16:                                         ; preds = %if.end3.i
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call5.i, ptr %arrayidx, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i) #12
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp18 = icmp slt i32 %call5.i, 0
  br i1 %cmp18, label %if.end16.out_free_crit_edge, label %for.inc

if.end16.out_free_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

for.inc:                                          ; preds = %if.end16
  %inc = add nuw nsw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %get_int.exit.thread90
  %i.095 = phi i32 [ %i.097, %get_int.exit.thread90 ], [ %call1, %for.inc.for.end_crit_edge ]
  %call21 = call i32 @nfsd_set_nrthreads(i32 noundef %i.095, ptr noundef nonnull %call8.i.i, ptr noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %for.end.if.end25_crit_edge, label %for.end.out_free_crit_edge

for.end.out_free_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.end25:                                         ; preds = %for.end.if.end25_crit_edge, %if.end7.if.end25_crit_edge
  %call26 = call i32 @nfsd_get_nrthreads(i32 noundef %call1, ptr noundef nonnull %call8.i.i, ptr noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.out_free_crit_edge

if.end25.out_free_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end29:                                         ; preds = %if.end25
  %18 = ptrtoint ptr %mesg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf, ptr %mesg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp3198 = icmp slt i32 %call1, 1
  br i1 %cmp3198, label %if.end29.for.end41_crit_edge, label %for.body33.lr.ph

if.end29.for.end41_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end41

for.body33.lr.ph:                                 ; preds = %if.end29
  %sub = add nsw i32 %call1, -1
  br label %for.body33

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %for.body33.lr.ph
  %i.1100 = phi i32 [ 0, %for.body33.lr.ph ], [ %inc40, %for.body33.for.body33_crit_edge ]
  %size.addr.099 = phi i32 [ 4092, %for.body33.lr.ph ], [ %sub38, %for.body33.for.body33_crit_edge ]
  %19 = ptrtoint ptr %mesg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mesg, align 4
  %arrayidx34 = getelementptr i32, ptr %call8.i.i, i32 %i.1100
  %21 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1100, i32 %sub)
  %cmp35 = icmp eq i32 %i.1100, %sub
  %cond = select i1 %cmp35, i32 10, i32 32
  %call36 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %20, i32 noundef %size.addr.099, ptr noundef nonnull @.str.38, i32 noundef %22, i32 noundef %cond)
  %23 = ptrtoint ptr %mesg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mesg, align 4
  %call37 = call i32 @strlen(ptr noundef %24) #16
  %sub38 = sub i32 %size.addr.099, %call37
  %add.ptr = getelementptr i8, ptr %24, i32 %call37
  %25 = ptrtoint ptr %mesg to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr, ptr %mesg, align 4
  %inc40 = add nuw nsw i32 %i.1100, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc40, i32 %call1)
  %cmp31 = icmp sge i32 %inc40, %call1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub38)
  %cmp32.not = icmp eq i32 %sub38, 0
  %or.cond = select i1 %cmp31, i1 true, i1 %cmp32.not
  br i1 %or.cond, label %for.body33.for.end41_crit_edge, label %for.body33.for.body33_crit_edge

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body33

for.body33.for.end41_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end41

for.end41:                                        ; preds = %for.body33.for.end41_crit_edge, %if.end29.for.end41_crit_edge
  %26 = ptrtoint ptr %mesg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mesg, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %out_free

out_free:                                         ; preds = %for.end41, %if.end25.out_free_crit_edge, %for.end.out_free_crit_edge, %if.end16.out_free_crit_edge, %get_int.exit.thread, %if.end7.i.i.out_free_crit_edge, %if.end.out_free_crit_edge
  %retval.0.i.i83 = phi ptr [ null, %if.end7.i.i.out_free_crit_edge ], [ %call8.i.i, %for.end.out_free_crit_edge ], [ %call8.i.i, %if.end25.out_free_crit_edge ], [ %call8.i.i, %for.end41 ], [ %call8.i.i, %get_int.exit.thread ], [ null, %if.end.out_free_crit_edge ], [ %call8.i.i, %if.end16.out_free_crit_edge ]
  %rv.0 = phi i32 [ -12, %if.end7.i.i.out_free_crit_edge ], [ %call21, %for.end.out_free_crit_edge ], [ %call26, %if.end25.out_free_crit_edge ], [ %sub.ptr.sub, %for.end41 ], [ -22, %get_int.exit.thread ], [ -12, %if.end.out_free_crit_edge ], [ -22, %if.end16.out_free_crit_edge ]
  call void @kfree(ptr noundef %retval.0.i.i83) #12
  call void @mutex_unlock(ptr noundef nonnull @nfsd_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %rv.0, %out_free ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mesg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_versions(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %mesg.i = alloca ptr, align 4
  %minorp.i = alloca ptr, align 4
  %minor.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nfsd_mutex, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mesg.i) #12
  %0 = ptrtoint ptr %mesg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buf, ptr %mesg.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minorp.i) #12
  %1 = ptrtoint ptr %minorp.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %minorp.i, align 4, !annotation !173
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i.i.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %8 = load i32, ptr @nfsd_net_id, align 4
  %call1.i = tail call fastcc ptr @net_generic(ptr noundef %7, i32 noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.not.i = icmp eq i32 %size, 0
  br i1 %cmp.not.i, label %entry.if.end70.i_crit_edge, label %if.then.i

entry.if.end70.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i

if.then.i:                                        ; preds = %entry
  %nfsd_serv.i = getelementptr inbounds %struct.nfsd_net, ptr %call1.i, i32 0, i32 39
  %9 = ptrtoint ptr %nfsd_serv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nfsd_serv.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.__write_versions.exit_crit_edge

if.then.i.__write_versions.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__write_versions.exit

if.end.i:                                         ; preds = %if.then.i
  %sub.i = add i32 %size, -1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %sub.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %12)
  %cmp3.not.i = icmp eq i8 %12, 10
  br i1 %cmp3.not.i, label %if.end6.i, label %if.end.i.__write_versions.exit_crit_edge

if.end.i.__write_versions.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__write_versions.exit

if.end6.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx.i, align 1
  %14 = ptrtoint ptr %mesg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mesg.i, align 4
  %call9.i = call i32 @qword_get(ptr noundef nonnull %mesg.i, ptr noundef %15, i32 noundef %size) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 1
  br i1 %cmp10.i, label %if.end6.i.__write_versions.exit_crit_edge, label %if.end6.i.do.body.i_crit_edge

if.end6.i.do.body.i_crit_edge:                    ; preds = %if.end6.i
  br label %do.body.i

if.end6.i.__write_versions.exit_crit_edge:        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__write_versions.exit

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end6.i.do.body.i_crit_edge
  %vers.0.i = phi ptr [ %add.ptr65.i, %do.cond.i.do.body.i_crit_edge ], [ %15, %if.end6.i.do.body.i_crit_edge ]
  %len.0.i = phi i32 [ %call67.i, %do.cond.i.do.body.i_crit_edge ], [ %call9.i, %if.end6.i.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minor.i) #12
  %16 = ptrtoint ptr %minor.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %minor.i, align 4, !annotation !173
  %17 = ptrtoint ptr %vers.0.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vers.0.i, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i8 %18, label %do.body.i.if.end23.i_crit_edge [
    i8 43, label %do.body.i.if.then20.i_crit_edge
    i8 45, label %do.body.i.if.then20.i_crit_edge1
  ]

do.body.i.if.then20.i_crit_edge1:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20.i

do.body.i.if.then20.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20.i

do.body.i.if.end23.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then20.i:                                      ; preds = %do.body.i.if.then20.i_crit_edge, %do.body.i.if.then20.i_crit_edge1
  %add.ptr.i = getelementptr i8, ptr %vers.0.i, i32 1
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %do.body.i.if.end23.i_crit_edge
  %vers.0.sink.i = phi ptr [ %add.ptr.i, %if.then20.i ], [ %vers.0.i, %do.body.i.if.end23.i_crit_edge ]
  %call22.i = call i32 @simple_strtol(ptr noundef %vers.0.sink.i, ptr noundef nonnull %minorp.i, i32 noundef 0) #12
  %20 = ptrtoint ptr %minorp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %minorp.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %23)
  %cmp25.i = icmp eq i8 %23, 46
  br i1 %cmp25.i, label %if.then27.i, label %if.end38.i

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call22.i)
  %cmp28.not.i = icmp eq i32 %call22.i, 4
  br i1 %cmp28.not.i, label %if.end31.i, label %if.then27.i.cleanup.thread.i_crit_edge

if.then27.i.cleanup.thread.i_crit_edge:           ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

if.end31.i:                                       ; preds = %if.then27.i
  %add.ptr32.i = getelementptr i8, ptr %21, i32 1
  %call33.i = call i32 @kstrtouint(ptr noundef %add.ptr32.i, i32 noundef 0, ptr noundef nonnull %minor.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %if.end31.i.cleanup.thread.i_crit_edge, label %if.end38.thread.i

if.end31.i.cleanup.thread.i_crit_edge:            ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

if.end38.thread.i:                                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %18)
  %cmp40168.i = icmp eq i8 %18, 45
  %cond169.i = zext i1 %cmp40168.i to i32
  br label %sw.bb43.i

if.end38.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %18)
  %cmp40.i = icmp eq i8 %18, 45
  %cond.i = zext i1 %cmp40.i to i32
  %24 = zext i32 %call22.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %call22.i, label %if.end38.i.cleanup.thread.i_crit_edge [
    i32 2, label %if.end38.i.sw.bb.i_crit_edge
    i32 3, label %if.end38.i.sw.bb.i_crit_edge2
    i32 4, label %if.end38.i.sw.bb43.i_crit_edge
  ]

if.end38.i.sw.bb43.i_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb43.i

if.end38.i.sw.bb.i_crit_edge2:                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end38.i.sw.bb.i_crit_edge:                     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end38.i.cleanup.thread.i_crit_edge:            ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

sw.bb.i:                                          ; preds = %if.end38.i.sw.bb.i_crit_edge, %if.end38.i.sw.bb.i_crit_edge2
  %call42.i = call i32 @nfsd_vers(ptr noundef %call1.i, i32 noundef %call22.i, i32 noundef %cond.i) #12
  br label %do.cond.i

sw.bb43.i:                                        ; preds = %if.end38.i.sw.bb43.i_crit_edge, %if.end38.thread.i
  %cond171.i = phi i32 [ %cond169.i, %if.end38.thread.i ], [ %cond.i, %if.end38.i.sw.bb43.i_crit_edge ]
  %cmp40170.i = phi i1 [ %cmp40168.i, %if.end38.thread.i ], [ %cmp40.i, %if.end38.i.sw.bb43.i_crit_edge ]
  %25 = ptrtoint ptr %minorp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %minorp.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %28)
  %cmp45.i = icmp eq i8 %28, 46
  br i1 %cmp45.i, label %if.then47.i, label %if.else53.i

if.then47.i:                                      ; preds = %sw.bb43.i
  %29 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %minor.i, align 4
  %call48.i = call i32 @nfsd_minorversion(ptr noundef %call1.i, i32 noundef %30, i32 noundef %cond171.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.i = icmp slt i32 %call48.i, 0
  br i1 %cmp49.i, label %if.then47.i.cleanup.thread.i_crit_edge, label %if.then47.i.do.cond.i_crit_edge

if.then47.i.do.cond.i_crit_edge:                  ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond.i

if.then47.i.cleanup.thread.i_crit_edge:           ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

if.else53.i:                                      ; preds = %sw.bb43.i
  %cmp54.i = xor i1 %cmp40170.i, true
  %conv55.i = zext i1 %cmp54.i to i32
  %call56.i = call i32 @nfsd_vers(ptr noundef %call1.i, i32 noundef 4, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call56.i, i32 %conv55.i)
  %cmp57.not.i = icmp eq i32 %call56.i, %conv55.i
  br i1 %cmp57.not.i, label %if.else53.i.do.cond.i_crit_edge, label %while.cond.preheader.i

if.else53.i.do.cond.i_crit_edge:                  ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond.i

while.cond.preheader.i:                           ; preds = %if.else53.i
  %31 = ptrtoint ptr %minor.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %minor.i, align 4
  %call60190.i = call i32 @nfsd_minorversion(ptr noundef %call1.i, i32 noundef 0, i32 noundef %cond171.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call60190.i)
  %cmp61191.i = icmp sgt i32 %call60190.i, -1
  br i1 %cmp61191.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.do.cond.i_crit_edge

while.cond.preheader.i.do.cond.i_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond.i

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %32 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %minor.i, align 4
  %inc.i = add i32 %33, 1
  store i32 %inc.i, ptr %minor.i, align 4
  %call60.i = call i32 @nfsd_minorversion(ptr noundef %call1.i, i32 noundef %inc.i, i32 noundef %cond171.i) #12
  %cmp61.i = icmp sgt i32 %call60.i, -1
  br i1 %cmp61.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.do.cond.i_crit_edge

while.body.i.do.cond.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.thread.i:                                 ; preds = %if.then47.i.cleanup.thread.i_crit_edge, %if.end38.i.cleanup.thread.i_crit_edge, %if.end31.i.cleanup.thread.i_crit_edge, %if.then27.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minor.i) #12
  br label %__write_versions.exit

do.cond.i:                                        ; preds = %while.body.i.do.cond.i_crit_edge, %while.cond.preheader.i.do.cond.i_crit_edge, %if.else53.i.do.cond.i_crit_edge, %if.then47.i.do.cond.i_crit_edge, %sw.bb.i
  %add.i = add i32 %len.0.i, 1
  %add.ptr65.i = getelementptr i8, ptr %vers.0.i, i32 %add.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minor.i) #12
  %call67.i = call i32 @qword_get(ptr noundef nonnull %mesg.i, ptr noundef %add.ptr65.i, i32 noundef %size) #12
  %cmp68.i = icmp sgt i32 %call67.i, 0
  br i1 %cmp68.i, label %do.cond.i.do.body.i_crit_edge, label %do.end.i

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.end.i:                                         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @nfsd_reset_versions(ptr noundef %call1.i) #12
  br label %if.end70.i

if.end70.i:                                       ; preds = %do.end.i, %entry.if.end70.i_crit_edge
  %call74.i = call i32 @nfsd_vers(ptr noundef %call1.i, i32 noundef 2, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %if.end70.i.for.inc.i_crit_edge, label %nfsd_print_version_support.exit.i

if.end70.i.for.inc.i_crit_edge:                   ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

nfsd_print_version_support.exit.i:                ; preds = %if.end70.i
  %call.i.i = call i32 @nfsd_vers(ptr noundef %call1.i, i32 noundef 2, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.not.i = icmp eq i32 %call.i.i, 0
  %cond13.i.i = select i1 %tobool.i.not.i, i32 45, i32 43
  %call14.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4092, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.33, i32 noundef %cond13.i.i, i32 noundef 2, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4092, i32 %call14.i.i)
  %cmp80.not.i = icmp slt i32 %call14.i.i, 4092
  br i1 %cmp80.not.i, label %if.end83.i, label %nfsd_print_version_support.exit.i.out.i_crit_edge

nfsd_print_version_support.exit.i.out.i_crit_edge: ; preds = %nfsd_print_version_support.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end83.i:                                       ; preds = %nfsd_print_version_support.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub84.i = sub i32 4092, %call14.i.i
  %add.ptr85.i = getelementptr i8, ptr %buf, i32 %call14.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool88.not.i = icmp eq i32 %call14.i.i, 0
  %spec.select.i = select i1 %tobool88.not.i, ptr @.str.33, ptr @.str.39
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end83.i, %if.end70.i.for.inc.i_crit_edge
  %buf.addr.2.ph.i = phi ptr [ %buf, %if.end70.i.for.inc.i_crit_edge ], [ %add.ptr85.i, %if.end83.i ]
  %remaining.2.ph.i = phi i32 [ 4092, %if.end70.i.for.inc.i_crit_edge ], [ %sub84.i, %if.end83.i ]
  %tlen.2.ph.i = phi i32 [ 0, %if.end70.i.for.inc.i_crit_edge ], [ %call14.i.i, %if.end83.i ]
  %sep.3.ph.i = phi ptr [ @.str.33, %if.end70.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.end83.i ]
  %call74.1.i = call i32 @nfsd_vers(ptr noundef %call1.i, i32 noundef 3, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.1.i)
  %tobool75.not.1.i = icmp eq i32 %call74.1.i, 0
  br i1 %tobool75.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %nfsd_print_version_support.exit.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i

nfsd_print_version_support.exit.1.i:              ; preds = %for.inc.i
  %call.i.1.i = call i32 @nfsd_vers(ptr noundef %call1.i, i32 noundef 3, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.i.1.not.i = icmp eq i32 %call.i.1.i, 0
  %cond13.i.1.i = select i1 %tobool.i.1.not.i, i32 45, i32 43
  %call14.i.1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf.addr.2.ph.i, i32 noundef %remaining.2.ph.i, ptr noundef nonnull @.str.41, ptr noundef nonnull %sep.3.ph.i, i32 noundef %cond13.i.1.i, i32 noundef 3, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.2.ph.i, i32 %call14.i.1.i)
  %cmp80.not.1.i = icmp sgt i32 %remaining.2.ph.i, %call14.i.1.i
  br i1 %cmp80.not.1.i, label %if.end83.1.i, label %nfsd_print_version_support.exit.1.i.out.i_crit_edge

nfsd_print_version_support.exit.1.i.out.i_crit_edge: ; preds = %nfsd_print_version_support.exit.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end83.1.i:                                     ; preds = %nfsd_print_version_support.exit.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub84.1.i = sub i32 %remaining.2.ph.i, %call14.i.1.i
  %add.ptr85.1.i = getelementptr i8, ptr %buf.addr.2.ph.i, i32 %call14.i.1.i
  %add86.1.i = add i32 %call14.i.1.i, %tlen.2.ph.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.1.i)
  %tobool88.not.1.i = icmp eq i32 %call14.i.1.i, 0
  %spec.select.1.i = select i1 %tobool88.not.1.i, ptr %sep.3.ph.i, ptr @.str.39
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end83.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %buf.addr.2.ph.1.i = phi ptr [ %buf.addr.2.ph.i, %for.inc.i.for.inc.1.i_crit_edge ], [ %add.ptr85.1.i, %if.end83.1.i ]
  %remaining.2.ph.1.i = phi i32 [ %remaining.2.ph.i, %for.inc.i.for.inc.1.i_crit_edge ], [ %sub84.1.i, %if.end83.1.i ]
  %tlen.2.ph.1.i = phi i32 [ %tlen.2.ph.i, %for.inc.i.for.inc.1.i_crit_edge ], [ %add86.1.i, %if.end83.1.i ]
  %sep.3.ph.1.i = phi ptr [ %sep.3.ph.i, %for.inc.i.for.inc.1.i_crit_edge ], [ %spec.select.1.i, %if.end83.1.i ]
  %call74.2.i = call i32 @nfsd_vers(ptr noundef %call1.i, i32 noundef 4, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.2.i)
  %tobool75.not.2.i = icmp eq i32 %call74.2.i, 0
  br i1 %tobool75.not.2.i, label %for.inc.1.i.out.i_crit_edge, label %nfsd_print_version_support.exit.2.i

for.inc.1.i.out.i_crit_edge:                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

nfsd_print_version_support.exit.2.i:              ; preds = %for.inc.1.i
  %call.i.2.i = call i32 @nfsd_vers(ptr noundef %call1.i, i32 noundef 4, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %tobool.i.2.not.i = icmp eq i32 %call.i.2.i, 0
  %cond13.i.2.i = select i1 %tobool.i.2.not.i, i32 45, i32 43
  %call14.i.2.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf.addr.2.ph.1.i, i32 noundef %remaining.2.ph.1.i, ptr noundef nonnull @.str.41, ptr noundef %sep.3.ph.1.i, i32 noundef %cond13.i.2.i, i32 noundef 4, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.2.ph.1.i, i32 %call14.i.2.i)
  %cmp80.not.2.i = icmp sgt i32 %remaining.2.ph.1.i, %call14.i.2.i
  br i1 %cmp80.not.2.i, label %if.end.i.2.1.i, label %nfsd_print_version_support.exit.2.i.out.i_crit_edge

nfsd_print_version_support.exit.2.i.out.i_crit_edge: ; preds = %nfsd_print_version_support.exit.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end.i.2.1.i:                                   ; preds = %nfsd_print_version_support.exit.2.i
  %sub84.2.i = sub i32 %remaining.2.ph.1.i, %call14.i.2.i
  %add.ptr85.2.i = getelementptr i8, ptr %buf.addr.2.ph.1.i, i32 %call14.i.2.i
  %add86.2.i = add i32 %call14.i.2.i, %tlen.2.ph.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.2.i)
  %tobool88.not.2.i = icmp eq i32 %call14.i.2.i, 0
  %spec.select.2.i = select i1 %tobool88.not.2.i, ptr %sep.3.ph.1.i, ptr @.str.39
  %call.i.2.1.i = call i32 @nfsd_vers(ptr noundef %call1.i, i32 noundef 4, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.1.i)
  %tobool.i.2.1.i = icmp ne i32 %call.i.2.1.i, 0
  %call5.i.2.1.i = call i32 @nfsd_minorversion(ptr noundef %call1.i, i32 noundef 0, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.2.1.i)
  %tobool6.not.i.2.1.i = icmp ne i32 %call5.i.2.1.i, 0
  %spec.select.i.2.1.i = select i1 %tobool6.not.i.2.1.i, i1 %tobool.i.2.1.i, i1 false
  br i1 %spec.select.i.2.1.i, label %if.end.i.2.1.i.nfsd_print_version_support.exit.2.1.i_crit_edge, label %if.end11.i.2.1.i

if.end.i.2.1.i.nfsd_print_version_support.exit.2.1.i_crit_edge: ; preds = %if.end.i.2.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfsd_print_version_support.exit.2.1.i

if.end11.i.2.1.i:                                 ; preds = %if.end.i.2.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i.2.1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr85.2.i, i32 noundef %sub84.2.i, ptr noundef nonnull @.str.42, ptr noundef %spec.select.2.i, i32 noundef 45, i32 noundef 4, i32 noundef 0) #12
  br label %nfsd_print_version_support.exit.2.1.i

nfsd_print_version_support.exit.2.1.i:            ; preds = %if.end11.i.2.1.i, %if.end.i.2.1.i.nfsd_print_version_support.exit.2.1.i_crit_edge
  %retval.0.i.2.1.i = phi i32 [ %call14.i.2.1.i, %if.end11.i.2.1.i ], [ 0, %if.end.i.2.1.i.nfsd_print_version_support.exit.2.1.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub84.2.i, i32 %retval.0.i.2.1.i)
  %cmp80.not.2.1.i = icmp sgt i32 %sub84.2.i, %retval.0.i.2.1.i
  br i1 %cmp80.not.2.1.i, label %nfsd_print_version_support.exit.2.2.i, label %nfsd_print_version_support.exit.2.1.i.out.i_crit_edge

nfsd_print_version_support.exit.2.1.i.out.i_crit_edge: ; preds = %nfsd_print_version_support.exit.2.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

nfsd_print_version_support.exit.2.2.i:            ; preds = %nfsd_print_version_support.exit.2.1.i
  %sub84.2.1.i = sub i32 %sub84.2.i, %retval.0.i.2.1.i
  %add.ptr85.2.1.i = getelementptr i8, ptr %add.ptr85.2.i, i32 %retval.0.i.2.1.i
  %add86.2.1.i = add i32 %retval.0.i.2.1.i, %add86.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.2.1.i)
  %tobool88.not.2.1.i = icmp eq i32 %retval.0.i.2.1.i, 0
  %spec.select.2.1.i = select i1 %tobool88.not.2.1.i, ptr %spec.select.2.i, ptr @.str.39
  %call.i.2.2.i = call i32 @nfsd_vers(ptr noundef %call1.i, i32 noundef 4, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.2.i)
  %tobool.i.2.2.i = icmp ne i32 %call.i.2.2.i, 0
  %call5.i.2.2.i = call i32 @nfsd_minorversion(ptr noundef %call1.i, i32 noundef 1, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.2.2.i)
  %tobool6.not.i.2.2.i = icmp ne i32 %call5.i.2.2.i, 0
  %spec.select.i.2.2.i = select i1 %tobool6.not.i.2.2.i, i1 %tobool.i.2.2.i, i1 false
  %phi.sel.i = select i1 %spec.select.i.2.2.i, i32 43, i32 45
  %call14.i.2.2.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr85.2.1.i, i32 noundef %sub84.2.1.i, ptr noundef nonnull @.str.42, ptr noundef %spec.select.2.1.i, i32 noundef %phi.sel.i, i32 noundef 4, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %sub84.2.1.i, i32 %call14.i.2.2.i)
  %cmp80.not.2.2.i = icmp sgt i32 %sub84.2.1.i, %call14.i.2.2.i
  br i1 %cmp80.not.2.2.i, label %nfsd_print_version_support.exit.2.3.i, label %nfsd_print_version_support.exit.2.2.i.out.i_crit_edge

nfsd_print_version_support.exit.2.2.i.out.i_crit_edge: ; preds = %nfsd_print_version_support.exit.2.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

nfsd_print_version_support.exit.2.3.i:            ; preds = %nfsd_print_version_support.exit.2.2.i
  %sub84.2.2.i = sub i32 %sub84.2.1.i, %call14.i.2.2.i
  %add.ptr85.2.2.i = getelementptr i8, ptr %add.ptr85.2.1.i, i32 %call14.i.2.2.i
  %add86.2.2.i = add i32 %call14.i.2.2.i, %add86.2.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.2.2.i)
  %tobool88.not.2.2.i = icmp eq i32 %call14.i.2.2.i, 0
  %spec.select.2.2.i = select i1 %tobool88.not.2.2.i, ptr %spec.select.2.1.i, ptr @.str.39
  %call.i.2.3.i = call i32 @nfsd_vers(ptr noundef %call1.i, i32 noundef 4, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.3.i)
  %tobool.i.2.3.i = icmp ne i32 %call.i.2.3.i, 0
  %call5.i.2.3.i = call i32 @nfsd_minorversion(ptr noundef %call1.i, i32 noundef 2, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.2.3.i)
  %tobool6.not.i.2.3.i = icmp ne i32 %call5.i.2.3.i, 0
  %spec.select.i.2.3.i = select i1 %tobool6.not.i.2.3.i, i1 %tobool.i.2.3.i, i1 false
  %phi.sel210.i = select i1 %spec.select.i.2.3.i, i32 43, i32 45
  %call14.i.2.3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr85.2.2.i, i32 noundef %sub84.2.2.i, ptr noundef nonnull @.str.42, ptr noundef %spec.select.2.2.i, i32 noundef %phi.sel210.i, i32 noundef 4, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %sub84.2.2.i, i32 %call14.i.2.3.i)
  %cmp80.not.2.3.i = icmp sgt i32 %sub84.2.2.i, %call14.i.2.3.i
  br i1 %cmp80.not.2.3.i, label %if.end83.2.3.i, label %nfsd_print_version_support.exit.2.3.i.out.i_crit_edge

nfsd_print_version_support.exit.2.3.i.out.i_crit_edge: ; preds = %nfsd_print_version_support.exit.2.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end83.2.3.i:                                   ; preds = %nfsd_print_version_support.exit.2.3.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub84.2.3.i = sub i32 %sub84.2.2.i, %call14.i.2.3.i
  %add.ptr85.2.3.i = getelementptr i8, ptr %add.ptr85.2.2.i, i32 %call14.i.2.3.i
  %add86.2.3.i = add i32 %call14.i.2.3.i, %add86.2.2.i
  br label %out.i

out.i:                                            ; preds = %if.end83.2.3.i, %nfsd_print_version_support.exit.2.3.i.out.i_crit_edge, %nfsd_print_version_support.exit.2.2.i.out.i_crit_edge, %nfsd_print_version_support.exit.2.1.i.out.i_crit_edge, %nfsd_print_version_support.exit.2.i.out.i_crit_edge, %for.inc.1.i.out.i_crit_edge, %nfsd_print_version_support.exit.1.i.out.i_crit_edge, %nfsd_print_version_support.exit.i.out.i_crit_edge
  %buf.addr.3.i = phi ptr [ %buf.addr.2.ph.1.i, %for.inc.1.i.out.i_crit_edge ], [ %add.ptr85.2.3.i, %if.end83.2.3.i ], [ %buf, %nfsd_print_version_support.exit.i.out.i_crit_edge ], [ %buf.addr.2.ph.i, %nfsd_print_version_support.exit.1.i.out.i_crit_edge ], [ %buf.addr.2.ph.1.i, %nfsd_print_version_support.exit.2.i.out.i_crit_edge ], [ %add.ptr85.2.i, %nfsd_print_version_support.exit.2.1.i.out.i_crit_edge ], [ %add.ptr85.2.1.i, %nfsd_print_version_support.exit.2.2.i.out.i_crit_edge ], [ %add.ptr85.2.2.i, %nfsd_print_version_support.exit.2.3.i.out.i_crit_edge ]
  %remaining.3.i = phi i32 [ %remaining.2.ph.1.i, %for.inc.1.i.out.i_crit_edge ], [ %sub84.2.3.i, %if.end83.2.3.i ], [ 4092, %nfsd_print_version_support.exit.i.out.i_crit_edge ], [ %remaining.2.ph.i, %nfsd_print_version_support.exit.1.i.out.i_crit_edge ], [ %remaining.2.ph.1.i, %nfsd_print_version_support.exit.2.i.out.i_crit_edge ], [ %sub84.2.i, %nfsd_print_version_support.exit.2.1.i.out.i_crit_edge ], [ %sub84.2.1.i, %nfsd_print_version_support.exit.2.2.i.out.i_crit_edge ], [ %sub84.2.2.i, %nfsd_print_version_support.exit.2.3.i.out.i_crit_edge ]
  %tlen.3.i = phi i32 [ %tlen.2.ph.1.i, %for.inc.1.i.out.i_crit_edge ], [ %add86.2.3.i, %if.end83.2.3.i ], [ 0, %nfsd_print_version_support.exit.i.out.i_crit_edge ], [ %tlen.2.ph.i, %nfsd_print_version_support.exit.1.i.out.i_crit_edge ], [ %tlen.2.ph.1.i, %nfsd_print_version_support.exit.2.i.out.i_crit_edge ], [ %add86.2.i, %nfsd_print_version_support.exit.2.1.i.out.i_crit_edge ], [ %add86.2.1.i, %nfsd_print_version_support.exit.2.2.i.out.i_crit_edge ], [ %add86.2.2.i, %nfsd_print_version_support.exit.2.3.i.out.i_crit_edge ]
  %call101.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf.addr.3.i, i32 noundef %remaining.3.i, ptr noundef nonnull @.str.40) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call101.i, i32 %remaining.3.i)
  %cmp102.not.i = icmp slt i32 %call101.i, %remaining.3.i
  br i1 %cmp102.not.i, label %if.end105.i, label %out.i.__write_versions.exit_crit_edge

out.i.__write_versions.exit_crit_edge:            ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__write_versions.exit

if.end105.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  %add106.i = add i32 %call101.i, %tlen.3.i
  br label %__write_versions.exit

__write_versions.exit:                            ; preds = %if.end105.i, %out.i.__write_versions.exit_crit_edge, %cleanup.thread.i, %if.end6.i.__write_versions.exit_crit_edge, %if.end.i.__write_versions.exit_crit_edge, %if.then.i.__write_versions.exit_crit_edge
  %retval.3.i = phi i32 [ %add106.i, %if.end105.i ], [ -16, %if.then.i.__write_versions.exit_crit_edge ], [ -22, %if.end.i.__write_versions.exit_crit_edge ], [ -22, %if.end6.i.__write_versions.exit_crit_edge ], [ -22, %out.i.__write_versions.exit_crit_edge ], [ -22, %cleanup.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minorp.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mesg.i) #12
  call void @mutex_unlock(ptr noundef nonnull @nfsd_mutex) #12
  ret i32 %retval.3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_ports(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %transport.i.i = alloca [16 x i8], align 1
  %port.i.i = alloca i32, align 4
  %buf.i.i.i = alloca [50 x i8], align 1
  %ep.i.i.i = alloca ptr, align 4
  %mesg.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nfsd_mutex, i32 noundef 0) #12
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.i = icmp eq i32 %size, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %6 = load i32, ptr @nfsd_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %5, i32 noundef %6) #12
  %nfsd_serv.i.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i.i, i32 0, i32 39
  %7 = ptrtoint ptr %nfsd_serv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nfsd_serv.i.i, align 4
  %cmp.i.i = icmp eq ptr %8, null
  br i1 %cmp.i.i, label %if.then.i.__write_ports.exit_crit_edge, label %if.end.i.i

if.then.i.__write_ports.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__write_ports.exit

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i.i = tail call i32 @svc_xprt_names(ptr noundef nonnull %8, ptr noundef %buf, i32 noundef 4092) #12
  br label %__write_ports.exit

if.end.i:                                         ; preds = %entry
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf, align 1
  %conv.i = zext i8 %10 to i32
  %11 = add nsw i32 %conv.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %11)
  %12 = icmp ult i32 %11, -10
  br i1 %12, label %if.end4.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %f_cred.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 12
  %13 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %f_cred.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mesg.i.i) #12
  %15 = ptrtoint ptr %mesg.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf, ptr %mesg.i.i, align 4
  %16 = load i32, ptr @nfsd_net_id, align 4
  %call.i22.i = tail call fastcc ptr @net_generic(ptr noundef %5, i32 noundef %16) #12
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i.i.i) #12
  %17 = call ptr @memset(ptr %buf.i.i.i, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep.i.i.i) #12
  %18 = ptrtoint ptr %ep.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep.i.i.i, align 4, !annotation !173
  %call.i54.i.i = call i32 @qword_get(ptr noundef nonnull %mesg.i.i, ptr noundef nonnull %buf.i.i.i, i32 noundef 50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i54.i.i)
  %19 = icmp slt i32 %call.i54.i.i, 1
  br i1 %19, label %if.then2.i.get_int.exit.thread.i.i_crit_edge, label %if.end3.i.i.i

if.then2.i.get_int.exit.thread.i.i_crit_edge:     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_int.exit.thread.i.i

if.end3.i.i.i:                                    ; preds = %if.then2.i
  %call5.i.i.i = call i32 @simple_strtol(ptr noundef nonnull %buf.i.i.i, ptr noundef nonnull %ep.i.i.i, i32 noundef 0) #12
  %20 = ptrtoint ptr %ep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ep.i.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i, label %if.end3.i.i.i.get_int.exit.thread.i.i_crit_edge

if.end3.i.i.i.get_int.exit.thread.i.i_crit_edge:  ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_int.exit.thread.i.i

get_int.exit.thread.i.i:                          ; preds = %if.end3.i.i.i.get_int.exit.thread.i.i_crit_edge, %if.then2.i.get_int.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i.i.i) #12
  br label %__write_ports_addfd.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end3.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %cmp2.i.i = icmp slt i32 %call5.i.i.i, 0
  br i1 %cmp2.i.i, label %lor.lhs.false.i.i.__write_ports_addfd.exit.i_crit_edge, label %if.end.i23.i

lor.lhs.false.i.i.__write_ports_addfd.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__write_ports_addfd.exit.i

if.end.i23.i:                                     ; preds = %lor.lhs.false.i.i
  %call3.i.i = call zeroext i1 @svc_alien_sock(ptr noundef %5, i32 noundef %call5.i.i.i) #12
  br i1 %call3.i.i, label %do.end.i.i, label %if.end6.i.i

do.end.i.i:                                       ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #15
  br label %__write_ports_addfd.exit.i

if.end6.i.i:                                      ; preds = %if.end.i23.i
  %call7.i.i = call i32 @nfsd_create_serv(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %cmp8.not.i.i, label %if.end10.i.i, label %if.end6.i.i.__write_ports_addfd.exit.i_crit_edge

if.end6.i.i.__write_ports_addfd.exit.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__write_ports_addfd.exit.i

if.end10.i.i:                                     ; preds = %if.end6.i.i
  %nfsd_serv.i24.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i22.i, i32 0, i32 39
  %24 = ptrtoint ptr %nfsd_serv.i24.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nfsd_serv.i24.i, align 4
  %call11.i.i = call i32 @svc_addsock(ptr noundef %25, i32 noundef %call5.i.i.i, ptr noundef %buf, i32 noundef 4092, ptr noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11.i.i)
  %cmp12.i.i = icmp sgt i32 %call11.i.i, -1
  br i1 %cmp12.i.i, label %land.lhs.true.i.i, label %if.end10.i.i.if.end38.i.i_crit_edge

if.end10.i.i.if.end38.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.i.i

land.lhs.true.i.i:                                ; preds = %if.end10.i.i
  %26 = ptrtoint ptr %nfsd_serv.i24.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nfsd_serv.i24.i, align 4
  %sv_nrthreads.i.i = getelementptr inbounds %struct.svc_serv, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %sv_nrthreads.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sv_nrthreads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i, label %land.lhs.true14.i.i, label %land.lhs.true.i.i.if.end38.i.i_crit_edge

land.lhs.true.i.i.if.end38.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.i.i

land.lhs.true14.i.i:                              ; preds = %land.lhs.true.i.i
  %keep_active.i.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i22.i, i32 0, i32 40
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %keep_active.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !174
  call void @llvm.prefetch.p0(ptr %keep_active.i.i, i32 1, i32 3, i32 1) #12
  %30 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %keep_active.i.i) #12, !srcloc !175
  %asmresult.i.i.i = extractvalue { i32, i32 } %30, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool34.not.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool34.not.i.i, label %if.then35.i.i, label %land.lhs.true14.i.i.if.end38.i.i_crit_edge

land.lhs.true14.i.i.if.end38.i.i_crit_edge:       ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.i.i

if.then35.i.i:                                    ; preds = %land.lhs.true14.i.i
  %31 = ptrtoint ptr %nfsd_serv.i24.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nfsd_serv.i24.i, align 4
  %sv_refcnt.i3 = getelementptr inbounds %struct.svc_serv, ptr %32, i32 0, i32 3
  %call.i.i.i.i.i.i.i4 = call zeroext i1 @__kasan_check_write(ptr noundef %sv_refcnt.i3, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %sv_refcnt.i3, i32 1, i32 3, i32 1) #12
  %33 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sv_refcnt.i3, ptr %sv_refcnt.i3, i32 1, ptr elementtype(i32) %sv_refcnt.i3) #12, !srcloc !165
  %asmresult.i.i.i.i.i.i.i5 = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i5)
  %tobool1.not.i.i.i.i.i6 = icmp eq i32 %asmresult.i.i.i.i.i.i.i5, 0
  br i1 %tobool1.not.i.i.i.i.i6, label %if.then35.i.i.if.end15.sink.split.i.i.i.i.i11_crit_edge, label %if.else.i.i.i.i.i9, !prof !166

if.then35.i.i.if.end15.sink.split.i.i.i.i.i11_crit_edge: ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i11

if.else.i.i.i.i.i9:                               ; preds = %if.then35.i.i
  %add.i.i.i.i.i7 = add i32 %asmresult.i.i.i.i.i.i.i5, 1
  %34 = or i32 %add.i.i.i.i.i7, %asmresult.i.i.i.i.i.i.i5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %.not.i.i.i.i.i8 = icmp sgt i32 %34, -1
  br i1 %.not.i.i.i.i.i8, label %if.else.i.i.i.i.i9.if.end38.i.i_crit_edge, label %if.else.i.i.i.i.i9.if.end15.sink.split.i.i.i.i.i11_crit_edge, !prof !167

if.else.i.i.i.i.i9.if.end15.sink.split.i.i.i.i.i11_crit_edge: ; preds = %if.else.i.i.i.i.i9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i11

if.else.i.i.i.i.i9.if.end38.i.i_crit_edge:        ; preds = %if.else.i.i.i.i.i9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.i.i

if.end15.sink.split.i.i.i.i.i11:                  ; preds = %if.else.i.i.i.i.i9.if.end15.sink.split.i.i.i.i.i11_crit_edge, %if.then35.i.i.if.end15.sink.split.i.i.i.i.i11_crit_edge
  %.sink.i.i.i.i.i10 = phi i32 [ 2, %if.then35.i.i.if.end15.sink.split.i.i.i.i.i11_crit_edge ], [ 1, %if.else.i.i.i.i.i9.if.end15.sink.split.i.i.i.i.i11_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %sv_refcnt.i3, i32 noundef %.sink.i.i.i.i.i10) #12
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.end15.sink.split.i.i.i.i.i11, %if.else.i.i.i.i.i9.if.end38.i.i_crit_edge, %land.lhs.true14.i.i.if.end38.i.i_crit_edge, %land.lhs.true.i.i.if.end38.i.i_crit_edge, %if.end10.i.i.if.end38.i.i_crit_edge
  call void @nfsd_put(ptr noundef %5) #12
  br label %__write_ports_addfd.exit.i

__write_ports_addfd.exit.i:                       ; preds = %if.end38.i.i, %if.end6.i.i.__write_ports_addfd.exit.i_crit_edge, %do.end.i.i, %lor.lhs.false.i.i.__write_ports_addfd.exit.i_crit_edge, %get_int.exit.thread.i.i
  %retval.0.i25.i = phi i32 [ -22, %do.end.i.i ], [ %call11.i.i, %if.end38.i.i ], [ -22, %lor.lhs.false.i.i.__write_ports_addfd.exit.i_crit_edge ], [ %call7.i.i, %if.end6.i.i.__write_ports_addfd.exit.i_crit_edge ], [ -22, %get_int.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mesg.i.i) #12
  br label %__write_ports.exit

if.end4.i:                                        ; preds = %if.end.i
  %arrayidx7.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %35 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx7.i, align 1
  %37 = and i8 %36, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp9.not.i = icmp eq i8 %37, 0
  br i1 %cmp9.not.i, label %if.end4.i.__write_ports.exit_crit_edge, label %if.then11.i

if.end4.i.__write_ports.exit_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__write_ports.exit

if.then11.i:                                      ; preds = %if.end4.i
  %f_cred12.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 12
  %38 = ptrtoint ptr %f_cred12.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %f_cred12.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %transport.i.i) #12
  %40 = call ptr @memset(ptr %transport.i.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port.i.i) #12
  %41 = ptrtoint ptr %port.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %port.i.i, align 4, !annotation !173
  %42 = load i32, ptr @nfsd_net_id, align 4
  %call.i26.i = tail call fastcc ptr @net_generic(ptr noundef %5, i32 noundef %42) #12
  %call1.i.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.45, ptr noundef nonnull %transport.i.i, ptr noundef nonnull %port.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1.i.i)
  %cmp.not.i.i = icmp eq i32 %call1.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i27.i, label %if.then11.i.__write_ports_addxprt.exit.i_crit_edge

if.then11.i.__write_ports_addxprt.exit.i_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__write_ports_addxprt.exit.i

if.end.i27.i:                                     ; preds = %if.then11.i
  %43 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port.i.i, align 4
  %45 = add i32 %44, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65535, i32 %45)
  %46 = icmp ult i32 %45, -65535
  br i1 %46, label %if.end.i27.i.__write_ports_addxprt.exit.i_crit_edge, label %if.end5.i.i

if.end.i27.i.__write_ports_addxprt.exit.i_crit_edge: ; preds = %if.end.i27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__write_ports_addxprt.exit.i

if.end5.i.i:                                      ; preds = %if.end.i27.i
  %call6.i.i = call i32 @nfsd_create_serv(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %cmp7.not.i.i, label %if.end9.i.i, label %if.end5.i.i.__write_ports_addxprt.exit.i_crit_edge

if.end5.i.i.__write_ports_addxprt.exit.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__write_ports_addxprt.exit.i

if.end9.i.i:                                      ; preds = %if.end5.i.i
  %nfsd_serv.i28.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i26.i, i32 0, i32 39
  %47 = ptrtoint ptr %nfsd_serv.i28.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %nfsd_serv.i28.i, align 4
  %49 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port.i.i, align 4
  %conv.i.i = trunc i32 %50 to i16
  %call11.i29.i = call i32 @svc_create_xprt(ptr noundef %48, ptr noundef nonnull %transport.i.i, ptr noundef %5, i32 noundef 2, i16 noundef zeroext %conv.i.i, i32 noundef 1, ptr noundef %39) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i29.i)
  %cmp12.i30.i = icmp slt i32 %call11.i29.i, 0
  br i1 %cmp12.i30.i, label %if.end9.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end15.i.i

if.end9.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i

if.end15.i.i:                                     ; preds = %if.end9.i.i
  %51 = ptrtoint ptr %nfsd_serv.i28.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %nfsd_serv.i28.i, align 4
  %53 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port.i.i, align 4
  %conv18.i.i = trunc i32 %54 to i16
  %call19.i.i = call i32 @svc_create_xprt(ptr noundef %52, ptr noundef nonnull %transport.i.i, ptr noundef %5, i32 noundef 10, i16 noundef zeroext %conv18.i.i, i32 noundef 1, ptr noundef %39) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19.i.i)
  %cmp20.i.i = icmp sgt i32 %call19.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -97, i32 %call19.i.i)
  %cmp22.not.i.i = icmp eq i32 %call19.i.i, -97
  %or.cond80.i.i = or i1 %cmp20.i.i, %cmp22.not.i.i
  %55 = ptrtoint ptr %nfsd_serv.i28.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %nfsd_serv.i28.i, align 4
  br i1 %or.cond80.i.i, label %if.end25.i.i, label %out_close.i.i

if.end25.i.i:                                     ; preds = %if.end15.i.i
  %sv_nrthreads.i31.i = getelementptr inbounds %struct.svc_serv, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %sv_nrthreads.i31.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sv_nrthreads.i31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i32.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i32.i, label %land.lhs.true27.i.i, label %if.end25.i.i.cleanup.sink.split.i.i_crit_edge

if.end25.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i

land.lhs.true27.i.i:                              ; preds = %if.end25.i.i
  %keep_active.i33.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i26.i, i32 0, i32 40
  %call.i.i34.i = call zeroext i1 @__kasan_check_write(ptr noundef %keep_active.i33.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !177
  call void @llvm.prefetch.p0(ptr %keep_active.i33.i, i32 1, i32 3, i32 1) #12
  %59 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %keep_active.i33.i) #12, !srcloc !175
  %asmresult.i.i35.i = extractvalue { i32, i32 } %59, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i35.i)
  %tobool43.not.i.i = icmp eq i32 %asmresult.i.i35.i, 0
  br i1 %tobool43.not.i.i, label %if.then44.i.i, label %land.lhs.true27.i.i.cleanup.sink.split.i.i_crit_edge

land.lhs.true27.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i

if.then44.i.i:                                    ; preds = %land.lhs.true27.i.i
  %60 = ptrtoint ptr %nfsd_serv.i28.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %nfsd_serv.i28.i, align 4
  %sv_refcnt.i = getelementptr inbounds %struct.svc_serv, ptr %61, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sv_refcnt.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %sv_refcnt.i, i32 1, i32 3, i32 1) #12
  %62 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sv_refcnt.i, ptr %sv_refcnt.i, i32 1, ptr elementtype(i32) %sv_refcnt.i) #12, !srcloc !165
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then44.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !166

if.then44.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then44.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %63 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %.not.i.i.i.i.i = icmp sgt i32 %63, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup.sink.split.i.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !167

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then44.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then44.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %sv_refcnt.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %cleanup.sink.split.i.i

out_close.i.i:                                    ; preds = %if.end15.i.i
  %64 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port.i.i, align 4
  %conv50.i.i = trunc i32 %65 to i16
  %call51.i.i = call ptr @svc_find_xprt(ptr noundef %56, ptr noundef nonnull %transport.i.i, ptr noundef %5, i16 noundef zeroext 2, i16 noundef zeroext %conv50.i.i) #12
  %cmp52.not.i.i = icmp eq ptr %call51.i.i, null
  br i1 %cmp52.not.i.i, label %out_close.i.i.cleanup.sink.split.i.i_crit_edge, label %if.then54.i.i

out_close.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %out_close.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i

if.then54.i.i:                                    ; preds = %out_close.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @svc_close_xprt(ptr noundef nonnull %call51.i.i) #12
  call void @svc_xprt_put(ptr noundef nonnull %call51.i.i) #12
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.then54.i.i, %out_close.i.i.cleanup.sink.split.i.i_crit_edge, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup.sink.split.i.i_crit_edge, %land.lhs.true27.i.i.cleanup.sink.split.i.i_crit_edge, %if.end25.i.i.cleanup.sink.split.i.i_crit_edge, %if.end9.i.i.cleanup.sink.split.i.i_crit_edge
  %retval.0.ph.i.i = phi i32 [ 0, %land.lhs.true27.i.i.cleanup.sink.split.i.i_crit_edge ], [ 0, %if.end25.i.i.cleanup.sink.split.i.i_crit_edge ], [ %call11.i29.i, %if.end9.i.i.cleanup.sink.split.i.i_crit_edge ], [ %call19.i.i, %if.then54.i.i ], [ %call19.i.i, %out_close.i.i.cleanup.sink.split.i.i_crit_edge ], [ 0, %if.else.i.i.i.i.i.cleanup.sink.split.i.i_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i.i ]
  call void @nfsd_put(ptr noundef %5) #12
  br label %__write_ports_addxprt.exit.i

__write_ports_addxprt.exit.i:                     ; preds = %cleanup.sink.split.i.i, %if.end5.i.i.__write_ports_addxprt.exit.i_crit_edge, %if.end.i27.i.__write_ports_addxprt.exit.i_crit_edge, %if.then11.i.__write_ports_addxprt.exit.i_crit_edge
  %retval.0.i36.i = phi i32 [ -22, %if.then11.i.__write_ports_addxprt.exit.i_crit_edge ], [ -22, %if.end.i27.i.__write_ports_addxprt.exit.i_crit_edge ], [ %call6.i.i, %if.end5.i.i.__write_ports_addxprt.exit.i_crit_edge ], [ %retval.0.ph.i.i, %cleanup.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port.i.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %transport.i.i) #12
  br label %__write_ports.exit

__write_ports.exit:                               ; preds = %__write_ports_addxprt.exit.i, %if.end4.i.__write_ports.exit_crit_edge, %__write_ports_addfd.exit.i, %if.end.i.i, %if.then.i.__write_ports.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i25.i, %__write_ports_addfd.exit.i ], [ %retval.0.i36.i, %__write_ports_addxprt.exit.i ], [ -22, %if.end4.i.__write_ports.exit_crit_edge ], [ %call2.i.i, %if.end.i.i ], [ 0, %if.then.i.__write_ports.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @nfsd_mutex) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_maxblksize(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %buf.i = alloca [50 x i8], align 1
  %ep.i = alloca ptr, align 4
  %mesg = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mesg) #12
  %0 = ptrtoint ptr %mesg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buf, ptr %mesg, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %7 = load i32, ptr @nfsd_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %6, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.not = icmp eq i32 %size, 0
  br i1 %cmp.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i) #12
  %8 = call ptr @memset(ptr %buf.i, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep.i) #12
  %9 = ptrtoint ptr %ep.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep.i, align 4, !annotation !173
  %call.i = call i32 @qword_get(ptr noundef nonnull %mesg, ptr noundef nonnull %buf.i, i32 noundef 50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.get_int.exit.thread_crit_edge, label %if.end.i

if.then.get_int.exit.thread_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_int.exit.thread

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.i, label %if.end.i.get_int.exit.thread_crit_edge, label %if.end3.i

if.end.i.get_int.exit.thread_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_int.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @simple_strtol(ptr noundef nonnull %buf.i, ptr noundef nonnull %ep.i, i32 noundef 0) #12
  %10 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end, label %if.end3.i.get_int.exit.thread_crit_edge

if.end3.i.get_int.exit.thread_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_int.exit.thread

get_int.exit.thread:                              ; preds = %if.end3.i.get_int.exit.thread_crit_edge, %if.end.i.get_int.exit.thread_crit_edge, %if.then.get_int.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end3.i.get_int.exit.thread_crit_edge ], [ -2, %if.end.i.get_int.exit.thread_crit_edge ], [ -22, %if.then.get_int.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i) #12
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #12
  br label %cleanup17

if.end:                                           ; preds = %if.end3.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i) #12
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #12
  call void @mutex_lock_nested(ptr noundef nonnull @nfsd_mutex, i32 noundef 0) #12
  %nfsd_serv = getelementptr inbounds %struct.nfsd_net, ptr %call1, i32 0, i32 39
  %14 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nfsd_serv, align 4
  %tobool11.not = icmp eq ptr %15, null
  br i1 %tobool11.not, label %cleanup, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef nonnull @nfsd_mutex) #12
  br label %cleanup17

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = call i32 @llvm.smax.i32(i32 %call5.i, i32 1024)
  %17 = call i32 @llvm.umin.i32(i32 %16, i32 1048576)
  %and = and i32 %17, 2096128
  store i32 %and, ptr @nfsd_max_blksize, align 4
  call void @mutex_unlock(ptr noundef nonnull @nfsd_mutex) #12
  br label %if.end15

if.end15:                                         ; preds = %cleanup, %entry.if.end15_crit_edge
  %18 = load i32, ptr @nfsd_max_blksize, align 4
  %call16 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4092, ptr noundef nonnull @.str.36, i32 noundef %18) #12
  br label %cleanup17

cleanup17:                                        ; preds = %if.end15, %if.then12, %get_int.exit.thread
  %retval.1 = phi i32 [ %call16, %if.end15 ], [ %retval.0.i.ph, %get_int.exit.thread ], [ -16, %if.then12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mesg) #12
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_maxconn(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %buf.i = alloca [50 x i8], align 1
  %mesg = alloca ptr, align 4
  %maxconn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mesg) #12
  %0 = ptrtoint ptr %mesg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buf, ptr %mesg, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %7 = load i32, ptr @nfsd_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %6, i32 noundef %7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maxconn) #12
  %max_connections = getelementptr inbounds %struct.nfsd_net, ptr %call1, i32 0, i32 35
  %8 = ptrtoint ptr %max_connections to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_connections, align 4
  %10 = ptrtoint ptr %maxconn to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %maxconn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.not = icmp eq i32 %size, 0
  br i1 %cmp.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i) #12
  %11 = call ptr @memset(ptr %buf.i, i32 255, i32 50)
  %call.i = call i32 @qword_get(ptr noundef nonnull %mesg, ptr noundef nonnull %buf.i, i32 noundef 50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.get_uint.exit.thread_crit_edge, label %if.end.i

if.then.get_uint.exit.thread_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_uint.exit.thread

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.i, label %if.end.i.get_uint.exit.thread_crit_edge, label %if.end3.i

if.end.i.get_uint.exit.thread_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_uint.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @kstrtouint(ptr noundef nonnull %buf.i, i32 noundef 0, ptr noundef nonnull %maxconn) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end3.i.get_uint.exit.thread_crit_edge

if.end3.i.get_uint.exit.thread_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_uint.exit.thread

get_uint.exit.thread:                             ; preds = %if.end3.i.get_uint.exit.thread_crit_edge, %if.end.i.get_uint.exit.thread_crit_edge, %if.then.get_uint.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end3.i.get_uint.exit.thread_crit_edge ], [ -2, %if.end.i.get_uint.exit.thread_crit_edge ], [ -22, %if.then.get_uint.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #12
  br label %cleanup7

if.end:                                           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #12
  %12 = ptrtoint ptr %maxconn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %maxconn, align 4
  %14 = ptrtoint ptr %max_connections to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %max_connections, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %15 = ptrtoint ptr %maxconn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %maxconn, align 4
  %call6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4092, ptr noundef nonnull @.str.46, i32 noundef %16) #12
  br label %cleanup7

cleanup7:                                         ; preds = %if.end5, %get_uint.exit.thread
  %retval.1 = phi i32 [ %call6, %if.end5 ], [ %retval.0.i.ph, %get_uint.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maxconn) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mesg) #12
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_leasetime(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %6 = load i32, ptr @nfsd_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %5, i32 noundef %6)
  %nfsd4_lease = getelementptr inbounds %struct.nfsd_net, ptr %call1, i32 0, i32 26
  %call2 = tail call fastcc i32 @nfsd4_write_time(ptr noundef %buf, i32 noundef %size, ptr noundef %nfsd4_lease, ptr noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_gracetime(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %6 = load i32, ptr @nfsd_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %5, i32 noundef %6)
  %nfsd4_grace = getelementptr inbounds %struct.nfsd_net, ptr %call1, i32 0, i32 27
  %call2 = tail call fastcc i32 @nfsd4_write_time(ptr noundef %buf, i32 noundef %size, ptr noundef %nfsd4_grace, ptr noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_recoverydir(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %mesg.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %6 = load i32, ptr @nfsd_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %5, i32 noundef %6)
  tail call void @mutex_lock_nested(ptr noundef nonnull @nfsd_mutex, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mesg.i) #12
  %7 = ptrtoint ptr %mesg.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf, ptr %mesg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.not.i = icmp eq i32 %size, 0
  br i1 %cmp.not.i, label %entry.if.end17.i_crit_edge, label %if.then.i

entry.if.end17.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.then.i:                                        ; preds = %entry
  %nfsd_serv.i = getelementptr inbounds %struct.nfsd_net, ptr %call1, i32 0, i32 39
  %8 = ptrtoint ptr %nfsd_serv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nfsd_serv.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.__write_recoverydir.exit_crit_edge

if.then.i.__write_recoverydir.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__write_recoverydir.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size)
  %cmp2.i = icmp ugt i32 %size, 4096
  br i1 %cmp2.i, label %if.end.i.__write_recoverydir.exit_crit_edge, label %lor.lhs.false.i

if.end.i.__write_recoverydir.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__write_recoverydir.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %sub.i = add nsw i32 %size, -1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %sub.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %11)
  %cmp3.not.i = icmp eq i8 %11, 10
  br i1 %cmp3.not.i, label %if.end6.i, label %lor.lhs.false.i.__write_recoverydir.exit_crit_edge

lor.lhs.false.i.__write_recoverydir.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__write_recoverydir.exit

if.end6.i:                                        ; preds = %lor.lhs.false.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx.i, align 1
  %call.i = call i32 @qword_get(ptr noundef nonnull %mesg.i, ptr noundef %buf, i32 noundef %size) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp9.i = icmp slt i32 %call.i, 1
  br i1 %cmp9.i, label %if.end6.i.__write_recoverydir.exit_crit_edge, label %if.end12.i

if.end6.i.__write_recoverydir.exit_crit_edge:     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__write_recoverydir.exit

if.end12.i:                                       ; preds = %if.end6.i
  %call13.i = call i32 @nfs4_reset_recoverydir(ptr noundef %buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end17.i_crit_edge, label %if.end12.i.__write_recoverydir.exit_crit_edge

if.end12.i.__write_recoverydir.exit_crit_edge:    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__write_recoverydir.exit

if.end12.i.if.end17.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end12.i.if.end17.i_crit_edge, %entry.if.end17.i_crit_edge
  %call18.i = call ptr @nfs4_recoverydir() #12
  %call19.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4092, ptr noundef nonnull @.str.48, ptr noundef %call18.i) #12
  br label %__write_recoverydir.exit

__write_recoverydir.exit:                         ; preds = %if.end17.i, %if.end12.i.__write_recoverydir.exit_crit_edge, %if.end6.i.__write_recoverydir.exit_crit_edge, %lor.lhs.false.i.__write_recoverydir.exit_crit_edge, %if.end.i.__write_recoverydir.exit_crit_edge, %if.then.i.__write_recoverydir.exit_crit_edge
  %retval.0.i = phi i32 [ %call19.i, %if.end17.i ], [ -16, %if.then.i.__write_recoverydir.exit_crit_edge ], [ -22, %lor.lhs.false.i.__write_recoverydir.exit_crit_edge ], [ -22, %if.end.i.__write_recoverydir.exit_crit_edge ], [ -22, %if.end6.i.__write_recoverydir.exit_crit_edge ], [ %call13.i, %if.end12.i.__write_recoverydir.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mesg.i) #12
  call void @mutex_unlock(ptr noundef nonnull @nfsd_mutex) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_v4_end_grace(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %6 = load i32, ptr @nfsd_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %5, i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.not = icmp eq i32 %size, 0
  br i1 %cmp.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %8, label %if.then.cleanup_crit_edge [
    i8 89, label %if.then.sw.bb_crit_edge
    i8 121, label %if.then.sw.bb_crit_edge10
    i8 49, label %if.then.sw.bb_crit_edge11
  ]

if.then.sw.bb_crit_edge11:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.then.sw.bb_crit_edge10:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge10, %if.then.sw.bb_crit_edge11
  %nfsd_serv = getelementptr inbounds %struct.nfsd_net, ptr %call1, i32 0, i32 39
  %10 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nfsd_serv, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nfsd4_end_grace(ptr noundef %call1) #12
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %grace_ended = getelementptr inbounds %struct.nfsd_net, ptr %call1, i32 0, i32 6
  %12 = ptrtoint ptr %grace_ended to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %grace_ended, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not = icmp eq i8 %13, 0
  %cond = select i1 %tobool4.not, i32 78, i32 89
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4092, ptr noundef nonnull @.str.49, i32 noundef %cond) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %sw.bb.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end3 ], [ -16, %sw.bb.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qword_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @unix_domain_find(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exp_rootfh(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @auth_domain_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qword_addhex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_pton(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmsvc_unlock_all_by_ip(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmsvc_unlock_all_by_sb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_svc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_nrthreads(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_nrpools(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_set_nrthreads(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_get_nrthreads(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_vers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_minorversion(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_reset_versions(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_xprt_names(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @svc_alien_sock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_create_serv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_addsock(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_create_xprt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svc_find_xprt(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_close_xprt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfsd4_write_time(ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %time, ptr nocapture noundef readonly %nn) unnamed_addr #0 align 64 {
entry:
  %buf.i.i = alloca [50 x i8], align 1
  %ep.i.i = alloca ptr, align 4
  %mesg.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nfsd_mutex, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mesg.i) #12
  %0 = ptrtoint ptr %mesg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buf, ptr %mesg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.not.i = icmp eq i32 %size, 0
  br i1 %cmp.not.i, label %entry.if.end9.i_crit_edge, label %if.then.i

entry.if.end9.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then.i:                                        ; preds = %entry
  %nfsd_serv.i = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 39
  %1 = ptrtoint ptr %nfsd_serv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nfsd_serv.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.__nfsd4_write_time.exit_crit_edge

if.then.i.__nfsd4_write_time.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__nfsd4_write_time.exit

if.end.i:                                         ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i.i) #12
  %3 = call ptr @memset(ptr %buf.i.i, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep.i.i) #12
  %4 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep.i.i, align 4, !annotation !173
  %call.i.i = call i32 @qword_get(ptr noundef nonnull %mesg.i, ptr noundef nonnull %buf.i.i, i32 noundef 50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.get_int.exit.thread.i_crit_edge, label %if.end.i.i

if.end.i.get_int.exit.thread.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_int.exit.thread.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp1.i.i, label %if.end.i.i.get_int.exit.thread.i_crit_edge, label %if.end3.i.i

if.end.i.i.get_int.exit.thread.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_int.exit.thread.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %call5.i.i = call i32 @simple_strtol(ptr noundef nonnull %buf.i.i, ptr noundef nonnull %ep.i.i, i32 noundef 0) #12
  %5 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ep.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i.i, label %if.end4.i, label %if.end3.i.i.get_int.exit.thread.i_crit_edge

if.end3.i.i.get_int.exit.thread.i_crit_edge:      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_int.exit.thread.i

get_int.exit.thread.i:                            ; preds = %if.end3.i.i.get_int.exit.thread.i_crit_edge, %if.end.i.i.get_int.exit.thread.i_crit_edge, %if.end.i.get_int.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -22, %if.end3.i.i.get_int.exit.thread.i_crit_edge ], [ -2, %if.end.i.i.get_int.exit.thread.i_crit_edge ], [ -22, %if.end.i.get_int.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i.i) #12
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i.i) #12
  br label %__nfsd4_write_time.exit

if.end4.i:                                        ; preds = %if.end3.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i.i) #12
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i.i) #12
  %9 = add i32 %call5.i.i, -3601
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3591, i32 %9)
  %10 = icmp ult i32 %9, -3591
  br i1 %10, label %if.end4.i.__nfsd4_write_time.exit_crit_edge, label %if.end8.i

if.end4.i.__nfsd4_write_time.exit_crit_edge:      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__nfsd4_write_time.exit

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv4.i = zext i32 %call5.i.i to i64
  %11 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv4.i, ptr %time, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end8.i, %entry.if.end9.i_crit_edge
  %12 = ptrtoint ptr %time to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %time, align 8
  %call10.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4092, ptr noundef nonnull @.str.47, i64 noundef %13) #12
  br label %__nfsd4_write_time.exit

__nfsd4_write_time.exit:                          ; preds = %if.end9.i, %if.end4.i.__nfsd4_write_time.exit_crit_edge, %get_int.exit.thread.i, %if.then.i.__nfsd4_write_time.exit_crit_edge
  %retval.0.i = phi i32 [ %call10.i, %if.end9.i ], [ -16, %if.then.i.__nfsd4_write_time.exit_crit_edge ], [ -22, %if.end4.i.__nfsd4_write_time.exit_crit_edge ], [ %retval.0.i.ph.i, %get_int.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mesg.i) #12
  call void @mutex_unlock(ptr noundef nonnull @nfsd_mutex) #12
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_reset_recoverydir(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_recoverydir() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_end_grace(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_pool_stats_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_pool_stats_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_reply_cache_stats_open(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @supported_enctypes_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @supported_enctypes_show, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @supported_enctypes_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_shutdown_threads(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_init_slabs() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_init_pnfs() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_stat_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_drc_slab_create() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_lockd_init() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_proc_exports_entry() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.3, ptr noundef null) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @proc_create(ptr noundef nonnull @.str.14, i16 noundef zeroext 0, ptr noundef nonnull %call, ptr noundef nonnull @exports_proc_ops) #12
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.3, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then4 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_cld_notifier() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exports_proc_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !155) #12
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
  %8 = load i32, ptr @nfsd_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %7, i32 noundef %8) #12
  %call1.i = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @nfs_exports_op) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.exports_net_open.exit_crit_edge

entry.exports_net_open.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %exports_net_open.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %9 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data.i, align 4
  %svc_export_cache.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %svc_export_cache.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %svc_export_cache.i, align 8
  %private.i = getelementptr inbounds %struct.seq_file, ptr %10, i32 0, i32 11
  %13 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %private.i, align 8
  br label %exports_net_open.exit

exports_net_open.exit:                            ; preds = %if.end.i, %entry.exports_net_open.exit_crit_edge
  ret i32 %call1.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !128, !129, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !151, !152, !153}
!llvm.named.register.sp = !{!155}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfsd/nfsctl.c", i32 1316, i32 16}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../fs/nfsd/nfsctl.c", i32 1341, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_alias493, !6, !"__UNIQUE_ID_alias493", i1 false, i1 false}
!6 = !{!"../fs/nfsd/nfsctl.c", i32 1436, i32 1}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/nfsd/nfsctl.c", i32 1572, i32 20}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/nfsd/nfsctl.c", i32 1573, i32 20}
!11 = !{ptr @__UNIQUE_ID_author494, !12, !"__UNIQUE_ID_author494", i1 false, i1 false}
!12 = !{!"../fs/nfsd/nfsctl.c", i32 1581, i32 1}
!13 = !{ptr @__UNIQUE_ID_file495, !14, !"__UNIQUE_ID_file495", i1 false, i1 false}
!14 = !{!"../fs/nfsd/nfsctl.c", i32 1582, i32 1}
!15 = !{ptr @__UNIQUE_ID_license496, !14, !"__UNIQUE_ID_license496", i1 false, i1 false}
!16 = !{ptr @__initcall__kmod_nfsd__497_1583_init_nfsd6, !17, !"__initcall__kmod_nfsd__497_1583_init_nfsd6", i1 false, i1 false}
!17 = !{!"../fs/nfsd/nfsctl.c", i32 1583, i32 1}
!18 = !{ptr @__exitcall_exit_nfsd, !19, !"__exitcall_exit_nfsd", i1 false, i1 false}
!19 = !{!"../fs/nfsd/nfsctl.c", i32 1584, i32 1}
!20 = !{ptr @nfsd_max_blksize, !21, !"nfsd_max_blksize", i1 false, i1 false}
!21 = !{!"../fs/nfsd/nfsctl.c", i32 870, i32 5}
!22 = !{ptr @nfsd_net_id, !23, !"nfsd_net_id", i1 false, i1 false}
!23 = !{!"../fs/nfsd/nfsctl.c", i32 1460, i32 14}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../fs/nfsd/nfsctl.c", i32 1262, i32 4}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../fs/nfsd/nfsctl.c", i32 1253, i32 2}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/linux/fsnotify.h", i32 271, i32 6}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/linux/fsnotify.h", i32 298, i32 6}
!33 = !{ptr @nfsd_net_ops, !34, !"nfsd_net_ops", i1 false, i1 false}
!34 = !{!"../fs/nfsd/nfsctl.c", i32 1510, i32 33}
!35 = !{ptr @nfsd_init_net.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../fs/nfsd/nfsctl.c", i32 1488, i32 2}
!37 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @nfsd_init_net.__key.6, !36, !"__key", i1 false, i1 false}
!39 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!42 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!46 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!50 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/nfsd/nfsctl.c", i32 1432, i32 11}
!53 = !{ptr @nfsd_fs_type, !54, !"nfsd_fs_type", i1 false, i1 false}
!54 = !{!"../fs/nfsd/nfsctl.c", i32 1430, i32 32}
!55 = !{ptr @nfsd_fs_context_ops, !56, !"nfsd_fs_context_ops", i1 false, i1 false}
!56 = !{!"../fs/nfsd/nfsctl.c", i32 1407, i32 43}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/nfsd/nfsctl.c", i32 1356, i32 18}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/nfsd/nfsctl.c", i32 1358, i32 26}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/nfsd/nfsctl.c", i32 1359, i32 29}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/nfsd/nfsctl.c", i32 1365, i32 16}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/nfsd/nfsctl.c", i32 1361, i32 25}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/nfsd/nfsctl.c", i32 1363, i32 25}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/nfsd/nfsctl.c", i32 1366, i32 21}
!71 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/nfsd/nfsctl.c", i32 1367, i32 26}
!73 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/nfsd/nfsctl.c", i32 1368, i32 24}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/nfsd/nfsctl.c", i32 1369, i32 31}
!77 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/nfsd/nfsctl.c", i32 1370, i32 22}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/nfsd/nfsctl.c", i32 1371, i32 19}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/nfsd/nfsctl.c", i32 1372, i32 24}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/nfsd/nfsctl.c", i32 1373, i32 28}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/nfsd/nfsctl.c", i32 1375, i32 31}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/nfsd/nfsctl.c", i32 1378, i32 23}
!89 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/nfsd/nfsctl.c", i32 1379, i32 23}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/nfsd/nfsctl.c", i32 1380, i32 25}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/nfsd/nfsctl.c", i32 1381, i32 24}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/nfsd/nfsctl.c", i32 1383, i32 19}
!97 = !{ptr @nfsd_fill_super.nfsd_files, !98, !"nfsd_files", i1 false, i1 false}
!98 = !{!"../fs/nfsd/nfsctl.c", i32 1355, i32 33}
!99 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/nfsd/nfsctl.c", i32 1389, i32 40}
!101 = !{ptr @exports_nfsd_operations, !102, !"exports_nfsd_operations", i1 false, i1 false}
!102 = !{!"../fs/nfsd/nfsctl.c", i32 173, i32 37}
!103 = !{ptr @export_features_operations, !104, !"export_features_operations", i1 false, i1 false}
!104 = !{!"../fs/nfsd/nfsctl.c", i32 191, i32 37}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/nfsd/nfsctl.c", i32 182, i32 16}
!107 = !{ptr @transaction_ops, !108, !"transaction_ops", i1 false, i1 false}
!108 = !{!"../fs/nfsd/nfsctl.c", i32 134, i32 37}
!109 = !{ptr @write_op, !110, !"write_op", i1 false, i1 false}
!110 = !{!"../fs/nfsd/nfsctl.c", i32 81, i32 24}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/nfsd/nfsctl.c", i32 453, i32 50}
!113 = !{ptr @.str.37, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/nfsd/nfsctl.c", i32 500, i32 15}
!115 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/nfsd/nfsctl.c", i32 532, i32 24}
!117 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/nfsd/nfsctl.c", i32 655, i32 11}
!119 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/nfsd/nfsctl.c", i32 659, i32 33}
!121 = !{ptr @.str.41, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/nfsd/nfsctl.c", i32 548, i32 35}
!123 = !{ptr @.str.42, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/nfsd/nfsctl.c", i32 548, i32 46}
!125 = !{ptr @.str.43, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/nfsd/nfsctl.c", i32 736, i32 3}
!127 = !{ptr @.str.44, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @__write_ports_addfd._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @__write_ports_addfd._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.45, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/nfsd/nfsctl.c", i32 765, i32 18}
!132 = !{ptr @.str.46, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/nfsd/nfsctl.c", i32 956, i32 50}
!134 = !{ptr @.str.47, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/nfsd/nfsctl.c", i32 989, i32 50}
!136 = !{ptr @.str.48, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/nfsd/nfsctl.c", i32 1070, i32 50}
!138 = !{ptr @.str.49, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/nfsd/nfsctl.c", i32 1144, i32 50}
!140 = !{ptr @pool_stats_operations, !141, !"pool_stats_operations", i1 false, i1 false}
!141 = !{!"../fs/nfsd/nfsctl.c", i32 218, i32 37}
!142 = !{ptr @reply_cache_stats_operations, !143, !"reply_cache_stats_operations", i1 false, i1 false}
!143 = !{!"../fs/nfsd/nfsctl.c", i32 225, i32 37}
!144 = !{ptr @supported_enctypes_ops, !145, !"supported_enctypes_ops", i1 false, i1 false}
!145 = !{!"../fs/nfsd/nfsctl.c", i32 210, i32 37}
!146 = !{ptr @.str.50, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/nfsd/nfsctl.c", i32 201, i32 16}
!148 = !{ptr @.str.51, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/nfsd/nfsctl.c", i32 1520, i32 2}
!150 = !{ptr @.str.52, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @init_nfsd._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @init_nfsd._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @exports_proc_ops, !154, !"exports_proc_ops", i1 false, i1 false}
!154 = !{!"../fs/nfsd/nfsctl.c", i32 161, i32 30}
!155 = !{!"sp"}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{i64 2148620173, i64 2148620205, i64 2148620234, i64 2148620268, i64 2148620299, i64 2148620322}
!166 = !{!"branch_weights", i32 1, i32 2000}
!167 = !{!"branch_weights", i32 2000, i32 1}
!168 = !{i64 2148708198}
!169 = !{i64 2148622638, i64 2148622670, i64 2148622699, i64 2148622733, i64 2148622764, i64 2148622787}
!170 = !{i64 2149905971}
!171 = !{i64 2149955514}
!172 = !{i64 2149955780}
!173 = !{!"auto-init"}
!174 = !{i64 2157730668}
!175 = !{i64 1125411, i64 1125428, i64 1125452, i64 1125478, i64 1125496}
!176 = !{i64 2157731011}
!177 = !{i64 2157731911}
!178 = !{i64 2157732254}
!179 = !{i8 0, i8 2}
