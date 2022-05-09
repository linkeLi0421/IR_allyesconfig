; ModuleID = '/llk/IR_all_yes/fs/afs/mntpt.c_pt.bc'
source_filename = "../fs/afs/mntpt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.128 }
%union.anon.128 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.103, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.78 }
%struct.llist_node = type { ptr }
%union.anon.78 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.80 }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.103 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.120, %struct.list_head, %struct.list_head, %union.anon.121 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.120 = type { %struct.list_head }
%union.anon.121 = type { %struct.hlist_node }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.31, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32 }
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
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.116, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.116 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.71, i32, %struct.spinlock }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.afs_super_info = type { ptr, ptr, ptr, i8, i8 }
%struct.afs_volume = type { %union.anon.153, %struct.atomic_t, i64, ptr, %struct.rb_node, %struct.hlist_node, ptr, i32, ptr, ptr, %struct.rwlock_t, i32, i32, %struct.rwlock_t, i8, i8, i8, [65 x i8] }
%union.anon.153 = type { i64 }
%struct.afs_fs_context = type { i8, i8, i8, i8, i32, i8, i32, ptr, ptr, ptr, ptr, ptr }
%struct.afs_vnode = type { %struct.inode, ptr, %struct.afs_fid, %struct.afs_file_status, i64, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, ptr, i64, i16, %struct.work_struct, %struct.list_head, ptr, %struct.atomic_t, i32, i32, i32, i32, %struct.seqlock_t, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.129, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.130, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.131, ptr, %struct.address_space, %struct.list_head, %union.anon.132, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.129 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.130 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.131 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.132 = type { ptr }
%struct.afs_fid = type { i64, i64, i32, i32 }
%struct.afs_file_status = type { i64, i64, %struct.timespec64, %struct.timespec64, i64, i64, i64, i32, i32, i16, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.126, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.126 = type { %struct.atomic_t }

@afs_mntpt_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @afs_mntpt_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@afs_mntpt_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @afs_mntpt_lookup, ptr null, ptr null, ptr null, ptr @page_readlink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @afs_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@afs_autocell_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @afs_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_d_automount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] ==> %s({%pd})\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"afs_d_automount\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/afs/mntpt.c\00", [17 x i8] zeroinitializer }, align 32
@afs_d_automount._entry_ptr = internal global ptr @afs_d_automount._entry, section ".printk_index", align 4
@afs_vfsmounts = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @afs_vfsmounts, ptr @afs_vfsmounts }, [24 x i8] zeroinitializer }, align 32
@afs_wq = external dso_local local_unnamed_addr global ptr, align 4
@afs_mntpt_expiry_timer = internal global { %struct.delayed_work, [60 x i8] } { %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @afs_mntpt_expiry_timer, i64 4), ptr getelementptr (i8, ptr @afs_mntpt_expiry_timer, i64 4) }, ptr @afs_mntpt_expiry_timed_out, %struct.lockdep_map { ptr @afs_mntpt_expiry_timer, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.28, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@afs_d_automount._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %p\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_d_automount._entry_ptr.5 = internal global ptr @afs_d_automount._entry.3, section ".printk_index", align 4
@afs_mntpt_kill_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"afs_mntpt_kill_timer\00", [43 x i8] zeroinitializer }, align 32
@afs_mntpt_kill_timer._entry_ptr = internal global ptr @afs_mntpt_kill_timer._entry, section ".printk_index", align 4
@afs_mntpt_kill_timer._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\013\0A\00", [28 x i8] zeroinitializer }, align 32
@afs_mntpt_kill_timer._entry_ptr.10 = internal global ptr @afs_mntpt_kill_timer._entry.8, section ".printk_index", align 4
@afs_mntpt_kill_timer._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013AFS: Assertion failed\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_mntpt_kill_timer._entry_ptr.13 = internal global ptr @afs_mntpt_kill_timer._entry.11, section ".printk_index", align 4
@afs_mntpt_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] ==> %s(%p,%p{%pd2})\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_mntpt_lookup\00", [47 x i8] zeroinitializer }, align 32
@afs_mntpt_lookup._entry_ptr = internal global ptr @afs_mntpt_lookup._entry, section ".printk_index", align 4
@afs_mntpt_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] ==> %s(%p,%p{%pD2})\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"afs_mntpt_open\00", [17 x i8] zeroinitializer }, align 32
@afs_mntpt_open._entry_ptr = internal global ptr @afs_mntpt_open._entry, section ".printk_index", align 4
@afs_fs_type = external dso_local global %struct.file_system_type, align 4
@afs_mntpt_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013kAFS: unable to lookup cell '%pd'\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"afs_mntpt_set_params\00", [43 x i8] zeroinitializer }, align 32
@afs_mntpt_set_params._entry_ptr = internal global ptr @afs_mntpt_set_params._entry, section ".printk_index", align 4
@afs_root_volume = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"root.cell\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"source\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_afs_file_error = external dso_local global %struct.tracepoint, align 4
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/afs.h\00", [37 x i8] zeroinitializer }, align 32
@trace_afs_file_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(afs_mntpt_expiry_timer).work\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/afs/mntpt.c:42\00", [46 x i8] zeroinitializer }, align 32
@afs_mntpt_expiry_timed_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.29, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"afs_mntpt_expiry_timed_out\00", [37 x i8] zeroinitializer }, align 32
@afs_mntpt_expiry_timed_out._entry_ptr = internal global ptr @afs_mntpt_expiry_timed_out._entry, section ".printk_index", align 4
@afs_mntpt_expiry_timed_out._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_mntpt_expiry_timed_out._entry_ptr.32 = internal global ptr @afs_mntpt_expiry_timed_out._entry.30, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.34 = private unnamed_addr constant [26 x i8] c"afs_mntpt_file_operations\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 26, i32 30 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 186, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [14 x i8] c"afs_vfsmounts\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 41, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant [23 x i8] c"afs_mntpt_expiry_timer\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 196, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 221, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 223, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 55, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 64, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 112, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"afs_root_volume\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 46, i32 19 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 144, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 416, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant [30 x i8] c"../include/trace/events/afs.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1196, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 108, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 717, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 44, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 42, i32 8 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 205, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [18 x i8] c"../fs/afs/mntpt.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 213, i32 2 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @afs_d_automount._entry, ptr @afs_d_automount._entry.3, ptr @afs_d_automount._entry_ptr, ptr @afs_d_automount._entry_ptr.5, ptr @afs_mntpt_expiry_timed_out._entry, ptr @afs_mntpt_expiry_timed_out._entry.30, ptr @afs_mntpt_expiry_timed_out._entry_ptr, ptr @afs_mntpt_expiry_timed_out._entry_ptr.32, ptr @afs_mntpt_kill_timer._entry, ptr @afs_mntpt_kill_timer._entry.11, ptr @afs_mntpt_kill_timer._entry.8, ptr @afs_mntpt_kill_timer._entry_ptr, ptr @afs_mntpt_kill_timer._entry_ptr.10, ptr @afs_mntpt_kill_timer._entry_ptr.13, ptr @afs_mntpt_lookup._entry, ptr @afs_mntpt_lookup._entry_ptr, ptr @afs_mntpt_open._entry, ptr @afs_mntpt_open._entry_ptr, ptr @afs_mntpt_set_params._entry, ptr @afs_mntpt_set_params._entry_ptr, ptr @afs_mntpt_file_operations, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @afs_vfsmounts, ptr @afs_mntpt_expiry_timer, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @afs_root_volume, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_mntpt_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_d_automount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vfsmounts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_mntpt_expiry_timer to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_d_automount._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_mntpt_kill_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_mntpt_kill_timer._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_mntpt_kill_timer._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_mntpt_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_mntpt_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_mntpt_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_root_volume to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_mntpt_expiry_timed_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_mntpt_expiry_timed_out._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_mntpt_open(ptr noundef %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !87

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !77) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %comm, ptr noundef nonnull @.str.17, ptr noundef %inode, ptr noundef %file, ptr noundef %file) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  ret i32 -66
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal nonnull ptr @afs_mntpt_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !87

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !77) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %comm, ptr noundef nonnull @.str.15, ptr noundef %dir, ptr noundef %dentry, ptr noundef %dentry) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  ret ptr inttoptr (i32 -66 to ptr)
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @page_readlink(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_d_automount(ptr nocapture noundef readonly %path) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !87

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !77) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %5 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dentry, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, ptr noundef %6) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %dentry7 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %7 = ptrtoint ptr %dentry7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dentry7, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !88

