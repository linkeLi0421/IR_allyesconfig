; ModuleID = '/llk/IR_all_yes/fs/afs/dir_edit.c_pt.bc'
source_filename = "../fs/afs/dir_edit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.124 }
%struct.atomic_t = type { i32 }
%union.anon.124 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.116, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.116 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.afs_vnode = type { %struct.inode, ptr, %struct.afs_fid, %struct.afs_file_status, i64, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, ptr, i64, i16, %struct.work_struct, %struct.list_head, ptr, %struct.atomic_t, i32, i32, i32, i32, %struct.seqlock_t, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.128, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.129, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.130, ptr, %struct.address_space, %struct.list_head, %union.anon.131, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.128 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.129 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.130 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.131 = type { ptr }
%struct.afs_fid = type { i64, i64, i32, i32 }
%struct.afs_file_status = type { i64, i64, %struct.timespec64, %struct.timespec64, i64, i64, i64, i32, i32, i16, i32, i32, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.page = type { i32, %union.anon.6, %union.anon.122, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.122 = type { %struct.atomic_t }
%struct.anon.171 = type { %struct.afs_xdr_dir_hdr, [1023 x i8], [128 x i16] }
%struct.afs_xdr_dir_hdr = type { i16, i16, i8, [8 x i8], [19 x i8] }
%union.afs_xdr_dirent = type { %struct.anon.172, [20 x i8] }
%struct.anon.172 = type { i8, [1 x i8], i16, i32, i32, [0 x i8] }
%struct.afs_net = type { ptr, %struct.afs_uuid, i8, ptr, ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.rb_root, ptr, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.rw_semaphore, %struct.mutex, %struct.mutex, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.seqlock_t, %struct.work_struct, %struct.timer_list, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.afs_uuid = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.hlist_head = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.147 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
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
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
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
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.95, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.95 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.80, i32, %struct.spinlock }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }

@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_edit_dir_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] ==> %s(,,{%d,%s},)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_edit_dir_add\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/afs/dir_edit.c\00", [46 x i8] zeroinitializer }, align 32
@afs_edit_dir_add._entry_ptr = internal global ptr @afs_edit_dir_add._entry, section ".printk_index", align 4
@afs_edit_dir_add._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s] <== %s() [fgp]\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_edit_dir_add._entry_ptr.5 = internal global ptr @afs_edit_dir_add._entry.3, section ".printk_index", align 4
@afs_edit_dir_add._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%-6.6s]     block %u: %2u %3u %u\0A\00", [61 x i8] zeroinitializer }, align 32
@afs_edit_dir_add._entry_ptr.8 = internal global ptr @afs_edit_dir_add._entry.6, section ".printk_index", align 4
@afs_edit_dir_add._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%-6.6s]     init %u\0A\00", [42 x i8] zeroinitializer }, align 32
@afs_edit_dir_add._entry_ptr.11 = internal global ptr @afs_edit_dir_add._entry.9, section ".printk_index", align 4
@afs_edit_dir_add._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%-6.6s]     slot %u\0A\00", [42 x i8] zeroinitializer }, align 32
@afs_edit_dir_add._entry_ptr.14 = internal global ptr @afs_edit_dir_add._entry.12, section ".printk_index", align 4
@afs_edit_dir_add._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%-6.6s]     Insert %s in %u[%u]\0A\00", [62 x i8] zeroinitializer }, align 32
@afs_edit_dir_add._entry_ptr.17 = internal global ptr @afs_edit_dir_add._entry.15, section ".printk_index", align 4
@afs_edit_dir_add._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_edit_dir_add._entry_ptr.20 = internal global ptr @afs_edit_dir_add._entry.18, section ".printk_index", align 4
@afs_edit_dir_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.21, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_edit_dir_remove\00", [44 x i8] zeroinitializer }, align 32
@afs_edit_dir_remove._entry_ptr = internal global ptr @afs_edit_dir_remove._entry, section ".printk_index", align 4
@afs_edit_dir_remove._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.21, ptr @.str.2, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_edit_dir_remove._entry_ptr.23 = internal global ptr @afs_edit_dir_remove._entry.22, section ".printk_index", align 4
@afs_edit_dir_remove._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%-6.6s]     Remove %s from %u[%u]\0A\00", [60 x i8] zeroinitializer }, align 32
@afs_edit_dir_remove._entry_ptr.26 = internal global ptr @afs_edit_dir_remove._entry.24, section ".printk_index", align 4
@afs_edit_dir_remove._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.21, ptr @.str.2, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_edit_dir_remove._entry_ptr.28 = internal global ptr @afs_edit_dir_remove._entry.27, section ".printk_index", align 4
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__tracepoint_afs_edit_dir = external dso_local global %struct.tracepoint, align 4
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/afs.h\00", [37 x i8] zeroinitializer }, align 32
@trace_afs_edit_dir.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@afs_net_id = external dso_local local_unnamed_addr global i32, align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@afs_dir_scan_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"afs_dir_scan_block\00", [45 x i8] zeroinitializer }, align 32
@afs_dir_scan_block._entry_ptr = internal global ptr @afs_dir_scan_block._entry, section ".printk_index", align 4
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 217, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 228, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 264, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 272, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 285, i32 5 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 341, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 347, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 384, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 397, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 468, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 474, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 260, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1160, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 698, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 271, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 717, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [30 x i8] c"../include/trace/events/afs.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1106, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 108, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 45, i32 7 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 695, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 723, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private constant [21 x i8] c"../fs/afs/dir_edit.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 136, i32 2 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @afs_dir_scan_block._entry, ptr @afs_dir_scan_block._entry_ptr, ptr @afs_edit_dir_add._entry, ptr @afs_edit_dir_add._entry.12, ptr @afs_edit_dir_add._entry.15, ptr @afs_edit_dir_add._entry.18, ptr @afs_edit_dir_add._entry.3, ptr @afs_edit_dir_add._entry.6, ptr @afs_edit_dir_add._entry.9, ptr @afs_edit_dir_add._entry_ptr, ptr @afs_edit_dir_add._entry_ptr.11, ptr @afs_edit_dir_add._entry_ptr.14, ptr @afs_edit_dir_add._entry_ptr.17, ptr @afs_edit_dir_add._entry_ptr.20, ptr @afs_edit_dir_add._entry_ptr.5, ptr @afs_edit_dir_add._entry_ptr.8, ptr @afs_edit_dir_remove._entry, ptr @afs_edit_dir_remove._entry.22, ptr @afs_edit_dir_remove._entry.24, ptr @afs_edit_dir_remove._entry.27, ptr @afs_edit_dir_remove._entry_ptr, ptr @afs_edit_dir_remove._entry_ptr.23, ptr @afs_edit_dir_remove._entry_ptr.26, ptr @afs_edit_dir_remove._entry_ptr.28, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.25, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_edit_dir_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_edit_dir_add._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_edit_dir_add._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_edit_dir_add._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_edit_dir_add._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_edit_dir_add._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_edit_dir_add._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_edit_dir_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_edit_dir_remove._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_edit_dir_remove._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_edit_dir_remove._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_scan_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_edit_dir_add(ptr noundef %vnode, ptr nocapture noundef readonly %name, ptr nocapture noundef readonly %new_fid, i32 noundef %why) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !90

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %name, align 8
  %name4 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %7 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name4, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, i32 noundef %6, ptr noundef %8) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %call8 = tail call fastcc i64 @i_size_read(ptr noundef %vnode)
  call void @__sanitizer_cov_trace_const_cmp8(i64 2095105, i64 %call8)
  %cmp = icmp slt i64 %call8, 2095105
  %and9 = and i64 %call8, 2047
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9)
  %tobool10.not = icmp eq i64 %and9, 0
  %or.cond = and i1 %cmp, %tobool10.not
  br i1 %or.cond, label %if.end12, label %if.then11

if.then11:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #10
  br label %cleanup

if.end12:                                         ; preds = %do.end7
  %call13 = tail call fastcc ptr @afs_dir_get_folio(ptr noundef %vnode, i32 noundef 0)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.body16, label %if.end38

do.body16:                                        ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %9 = load i32, ptr @afs_debug, align 4
  %and17 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body16.cleanup_crit_edge, label %do.end28, !prof !90

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end28:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %10 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i394 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i394 to ptr
  %task31 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task31, align 8
  %comm32 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm32, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end38:                                         ; preds = %if.end12
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %name, align 8
  %add.i = add i32 %15, 16
  %div3.i = lshr i32 %add.i, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %16 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %16, 512
  %call.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call13, i32 noundef %or.i) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call8)
  %cmp42 = icmp eq i64 %call8, 0
  br i1 %cmp42, label %new_directory, label %if.end44

if.end44:                                         ; preds = %if.end38
  %div = sdiv i64 %call8, 2048
  %conv = trunc i64 %div to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %conv)
  %cmp45496.not = icmp eq i32 %conv, -1
  br i1 %cmp45496.not, label %if.end44.for.end_crit_edge, label %for.body.lr.ph

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 1022, i32 %conv)
  %cmp48 = icmp ugt i32 %conv, 1022
  %compound_nr.i.i = getelementptr %struct.page, ptr %call13, i32 1, i32 1, i32 0, i32 2
  %flags65 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 13
  %alloc_ctrs5.i = getelementptr inbounds %struct.anon.171, ptr %call.i, i32 0, i32 1
  %notmask.i = shl i32 -2, %div3.i
  %sub.i = xor i32 %notmask.i, -1
  %conv46.i = zext i32 %sub.i to i64
  %sub49.i = sub nsw i32 63, %div3.i
  br i1 %cmp48, label %for.body.lr.ph.error.split_crit_edge, label %for.body.preheader

for.body.lr.ph.error.split_crit_edge:             ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %error.split

for.body.preheader:                               ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp.i = icmp eq i32 %conv, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %conv)
  %cmp7.i = icmp slt i32 %conv, 128
  %arrayidx10.i = getelementptr %struct.anon.171, ptr %call.i, i32 0, i32 1, i32 %conv
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %b.0497 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %div47393 = lshr i32 %b.0497, 1
  %17 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %call13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i.not.i.i.i = icmp eq i32 %18, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !91

if.then.i.i.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef nonnull %call13, ptr noundef nonnull @.str.32) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #10, !srcloc !92
  unreachable

PageHead.exit.i.i:                                ; preds = %for.body
  %19 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %call13, align 4
  %21 = and i32 %20, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge, label %if.end.i.i

PageHead.exit.i.i.folio_nr_pages.exit_crit_edge:  ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %folio_nr_pages.exit

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %compound_nr.i.i, align 4
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %if.end.i.i, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge
  %retval.0.i.i = phi i32 [ %23, %if.end.i.i ], [ 1, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %div47393, i32 %retval.0.i.i)
  %cmp53.not = icmp ult i32 %div47393, %retval.0.i.i
  br i1 %cmp53.not, label %folio_nr_pages.exit.if.end60_crit_edge, label %if.then55

folio_nr_pages.exit.if.end60_crit_edge:           ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then55:                                        ; preds = %folio_nr_pages.exit
  %call56 = tail call fastcc ptr @afs_dir_get_folio(ptr noundef %vnode, i32 noundef %div47393)
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.then55.error.split_crit_edge, label %if.then55.if.end60_crit_edge