do.body4.i:                                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/mntpt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 163, 0\0A.popsection", ""() #7, !srcloc !89
  unreachable

do.end9.i:                                        ; preds = %do.end6
  %call10.i = tail call ptr @fs_context_for_submount(ptr noundef nonnull @afs_fs_type, ptr noundef %8) #7
  %cmp.i.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end9.i.afs_mntpt_do_automount.exit_crit_edge, label %if.end14.i

do.end9.i.afs_mntpt_do_automount.exit_crit_edge:  ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %afs_mntpt_do_automount.exit

if.end14.i:                                       ; preds = %do.end9.i
  %call15.i = tail call fastcc i32 @afs_mntpt_set_params(ptr noundef %call10.i, ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.else.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i = tail call ptr @fc_mount(ptr noundef %call10.i) #7
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = inttoptr i32 %call15.i to ptr
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.then17.i
  %mnt.0.i = phi ptr [ %11, %if.else.i ], [ %call18.i, %if.then17.i ]
  tail call void @put_fs_context(ptr noundef %call10.i) #7
  br label %afs_mntpt_do_automount.exit

afs_mntpt_do_automount.exit:                      ; preds = %if.end20.i, %do.end9.i.afs_mntpt_do_automount.exit_crit_edge
  %retval.0.i = phi ptr [ %mnt.0.i, %if.end20.i ], [ %call10.i, %do.end9.i.afs_mntpt_do_automount.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %afs_mntpt_do_automount.exit.cleanup_crit_edge, label %if.end11

afs_mntpt_do_automount.exit.cleanup_crit_edge:    ; preds = %afs_mntpt_do_automount.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %afs_mntpt_do_automount.exit
  %call12 = tail call ptr @mntget(ptr noundef %retval.0.i) #7
  tail call void @mnt_set_expiry(ptr noundef %retval.0.i, ptr noundef nonnull @afs_vfsmounts) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_wq to i32))
  %12 = load ptr, ptr @afs_wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef nonnull @afs_mntpt_expiry_timer, i32 noundef 60000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %13 = load i32, ptr @afs_debug, align 4
  %and15 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end11.cleanup_crit_edge, label %do.end26, !prof !87

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end26:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %14 = tail call i32 @llvm.read_register.i32(metadata !77) #7
  %and.i42 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i42 to ptr
  %task29 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task29, align 8
  %comm30 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 101
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm30, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.end11.cleanup_crit_edge, %afs_mntpt_do_automount.exit.cleanup_crit_edge
  ret ptr %retval.0.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mntget(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_set_expiry(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_mntpt_kill_timer() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body6_crit_edge, label %do.end, !prof !87

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !77) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %comm, ptr noundef nonnull @.str.7) #10
  br label %do.body6

do.body6:                                         ; preds = %do.end, %entry.do.body6_crit_edge
  %5 = load volatile ptr, ptr @afs_vfsmounts, align 4
  %cmp.i.not = icmp eq ptr %5, @afs_vfsmounts
  br i1 %cmp.i.not, label %do.end31, label %do.end19, !prof !87

do.end19:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/mntpt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #7, !srcloc !90
  unreachable

do.end31:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @afs_mntpt_expiry_timer) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fs_context_for_submount(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @afs_mntpt_set_params(ptr noundef %fc, ptr noundef %mntpt) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %mntpt, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %mntpt, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %net_ns = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 7
  %8 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_ns, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %cmp.not = icmp eq ptr %9, %11
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %count.i = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #7
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #7, !srcloc !92
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i157, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_net.exit_crit_edge, label %if.then10.i.i.i.i, !prof !87

if.end5.i.i.i.i.put_net.exit_crit_edge:           ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_net.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #7
  br label %put_net.exit

if.then.i157:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @__put_net(ptr noundef %9) #7
  br label %put_net.exit

put_net.exit:                                     ; preds = %if.then.i157, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_net.exit_crit_edge
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %count.i158 = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i159 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i158, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %count.i158, i32 1, i32 3, i32 1) #7
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i158, ptr %count.i158, i32 1, ptr elementtype(i32) %count.i158) #7, !srcloc !94
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %put_net.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !88

put_net.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %put_net.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %put_net.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i160 = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i160, label %if.else.i.i.i.i.get_net.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !87

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_net.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_net.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %put_net.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %put_net.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i158, i32 noundef %.sink.i.i.i.i) #7
  br label %get_net.exit

get_net.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_net.exit_crit_edge
  %17 = ptrtoint ptr %net_ns to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %net_ns, align 4
  br label %if.end