if.then55.if.end60_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then55.error.split_crit_edge:                  ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %error.split

if.end60:                                         ; preds = %if.then55.if.end60_crit_edge, %folio_nr_pages.exit.if.end60_crit_edge
  %folio.0 = phi ptr [ %call56, %if.then55.if.end60_crit_edge ], [ %call13, %folio_nr_pages.exit.if.end60_crit_edge ]
  %mul = shl i32 %b.0497, 11
  %24 = getelementptr inbounds %struct.page, ptr %folio.0, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %and.i.i.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.i.i, !prof !90

if.then.i.i.i.i.i:                                ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i.i.i = add i32 %26, -1
  br label %_compound_head.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %folio.0 to i32
  br label %_compound_head.exit.i.i.i.i

_compound_head.exit.i.i.i.i:                      ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %27, %if.end.i.i.i.i.i ]
  %28 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  %29 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i.i.i.i.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i, !prof !90

if.then.i.i.i.i.i.i.i:                            ; preds = %_compound_head.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  tail call void @dump_page(ptr noundef %32, ptr noundef nonnull @.str.29) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !93
  unreachable

folio_test_swapbacked.exit.i.i.i.i.i:             ; preds = %_compound_head.exit.i.i.i.i
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %28, align 4
  %35 = and i32 %34, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i.i.if.end.i.i.i_crit_edge, label %land.rhs.i.i.i.i.i

folio_test_swapbacked.exit.i.i.i.i.i.if.end.i.i.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

land.rhs.i.i.i.i.i:                               ; preds = %folio_test_swapbacked.exit.i.i.i.i.i
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %29, align 4
  %and.i.i.i.i.i.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %PageSwapCache.exit.i.i.i, label %if.then.i.i.i.i.i.i, !prof !90

if.then.i.i.i.i.i.i:                              ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  tail call void @dump_page(ptr noundef %38, ptr noundef nonnull @.str.29) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !93
  unreachable

PageSwapCache.exit.i.i.i:                         ; preds = %land.rhs.i.i.i.i.i
  %39 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %28, align 4
  %41 = and i32 %40, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.i.not.i.i.i = icmp eq i32 %41, 0
  br i1 %tobool.i.i.not.i.i.i, label %PageSwapCache.exit.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i395, !prof !90

PageSwapCache.exit.i.i.i.if.end.i.i.i_crit_edge:  ; preds = %PageSwapCache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.then.i.i.i395:                                 ; preds = %PageSwapCache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i.i = tail call i32 @__page_file_index(ptr noundef %folio.0) #10
  br label %folio_file_pos.exit

if.end.i.i.i:                                     ; preds = %PageSwapCache.exit.i.i.i.if.end.i.i.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.i.i.if.end.i.i.i_crit_edge
  %index.i.i.i = getelementptr inbounds %struct.page, ptr %folio.0, i32 0, i32 1, i32 0, i32 2
  %42 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index.i.i.i, align 4
  br label %folio_file_pos.exit

folio_file_pos.exit:                              ; preds = %if.end.i.i.i, %if.then.i.i.i395
  %retval.0.i.i.i = phi i32 [ %call2.i.i.i, %if.then.i.i.i395 ], [ %43, %if.end.i.i.i ]
  %shl.i.i.neg = mul i32 %retval.0.i.i.i, -4096
  %conv63 = add i32 %shl.i.i.neg, %mul
  %div3.i396 = lshr i32 %conv63, 12
  %add.ptr.i = getelementptr %struct.page, ptr %folio.0, i32 %div3.i396
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %44 = load i32, ptr @pgprot_kernel, align 4
  %or.i397 = or i32 %44, 512
  %call.i398 = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i, i32 noundef %or.i397) #10
  %rem.i = and i32 %conv63, 2048
  %add.ptr1.i = getelementptr i8, ptr %call.i398, i32 %rem.i
  %45 = ptrtoint ptr %flags65 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %flags65, align 4
  %47 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool67.not = icmp eq i32 %47, 0
  br i1 %tobool67.not, label %invalidated, label %do.body70

do.body70:                                        ; preds = %folio_file_pos.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %48 = load i32, ptr @afs_debug, align 4
  %and71 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.body70.do.end96_crit_edge, label %do.end82, !prof !90

do.body70.do.end96_crit_edge:                     ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end96

do.end82:                                         ; preds = %do.body70
  %49 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i399 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i399 to ptr
  %task85 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task85 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task85, align 8
  %comm86 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 101
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %b.0497)
  %cmp88 = icmp ult i32 %b.0497, 128
  br i1 %cmp88, label %cond.true, label %do.end82.cond.end_crit_edge

do.end82.cond.end_crit_edge:                      ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.anon.171, ptr %call.i, i32 0, i32 1, i32 %b.0497
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx, align 1
  %conv90 = zext i8 %54 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end82.cond.end_crit_edge
  %cond = phi i32 [ %conv90, %cond.true ], [ 99, %do.end82.cond.end_crit_edge ]
  %55 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %add.ptr1.i, align 1
  %conv91 = zext i16 %56 to i32
  %magic = getelementptr inbounds %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 1
  %57 = ptrtoint ptr %magic to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %magic, align 1
  %conv92 = zext i16 %58 to i32
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm86, i32 noundef %b.0497, i32 noundef %cond, i32 noundef %conv91, i32 noundef %conv92) #13
  br label %do.end96

do.end96:                                         ; preds = %cond.end, %do.body70.do.end96_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %b.0497, i32 %conv)
  %cmp97 = icmp eq i32 %b.0497, %conv
  br i1 %cmp97, label %do.body100, label %do.end96.if.end125_crit_edge

do.end96.if.end125_crit_edge:                     ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125

do.body100:                                       ; preds = %do.end96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %59 = load i32, ptr @afs_debug, align 4
  %and101 = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %do.body100.do.end121_crit_edge, label %do.end112, !prof !90

do.body100.do.end121_crit_edge:                   ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end121

do.end112:                                        ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #12
  %60 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i400 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i400 to ptr
  %task115 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task115 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task115, align 8
  %comm116 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 101
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm116, i32 noundef %conv) #13
  br label %do.end121

do.end121:                                        ; preds = %do.end112, %do.body100.do.end121_crit_edge
  %64 = getelementptr inbounds i8, ptr %add.ptr1.i, i32 4
  %65 = call ptr @memset(ptr %64, i32 0, i32 2044)
  %66 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 1, ptr %add.ptr1.i, align 1
  %magic.i = getelementptr inbounds %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 1
  %67 = ptrtoint ptr %magic.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 1234, ptr %magic.i, align 1
  %bitmap.i = getelementptr inbounds %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3
  %68 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %bitmap.i, align 1
  br i1 %cmp.i, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -1, ptr %bitmap.i, align 1
  %arrayidx4.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 1
  %70 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 31, ptr %arrayidx4.i, align 1
  %alloc_ctrs.i = getelementptr inbounds %struct.anon.171, ptr %add.ptr1.i, i32 0, i32 1
  %71 = call ptr @memset(ptr %alloc_ctrs.i, i32 64, i32 1023)
  %72 = ptrtoint ptr %alloc_ctrs5.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 51, ptr %alloc_ctrs5.i, align 1
  br label %if.then8.i

if.end.i:                                         ; preds = %do.end121
  br i1 %cmp7.i, label %if.end.i.if.then8.i_crit_edge, label %if.end.i.afs_edit_init_block.exit_crit_edge

if.end.i.afs_edit_init_block.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %afs_edit_init_block.exit

if.end.i.if.then8.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i.if.then8.i_crit_edge, %if.end.thread.i
  %73 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 63, ptr %arrayidx10.i, align 1
  br label %afs_edit_init_block.exit

afs_edit_init_block.exit:                         ; preds = %if.then8.i, %if.end.i.afs_edit_init_block.exit_crit_edge
  %mul123 = add i32 %mul, 2048
  %conv124 = zext i32 %mul123 to i64
  tail call fastcc void @afs_set_i_size(ptr noundef %vnode, i64 noundef %conv124)
  br label %if.end125

if.end125:                                        ; preds = %afs_edit_init_block.exit, %do.end96.if.end125_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %b.0497)
  %cmp126 = icmp ugt i32 %b.0497, 127
  br i1 %cmp126, label %if.end125.if.then134_crit_edge, label %lor.lhs.false128

if.end125.if.then134_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then134

lor.lhs.false128:                                 ; preds = %if.end125
  %arrayidx130 = getelementptr %struct.anon.171, ptr %call.i, i32 0, i32 1, i32 %b.0497
  %74 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx130, align 1
  %conv131 = zext i8 %75 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div3.i, i32 %conv131)
  %cmp132.not.not = icmp ult i32 %div3.i, %conv131
  br i1 %cmp132.not.not, label %lor.lhs.false128.if.then134_crit_edge, label %lor.lhs.false128.do.end166_crit_edge

lor.lhs.false128.do.end166_crit_edge:             ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end166

lor.lhs.false128.if.then134_crit_edge:            ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then134

if.then134:                                       ; preds = %lor.lhs.false128.if.then134_crit_edge, %if.end125.if.then134_crit_edge
  %bitmap1.i = getelementptr inbounds %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3
  %76 = ptrtoint ptr %bitmap1.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bitmap1.i, align 1
  %conv.i = zext i8 %77 to i64
  %arrayidx3.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 1
  %78 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %79 to i64
  %shl5.i = shl nuw nsw i64 %conv4.i, 8
  %or.i401 = or i64 %shl5.i, %conv.i
  %arrayidx7.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 2
  %80 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %81 to i64
  %shl9.i = shl nuw nsw i64 %conv8.i, 16
  %or10.i = or i64 %or.i401, %shl9.i
  %arrayidx12.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 3
  %82 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %83 to i64
  %shl14.i = shl nuw nsw i64 %conv13.i, 24
  %or15.i = or i64 %or10.i, %shl14.i
  %arrayidx17.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 4
  %84 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %85 to i64
  %shl19.i = shl nuw nsw i64 %conv18.i, 32
  %or20.i = or i64 %or15.i, %shl19.i
  %arrayidx22.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 5
  %86 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %87 to i64
  %shl24.i = shl nuw nsw i64 %conv23.i, 40
  %or25.i = or i64 %or20.i, %shl24.i
  %arrayidx27.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 6
  %88 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx27.i, align 1
  %conv28.i = zext i8 %89 to i64
  %shl29.i = shl nuw nsw i64 %conv28.i, 48
  %or30.i = or i64 %or25.i, %shl29.i
  %arrayidx32.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 7
  %90 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx32.i, align 1
  %conv33.i = zext i8 %91 to i64
  %shl34.i = shl nuw i64 %conv33.i, 56
  %or35.i = or i64 %or30.i, %shl34.i
  %shr.i402 = lshr i64 %or35.i, 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end53.i.do.body.i_crit_edge, %if.then134
  %bitmap.0.i = phi i64 [ %shr.i402, %if.then134 ], [ %shr57.i, %if.end53.i.do.body.i_crit_edge ]
  %bit.0.i = phi i32 [ 1, %if.then134 ], [ %add58.i, %if.end53.i.do.body.i_crit_edge ]
  %conv37.i = trunc i64 %bitmap.0.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv37.i)
  %cmp.not.i = icmp eq i32 %conv37.i, 0
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %neg.i = xor i32 %conv37.i, -1
  %92 = tail call i32 @llvm.cttz.i32(i32 %neg.i, i1 false) #10, !range !94
  br label %cond.end.i