if.end:                                           ; preds = %get_net.exit, %entry.if.end_crit_edge
  %volume = getelementptr inbounds %struct.afs_super_info, ptr %5, i32 0, i32 2
  %18 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %volume, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %land.lhs.true

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.afs_volume, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp9 = icmp eq i8 %21, 0
  br i1 %cmp9, label %if.then11, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %type12 = getelementptr inbounds %struct.afs_fs_context, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %type12 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %type12, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %1, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %cell14 = getelementptr inbounds %struct.afs_fs_context, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %cell14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cell14, align 4
  %tobool15.not = icmp eq ptr %25, null
  br i1 %tobool15.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %net = getelementptr inbounds %struct.afs_fs_context, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net, align 4
  tail call void @afs_unuse_cell(ptr noundef %27, ptr noundef nonnull %25, i32 noundef 20) #7
  %28 = ptrtoint ptr %cell14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %cell14, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %7, i32 0, i32 13
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags, align 4
  %31 = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool21.not = icmp eq i32 %31, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end19
  %d_name = getelementptr inbounds %struct.dentry, ptr %mntpt, i32 0, i32 4
  %32 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp23 = icmp ult i32 %33, 2
  br i1 %cmp23, label %if.then22.cleanup98_crit_edge, label %if.end26

if.then22.cleanup98_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup98

if.end26:                                         ; preds = %if.then22
  %name = getelementptr inbounds %struct.dentry, ptr %mntpt, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %37)
  %cmp31 = icmp eq i8 %37, 46
  br i1 %cmp31, label %if.then33, label %if.end26.if.end36_crit_edge

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %dec = add i32 %33, -1
  %incdec.ptr = getelementptr i8, ptr %35, i32 1
  %type34 = getelementptr inbounds %struct.afs_fs_context, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %type34 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %type34, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %1, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end26.if.end36_crit_edge
  %p.0 = phi ptr [ %incdec.ptr, %if.then33 ], [ %35, %if.end26.if.end36_crit_edge ]
  %size.0 = phi i32 [ %dec, %if.then33 ], [ %33, %if.end26.if.end36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %size.0)
  %cmp37 = icmp ugt i32 %size.0, 256
  br i1 %cmp37, label %if.end36.cleanup98_crit_edge, label %if.end40

if.end36.cleanup98_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup98

if.end40:                                         ; preds = %if.end36
  %net41 = getelementptr inbounds %struct.afs_fs_context, ptr %1, i32 0, i32 8
  %40 = ptrtoint ptr %net41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net41, align 4
  %call42 = tail call ptr @afs_lookup_cell(ptr noundef %41, ptr noundef %p.0, i32 noundef %size.0, ptr noundef null, i1 noundef zeroext false) #7
  %cmp.i = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %cleanup

do.end:                                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %mntpt) #10
  %42 = ptrtoint ptr %call42 to i32
  br label %cleanup98

cleanup:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %cell14 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call42, ptr %cell14, align 4
  %volname = getelementptr inbounds %struct.afs_fs_context, ptr %1, i32 0, i32 7
  %44 = ptrtoint ptr %volname to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @afs_root_volume, ptr %volname, align 4
  %volnamesz = getelementptr inbounds %struct.afs_fs_context, ptr %1, i32 0, i32 6
  %45 = ptrtoint ptr %volnamesz to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 9, ptr %volnamesz, align 4
  br label %if.end97

if.else:                                          ; preds = %if.end19
  %46 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %d_inode.i, align 8
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.else
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !95
  %and.i.i.i = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i162 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i162, label %if.then.i.i163, label %do.body24.critedge.i.i

if.then.i.i163:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  %49 = tail call ptr @llvm.returnaddress(i32 0) #7
  %50 = ptrtoint ptr %49 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %50) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %50) #7
  tail call void @trace_hardirqs_on() #7
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = tail call ptr @llvm.returnaddress(i32 0) #7
  %52 = ptrtoint ptr %51 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %52) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %52) #7
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i163
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !96
  %and.i.i.i.i = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !88

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %48) #7, !srcloc !97
  %54 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !99
  %56 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %57, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %55, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %57, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !100
  %58 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !101
  %60 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %61, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %cell52 = getelementptr inbounds %struct.afs_super_info, ptr %5, i32 0, i32 1
  %62 = ptrtoint ptr %cell52 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cell52, align 4
  %tobool53.not = icmp eq ptr %63, null
  br i1 %tobool53.not, label %i_size_read.exit.if.end58_crit_edge, label %if.then54

i_size_read.exit.if.end58_crit_edge:              ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then54:                                        ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call56 = tail call ptr @afs_use_cell(ptr noundef nonnull %63, i32 noundef 32) #7
  %64 = ptrtoint ptr %cell14 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call56, ptr %cell14, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %i_size_read.exit.if.end58_crit_edge
  %65 = add i64 %59, -4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4094, i64 %65)
  %66 = icmp ult i64 %65, -4094
  br i1 %66, label %if.end58.cleanup98_crit_edge, label %if.end64

if.end58.cleanup98_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup98

if.end64:                                         ; preds = %if.end58
  %67 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %d_inode.i, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %68, i32 0, i32 9
  %69 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call ptr @read_cache_page(ptr noundef %70, i32 noundef 0, ptr noundef null, ptr noundef null) #7
  %cmp.i165 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %call.i to i32
  br label %cleanup98

if.end70:                                         ; preds = %if.end64
  %72 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  %and.i.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !87

if.then.i.i:                                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %74, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %75, %if.end.i.i ]
  %76 = inttoptr i32 %retval.0.i.i to ptr
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %cmp.i.not.i = icmp eq i32 %78, -1
  %79 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %72, align 4
  %and.i16.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !88

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !87

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i18.i = add i32 %80, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %81, %if.end.i20.i ]
  %82 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %82, ptr noundef nonnull @.str.21) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #7, !srcloc !102
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !87

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i25.i = add i32 %80, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %call.i to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %83, %if.end.i27.i ]
  %84 = inttoptr i32 %retval.0.i28.i to ptr
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %84, align 4
  %87 = and i32 %86, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool72.not = icmp eq i32 %87, 0
  br i1 %tobool72.not, label %if.end77, label %if.then73

if.then73:                                        ; preds = %PageError.exit
  %88 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %d_inode.i, align 8
  tail call fastcc void @trace_afs_file_error(ptr noundef %89) #7
  %90 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %72, align 4
  %and.i.i167 = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i167)
  %tobool.not.i.i168 = icmp eq i32 %and.i.i167, 0
  br i1 %tobool.not.i.i168, label %if.end.i.i171, label %if.then.i.i170, !prof !87

if.then.i.i170:                                   ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i169 = add i32 %91, -1
  br label %_compound_head.exit.i174

if.end.i.i171:                                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i174

_compound_head.exit.i174:                         ; preds = %if.end.i.i171, %if.then.i.i170
  %retval.0.i.i172 = phi i32 [ %sub.i.i169, %if.then.i.i170 ], [ %92, %if.end.i.i171 ]
  %93 = inttoptr i32 %retval.0.i.i172 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %93, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %94 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp.i.i.i.i173 = icmp eq i32 %95, 0
  br i1 %cmp.i.i.i.i173, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !88

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i174
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %93, ptr noundef nonnull @.str.25) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !103
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i174
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %96 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %96, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_mntpt_set_params, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !107

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %93, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup98_crit_edge

folio_put_testzero.exit.i.i.cleanup98_crit_edge:  ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup98

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %93) #7
  br label %cleanup98

if.end77:                                         ; preds = %PageError.exit
  tail call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 44) #7
  %97 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %call.i, align 4
  %shr.i.i175 = lshr i32 %98, 30
  %99 = zext i32 %shr.i.i175 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i175, label %if.end77.if.then.i176_crit_edge [
    i32 2, label %if.end77.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end77.if.else.i_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.end77.if.then.i176_crit_edge:                  ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i176

is_highmem_idx.exit.i:                            ; preds = %if.end77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %100 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %100)
  %cmp2.i.not.i = icmp eq i32 %100, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i176_crit_edge

is_highmem_idx.exit.i.if.then.i176_crit_edge:     ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i176

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i176:                                     ; preds = %is_highmem_idx.exit.i.if.then.i176_crit_edge, %if.end77.if.then.i176_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %call.i) #7
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end77.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %call.i) #7
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i176
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i176 ]
  %101 = trunc i64 %59 to i32
  %idxprom = add nsw i32 %101, -1
  %arrayidx79 = getelementptr i8, ptr %addr.0.i, i32 %idxprom
  %102 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx79, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %103)
  %cmp81 = icmp eq i8 %103, 46
  br i1 %cmp81, label %if.then83, label %kmap.exit.if.end87_crit_edge