cond.false.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr40.i = lshr i64 %bitmap.0.i, 32
  %conv41.i = trunc i64 %shr40.i to i32
  %neg42.i = xor i32 %conv41.i, -1
  %93 = tail call i32 @llvm.cttz.i32(i32 %neg42.i, i1 false) #10, !range !94
  %add.i403 = add nuw nsw i32 %93, 32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %92, %cond.true.i ], [ %add.i403, %cond.false.i ]
  %sh_prom.i = zext i32 %cond.i to i64
  %shr44.i = lshr i64 %bitmap.0.i, %sh_prom.i
  %add45.i = add i32 %cond.i, %bit.0.i
  %and.i404 = and i64 %shr44.i, %conv46.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i404)
  %cmp47.i = icmp eq i64 %and.i404, 0
  br i1 %cmp47.i, label %if.then.i, label %if.end53.i

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add45.i, i32 %sub49.i)
  %cmp50.i = icmp ule i32 %add45.i, %sub49.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add45.i)
  %cmp136 = icmp sgt i32 %add45.i, -1
  %or.cond474 = and i1 %cmp50.i, %cmp136
  br i1 %or.cond474, label %do.body139, label %if.then.i.do.end166_crit_edge

if.then.i.do.end166_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end166

if.end53.i:                                       ; preds = %cond.end.i
  %conv54.i = trunc i64 %shr44.i to i32
  %94 = tail call i32 @llvm.cttz.i32(i32 %conv54.i, i1 false) #10, !range !94
  %sh_prom56.i = zext i32 %94 to i64
  %shr57.i = lshr i64 %shr44.i, %sh_prom56.i
  %add58.i = add i32 %94, %add45.i
  %tobool.not.i = icmp eq i64 %shr57.i, 0
  br i1 %tobool.not.i, label %if.end53.i.do.end166_crit_edge, label %if.end53.i.do.body.i_crit_edge

if.end53.i.do.body.i_crit_edge:                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.end53.i.do.end166_crit_edge:                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end166

do.body139:                                       ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %95 = load i32, ptr @afs_debug, align 4
  %and140 = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %do.body139.found_space_crit_edge, label %do.end151, !prof !90

do.body139.found_space_crit_edge:                 ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #12
  br label %found_space

do.end151:                                        ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #12
  %96 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i405 = and i32 %96, -16384
  %97 = inttoptr i32 %and.i405 to ptr
  %task154 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %task154 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %task154, align 8
  %comm155 = getelementptr inbounds %struct.task_struct, ptr %99, i32 0, i32 101
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm155, i32 noundef %add45.i) #13
  br label %found_space

do.end166:                                        ; preds = %if.end53.i.do.end166_crit_edge, %if.then.i.do.end166_crit_edge, %lor.lhs.false128.do.end166_crit_edge
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr1.i) #10
  %cmp169.not = icmp eq ptr %folio.0, %call13
  br i1 %cmp169.not, label %do.end166.for.inc_crit_edge, label %if.then171

do.end166.for.inc_crit_edge:                      ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then171:                                       ; preds = %do.end166
  tail call void @folio_unlock(ptr noundef %folio.0) #10
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %folio.0, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %100 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp.i.i.i = icmp eq i32 %101, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i406, label %do.end5.i.i.i, !prof !91

if.then.i.i.i406:                                 ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %folio.0, ptr noundef nonnull @.str.34) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !95
  unreachable

do.end5.i.i.i:                                    ; preds = %if.then171
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !96
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %102 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !97
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %102, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_edit_dir_add, %if.then.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !99

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %folio.0, i32 noundef -1, i32 noundef %conv.i.i.i.i) #10
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i407, label %folio_put_testzero.exit.i.for.inc_crit_edge

folio_put_testzero.exit.i.for.inc_crit_edge:      ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i407:                                     ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %folio.0) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then.i407, %folio_put_testzero.exit.i.for.inc_crit_edge, %do.end166.for.inc_crit_edge
  %inc = add nuw i32 %b.0497, 1
  %exitcond.not = icmp eq i32 %b.0497, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end44.for.end_crit_edge
  %name173 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %103 = ptrtoint ptr %name173 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %name173, align 8
  tail call fastcc void @trace_afs_edit_dir(ptr noundef %vnode, i32 noundef %why, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %104)
  %flags174 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags174) #10
  br label %do.end241

new_directory:                                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %105 = getelementptr inbounds i8, ptr %call.i, i32 4
  %106 = call ptr @memset(ptr %105, i32 0, i32 2044)
  %107 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %107, i32 2)
  store i16 1, ptr %call.i, align 1
  %magic.i409 = getelementptr inbounds %struct.afs_xdr_dir_hdr, ptr %call.i, i32 0, i32 1
  %108 = ptrtoint ptr %magic.i409 to i32
  call void @__asan_storeN_noabort(i32 %108, i32 2)
  store i16 1234, ptr %magic.i409, align 1
  %bitmap.i410 = getelementptr inbounds %struct.afs_xdr_dir_hdr, ptr %call.i, i32 0, i32 3
  %109 = ptrtoint ptr %bitmap.i410 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 -1, ptr %bitmap.i410, align 1
  %arrayidx4.i411 = getelementptr %struct.afs_xdr_dir_hdr, ptr %call.i, i32 0, i32 3, i32 1
  %110 = ptrtoint ptr %arrayidx4.i411 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 31, ptr %arrayidx4.i411, align 1
  %alloc_ctrs.i412 = getelementptr %struct.anon.171, ptr %call.i, i32 0, i32 1
  %111 = getelementptr %struct.anon.171, ptr %call.i, i32 0, i32 1, i32 1
  %112 = call ptr @memset(ptr %111, i32 64, i32 1022)
  %113 = ptrtoint ptr %alloc_ctrs.i412 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 63, ptr %alloc_ctrs.i412, align 1
  tail call fastcc void @afs_set_i_size(ptr noundef %vnode, i64 noundef 2048)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %114 = load i32, ptr @pgprot_kernel, align 4
  %or.i417 = or i32 %114, 512
  %call.i418 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call13, i32 noundef %or.i417) #10
  %.pre = shl i32 -2, %div3.i
  %.pre520 = xor i32 %.pre, -1
  br label %found_space

found_space:                                      ; preds = %new_directory, %do.end151, %do.body139.found_space_crit_edge
  %sub.i420.pre-phi = phi i32 [ %sub.i, %do.body139.found_space_crit_edge ], [ %sub.i, %do.end151 ], [ %.pre520, %new_directory ]
  %b.1 = phi i32 [ %b.0497, %do.body139.found_space_crit_edge ], [ %b.0497, %do.end151 ], [ 0, %new_directory ]
  %slot.0 = phi i32 [ %add45.i, %do.body139.found_space_crit_edge ], [ %add45.i, %do.end151 ], [ 13, %new_directory ]
  %folio.1 = phi ptr [ %folio.0, %do.body139.found_space_crit_edge ], [ %folio.0, %do.end151 ], [ %call13, %new_directory ]
  %block.0 = phi ptr [ %add.ptr1.i, %do.body139.found_space_crit_edge ], [ %add.ptr1.i, %do.end151 ], [ %call.i418, %new_directory ]
  %vnode176 = getelementptr inbounds %struct.afs_fid, ptr %new_fid, i32 0, i32 1
  %115 = ptrtoint ptr %vnode176 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %vnode176, align 8
  %conv177 = trunc i64 %116 to i32
  %unique = getelementptr inbounds %struct.afs_fid, ptr %new_fid, i32 0, i32 3
  %117 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %unique, align 4
  %name178 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %119 = ptrtoint ptr %name178 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %name178, align 8
  tail call fastcc void @trace_afs_edit_dir(ptr noundef %vnode, i32 noundef %why, i32 noundef 0, i32 noundef %b.1, i32 noundef %slot.0, i32 noundef %conv177, i32 noundef %118, ptr noundef %120)
  %arrayidx179 = getelementptr [64 x %union.afs_xdr_dirent], ptr %block.0, i32 0, i32 %slot.0
  %121 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %arrayidx179, align 1
  %unused = getelementptr inbounds %struct.anon.172, ptr %arrayidx179, i32 0, i32 1
  %122 = ptrtoint ptr %unused to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %unused, align 1
  %hash_next = getelementptr inbounds %struct.anon.172, ptr %arrayidx179, i32 0, i32 2
  %123 = ptrtoint ptr %hash_next to i32
  call void @__asan_storeN_noabort(i32 %123, i32 2)
  store i16 0, ptr %hash_next, align 1
  %124 = ptrtoint ptr %vnode176 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %vnode176, align 8
  %conv182 = trunc i64 %125 to i32
  %vnode183 = getelementptr inbounds %struct.anon.172, ptr %arrayidx179, i32 0, i32 3
  %126 = ptrtoint ptr %vnode183 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 4)
  store i32 %conv182, ptr %vnode183, align 1
  %127 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %unique, align 4
  %unique185 = getelementptr inbounds %struct.anon.172, ptr %arrayidx179, i32 0, i32 4
  %129 = ptrtoint ptr %unique185 to i32
  call void @__asan_storeN_noabort(i32 %129, i32 4)
  store i32 %128, ptr %unique185, align 1
  %name186 = getelementptr inbounds %struct.anon.172, ptr %arrayidx179, i32 0, i32 5
  %130 = ptrtoint ptr %name178 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %name178, align 8
  %132 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %name, align 8
  %add190 = add i32 %133, 1
  %134 = call ptr @memcpy(ptr %name186, ptr %131, i32 %add190)
  %135 = load i32, ptr %name, align 8
  %arrayidx193 = getelementptr %struct.anon.172, ptr %arrayidx179, i32 0, i32 5, i32 %135
  %136 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %arrayidx193, align 1
  %conv.i421 = sext i32 %sub.i420.pre-phi to i64
  %sh_prom.i422 = zext i32 %slot.0 to i64
  %shl1.i = shl i64 %conv.i421, %sh_prom.i422
  %conv2.i = trunc i64 %shl1.i to i8
  %bitmap.i423 = getelementptr inbounds %struct.afs_xdr_dir_hdr, ptr %block.0, i32 0, i32 3
  %137 = ptrtoint ptr %bitmap.i423 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %bitmap.i423, align 1
  %or.i424 = or i8 %138, %conv2.i
  store i8 %or.i424, ptr %bitmap.i423, align 1
  %arrayidx10.i425 = getelementptr %struct.afs_xdr_dir_hdr, ptr %block.0, i32 0, i32 3, i32 1
  %139 = ptrtoint ptr %arrayidx10.i425 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx10.i425, align 1
  %141 = lshr i64 %shl1.i, 8
  %142 = trunc i64 %141 to i8
  %conv13.i426 = or i8 %140, %142
  store i8 %conv13.i426, ptr %arrayidx10.i425, align 1
  %arrayidx18.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %block.0, i32 0, i32 3, i32 2
  %143 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx18.i, align 1
  %145 = lshr i64 %shl1.i, 16
  %146 = trunc i64 %145 to i8
  %conv21.i = or i8 %144, %146
  store i8 %conv21.i, ptr %arrayidx18.i, align 1
  %arrayidx26.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %block.0, i32 0, i32 3, i32 3
  %147 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx26.i, align 1
  %149 = lshr i64 %shl1.i, 24
  %150 = trunc i64 %149 to i8
  %conv29.i = or i8 %148, %150
  store i8 %conv29.i, ptr %arrayidx26.i, align 1
  %shr30.i = lshr i64 %shl1.i, 32
  %conv31.i = trunc i64 %shr30.i to i8
  %arrayidx34.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %block.0, i32 0, i32 3, i32 4
  %151 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx34.i, align 1
  %or36.i = or i8 %152, %conv31.i
  store i8 %or36.i, ptr %arrayidx34.i, align 1
  %shr38.i = lshr i64 %shl1.i, 40
  %conv39.i = trunc i64 %shr38.i to i8
  %arrayidx42.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %block.0, i32 0, i32 3, i32 5
  %153 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx42.i, align 1
  %or44.i = or i8 %154, %conv39.i
  store i8 %or44.i, ptr %arrayidx42.i, align 1
  %shr46.i = lshr i64 %shl1.i, 48
  %conv47.i = trunc i64 %shr46.i to i8
  %arrayidx50.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %block.0, i32 0, i32 3, i32 6
  %155 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx50.i, align 1
  %or52.i = or i8 %156, %conv47.i
  store i8 %or52.i, ptr %arrayidx50.i, align 1
  %shr54.i = lshr i64 %shl1.i, 56
  %conv55.i = trunc i64 %shr54.i to i8
  %arrayidx58.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %block.0, i32 0, i32 3, i32 7
  %157 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx58.i, align 1
  %or60.i = or i8 %158, %conv55.i
  store i8 %or60.i, ptr %arrayidx58.i, align 1
  tail call void @kunmap_local_indexed(ptr noundef %block.0) #10
  %cmp200.not = icmp eq ptr %folio.1, %call13
  br i1 %cmp200.not, label %found_space.if.end203_crit_edge, label %if.then202