kmap.exit.if.end87_crit_edge:                     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then83:                                        ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call86 = tail call i32 @vfs_parse_fs_string(ptr noundef %fc, ptr noundef nonnull @.str.20, ptr noundef %addr.0.i, i32 noundef %idxprom) #7
  br label %if.end87

if.end87:                                         ; preds = %if.then83, %kmap.exit.if.end87_crit_edge
  %ret.0 = phi i32 [ %call86, %if.then83 ], [ -22, %kmap.exit.if.end87_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 55) #7
  %104 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %call.i, align 4
  %shr.i.i177 = lshr i32 %105, 30
  %106 = zext i32 %shr.i.i177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %shr.i.i177, label %if.end87.kunmap.exit_crit_edge [
    i32 2, label %if.end87.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i179
  ]

if.end87.if.end.i_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end87.kunmap.exit_crit_edge:                   ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit

is_highmem_idx.exit.i179:                         ; preds = %if.end87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %107 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %107)
  %cmp2.i.not.i178 = icmp eq i32 %107, 2
  br i1 %cmp2.i.not.i178, label %is_highmem_idx.exit.i179.if.end.i_crit_edge, label %is_highmem_idx.exit.i179.kunmap.exit_crit_edge

is_highmem_idx.exit.i179.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit

is_highmem_idx.exit.i179.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i179.if.end.i_crit_edge, %if.end87.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %call.i) #7
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i179.kunmap.exit_crit_edge, %if.end87.kunmap.exit_crit_edge
  %108 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %72, align 4
  %and.i.i180 = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i180)
  %tobool.not.i.i181 = icmp eq i32 %and.i.i180, 0
  br i1 %tobool.not.i.i181, label %if.end.i.i184, label %if.then.i.i183, !prof !87

if.then.i.i183:                                   ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i182 = add i32 %109, -1
  br label %_compound_head.exit.i189

if.end.i.i184:                                    ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i189

_compound_head.exit.i189:                         ; preds = %if.end.i.i184, %if.then.i.i183
  %retval.0.i.i185 = phi i32 [ %sub.i.i182, %if.then.i.i183 ], [ %110, %if.end.i.i184 ]
  %111 = inttoptr i32 %retval.0.i.i185 to ptr
  %_refcount.i.i.i.i.i186 = getelementptr inbounds %struct.page, ptr %111, i32 0, i32 3
  %call.i.i.i.i.i.i.i187 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i186, i32 noundef 4) #7
  %112 = ptrtoint ptr %_refcount.i.i.i.i.i186 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %_refcount.i.i.i.i.i186, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp.i.i.i.i188 = icmp eq i32 %113, 0
  br i1 %cmp.i.i.i.i188, label %if.then.i.i.i.i190, label %do.end5.i.i.i.i194, !prof !88

if.then.i.i.i.i190:                               ; preds = %_compound_head.exit.i189
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %111, ptr noundef nonnull @.str.25) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !103
  unreachable

do.end5.i.i.i.i194:                               ; preds = %_compound_head.exit.i189
  %call.i.i.i10.i.i.i.i191 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i186, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i186, i32 1, i32 3, i32 1) #7
  %114 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i186, ptr %_refcount.i.i.i.i.i186, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i186) #7, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i.i.i192 = extractvalue { i32, i32 } %114, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i192)
  %cmp.i.i.i.i.i.i.i193 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i192, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_mntpt_set_params, %if.then.i.i.i.i.i196)) #7
          to label %folio_put_testzero.exit.i.i197 [label %if.then.i.i.i.i.i196], !srcloc !107

if.then.i.i.i.i.i196:                             ; preds = %do.end5.i.i.i.i194
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i195 = zext i1 %cmp.i.i.i.i.i.i.i193 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %111, i32 noundef -1, i32 noundef %conv.i.i.i.i.i195) #7
  br label %folio_put_testzero.exit.i.i197

folio_put_testzero.exit.i.i197:                   ; preds = %if.then.i.i.i.i.i196, %do.end5.i.i.i.i194
  br i1 %cmp.i.i.i.i.i.i.i193, label %if.then.i4.i198, label %folio_put_testzero.exit.i.i197.cleanup92_crit_edge

folio_put_testzero.exit.i.i197.cleanup92_crit_edge: ; preds = %folio_put_testzero.exit.i.i197
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup92