found_space.if.end203_crit_edge:                  ; preds = %found_space
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end203

if.then202:                                       ; preds = %found_space
  tail call void @folio_unlock(ptr noundef %folio.1) #10
  %_refcount.i.i.i.i427 = getelementptr inbounds %struct.page, ptr %folio.1, i32 0, i32 3
  %call.i.i.i.i.i.i428 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i427, i32 noundef 4) #10
  %159 = ptrtoint ptr %_refcount.i.i.i.i427 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %_refcount.i.i.i.i427, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp.i.i.i429 = icmp eq i32 %160, 0
  br i1 %cmp.i.i.i429, label %if.then.i.i.i430, label %do.end5.i.i.i434, !prof !91

if.then.i.i.i430:                                 ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %folio.1, ptr noundef nonnull @.str.34) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !95
  unreachable

do.end5.i.i.i434:                                 ; preds = %if.then202
  %call.i.i.i10.i.i.i431 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i427, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !96
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i427, i32 1, i32 3, i32 1) #10
  %161 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i427, ptr %_refcount.i.i.i.i427, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i427) #10, !srcloc !97
  %asmresult.i.i.i.i.i.i.i.i.i432 = extractvalue { i32, i32 } %161, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i432)
  %cmp.i.i.i.i.i.i433 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i432, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_edit_dir_add, %if.then.i.i.i.i436)) #10
          to label %folio_put_testzero.exit.i437 [label %if.then.i.i.i.i436], !srcloc !99

if.then.i.i.i.i436:                               ; preds = %do.end5.i.i.i434
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i435 = zext i1 %cmp.i.i.i.i.i.i433 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %folio.1, i32 noundef -1, i32 noundef %conv.i.i.i.i435) #10
  br label %folio_put_testzero.exit.i437

folio_put_testzero.exit.i437:                     ; preds = %if.then.i.i.i.i436, %do.end5.i.i.i434
  br i1 %cmp.i.i.i.i.i.i433, label %if.then.i438, label %folio_put_testzero.exit.i437.if.end203_crit_edge

folio_put_testzero.exit.i437.if.end203_crit_edge: ; preds = %folio_put_testzero.exit.i437
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end203

if.then.i438:                                     ; preds = %folio_put_testzero.exit.i437
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %folio.1) #10
  br label %if.end203

if.end203:                                        ; preds = %if.then.i438, %folio_put_testzero.exit.i437.if.end203_crit_edge, %found_space.if.end203_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %b.1)
  %cmp204 = icmp ult i32 %b.1, 128
  br i1 %cmp204, label %if.then206, label %if.end203.if.end212_crit_edge

if.end203.if.end212_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212

if.then206:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx208 = getelementptr %struct.anon.171, ptr %call.i, i32 0, i32 1, i32 %b.1
  %162 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx208, align 1
  %164 = trunc i32 %div3.i to i8
  %.neg = xor i8 %164, -1
  %conv211 = add i8 %163, %.neg
  store i8 %conv211, ptr %arrayidx208, align 1
  br label %if.end212

if.end212:                                        ; preds = %if.then206, %if.end203.if.end212_crit_edge
  %i_version.i = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 38
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i, i32 noundef 8) #10
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %i_version.i) #10
  %call214 = tail call fastcc ptr @afs_v2net(ptr noundef %vnode)
  %n_dir_cr = getelementptr inbounds %struct.afs_net, ptr %call214, i32 0, i32 41
  %call.i.i.i441 = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_dir_cr, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %n_dir_cr, i32 1, i32 3, i32 1) #10
  %165 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_dir_cr, ptr %n_dir_cr, i32 1, ptr elementtype(i32) %n_dir_cr) #10, !srcloc !100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %166 = load i32, ptr @afs_debug, align 4
  %and216 = and i32 %166, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp eq i32 %and216, 0
  br i1 %tobool217.not, label %if.end212.do.end241_crit_edge, label %do.end227, !prof !90

if.end212.do.end241_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end241

do.end227:                                        ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #12
  %167 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i442 = and i32 %167, -16384
  %168 = inttoptr i32 %and.i442 to ptr
  %task230 = getelementptr inbounds %struct.thread_info, ptr %168, i32 0, i32 2
  %169 = ptrtoint ptr %task230 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %task230, align 8
  %comm231 = getelementptr inbounds %struct.task_struct, ptr %170, i32 0, i32 101
  %171 = ptrtoint ptr %name178 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %name178, align 8
  %call234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %comm231, ptr noundef %172, i32 noundef %b.1, i32 noundef %slot.0) #13
  br label %do.end241

do.end241:                                        ; preds = %error.split, %if.then.i469, %folio_put_testzero.exit.i468.do.end241_crit_edge, %invalidated.do.end241_crit_edge, %do.end227, %if.end212.do.end241_crit_edge, %for.end
  tail call void @kunmap_local_indexed(ptr noundef %call.i) #10
  tail call void @folio_unlock(ptr noundef nonnull %call13) #10
  %_refcount.i.i.i.i443 = getelementptr inbounds %struct.page, ptr %call13, i32 0, i32 3
  %call.i.i.i.i.i.i444 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i443, i32 noundef 4) #10
  %173 = ptrtoint ptr %_refcount.i.i.i.i443 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %_refcount.i.i.i.i443, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %cmp.i.i.i445 = icmp eq i32 %174, 0
  br i1 %cmp.i.i.i445, label %if.then.i.i.i446, label %do.end5.i.i.i450, !prof !91

if.then.i.i.i446:                                 ; preds = %do.end241
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef nonnull %call13, ptr noundef nonnull @.str.34) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !95
  unreachable

do.end5.i.i.i450:                                 ; preds = %do.end241
  %call.i.i.i10.i.i.i447 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i443, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !96
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i443, i32 1, i32 3, i32 1) #10
  %175 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i443, ptr %_refcount.i.i.i.i443, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i443) #10, !srcloc !97
  %asmresult.i.i.i.i.i.i.i.i.i448 = extractvalue { i32, i32 } %175, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i448)
  %cmp.i.i.i.i.i.i449 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i448, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_edit_dir_add, %if.then.i.i.i.i452)) #10
          to label %folio_put_testzero.exit.i453 [label %if.then.i.i.i.i452], !srcloc !99

if.then.i.i.i.i452:                               ; preds = %do.end5.i.i.i450
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i451 = zext i1 %cmp.i.i.i.i.i.i449 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef nonnull %call13, i32 noundef -1, i32 noundef %conv.i.i.i.i451) #10
  br label %folio_put_testzero.exit.i453

folio_put_testzero.exit.i453:                     ; preds = %if.then.i.i.i.i452, %do.end5.i.i.i450
  br i1 %cmp.i.i.i.i.i.i449, label %if.then.i454, label %folio_put_testzero.exit.i453.folio_put.exit456_crit_edge

folio_put_testzero.exit.i453.folio_put.exit456_crit_edge: ; preds = %folio_put_testzero.exit.i453
  call void @__sanitizer_cov_trace_pc() #12
  br label %folio_put.exit456

if.then.i454:                                     ; preds = %folio_put_testzero.exit.i453
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef nonnull %call13) #10
  br label %folio_put.exit456

folio_put.exit456:                                ; preds = %if.then.i454, %folio_put_testzero.exit.i453.folio_put.exit456_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %176 = load i32, ptr @afs_debug, align 4
  %and245 = and i32 %176, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and245)
  %tobool246.not = icmp eq i32 %and245, 0
  br i1 %tobool246.not, label %folio_put.exit456.cleanup_crit_edge, label %do.end256, !prof !90

folio_put.exit456.cleanup_crit_edge:              ; preds = %folio_put.exit456
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end256:                                        ; preds = %folio_put.exit456
  call void @__sanitizer_cov_trace_pc() #12
  %177 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i457 = and i32 %177, -16384
  %178 = inttoptr i32 %and.i457 to ptr
  %task259 = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %task259 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %task259, align 8
  %comm260 = getelementptr inbounds %struct.task_struct, ptr %180, i32 0, i32 101
  %call262 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %comm260, ptr noundef nonnull @.str.1) #13
  br label %cleanup

invalidated:                                      ; preds = %folio_file_pos.exit
  %name266 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %181 = ptrtoint ptr %name266 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %name266, align 8
  tail call fastcc void @trace_afs_edit_dir(ptr noundef %vnode, i32 noundef %why, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %182)
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags65) #10
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr1.i) #10
  %cmp274.not = icmp eq ptr %folio.0, %call13
  br i1 %cmp274.not, label %invalidated.do.end241_crit_edge, label %if.then276

invalidated.do.end241_crit_edge:                  ; preds = %invalidated
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end241

if.then276:                                       ; preds = %invalidated
  tail call void @folio_unlock(ptr noundef %folio.0) #10
  %_refcount.i.i.i.i458 = getelementptr inbounds %struct.page, ptr %folio.0, i32 0, i32 3
  %call.i.i.i.i.i.i459 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i458, i32 noundef 4) #10
  %183 = ptrtoint ptr %_refcount.i.i.i.i458 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %_refcount.i.i.i.i458, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp.i.i.i460 = icmp eq i32 %184, 0
  br i1 %cmp.i.i.i460, label %if.then.i.i.i461, label %do.end5.i.i.i465, !prof !91

if.then.i.i.i461:                                 ; preds = %if.then276
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %folio.0, ptr noundef nonnull @.str.34) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !95
  unreachable

do.end5.i.i.i465:                                 ; preds = %if.then276
  %call.i.i.i10.i.i.i462 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i458, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !96
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i458, i32 1, i32 3, i32 1) #10
  %185 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i458, ptr %_refcount.i.i.i.i458, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i458) #10, !srcloc !97
  %asmresult.i.i.i.i.i.i.i.i.i463 = extractvalue { i32, i32 } %185, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i463)
  %cmp.i.i.i.i.i.i464 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i463, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_edit_dir_add, %if.then.i.i.i.i467)) #10
          to label %folio_put_testzero.exit.i468 [label %if.then.i.i.i.i467], !srcloc !99

if.then.i.i.i.i467:                               ; preds = %do.end5.i.i.i465
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i466 = zext i1 %cmp.i.i.i.i.i.i464 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %folio.0, i32 noundef -1, i32 noundef %conv.i.i.i.i466) #10
  br label %folio_put_testzero.exit.i468

folio_put_testzero.exit.i468:                     ; preds = %if.then.i.i.i.i467, %do.end5.i.i.i465
  br i1 %cmp.i.i.i.i.i.i464, label %if.then.i469, label %folio_put_testzero.exit.i468.do.end241_crit_edge

folio_put_testzero.exit.i468.do.end241_crit_edge: ; preds = %folio_put_testzero.exit.i468
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end241

if.then.i469:                                     ; preds = %folio_put_testzero.exit.i468
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %folio.0) #10
  br label %do.end241

error.split:                                      ; preds = %if.then55.error.split_crit_edge, %for.body.lr.ph.error.split_crit_edge
  %name278 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %186 = ptrtoint ptr %name278 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %name278, align 8
  tail call fastcc void @trace_afs_edit_dir(ptr noundef %vnode, i32 noundef %why, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %187)
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags65) #10
  br label %do.end241

cleanup:                                          ; preds = %do.end256, %folio_put.exit456.cleanup_crit_edge, %do.end28, %do.body16.cleanup_crit_edge, %if.then11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !101
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %1 = tail call ptr @llvm.returnaddress(i32 0) #10
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = tail call ptr @llvm.returnaddress(i32 0) #10
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #10
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !102
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !91

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !103
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !104
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !105
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !106
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !107
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @afs_dir_get_folio(ptr noundef %vnode, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %gfp_mask = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %gfp_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gfp_mask, align 4
  %call = tail call ptr @__filemap_get_folio(ptr noundef %1, i32 noundef %index, i32 noundef 7, i32 noundef %3) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %land.lhs.true

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #10
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  %4 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private.exit, label %if.then.i.i, !prof !90

if.then.i.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef nonnull %call, ptr noundef nonnull @.str.29) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !93
  unreachable

folio_test_private.exit:                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %call, align 4
  %9 = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %if.then3, label %folio_test_private.exit.if.end4_crit_edge

folio_test_private.exit.if.end4_crit_edge:        ; preds = %folio_test_private.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %folio_test_private.exit
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %10 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %11, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i.i11, label %do.end5.i.i, !prof !91

if.then.i.i11:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef nonnull %call, ptr noundef nonnull @.str.31) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !108
  unreachable

do.end5.i.i:                                      ; preds = %if.then3
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@afs_dir_get_folio, %if.then.i.i.i.i)) #10
          to label %folio_get.exit.i [label %if.then.i.i.i.i], !srcloc !99

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef nonnull %call, i32 noundef 1) #10
  br label %folio_get.exit.i

folio_get.exit.i:                                 ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %private.i = getelementptr inbounds %struct.anon.147, ptr %call, i32 0, i32 4
  %13 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 1 to ptr), ptr %private.i, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %4, align 4
  %and.i.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_attach_private.exit, label %if.then.i.i.i, !prof !90

if.then.i.i.i:                                    ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef nonnull %call, ptr noundef nonnull @.str.29) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !93
  unreachable

folio_attach_private.exit:                        ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 13, ptr noundef nonnull %call) #10
  br label %if.end4

if.end4:                                          ; preds = %folio_attach_private.exit, %folio_test_private.exit.if.end4_crit_edge, %if.then
  ret ptr %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_set_i_size(ptr noundef %vnode, i64 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %entry.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

entry.i_size_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !110
  %9 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !111
  %18 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i.i.i7.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i.i.i29.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i.i.i9.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %29, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !112
  %30 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !113
  %37 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i.i.i12.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %40, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !90

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %entry.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !114
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #10
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #10
  %i_size8.i = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %size, ptr %i_size8.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %44) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !115
  %46 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %47, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !116
  %48 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i.i.i26.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  %add = add i64 %size, 1023
  %52 = lshr i64 %add, 9
  %shl = and i64 %52, 36028797018963966
  %i_blocks = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 22
  %53 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %shl, ptr %i_blocks, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_edit_dir(ptr noundef %dvnode, i32 noundef %why, i32 noundef %op, i32 noundef %block, i32 noundef %slot, i32 noundef %f_vnode, i32 noundef %f_unique, ptr noundef %name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_edit_dir, i32 0, i32 1), ptr blockaddress(@trace_afs_edit_dir, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !99

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !80) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !90

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !117
  %call42 = tail call i32 @__traceiter_afs_edit_dir(ptr noundef null, ptr noundef %dvnode, i32 noundef %why, i32 noundef %op, i32 noundef %block, i32 noundef %slot, i32 noundef %f_vnode, i32 noundef %f_unique, ptr noundef %name) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  %13 = tail call i32 @llvm.read_register.i32(metadata !80) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !80) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !90

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_edit_dir, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_edit_dir, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_afs_edit_dir.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_afs_edit_dir.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 1152, ptr noundef nonnull @.str.36) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !120
  %31 = tail call i32 @llvm.read_register.i32(metadata !80) #10
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
define internal fastcc ptr @afs_v2net(ptr nocapture noundef readonly %vnode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_net_id to i32))
  %6 = load i32, ptr @afs_net_id, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i.i.i.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !121
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i.i.i, label %entry.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

entry.rcu_read_lock.exit.i.i.i.i_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %entry
  %call1.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true2.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b4.i.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i.i, label %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 696, ptr noundef nonnull @.str.40) #10
  br label %rcu_read_lock.exit.i.i.i.i

rcu_read_lock.exit.i.i.i.i:                       ; preds = %if.then.i.i.i.i.i, %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i.i.i_crit_edge
  %gen.i.i.i.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 43
  %11 = ptrtoint ptr %gen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %gen.i.i.i.i, align 128
  %call.i.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %rcu_read_lock.exit.i.i.i.i.do.end7.i.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.i.do.end7.i.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %rcu_read_lock.exit.i.i.i.i
  %call2.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %land.lhs.true.i.i.i.i.do.end7.i.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i

land.lhs.true.i.i.i.i.do.end7.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i.i.i

land.lhs.true4.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b9.i.i.i.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i.i.i.i, label %land.lhs.true4.i.i.i.i.do.end7.i.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true4.i.i.i.i.do.end7.i.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 45, ptr noundef nonnull @.str.36) #10
  br label %do.end7.i.i.i.i

do.end7.i.i.i.i:                                  ; preds = %if.then.i.i.i.i, %land.lhs.true4.i.i.i.i.do.end7.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.do.end7.i.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.i.do.end7.i.i.i.i_crit_edge
  %arrayidx.i.i.i.i = getelementptr [0 x ptr], ptr %12, i32 0, i32 %6
  %13 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i10.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i10.i.i.i.i, label %do.end7.i.i.i.i.afs_i2net.exit_crit_edge, label %land.lhs.true.i13.i.i.i.i

do.end7.i.i.i.i.afs_i2net.exit_crit_edge:         ; preds = %do.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %afs_i2net.exit

land.lhs.true.i13.i.i.i.i:                        ; preds = %do.end7.i.i.i.i
  %call1.i11.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i.i.i)
  %tobool.not.i12.i.i.i.i = icmp eq i32 %call1.i11.i.i.i.i, 0
  br i1 %tobool.not.i12.i.i.i.i, label %land.lhs.true.i13.i.i.i.i.afs_i2net.exit_crit_edge, label %land.lhs.true2.i15.i.i.i.i

land.lhs.true.i13.i.i.i.i.afs_i2net.exit_crit_edge: ; preds = %land.lhs.true.i13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %afs_i2net.exit

land.lhs.true2.i15.i.i.i.i:                       ; preds = %land.lhs.true.i13.i.i.i.i
  %.b4.i14.i.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i.i.i, label %land.lhs.true2.i15.i.i.i.i.afs_i2net.exit_crit_edge, label %if.then.i16.i.i.i.i

land.lhs.true2.i15.i.i.i.i.afs_i2net.exit_crit_edge: ; preds = %land.lhs.true2.i15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %afs_i2net.exit

if.then.i16.i.i.i.i:                              ; preds = %land.lhs.true2.i15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.41) #10
  br label %afs_i2net.exit

afs_i2net.exit:                                   ; preds = %if.then.i16.i.i.i.i, %land.lhs.true2.i15.i.i.i.i.afs_i2net.exit_crit_edge, %land.lhs.true.i13.i.i.i.i.afs_i2net.exit_crit_edge, %do.end7.i.i.i.i.afs_i2net.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !122
  %15 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i.i.i.i.i17.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i17.i.i.i.i to ptr
  %preempt_count.i.i.i.i18.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i18.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_edit_dir_remove(ptr noundef %vnode, ptr nocapture noundef readonly %name, i32 noundef %why) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !90

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %name, align 8
  %name4 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %7 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name4, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.21, i32 noundef %6, ptr noundef %8) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %call8 = tail call fastcc i64 @i_size_read(ptr noundef %vnode)
  %9 = add i64 %call8, -2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 2093057, i64 %9)
  %10 = icmp ult i64 %9, 2093057
  %and11 = and i64 %call8, 2047
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11)
  %tobool12.not = icmp eq i64 %and11, 0
  %or.cond265 = and i1 %10, %tobool12.not
  br i1 %or.cond265, label %if.end14, label %if.then13

if.then13:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #10
  br label %cleanup

if.end14:                                         ; preds = %do.end7
  %div379.lhs.trunc = trunc i64 %call8 to i32
  %div379380411 = lshr i32 %div379.lhs.trunc, 11
  %call15 = tail call fastcc ptr @afs_dir_get_folio(ptr noundef %vnode, i32 noundef 0)
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.body18, label %for.body.lr.ph