if.then.i4.i198:                                  ; preds = %folio_put_testzero.exit.i.i197
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %111) #7
  br label %cleanup92

cleanup92:                                        ; preds = %if.then.i4.i198, %folio_put_testzero.exit.i.i197.cleanup92_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp88 = icmp slt i32 %ret.0, 0
  br i1 %cmp88, label %cleanup92.cleanup98_crit_edge, label %cleanup92.if.end97_crit_edge

cleanup92.if.end97_crit_edge:                     ; preds = %cleanup92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

cleanup92.cleanup98_crit_edge:                    ; preds = %cleanup92
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup98

if.end97:                                         ; preds = %cleanup92.if.end97_crit_edge, %cleanup
  br label %cleanup98

cleanup98:                                        ; preds = %if.end97, %cleanup92.cleanup98_crit_edge, %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup98_crit_edge, %if.then68, %if.end58.cleanup98_crit_edge, %do.end, %if.end36.cleanup98_crit_edge, %if.then22.cleanup98_crit_edge
  %retval.2 = phi i32 [ 0, %if.end97 ], [ %ret.0, %cleanup92.cleanup98_crit_edge ], [ -36, %if.end36.cleanup98_crit_edge ], [ -2, %if.then22.cleanup98_crit_edge ], [ %42, %do.end ], [ -5, %if.then.i4.i ], [ -5, %folio_put_testzero.exit.i.i.cleanup98_crit_edge ], [ -22, %if.end58.cleanup98_crit_edge ], [ %71, %if.then68 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_mount(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_fs_context(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_unuse_cell(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_lookup_cell(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_use_cell(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_parse_fs_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_file_error(ptr noundef %vnode) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_file_error, i32 0, i32 1), ptr blockaddress(@trace_afs_file_error, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !107

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !77) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !87

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !77) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !108
  %call42 = tail call i32 @__traceiter_afs_file_error(ptr noundef null, ptr noundef %vnode, i32 noundef -5, i32 noundef 7) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !109
  %13 = tail call i32 @llvm.read_register.i32(metadata !77) #7
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !77) #7
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !87

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !77) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_file_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_file_error, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_afs_file_error.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_afs_file_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 1217, ptr noundef nonnull @.str.23) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !111
  %31 = tail call i32 @llvm.read_register.i32(metadata !77) #7
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_file_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_mntpt_expiry_timed_out(ptr nocapture noundef readnone %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !87

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !77) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %comm, ptr noundef nonnull @.str.29) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %5 = load volatile ptr, ptr @afs_vfsmounts, align 4
  %cmp.i.not = icmp eq ptr %5, @afs_vfsmounts
  br i1 %cmp.i.not, label %do.end5.do.body11_crit_edge, label %if.then8

do.end5.do.body11_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

if.then8:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mark_mounts_for_expiry(ptr noundef nonnull @afs_vfsmounts) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_wq to i32))
  %6 = load ptr, ptr @afs_wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef nonnull @afs_mntpt_expiry_timer, i32 noundef 60000) #7
  br label %do.body11

do.body11:                                        ; preds = %if.then8, %do.end5.do.body11_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %7 = load i32, ptr @afs_debug, align 4
  %and12 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.do.end30_crit_edge, label %do.end22, !prof !87

do.body11.do.end30_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

do.end22:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %8 = tail call i32 @llvm.read_register.i32(metadata !77) #7
  %and.i31 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i31 to ptr
  %task25 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task25, align 8
  %comm26 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 101
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %comm26, ptr noundef nonnull @.str.29) #10
  br label %do.end30