do.body18:                                        ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %11 = load i32, ptr @afs_debug, align 4
  %and19 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body18.cleanup_crit_edge, label %do.end30, !prof !90

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end30:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %12 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i266 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i266 to ptr
  %task33 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task33, align 8
  %comm34 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm34, ptr noundef nonnull @.str.21) #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end14
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %name, align 8
  %add.i = add i32 %17, 16
  %div3.i = lshr i32 %add.i, 5
  %add1.i = add nuw nsw i32 %div3.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %18 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %18, 512
  %call.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call15, i32 noundef %or.i) #10
  %compound_nr.i.i = getelementptr %struct.page, ptr %call15, i32 1, i32 1, i32 0, i32 2
  %flags60 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 13
  %sub69 = sub nsw i32 62, %div3.i
  %name63.i = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %b.0355 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %div46264 = lshr i32 %b.0355, 1
  %19 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %call15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i.not.i.i.i = icmp eq i32 %20, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !91

if.then.i.i.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef nonnull %call15, ptr noundef nonnull @.str.32) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #10, !srcloc !92
  unreachable

PageHead.exit.i.i:                                ; preds = %for.body
  %21 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %call15, align 4
  %23 = and i32 %22, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i, label %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge, label %if.end.i.i

PageHead.exit.i.i.folio_nr_pages.exit_crit_edge:  ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %folio_nr_pages.exit

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %compound_nr.i.i, align 4
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %if.end.i.i, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge
  %retval.0.i.i = phi i32 [ %25, %if.end.i.i ], [ 1, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %div46264, i32 %retval.0.i.i)
  %cmp48.not = icmp ult i32 %div46264, %retval.0.i.i
  br i1 %cmp48.not, label %folio_nr_pages.exit.if.end55_crit_edge, label %if.then50

folio_nr_pages.exit.if.end55_crit_edge:           ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then50:                                        ; preds = %folio_nr_pages.exit
  %call51 = tail call fastcc ptr @afs_dir_get_folio(ptr noundef %vnode, i32 noundef %div46264)
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %error, label %if.then50.if.end55_crit_edge

if.then50.if.end55_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.end55:                                         ; preds = %if.then50.if.end55_crit_edge, %folio_nr_pages.exit.if.end55_crit_edge
  %folio.0 = phi ptr [ %call51, %if.then50.if.end55_crit_edge ], [ %call15, %folio_nr_pages.exit.if.end55_crit_edge ]
  %mul = shl i32 %b.0355, 11
  %26 = getelementptr inbounds %struct.page, ptr %folio.0, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and.i.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.i.i, !prof !90

if.then.i.i.i.i.i:                                ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i.i.i = add i32 %28, -1
  br label %_compound_head.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %folio.0 to i32
  br label %_compound_head.exit.i.i.i.i

_compound_head.exit.i.i.i.i:                      ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %29, %if.end.i.i.i.i.i ]
  %30 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  %31 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i.i.i.i.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i, !prof !90

if.then.i.i.i.i.i.i.i:                            ; preds = %_compound_head.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %34 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  tail call void @dump_page(ptr noundef %34, ptr noundef nonnull @.str.29) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !93
  unreachable

folio_test_swapbacked.exit.i.i.i.i.i:             ; preds = %_compound_head.exit.i.i.i.i
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %30, align 4
  %37 = and i32 %36, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %37, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i.i.if.end.i.i.i_crit_edge, label %land.rhs.i.i.i.i.i

folio_test_swapbacked.exit.i.i.i.i.i.if.end.i.i.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

land.rhs.i.i.i.i.i:                               ; preds = %folio_test_swapbacked.exit.i.i.i.i.i
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %31, align 4
  %and.i.i.i.i.i.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %PageSwapCache.exit.i.i.i, label %if.then.i.i.i.i.i.i, !prof !90

if.then.i.i.i.i.i.i:                              ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  tail call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.29) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !93
  unreachable

PageSwapCache.exit.i.i.i:                         ; preds = %land.rhs.i.i.i.i.i
  %41 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %30, align 4
  %43 = and i32 %42, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.i.not.i.i.i = icmp eq i32 %43, 0
  br i1 %tobool.i.i.not.i.i.i, label %PageSwapCache.exit.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i267, !prof !90

PageSwapCache.exit.i.i.i.if.end.i.i.i_crit_edge:  ; preds = %PageSwapCache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.then.i.i.i267:                                 ; preds = %PageSwapCache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i.i = tail call i32 @__page_file_index(ptr noundef %folio.0) #10
  br label %folio_file_pos.exit

if.end.i.i.i:                                     ; preds = %PageSwapCache.exit.i.i.i.if.end.i.i.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.i.i.if.end.i.i.i_crit_edge
  %index.i.i.i = getelementptr inbounds %struct.page, ptr %folio.0, i32 0, i32 1, i32 0, i32 2
  %44 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %index.i.i.i, align 4
  br label %folio_file_pos.exit

folio_file_pos.exit:                              ; preds = %if.end.i.i.i, %if.then.i.i.i267
  %retval.0.i.i.i = phi i32 [ %call2.i.i.i, %if.then.i.i.i267 ], [ %45, %if.end.i.i.i ]
  %shl.i.i.neg = mul i32 %retval.0.i.i.i, -4096
  %conv58 = add i32 %shl.i.i.neg, %mul
  %div3.i268 = lshr i32 %conv58, 12
  %add.ptr.i = getelementptr %struct.page, ptr %folio.0, i32 %div3.i268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %46 = load i32, ptr @pgprot_kernel, align 4
  %or.i269 = or i32 %46, 512
  %call.i270 = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i, i32 noundef %or.i269) #10
  %rem.i = and i32 %conv58, 2048
  %add.ptr1.i = getelementptr i8, ptr %call.i270, i32 %rem.i
  %47 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags60, align 4
  %49 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool62.not = icmp eq i32 %49, 0
  br i1 %tobool62.not, label %invalidated, label %if.end64

if.end64:                                         ; preds = %folio_file_pos.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %b.0355)
  %cmp65 = icmp ugt i32 %b.0355, 128
  br i1 %cmp65, label %if.end64.if.then72_crit_edge, label %lor.lhs.false67

if.end64.if.then72_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then72

lor.lhs.false67:                                  ; preds = %if.end64
  %arrayidx = getelementptr %struct.anon.171, ptr %call.i, i32 0, i32 1, i32 %b.0355
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx, align 1
  %conv68 = zext i8 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub69, i32 %conv68)
  %cmp70.not = icmp ult i32 %sub69, %conv68
  br i1 %cmp70.not, label %lor.lhs.false67.do.end82_crit_edge, label %lor.lhs.false67.if.then72_crit_edge

lor.lhs.false67.if.then72_crit_edge:              ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then72

lor.lhs.false67.do.end82_crit_edge:               ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end82

if.then72:                                        ; preds = %lor.lhs.false67.if.then72_crit_edge, %if.end64.if.then72_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %52 = load i32, ptr @afs_debug, align 4
  %and.i271 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i271)
  %tobool.not.i = icmp eq i32 %and.i271, 0
  br i1 %tobool.not.i, label %if.then72.do.end6.i_crit_edge, label %do.end.i, !prof !90

if.then72.do.end6.i_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i

do.end.i:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  %53 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 101
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %comm.i, ptr noundef nonnull @.str.43) #13
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %if.then72.do.end6.i_crit_edge
  %bitmap7.i = getelementptr inbounds %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3
  %57 = ptrtoint ptr %bitmap7.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bitmap7.i, align 1
  %conv.i = zext i8 %58 to i64
  %arrayidx9.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 1
  %59 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %60 to i64
  %shl11.i = shl nuw nsw i64 %conv10.i, 8
  %or.i272 = or i64 %shl11.i, %conv.i
  %arrayidx13.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 2
  %61 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %62 to i64
  %shl15.i = shl nuw nsw i64 %conv14.i, 16
  %or16.i = or i64 %or.i272, %shl15.i
  %arrayidx18.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 3
  %63 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx18.i, align 1
  %conv19.i = zext i8 %64 to i64
  %shl20.i = shl nuw nsw i64 %conv19.i, 24
  %or21.i = or i64 %or16.i, %shl20.i
  %arrayidx23.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 4
  %65 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx23.i, align 1
  %conv24.i = zext i8 %66 to i64
  %shl25.i = shl nuw nsw i64 %conv24.i, 32
  %or26.i = or i64 %or21.i, %shl25.i
  %arrayidx28.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 5
  %67 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx28.i, align 1
  %conv29.i = zext i8 %68 to i64
  %shl30.i = shl nuw nsw i64 %conv29.i, 40
  %or31.i = or i64 %or26.i, %shl30.i
  %arrayidx33.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 6
  %69 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %70 to i64
  %shl35.i = shl nuw nsw i64 %conv34.i, 48
  %or36.i = or i64 %or31.i, %shl35.i
  %arrayidx38.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 7
  %71 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx38.i, align 1
  %conv39.i = zext i8 %72 to i64
  %shl40.i = shl nuw i64 %conv39.i, 56
  %or41.i = or i64 %or36.i, %shl40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %b.0355)
  %cmp.i = icmp eq i32 %b.0355, 0
  %cond.i = select i1 %cmp.i, i32 13, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end6.i
  %d.0106.i = phi i32 [ %cond.i, %do.end6.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %sh_prom.i = zext i32 %d.0106.i to i64
  %73 = shl nuw i64 1, %sh_prom.i
  %74 = and i64 %73, %or41.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %74)
  %tobool46.not.i = icmp eq i64 %74, 0
  br i1 %tobool46.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end48.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end48.i:                                       ; preds = %for.body.i
  %arrayidx49.i = getelementptr [64 x %union.afs_xdr_dirent], ptr %add.ptr1.i, i32 0, i32 %d.0106.i
  %75 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx49.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %76)
  %cmp51.not.i = icmp eq i8 %76, 1
  br i1 %cmp51.not.i, label %if.end54.i, label %if.end48.i.for.inc.i_crit_edge

if.end48.i.for.inc.i_crit_edge:                   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end54.i:                                       ; preds = %if.end48.i
  %name55.i = getelementptr inbounds %struct.anon.172, ptr %arrayidx49.i, i32 0, i32 5
  %call57.i = tail call i32 @strlen(ptr noundef %name55.i) #14
  %77 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %name, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call57.i, i32 %78)
  %cmp59.i = icmp eq i32 %call57.i, %78
  br i1 %cmp59.i, label %land.lhs.true.i, label %if.end54.i.if.end69.i_crit_edge

if.end54.i.if.end69.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69.i

land.lhs.true.i:                                  ; preds = %if.end54.i
  %79 = ptrtoint ptr %name63.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %name63.i, align 8
  %bcmp.i = tail call i32 @bcmp(ptr %name55.i, ptr %80, i32 %call57.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp66.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp66.i, label %afs_dir_scan_block.exit, label %land.lhs.true.i.if.end69.i_crit_edge

land.lhs.true.i.if.end69.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69.i

if.end69.i:                                       ; preds = %land.lhs.true.i.if.end69.i_crit_edge, %if.end54.i.if.end69.i_crit_edge
  %sub.i = add i32 %call57.i, 16
  %or72.i = or i32 %sub.i, 31
  %add73.i = add i32 %or72.i, 1
  %div.i = sdiv i32 %add73.i, 32
  %sub74.i = add i32 %d.0106.i, -1
  %add75.i = add i32 %sub74.i, %div.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end69.i, %if.end48.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %d.1.i = phi i32 [ %d.0106.i, %if.end48.i.for.inc.i_crit_edge ], [ %add75.i, %if.end69.i ], [ %d.0106.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add i32 %d.1.i, 1
  %cmp43.i = icmp slt i32 %inc.i, 64
  br i1 %cmp43.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.end82_crit_edge

for.inc.i.do.end82_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end82

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

afs_dir_scan_block.exit:                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %d.0106.i)
  %cmp74 = icmp sgt i32 %d.0106.i, -1
  br i1 %cmp74, label %found_dirent, label %afs_dir_scan_block.exit.do.end82_crit_edge

afs_dir_scan_block.exit.do.end82_crit_edge:       ; preds = %afs_dir_scan_block.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end82

do.end82:                                         ; preds = %afs_dir_scan_block.exit.do.end82_crit_edge, %for.inc.i.do.end82_crit_edge, %lor.lhs.false67.do.end82_crit_edge
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr1.i) #10
  %cmp85.not = icmp eq ptr %folio.0, %call15
  br i1 %cmp85.not, label %do.end82.for.inc_crit_edge, label %if.then87