do.end30:                                         ; preds = %do.end22, %do.body11.do.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_mounts_for_expiry(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !59, !61, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75}
!llvm.named.register.sp = !{!77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @afs_mntpt_file_operations, !1, !"afs_mntpt_file_operations", i1 false, i1 false}
!1 = !{!"../fs/afs/mntpt.c", i32 26, i32 30}
!2 = !{ptr @afs_mntpt_inode_operations, !3, !"afs_mntpt_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/afs/mntpt.c", i32 31, i32 31}
!4 = !{ptr @afs_autocell_inode_operations, !5, !"afs_autocell_inode_operations", i1 false, i1 false}
!5 = !{!"../fs/afs/mntpt.c", i32 37, i32 31}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/afs/mntpt.c", i32 186, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @afs_d_automount._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @afs_d_automount._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/afs/mntpt.c", i32 196, i32 2}
!14 = !{ptr @afs_d_automount._entry.3, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @afs_d_automount._entry_ptr.5, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/afs/mntpt.c", i32 221, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @afs_mntpt_kill_timer._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @afs_mntpt_kill_timer._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/afs/mntpt.c", i32 223, i32 2}
!23 = !{ptr @afs_mntpt_kill_timer._entry.8, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @afs_mntpt_kill_timer._entry_ptr.10, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @afs_mntpt_kill_timer._entry.11, !22, !"_entry", i1 false, i1 false}
!27 = !{ptr @afs_mntpt_kill_timer._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/afs/mntpt.c", i32 55, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @afs_mntpt_lookup._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @afs_mntpt_lookup._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/afs/mntpt.c", i32 64, i32 2}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @afs_mntpt_open._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @afs_mntpt_open._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/afs/mntpt.c", i32 112, i32 4}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @afs_mntpt_set_params._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @afs_mntpt_set_params._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/afs/mntpt.c", i32 144, i32 34}
!45 = !{ptr @afs_root_volume, !46, !"afs_root_volume", i1 false, i1 false}
!46 = !{!"../fs/afs/mntpt.c", i32 46, i32 19}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/trace/events/afs.h", i32 1196, i32 1}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!53 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/mm.h", i32 717, i32 2}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!61 = !{ptr @afs_vfsmounts, !62, !"afs_vfsmounts", i1 false, i1 false}
!62 = !{!"../fs/afs/mntpt.c", i32 41, i32 8}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/afs/mntpt.c", i32 42, i32 8}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @afs_mntpt_expiry_timer, !64, !"afs_mntpt_expiry_timer", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/afs/mntpt.c", i32 205, i32 2}
!69 = !{ptr @afs_mntpt_expiry_timed_out._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @afs_mntpt_expiry_timed_out._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/afs/mntpt.c", i32 213, i32 2}
!73 = !{ptr @afs_mntpt_expiry_timed_out._entry.30, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @afs_mntpt_expiry_timed_out._entry_ptr.32, !72, !"_entry_ptr", i1 false, i1 false}
!75 = distinct !{null, !76, !"afs_mntpt_expiry_timeout", i1 false, i1 false}
!76 = !{!"../fs/afs/mntpt.c", i32 44, i32 22}
!77 = !{!"sp"}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"branch_weights", i32 2000, i32 1}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i64 2157794326, i64 2157794805, i64 2157794363, i64 2157794419, i64 2157794453, i64 2157794477, i64 2157794518, i64 2157794539, i64 2157794567, i64 2157794601}
!90 = !{i64 2157807646, i64 2157808125, i64 2157807683, i64 2157807739, i64 2157807773, i64 2157807797, i64 2157807838, i64 2157807859, i64 2157807887, i64 2157807921}
!91 = !{i64 2148302484}
!92 = !{i64 2148216948, i64 2148216980, i64 2148217009, i64 2148217043, i64 2148217074, i64 2148217097}
!93 = !{i64 2149308932}
!94 = !{i64 2148214483, i64 2148214515, i64 2148214544, i64 2148214578, i64 2148214609, i64 2148214632}
!95 = !{i64 605434, i64 605495}
!96 = !{i64 608166}
!97 = !{i64 608451}
!98 = !{i64 2152706387}
!99 = !{i64 2152706229}
!100 = !{i64 2152706557}
!101 = !{i64 2149975089}
!102 = !{i64 2150222311, i64 2150222802, i64 2150222348, i64 2150222404, i64 2150222438, i64 2150222462, i64 2150222503, i64 2150222524, i64 2150222552, i64 2150222586}
!103 = !{i64 2153358910, i64 2153359393, i64 2153358947, i64 2153359003, i64 2153359037, i64 2153359061, i64 2153359102, i64 2153359123, i64 2153359151, i64 2153359185}
!104 = !{i64 2148301405}
!105 = !{i64 2148216138, i64 2148216170, i64 2148216199, i64 2148216233, i64 2148216264, i64 2148216287}
!106 = !{i64 2148301634}
!107 = !{i64 2148694768, i64 2148694773, i64 2148694786, i64 2148694830, i64 2148694864, i64 2148694885}
!108 = !{i64 2157549553}
!109 = !{i64 2157549782}
!110 = !{i64 2149367981}
!111 = !{i64 2149369017}