do.end82.for.inc_crit_edge:                       ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then87:                                        ; preds = %do.end82
  tail call void @folio_unlock(ptr noundef %folio.0) #10
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %folio.0, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %81 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.i.i.i = icmp eq i32 %82, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i273, label %do.end5.i.i.i, !prof !91

if.then.i.i.i273:                                 ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %folio.0, ptr noundef nonnull @.str.34) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !95
  unreachable

do.end5.i.i.i:                                    ; preds = %if.then87
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !96
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %83 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !97
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %83, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_edit_dir_remove, %if.then.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !99

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %folio.0, i32 noundef -1, i32 noundef %conv.i.i.i.i) #10
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i, label %folio_put_testzero.exit.i.for.inc_crit_edge

folio_put_testzero.exit.i.for.inc_crit_edge:      ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i:                                        ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %folio.0) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %folio_put_testzero.exit.i.for.inc_crit_edge, %do.end82.for.inc_crit_edge
  %inc = add nuw i32 %b.0355, 1
  %exitcond.not = icmp eq i32 %inc, %div379380411
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %name89 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %84 = ptrtoint ptr %name89 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %name89, align 8
  tail call fastcc void @trace_afs_edit_dir(ptr noundef %vnode, i32 noundef %why, i32 noundef 7, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %85)
  %flags90 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags90) #10
  br label %do.end141

found_dirent:                                     ; preds = %afs_dir_scan_block.exit
  %arrayidx9.i.le = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 1
  %arrayidx13.i.le = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 2
  %arrayidx18.i.le = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 3
  %arrayidx23.i.le = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 4
  %arrayidx28.i.le = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 5
  %arrayidx33.i.le = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 6
  %arrayidx38.i.le = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 7
  %vnode92 = getelementptr inbounds %struct.anon.172, ptr %arrayidx49.i, i32 0, i32 3
  %86 = ptrtoint ptr %vnode92 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %vnode92, align 1
  %unique = getelementptr inbounds %struct.anon.172, ptr %arrayidx49.i, i32 0, i32 4
  %88 = ptrtoint ptr %unique to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %unique, align 1
  %90 = ptrtoint ptr %name63.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %name63.i, align 8
  tail call fastcc void @trace_afs_edit_dir(ptr noundef %vnode, i32 noundef %why, i32 noundef 4, i32 noundef %b.0355, i32 noundef %d.0106.i, i32 noundef %87, i32 noundef %89, ptr noundef %91)
  %mul94 = shl i32 %add1.i, 5
  %92 = call ptr @memset(ptr %arrayidx49.i, i32 0, i32 %mul94)
  %notmask.i = shl i32 -2, %div3.i
  %sub.i274 = xor i32 %notmask.i, -1
  %conv.i275 = sext i32 %sub.i274 to i64
  %shl1.i = shl i64 %conv.i275, %sh_prom.i
  %conv2.i = trunc i64 %shl1.i to i8
  %neg.i = xor i8 %conv2.i, -1
  %93 = ptrtoint ptr %bitmap7.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %bitmap7.i, align 1
  %and.i277 = and i8 %94, %neg.i
  store i8 %and.i277, ptr %bitmap7.i, align 1
  %95 = ptrtoint ptr %arrayidx9.i.le to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx9.i.le, align 1
  %97 = lshr i64 %shl1.i, 8
  %98 = trunc i64 %97 to i8
  %99 = xor i8 %98, -1
  %conv14.i278 = and i8 %96, %99
  store i8 %conv14.i278, ptr %arrayidx9.i.le, align 1
  %100 = ptrtoint ptr %arrayidx13.i.le to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx13.i.le, align 1
  %102 = lshr i64 %shl1.i, 16
  %103 = trunc i64 %102 to i8
  %104 = xor i8 %103, -1
  %conv23.i = and i8 %101, %104
  store i8 %conv23.i, ptr %arrayidx13.i.le, align 1
  %105 = ptrtoint ptr %arrayidx18.i.le to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx18.i.le, align 1
  %107 = lshr i64 %shl1.i, 24
  %108 = trunc i64 %107 to i8
  %109 = xor i8 %108, -1
  %conv32.i = and i8 %106, %109
  store i8 %conv32.i, ptr %arrayidx18.i.le, align 1
  %shr33.i = lshr i64 %shl1.i, 32
  %conv34.i279 = trunc i64 %shr33.i to i8
  %neg36.i = xor i8 %conv34.i279, -1
  %110 = ptrtoint ptr %arrayidx23.i.le to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx23.i.le, align 1
  %and40.i = and i8 %111, %neg36.i
  store i8 %and40.i, ptr %arrayidx23.i.le, align 1
  %shr42.i = lshr i64 %shl1.i, 40
  %conv43.i = trunc i64 %shr42.i to i8
  %neg45.i = xor i8 %conv43.i, -1
  %112 = ptrtoint ptr %arrayidx28.i.le to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx28.i.le, align 1
  %and49.i = and i8 %113, %neg45.i
  store i8 %and49.i, ptr %arrayidx28.i.le, align 1
  %shr51.i = lshr i64 %shl1.i, 48
  %conv52.i = trunc i64 %shr51.i to i8
  %neg54.i = xor i8 %conv52.i, -1
  %114 = ptrtoint ptr %arrayidx33.i.le to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx33.i.le, align 1
  %and58.i = and i8 %115, %neg54.i
  store i8 %and58.i, ptr %arrayidx33.i.le, align 1
  %shr60.i = lshr i64 %shl1.i, 56
  %conv61.i = trunc i64 %shr60.i to i8
  %neg63.i = xor i8 %conv61.i, -1
  %116 = ptrtoint ptr %arrayidx38.i.le to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx38.i.le, align 1
  %and67.i = and i8 %117, %neg63.i
  store i8 %and67.i, ptr %arrayidx38.i.le, align 1
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr1.i) #10
  %cmp101.not = icmp eq ptr %folio.0, %call15
  br i1 %cmp101.not, label %found_dirent.if.end104_crit_edge, label %if.then103

found_dirent.if.end104_crit_edge:                 ; preds = %found_dirent
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.then103:                                       ; preds = %found_dirent
  tail call void @folio_unlock(ptr noundef %folio.0) #10
  %_refcount.i.i.i.i281 = getelementptr inbounds %struct.page, ptr %folio.0, i32 0, i32 3
  %call.i.i.i.i.i.i282 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i281, i32 noundef 4) #10
  %118 = ptrtoint ptr %_refcount.i.i.i.i281 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %_refcount.i.i.i.i281, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp.i.i.i283 = icmp eq i32 %119, 0
  br i1 %cmp.i.i.i283, label %if.then.i.i.i284, label %do.end5.i.i.i288, !prof !91

if.then.i.i.i284:                                 ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %folio.0, ptr noundef nonnull @.str.34) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !95
  unreachable

do.end5.i.i.i288:                                 ; preds = %if.then103
  %call.i.i.i10.i.i.i285 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i281, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !96
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i281, i32 1, i32 3, i32 1) #10
  %120 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i281, ptr %_refcount.i.i.i.i281, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i281) #10, !srcloc !97
  %asmresult.i.i.i.i.i.i.i.i.i286 = extractvalue { i32, i32 } %120, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i286)
  %cmp.i.i.i.i.i.i287 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i286, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_edit_dir_remove, %if.then.i.i.i.i290)) #10
          to label %folio_put_testzero.exit.i291 [label %if.then.i.i.i.i290], !srcloc !99

if.then.i.i.i.i290:                               ; preds = %do.end5.i.i.i288
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i289 = zext i1 %cmp.i.i.i.i.i.i287 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %folio.0, i32 noundef -1, i32 noundef %conv.i.i.i.i289) #10
  br label %folio_put_testzero.exit.i291

folio_put_testzero.exit.i291:                     ; preds = %if.then.i.i.i.i290, %do.end5.i.i.i288
  br i1 %cmp.i.i.i.i.i.i287, label %if.then.i292, label %folio_put_testzero.exit.i291.if.end104_crit_edge

folio_put_testzero.exit.i291.if.end104_crit_edge: ; preds = %folio_put_testzero.exit.i291
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.then.i292:                                     ; preds = %folio_put_testzero.exit.i291
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %folio.0) #10
  br label %if.end104

if.end104:                                        ; preds = %if.then.i292, %folio_put_testzero.exit.i291.if.end104_crit_edge, %found_dirent.if.end104_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %b.0355)
  %cmp105 = icmp ult i32 %b.0355, 128
  br i1 %cmp105, label %if.then107, label %if.end104.if.end112_crit_edge

if.end104.if.end112_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.then107:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx109 = getelementptr %struct.anon.171, ptr %call.i, i32 0, i32 1, i32 %b.0355
  %121 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx109, align 1
  %123 = trunc i32 %add1.i to i8
  %conv111 = add i8 %122, %123
  store i8 %conv111, ptr %arrayidx109, align 1
  br label %if.end112

if.end112:                                        ; preds = %if.then107, %if.end104.if.end112_crit_edge
  %data_version = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 3, i32 1
  %124 = ptrtoint ptr %data_version to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %data_version, align 8
  %i_version.i = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 38
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i, i32 noundef 8) #10
  tail call void @generic_atomic64_set(ptr noundef %i_version.i, i64 noundef %125) #10
  %call114 = tail call fastcc ptr @afs_v2net(ptr noundef %vnode)
  %n_dir_rm = getelementptr inbounds %struct.afs_net, ptr %call114, i32 0, i32 42
  %call.i.i.i294 = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_dir_rm, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %n_dir_rm, i32 1, i32 3, i32 1) #10
  %126 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_dir_rm, ptr %n_dir_rm, i32 1, ptr elementtype(i32) %n_dir_rm) #10, !srcloc !100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %127 = load i32, ptr @afs_debug, align 4
  %and116 = and i32 %127, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end112.do.end141_crit_edge, label %do.end127, !prof !90

if.end112.do.end141_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end141

do.end127:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  %128 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i295 = and i32 %128, -16384
  %129 = inttoptr i32 %and.i295 to ptr
  %task130 = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %task130 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %task130, align 8
  %comm131 = getelementptr inbounds %struct.task_struct, ptr %131, i32 0, i32 101
  %132 = ptrtoint ptr %name63.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %name63.i, align 8
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %comm131, ptr noundef %133, i32 noundef %b.0355, i32 noundef %d.0106.i) #13
  br label %do.end141

do.end141:                                        ; preds = %error, %if.then.i321, %folio_put_testzero.exit.i320.do.end141_crit_edge, %invalidated.do.end141_crit_edge, %do.end127, %if.end112.do.end141_crit_edge, %for.end
  tail call void @kunmap_local_indexed(ptr noundef %call.i) #10
  tail call void @folio_unlock(ptr noundef nonnull %call15) #10
  %_refcount.i.i.i.i296 = getelementptr inbounds %struct.page, ptr %call15, i32 0, i32 3
  %call.i.i.i.i.i.i297 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i296, i32 noundef 4) #10
  %134 = ptrtoint ptr %_refcount.i.i.i.i296 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %_refcount.i.i.i.i296, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp.i.i.i298 = icmp eq i32 %135, 0
  br i1 %cmp.i.i.i298, label %if.then.i.i.i299, label %do.end5.i.i.i303, !prof !91

if.then.i.i.i299:                                 ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef nonnull %call15, ptr noundef nonnull @.str.34) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !95
  unreachable

do.end5.i.i.i303:                                 ; preds = %do.end141
  %call.i.i.i10.i.i.i300 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i296, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !96
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i296, i32 1, i32 3, i32 1) #10
  %136 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i296, ptr %_refcount.i.i.i.i296, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i296) #10, !srcloc !97
  %asmresult.i.i.i.i.i.i.i.i.i301 = extractvalue { i32, i32 } %136, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i301)
  %cmp.i.i.i.i.i.i302 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i301, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_edit_dir_remove, %if.then.i.i.i.i305)) #10
          to label %folio_put_testzero.exit.i306 [label %if.then.i.i.i.i305], !srcloc !99

if.then.i.i.i.i305:                               ; preds = %do.end5.i.i.i303
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i304 = zext i1 %cmp.i.i.i.i.i.i302 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef nonnull %call15, i32 noundef -1, i32 noundef %conv.i.i.i.i304) #10
  br label %folio_put_testzero.exit.i306

folio_put_testzero.exit.i306:                     ; preds = %if.then.i.i.i.i305, %do.end5.i.i.i303
  br i1 %cmp.i.i.i.i.i.i302, label %if.then.i307, label %folio_put_testzero.exit.i306.folio_put.exit308_crit_edge

folio_put_testzero.exit.i306.folio_put.exit308_crit_edge: ; preds = %folio_put_testzero.exit.i306
  call void @__sanitizer_cov_trace_pc() #12
  br label %folio_put.exit308

if.then.i307:                                     ; preds = %folio_put_testzero.exit.i306
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef nonnull %call15) #10
  br label %folio_put.exit308

folio_put.exit308:                                ; preds = %if.then.i307, %folio_put_testzero.exit.i306.folio_put.exit308_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %137 = load i32, ptr @afs_debug, align 4
  %and145 = and i32 %137, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %folio_put.exit308.cleanup_crit_edge, label %do.end156, !prof !90

folio_put.exit308.cleanup_crit_edge:              ; preds = %folio_put.exit308
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end156:                                        ; preds = %folio_put.exit308
  call void @__sanitizer_cov_trace_pc() #12
  %138 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i309 = and i32 %138, -16384
  %139 = inttoptr i32 %and.i309 to ptr
  %task159 = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %task159 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %task159, align 8
  %comm160 = getelementptr inbounds %struct.task_struct, ptr %141, i32 0, i32 101
  %call162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %comm160, ptr noundef nonnull @.str.21) #13
  br label %cleanup

invalidated:                                      ; preds = %folio_file_pos.exit
  %142 = ptrtoint ptr %name63.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %name63.i, align 8
  tail call fastcc void @trace_afs_edit_dir(ptr noundef %vnode, i32 noundef %why, i32 noundef 6, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %143)
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags60) #10
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr1.i) #10
  %cmp174.not = icmp eq ptr %folio.0, %call15
  br i1 %cmp174.not, label %invalidated.do.end141_crit_edge, label %if.then176

invalidated.do.end141_crit_edge:                  ; preds = %invalidated
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end141

if.then176:                                       ; preds = %invalidated
  tail call void @folio_unlock(ptr noundef %folio.0) #10
  %_refcount.i.i.i.i310 = getelementptr inbounds %struct.page, ptr %folio.0, i32 0, i32 3
  %call.i.i.i.i.i.i311 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i310, i32 noundef 4) #10
  %144 = ptrtoint ptr %_refcount.i.i.i.i310 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %_refcount.i.i.i.i310, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp.i.i.i312 = icmp eq i32 %145, 0
  br i1 %cmp.i.i.i312, label %if.then.i.i.i313, label %do.end5.i.i.i317, !prof !91

if.then.i.i.i313:                                 ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %folio.0, ptr noundef nonnull @.str.34) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !95
  unreachable

do.end5.i.i.i317:                                 ; preds = %if.then176
  %call.i.i.i10.i.i.i314 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i310, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !96
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i310, i32 1, i32 3, i32 1) #10
  %146 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i310, ptr %_refcount.i.i.i.i310, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i310) #10, !srcloc !97
  %asmresult.i.i.i.i.i.i.i.i.i315 = extractvalue { i32, i32 } %146, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i315)
  %cmp.i.i.i.i.i.i316 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i315, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_edit_dir_remove, %if.then.i.i.i.i319)) #10
          to label %folio_put_testzero.exit.i320 [label %if.then.i.i.i.i319], !srcloc !99

if.then.i.i.i.i319:                               ; preds = %do.end5.i.i.i317
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i318 = zext i1 %cmp.i.i.i.i.i.i316 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %folio.0, i32 noundef -1, i32 noundef %conv.i.i.i.i318) #10
  br label %folio_put_testzero.exit.i320

folio_put_testzero.exit.i320:                     ; preds = %if.then.i.i.i.i319, %do.end5.i.i.i317
  br i1 %cmp.i.i.i.i.i.i316, label %if.then.i321, label %folio_put_testzero.exit.i320.do.end141_crit_edge

folio_put_testzero.exit.i320.do.end141_crit_edge: ; preds = %folio_put_testzero.exit.i320
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end141

if.then.i321:                                     ; preds = %folio_put_testzero.exit.i320
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %folio.0) #10
  br label %do.end141

error:                                            ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %147 = ptrtoint ptr %name63.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %name63.i, align 8
  tail call fastcc void @trace_afs_edit_dir(ptr noundef %vnode, i32 noundef %why, i32 noundef 5, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %148)
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags60) #10
  br label %do.end141

cleanup:                                          ; preds = %do.end156, %folio_put.exit308.cleanup_crit_edge, %do.end30, %do.body18.cleanup_crit_edge, %if.then13
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__filemap_get_folio(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_file_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_edit_dir(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !46, !48, !50, !52, !54, !55, !57, !59, !60, !61, !62, !64, !65, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79}
!llvm.named.register.sp = !{!80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/afs/dir_edit.c", i32 217, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @afs_edit_dir_add._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @afs_edit_dir_add._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/afs/dir_edit.c", i32 228, i32 3}
!8 = !{ptr @afs_edit_dir_add._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @afs_edit_dir_add._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/afs/dir_edit.c", i32 264, i32 3}
!12 = !{ptr @afs_edit_dir_add._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @afs_edit_dir_add._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/afs/dir_edit.c", i32 272, i32 4}
!16 = !{ptr @afs_edit_dir_add._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @afs_edit_dir_add._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/afs/dir_edit.c", i32 285, i32 5}
!20 = !{ptr @afs_edit_dir_add._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @afs_edit_dir_add._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/afs/dir_edit.c", i32 341, i32 2}
!24 = !{ptr @afs_edit_dir_add._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @afs_edit_dir_add._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/afs/dir_edit.c", i32 347, i32 2}
!28 = !{ptr @afs_edit_dir_add._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @afs_edit_dir_add._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/afs/dir_edit.c", i32 384, i32 2}
!32 = !{ptr @afs_edit_dir_remove._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @afs_edit_dir_remove._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @afs_edit_dir_remove._entry.22, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../fs/afs/dir_edit.c", i32 397, i32 3}
!36 = !{ptr @afs_edit_dir_remove._entry_ptr.23, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/afs/dir_edit.c", i32 468, i32 2}
!39 = !{ptr @afs_edit_dir_remove._entry.24, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @afs_edit_dir_remove._entry_ptr.26, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @afs_edit_dir_remove._entry.27, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../fs/afs/dir_edit.c", i32 474, i32 2}
!43 = !{ptr @afs_edit_dir_remove._entry_ptr.28, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!48 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!50 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!54 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/mm.h", i32 717, i32 2}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/trace/events/afs.h", i32 1106, i32 1}
!59 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!61 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!64 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!67 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!70 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!74 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/afs/dir_edit.c", i32 136, i32 2}
!77 = !{ptr @.str.43, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @afs_dir_scan_block._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @afs_dir_scan_block._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{!"sp"}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{i64 2151334985, i64 2151335476, i64 2151335022, i64 2151335078, i64 2151335112, i64 2151335136, i64 2151335177, i64 2151335198, i64 2151335226, i64 2151335260}
!93 = !{i64 2150572260, i64 2150572751, i64 2150572297, i64 2150572353, i64 2150572387, i64 2150572411, i64 2150572452, i64 2150572473, i64 2150572501, i64 2150572535}
!94 = !{i32 0, i32 33}
!95 = !{i64 2153167136, i64 2153167619, i64 2153167173, i64 2153167229, i64 2153167263, i64 2153167287, i64 2153167328, i64 2153167349, i64 2153167377, i64 2153167411}
!96 = !{i64 2148309432}
!97 = !{i64 2148224165, i64 2148224197, i64 2148224226, i64 2148224260, i64 2148224291, i64 2148224314}
!98 = !{i64 2148309661}
!99 = !{i64 2148702795, i64 2148702800, i64 2148702813, i64 2148702857, i64 2148702891, i64 2148702912}
!100 = !{i64 2148220980, i64 2148221006, i64 2148221035, i64 2148221069, i64 2148221100, i64 2148221123}
!101 = !{i64 613461, i64 613522}
!102 = !{i64 616193}
!103 = !{i64 616478}
!104 = !{i64 2152506346}
!105 = !{i64 2152506188}
!106 = !{i64 2152506516}
!107 = !{i64 2150092330}
!108 = !{i64 2153191109, i64 2153191593, i64 2153191146, i64 2153191202, i64 2153191236, i64 2153191260, i64 2153191301, i64 2153191322, i64 2153191350, i64 2153191384}
!109 = !{i64 2152508277}
!110 = !{i64 2149984582}
!111 = !{i64 2149989516}
!112 = !{i64 2150011234}
!113 = !{i64 2150016128}
!114 = !{i64 2150092655}
!115 = !{i64 2150092980}
!116 = !{i64 2152520139}
!117 = !{i64 2157509722}
!118 = !{i64 2157510015}
!119 = !{i64 2149484520}
!120 = !{i64 2149485556}
!121 = !{i64 2149475961}
!122 = !{i64 2149476227}
