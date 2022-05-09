; ModuleID = '/llk/IR_all_yes/fs/afs/super.c_pt.bc'
source_filename = "../fs/afs/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.constant_table = type { ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.afs_operation_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.121 }
%union.anon.121 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.afs_fs_context = type { i8, i8, i8, i8, i32, i8, i32, ptr, ptr, ptr, ptr, ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.afs_super_info = type { ptr, ptr, ptr, i8, i8 }
%struct.afs_volume = type { %union.anon.158, %struct.atomic_t, i64, ptr, %struct.rb_node, %struct.hlist_node, ptr, i32, ptr, ptr, %struct.rwlock_t, i32, i32, %struct.rwlock_t, i8, i8, i8, [65 x i8] }
%union.anon.158 = type { i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.113, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.113 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.afs_vnode = type { %struct.inode, ptr, %struct.afs_fid, %struct.afs_file_status, i64, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, ptr, i64, i16, %struct.work_struct, %struct.list_head, ptr, %struct.atomic_t, i32, i32, i32, i32, %struct.seqlock_t, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.124, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.125, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.126, ptr, %struct.address_space, %struct.list_head, %union.anon.129, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.124 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.125 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.126 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.129 = type { ptr }
%struct.afs_fid = type { i64, i64, i32, i32 }
%struct.afs_file_status = type { i64, i64, %struct.timespec64, %struct.timespec64, i64, i64, i64, i32, i32, i16, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.16, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.92, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.92 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.77, i32, %struct.spinlock }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.fs_parse_result = type { i8, %union.anon.122 }
%union.anon.122 = type { i64 }
%struct.fs_parameter = type { ptr, i8, %union.anon, i32, i32 }
%union.anon = type { ptr }
%struct.afs_cell = type { %union.anon.151, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.hlist_node, i64, i64, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i16, i32, i32, %struct.rb_root, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.seqlock_t, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.rwlock_t, ptr, i8, ptr }
%union.anon.151 = type { %struct.rb_node }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.132, %struct.list_head, %struct.list_head, %union.anon.133 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.130 }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { %struct.spinlock, i32 }
%union.anon.132 = type { %struct.list_head }
%union.anon.133 = type { %struct.hlist_node }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.afs_operation = type { ptr, ptr, ptr, ptr, ptr, [2 x %struct.afs_vnode_param], ptr, %struct.afs_volsync, ptr, ptr, %struct.timespec64, %struct.timespec64, i16, i16, i32, i32, i32, %union.anon.161, %struct.afs_addr_cursor, ptr, ptr, ptr, i32, i16, i16, i32 }
%struct.afs_vnode_param = type { ptr, %struct.afs_fid, %struct.afs_status_cb, i64, i32, i8, i8 }
%struct.afs_status_cb = type { %struct.afs_file_status, %struct.afs_callback, i8, i8, i8 }
%struct.afs_callback = type { i64 }
%struct.afs_volsync = type { i64 }
%union.anon.161 = type { %struct.anon.170 }
%struct.anon.170 = type { %struct.afs_volume_status, ptr }
%struct.afs_volume_status = type { i64, i64, i8, i8, i8, i8, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.afs_addr_cursor = type { ptr, i32, i8, i8, i16, i16, i32 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"afs\00", [28 x i8] zeroinitializer }, align 32
@afs_fs_type = dso_local global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 32768, ptr @afs_init_fs_context, ptr @afs_fs_parameters, ptr null, ptr @afs_kill_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias529 = internal constant [18 x i8] c"kafs.alias=fs-afs\00", section ".modinfo", align 1
@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_fs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"afs_fs_init\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/afs/super.c\00", [17 x i8] zeroinitializer }, align 32
@afs_fs_init._entry_ptr = internal global ptr @afs_fs_init._entry, section ".printk_index", align 4
@afs_count_active_inodes = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"afs_inode_cache\00", [16 x i8] zeroinitializer }, align 32
@afs_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@afs_fs_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015kAFS: Failed to allocate inode cache\0A\00", [56 x i8] zeroinitializer }, align 32
@afs_fs_init._entry_ptr.7 = internal global ptr @afs_fs_init._entry.5, section ".printk_index", align 4
@afs_fs_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_fs_init._entry_ptr.10 = internal global ptr @afs_fs_init._entry.8, section ".printk_index", align 4
@afs_fs_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] <== %s() = 0\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_fs_init._entry_ptr.13 = internal global ptr @afs_fs_init._entry.11, section ".printk_index", align 4
@afs_fs_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.14, ptr @.str.3, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"afs_fs_exit\00", [20 x i8] zeroinitializer }, align 32
@afs_fs_exit._entry_ptr = internal global ptr @afs_fs_exit._entry, section ".printk_index", align 4
@afs_fs_exit._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"kAFS: %d active inode objects still present\0A\00", [51 x i8] zeroinitializer }, align 32
@afs_fs_exit._entry_ptr.17 = internal global ptr @afs_fs_exit._entry.15, section ".printk_index", align 4
@afs_fs_exit._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.3, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_fs_exit._entry_ptr.20 = internal global ptr @afs_fs_exit._entry.18, section ".printk_index", align 4
@afs_net_id = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@afs_fs_parameters = internal constant { [5 x %struct.fs_parameter_spec], [48 x i8] } { [5 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.22, ptr null, i8 0, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.23, ptr null, i8 1, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.24, ptr @fs_param_is_enum, i8 2, i16 0, ptr @afs_param_flock }, %struct.fs_parameter_spec { ptr @.str.25, ptr @fs_param_is_string, i8 3, i16 0, ptr null }, %struct.fs_parameter_spec zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"autocell\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dyn\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flock\00", [26 x i8] zeroinitializer }, align 32
@afs_param_flock = internal constant { [5 x %struct.constant_table], [56 x i8] } { [5 x %struct.constant_table] [%struct.constant_table { ptr @.str.26, i32 1 }, %struct.constant_table { ptr @.str.27, i32 2 }, %struct.constant_table { ptr @.str.28, i32 3 }, %struct.constant_table { ptr @.str.29, i32 4 }, %struct.constant_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"source\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"local\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"openafs\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"strict\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@afs_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr @afs_free_fc, ptr null, ptr @afs_parse_param, ptr null, ptr @afs_get_tree, ptr null }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@afs_parse_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.35, ptr @.str.3, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"afs_parse_param\00", [16 x i8] zeroinitializer }, align 32
@afs_parse_param._entry_ptr = internal global ptr @afs_parse_param._entry, section ".printk_index", align 4
@afs_parse_source._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%-6.6s] ==> %s(,%s)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_parse_source\00", [47 x i8] zeroinitializer }, align 32
@afs_parse_source._entry_ptr = internal global ptr @afs_parse_source._entry, section ".printk_index", align 4
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"kAFS: Multiple sources not supported\00", [59 x i8] zeroinitializer }, align 32
@afs_parse_source._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.3, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013kAFS: no volume name specified\0A\00", [62 x i8] zeroinitializer }, align 32
@afs_parse_source._entry_ptr.41 = internal global ptr @afs_parse_source._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@afs_parse_source._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.37, ptr @.str.3, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013kAFS: unparsable volume name\0A\00", [32 x i8] zeroinitializer }, align 32
@afs_parse_source._entry_ptr.45 = internal global ptr @afs_parse_source._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c".readonly\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c".backup\00", [24 x i8] zeroinitializer }, align 32
@afs_parse_source._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.37, ptr @.str.3, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s]     cell %*.*s [%p]\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_parse_source._entry_ptr.50 = internal global ptr @afs_parse_source._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@afs_parse_source._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.37, ptr @.str.3, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013kAFS: unable to lookup cell '%*.*s'\0A\00", [57 x i8] zeroinitializer }, align 32
@afs_parse_source._entry_ptr.54 = internal global ptr @afs_parse_source._entry.52, section ".printk_index", align 4
@afs_parse_source._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.37, ptr @.str.3, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[%-6.6s]     CELL:%s [%p] VOLUME:%*.*s SUFFIX:%s TYPE:%d%s\0A\00", [36 x i8] zeroinitializer }, align 32
@afs_parse_source._entry_ptr.57 = internal global ptr @afs_parse_source._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" FORCE\00", [25 x i8] zeroinitializer }, align 32
@afs_get_tree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.60, ptr @.str.3, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"afs_get_tree\00", [19 x i8] zeroinitializer }, align 32
@afs_get_tree._entry_ptr = internal global ptr @afs_get_tree._entry, section ".printk_index", align 4
@afs_get_tree._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s]     create\0A\00", [43 x i8] zeroinitializer }, align 32
@afs_get_tree._entry_ptr.63 = internal global ptr @afs_get_tree._entry.61, section ".printk_index", align 4
@afs_get_tree._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.3, i32 593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[%-6.6s]     reuse\0A\00", [44 x i8] zeroinitializer }, align 32
@afs_get_tree._entry_ptr.66 = internal global ptr @afs_get_tree._entry.64, section ".printk_index", align 4
@afs_get_tree._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.60, ptr @.str.3, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\013\0A\00", [28 x i8] zeroinitializer }, align 32
@afs_get_tree._entry_ptr.69 = internal global ptr @afs_get_tree._entry.67, section ".printk_index", align 4
@afs_get_tree._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.60, ptr @.str.3, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013AFS: Assertion failed\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_get_tree._entry_ptr.72 = internal global ptr @afs_get_tree._entry.70, section ".printk_index", align 4
@afs_get_tree._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.60, ptr @.str.3, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%lu & %lu is false\0A\00", [42 x i8] zeroinitializer }, align 32
@afs_get_tree._entry_ptr.75 = internal global ptr @afs_get_tree._entry.73, section ".printk_index", align 4
@afs_get_tree._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.60, ptr @.str.3, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\0130x%lx & 0x%lx is false\0A\00", [38 x i8] zeroinitializer }, align 32
@afs_get_tree._entry_ptr.78 = internal global ptr @afs_get_tree._entry.76, section ".printk_index", align 4
@afs_get_tree._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.60, ptr @.str.3, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s] <== %s() = 0 [%p]\0A\00", [36 x i8] zeroinitializer }, align 32
@afs_get_tree._entry_ptr.81 = internal global ptr @afs_get_tree._entry.79, section ".printk_index", align 4
@afs_get_tree._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.60, ptr @.str.3, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_get_tree._entry_ptr.83 = internal global ptr @afs_get_tree._entry.82, section ".printk_index", align 4
@afs_validate_fc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014kAFS: Can only specify source 'none' with -o dyn\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"afs_validate_fc\00", [16 x i8] zeroinitializer }, align 32
@afs_validate_fc._entry_ptr = internal global ptr @afs_validate_fc._entry, section ".printk_index", align 4
@afs_validate_fc._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.3, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014kAFS: No cell specified\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_validate_fc._entry_ptr.88 = internal global ptr @afs_validate_fc._entry.86, section ".printk_index", align 4
@afs_validate_fc._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.3, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s]     switch to alias\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_validate_fc._entry_ptr.91 = internal global ptr @afs_validate_fc._entry.89, section ".printk_index", align 4
@afs_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.92, ptr @.str.3, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"afs_fill_super\00", [17 x i8] zeroinitializer }, align 32
@afs_fill_super._entry_ptr = internal global ptr @afs_fill_super._entry, section ".printk_index", align 4
@afs_super_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @afs_alloc_inode, ptr @afs_destroy_inode, ptr @afs_free_inode, ptr null, ptr @afs_write_inode, ptr @afs_drop_inode, ptr @afs_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @afs_statfs, ptr null, ptr null, ptr @afs_show_options, ptr @afs_show_devname, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@afs_xattr_handlers = external dso_local global [0 x ptr], align 4
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llu\00", [27 x i8] zeroinitializer }, align 32
@afs_dynroot_dentry_operations = external dso_local constant %struct.dentry_operations, align 128
@afs_fs_dentry_operations = external dso_local constant %struct.dentry_operations, align 128
@afs_fill_super._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.92, ptr @.str.3, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_fill_super._entry_ptr.95 = internal global ptr @afs_fill_super._entry.94, section ".printk_index", align 4
@afs_fill_super._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.92, ptr @.str.3, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_fill_super._entry_ptr.97 = internal global ptr @afs_fill_super._entry.96, section ".printk_index", align 4
@afs_alloc_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.98 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&vnode->rmdir_lock\00", [45 x i8] zeroinitializer }, align 32
@afs_alloc_inode.__key.99 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.100 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&vnode->cb_work)\00", [61 x i8] zeroinitializer }, align 32
@afs_alloc_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.3, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"afs_alloc_inode\00", [16 x i8] zeroinitializer }, align 32
@afs_alloc_inode._entry_ptr = internal global ptr @afs_alloc_inode._entry, section ".printk_index", align 4
@afs_destroy_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.3, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s] ==> %s(%p{%llx:%llu})\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"afs_destroy_inode\00", [46 x i8] zeroinitializer }, align 32
@afs_destroy_inode._entry_ptr = internal global ptr @afs_destroy_inode._entry, section ".printk_index", align 4
@afs_destroy_inode._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.3, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s]     DESTROY INODE %p\0A\00", [33 x i8] zeroinitializer }, align 32
@afs_destroy_inode._entry_ptr.107 = internal global ptr @afs_destroy_inode._entry.105, section ".printk_index", align 4
@afs_get_volume_status_operation = internal constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr @afs_fs_get_volume_status, ptr @yfs_fs_get_volume_status, ptr @afs_get_volume_status_success, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c",dyn\00", [27 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",autocell\00", [22 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",flock=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%c%s:%s%s\00", [22 x i8] zeroinitializer }, align 32
@__tracepoint_afs_get_tree = external dso_local global %struct.tracepoint, align 4
@.str.112 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/afs.h\00", [37 x i8] zeroinitializer }, align 32
@trace_afs_get_tree.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@afs_i_init_once.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&vnode->io_lock\00", [16 x i8] zeroinitializer }, align 32
@afs_i_init_once.__key.115 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.116 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&vnode->validate_lock\00", [42 x i8] zeroinitializer }, align 32
@afs_i_init_once.__key.117 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&vnode->wb_lock\00", [16 x i8] zeroinitializer }, align 32
@afs_i_init_once.__key.119 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&vnode->lock\00", [19 x i8] zeroinitializer }, align 32
@afs_i_init_once.__key.121 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.122 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&vnode->lock_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@afs_i_init_once.__key.123 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.124 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&vnode->lock_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@afs_i_init_once.__key.125 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.126 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&vnode->cb_lock)->lock\00", [39 x i8] zeroinitializer }, align 32
@afs_i_init_once.__key.127 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&____s->seqcount\00", [47 x i8] zeroinitializer }, align 32
@switch.table.afs_show_options = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 8, i64 35, i64 37]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 45, i32 12 }
@___asan_gen_.134 = private unnamed_addr constant [12 x i8] c"afs_fs_type\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 43, i32 25 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 100, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [24 x i8] c"afs_count_active_inodes\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 68, i32 17 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 106, i32 39 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"afs_inode_cachep\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 67, i32 27 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 112, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 120, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 124, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 133, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 139, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 150, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [11 x i8] c"afs_net_id\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 53, i32 5 }
@___asan_gen_.197 = private unnamed_addr constant [18 x i8] c"afs_fs_parameters\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 85, i32 39 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 86, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 87, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 88, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [16 x i8] c"afs_param_flock\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 77, i32 36 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 89, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 78, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 79, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 80, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 81, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 45, i32 7 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 695, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 723, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [16 x i8] c"afs_context_ops\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 620, i32 43 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 349, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 232, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 235, i32 10 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 238, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 244, i32 20 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 248, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 274, i32 22 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 277, i32 29 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 289, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 297, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 306, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 567, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 587, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 593, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 594, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 599, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 605, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 366, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 371, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 394, i32 5 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 452, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant [14 x i8] c"afs_super_ops\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 55, i32 38 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 470, i32 21 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 496, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 500, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 702, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 703, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 705, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 721, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 723, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant [32 x i8] c"afs_get_volume_status_operation\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 743, i32 39 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 196, i32 15 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 198, i32 15 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 207, i32 17 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 183, i32 16 }
@___asan_gen_.453 = private unnamed_addr constant [30 x i8] c"../include/trace/events/afs.h\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1362, i32 1 }
@___asan_gen_.456 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 108, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 663, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 664, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 665, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 666, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 670, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.503 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.504 = private constant [18 x i8] c"../fs/afs/super.c\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 672, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant [30 x i8] c"switch.table.afs_show_options\00", align 1
@llvm.compiler.used = appending global [159 x ptr] [ptr @__UNIQUE_ID_alias529, ptr @afs_alloc_inode._entry, ptr @afs_alloc_inode._entry_ptr, ptr @afs_destroy_inode._entry, ptr @afs_destroy_inode._entry.105, ptr @afs_destroy_inode._entry_ptr, ptr @afs_destroy_inode._entry_ptr.107, ptr @afs_fill_super._entry, ptr @afs_fill_super._entry.94, ptr @afs_fill_super._entry.96, ptr @afs_fill_super._entry_ptr, ptr @afs_fill_super._entry_ptr.95, ptr @afs_fill_super._entry_ptr.97, ptr @afs_fs_exit._entry, ptr @afs_fs_exit._entry.15, ptr @afs_fs_exit._entry.18, ptr @afs_fs_exit._entry_ptr, ptr @afs_fs_exit._entry_ptr.17, ptr @afs_fs_exit._entry_ptr.20, ptr @afs_fs_init._entry, ptr @afs_fs_init._entry.11, ptr @afs_fs_init._entry.5, ptr @afs_fs_init._entry.8, ptr @afs_fs_init._entry_ptr, ptr @afs_fs_init._entry_ptr.10, ptr @afs_fs_init._entry_ptr.13, ptr @afs_fs_init._entry_ptr.7, ptr @afs_get_tree._entry, ptr @afs_get_tree._entry.61, ptr @afs_get_tree._entry.64, ptr @afs_get_tree._entry.67, ptr @afs_get_tree._entry.70, ptr @afs_get_tree._entry.73, ptr @afs_get_tree._entry.76, ptr @afs_get_tree._entry.79, ptr @afs_get_tree._entry.82, ptr @afs_get_tree._entry_ptr, ptr @afs_get_tree._entry_ptr.63, ptr @afs_get_tree._entry_ptr.66, ptr @afs_get_tree._entry_ptr.69, ptr @afs_get_tree._entry_ptr.72, ptr @afs_get_tree._entry_ptr.75, ptr @afs_get_tree._entry_ptr.78, ptr @afs_get_tree._entry_ptr.81, ptr @afs_get_tree._entry_ptr.83, ptr @afs_parse_param._entry, ptr @afs_parse_param._entry_ptr, ptr @afs_parse_source._entry, ptr @afs_parse_source._entry.39, ptr @afs_parse_source._entry.43, ptr @afs_parse_source._entry.48, ptr @afs_parse_source._entry.52, ptr @afs_parse_source._entry.55, ptr @afs_parse_source._entry_ptr, ptr @afs_parse_source._entry_ptr.41, ptr @afs_parse_source._entry_ptr.45, ptr @afs_parse_source._entry_ptr.50, ptr @afs_parse_source._entry_ptr.54, ptr @afs_parse_source._entry_ptr.57, ptr @afs_validate_fc._entry, ptr @afs_validate_fc._entry.86, ptr @afs_validate_fc._entry.89, ptr @afs_validate_fc._entry_ptr, ptr @afs_validate_fc._entry_ptr.88, ptr @afs_validate_fc._entry_ptr.91, ptr @.str, ptr @afs_fs_type, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @afs_count_active_inodes, ptr @.str.4, ptr @afs_inode_cachep, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @afs_net_id, ptr @afs_fs_parameters, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @afs_param_flock, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @afs_context_ops, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @afs_super_ops, ptr @.str.93, ptr @afs_alloc_inode.__key, ptr @.str.98, ptr @afs_alloc_inode.__key.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @afs_get_volume_status_operation, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @afs_i_init_once.__key, ptr @.str.114, ptr @afs_i_init_once.__key.115, ptr @.str.116, ptr @afs_i_init_once.__key.117, ptr @.str.118, ptr @afs_i_init_once.__key.119, ptr @.str.120, ptr @afs_i_init_once.__key.121, ptr @.str.122, ptr @afs_i_init_once.__key.123, ptr @.str.124, ptr @afs_i_init_once.__key.125, ptr @.str.126, ptr @afs_i_init_once.__key.127, ptr @.str.128, ptr @switch.table.afs_show_options], section "llvm.metadata"
@0 = internal global [126 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_count_active_inodes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_exit._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_exit._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_parameters to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_param_flock to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_parse_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_parse_source._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_parse_source._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_parse_source._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_parse_source._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_parse_source._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_parse_source._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_get_tree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_get_tree._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_get_tree._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_get_tree._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_get_tree._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_get_tree._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_get_tree._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_get_tree._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_get_tree._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_validate_fc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_validate_fc._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_validate_fc._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_super_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fill_super._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fill_super._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_inode.__key.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_destroy_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_destroy_inode._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_get_volume_status_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_i_init_once.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_i_init_once.__key.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_i_init_once.__key.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_i_init_once.__key.119 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_i_init_once.__key.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_i_init_once.__key.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_i_init_once.__key.125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_i_init_once.__key.127 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.afs_show_options to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_init_fs_context(ptr nocapture noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type = getelementptr inbounds %struct.afs_fs_context, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %type, align 8
  %net_ns = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 7
  %2 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_ns, align 4
  %call1 = tail call fastcc ptr @afs_net(ptr noundef %3)
  %net = getelementptr inbounds %struct.afs_fs_context, ptr %call7.i.i, i32 0, i32 8
  %4 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %net, align 4
  %call3 = tail call ptr @afs_find_cell(ptr noundef %call1, ptr noundef null, i32 noundef 0, i32 noundef 29) #13
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, ptr null, ptr %call3
  %cell7 = getelementptr inbounds %struct.afs_fs_context, ptr %call7.i.i, i32 0, i32 9
  %5 = ptrtoint ptr %cell7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select, ptr %cell7, align 8
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %6 = ptrtoint ptr %fs_private to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %fs_private, align 4
  %7 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @afs_context_ops, ptr %fc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_kill_super(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %dyn_root = getelementptr inbounds %struct.afs_super_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dyn_root to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dyn_root, align 1, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @afs_dynroot_depopulate(ptr noundef %sb) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %volume = getelementptr inbounds %struct.afs_super_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %volume, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end39_crit_edge, label %do.body6

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sb8 = getelementptr inbounds %struct.afs_volume, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %sb8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %sb8, align 8
  br label %if.end39

if.end39:                                         ; preds = %do.body6, %if.end.if.end39_crit_edge
  tail call void @kill_anon_super(ptr noundef %sb) #13
  %7 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %volume, align 4
  %tobool41.not = icmp eq ptr %8, null
  br i1 %tobool41.not, label %if.end39.if.end44_crit_edge, label %if.then42

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @afs_deactivate_volume(ptr noundef nonnull %8) #13
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end39.if.end44_crit_edge
  tail call fastcc void @afs_destroy_sbi(ptr noundef %1)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_fs_init() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !246

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = tail call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %comm, ptr noundef nonnull @.str.2) #17
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @afs_count_active_inodes, i32 noundef 4) #13
  store volatile i32 0, ptr @afs_count_active_inodes, align 4
  %call7 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.4, i32 noundef 1624, i32 noundef 0, i32 noundef 67117056, ptr noundef nonnull @afs_i_init_once) #13
  store ptr %call7, ptr @afs_inode_cachep, align 4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end12, label %if.end15

do.end12:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #15
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #17
  br label %cleanup

if.end15:                                         ; preds = %do.end6
  %call16 = tail call i32 @register_filesystem(ptr noundef nonnull @afs_fs_type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.then17, label %do.body41

if.then17:                                        ; preds = %if.end15
  %5 = load ptr, ptr @afs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %5) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %6 = load i32, ptr @afs_debug, align 4
  %and19 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then17.cleanup_crit_edge, label %do.end30, !prof !246

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end30:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  %7 = tail call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i66 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i66 to ptr
  %task33 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task33, align 8
  %comm34 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 101
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm34, ptr noundef nonnull @.str.2, i32 noundef %call16) #17
  br label %cleanup

do.body41:                                        ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %11 = load i32, ptr @afs_debug, align 4
  %and42 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %do.body41.cleanup_crit_edge, label %do.end53, !prof !246

do.body41.cleanup_crit_edge:                      ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end53:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #15
  %12 = tail call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i67 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i67 to ptr
  %task56 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task56 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task56, align 8
  %comm57 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm57, ptr noundef nonnull @.str.2) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %do.body41.cleanup_crit_edge, %do.end30, %if.then17.cleanup_crit_edge, %do.end12
  %retval.0 = phi i32 [ -12, %do.end12 ], [ %call16, %do.end30 ], [ %call16, %if.then17.cleanup_crit_edge ], [ 0, %do.end53 ], [ 0, %do.body41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_i_init_once(ptr noundef %_vnode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %_vnode, i32 0, i32 1624)
  tail call void @inode_init_once(ptr noundef %_vnode) #13
  %io_lock = getelementptr inbounds %struct.afs_vnode, ptr %_vnode, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %io_lock, ptr noundef nonnull @.str.114, ptr noundef nonnull @afs_i_init_once.__key) #13
  %validate_lock = getelementptr inbounds %struct.afs_vnode, ptr %_vnode, i32 0, i32 8
  tail call void @__init_rwsem(ptr noundef %validate_lock, ptr noundef nonnull @.str.116, ptr noundef nonnull @afs_i_init_once.__key.115) #13
  %wb_lock = getelementptr inbounds %struct.afs_vnode, ptr %_vnode, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %wb_lock, ptr noundef nonnull @.str.118, ptr noundef nonnull @afs_i_init_once.__key.117, i16 noundef signext 3) #13
  %lock = getelementptr inbounds %struct.afs_vnode, ptr %_vnode, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.120, ptr noundef nonnull @afs_i_init_once.__key.119, i16 noundef signext 3) #13
  %wb_keys = getelementptr inbounds %struct.afs_vnode, ptr %_vnode, i32 0, i32 14
  %1 = ptrtoint ptr %wb_keys to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %wb_keys, ptr %wb_keys, align 4
  %prev.i = getelementptr inbounds %struct.afs_vnode, ptr %_vnode, i32 0, i32 14, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %wb_keys, ptr %prev.i, align 4
  %pending_locks = getelementptr inbounds %struct.afs_vnode, ptr %_vnode, i32 0, i32 15
  %3 = ptrtoint ptr %pending_locks to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %pending_locks, ptr %pending_locks, align 4
  %prev.i68 = getelementptr inbounds %struct.afs_vnode, ptr %_vnode, i32 0, i32 15, i32 1
  %4 = ptrtoint ptr %prev.i68 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pending_locks, ptr %prev.i68, align 4
  %granted_locks = getelementptr inbounds %struct.afs_vnode, ptr %_vnode, i32 0, i32 16
  %5 = ptrtoint ptr %granted_locks to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %granted_locks, ptr %granted_locks, align 4
  %prev.i69 = getelementptr inbounds %struct.afs_vnode, ptr %_vnode, i32 0, i32 16, i32 1
  %6 = ptrtoint ptr %prev.i69 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %granted_locks, ptr %prev.i69, align 4
  %lock_work = getelementptr inbounds %struct.afs_vnode, ptr %_vnode, i32 0, i32 17
  tail call void @__init_work(ptr noundef %lock_work, i32 noundef 0) #13
  %7 = ptrtoint ptr %lock_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %lock_work, align 4
  %lockdep_map = getelementptr inbounds %struct.afs_vnode, ptr %_vnode, i32 0, i32 17, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.122, ptr noundef nonnull @afs_i_init_once.__key.121, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry19 = getelementptr inbounds %struct.afs_vnode, ptr %_vnode, i32 0, i32 17, i32 0, i32 1
  %8 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry19, ptr %entry19, align 4
  %prev.i70 = getelementptr inbounds %struct.afs_vnode, ptr %_vnode, i32 0, i32 17, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i70 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry19, ptr %prev.i70, align 4
  %func = getelementptr inbounds %struct.afs_vnode, ptr %_vnode, i32 0, i32 17, i32 0, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @afs_lock_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.afs_vnode, ptr %_vnode, i32 0, i32 17, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.124, ptr noundef nonnull @afs_i_init_once.__key.123) #13
  %cb_mmap_link = getelementptr inbounds %struct.afs_vnode, ptr %_vnode, i32 0, i32 22
  %11 = ptrtoint ptr %cb_mmap_link to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %cb_mmap_link, ptr %cb_mmap_link, align 4
  %prev.i71 = getelementptr inbounds %struct.afs_vnode, ptr %_vnode, i32 0, i32 22, i32 1
  %12 = ptrtoint ptr %prev.i71 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cb_mmap_link, ptr %prev.i71, align 4
  %cb_lock = getelementptr inbounds %struct.afs_vnode, ptr %_vnode, i32 0, i32 29
  %lock32 = getelementptr inbounds %struct.afs_vnode, ptr %_vnode, i32 0, i32 29, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock32, ptr noundef nonnull @.str.126, ptr noundef nonnull @afs_i_init_once.__key.125, i16 noundef signext 3) #13
  %dep_map.i = getelementptr inbounds %struct.afs_vnode, ptr %_vnode, i32 0, i32 29, i32 0, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.128, ptr noundef nonnull @afs_i_init_once.__key.127, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %13 = ptrtoint ptr %cb_lock to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %cb_lock, align 4
  %lock44 = getelementptr inbounds %struct.afs_vnode, ptr %_vnode, i32 0, i32 29, i32 0, i32 1
  %14 = ptrtoint ptr %lock44 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %lock32, ptr %lock44, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !246

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = tail call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %comm, ptr noundef nonnull @.str.14) #17
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  tail call void @afs_mntpt_kill_timer() #13
  %call6 = tail call i32 @unregister_filesystem(ptr noundef nonnull @afs_fs_type) #13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @afs_count_active_inodes, i32 noundef 4) #13
  %5 = load volatile i32, ptr @afs_count_active_inodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end18, label %do.end10

do.end10:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i39 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @afs_count_active_inodes, i32 noundef 4) #13
  %6 = load volatile i32, ptr @afs_count_active_inodes, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %6) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #13, !srcloc !247
  unreachable

if.end18:                                         ; preds = %do.end5
  tail call void @rcu_barrier() #13
  %7 = load ptr, ptr @afs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %7) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %8 = load i32, ptr @afs_debug, align 4
  %and20 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.do.end38_crit_edge, label %do.end30, !prof !246

if.end18.do.end38_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end38

do.end30:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i40 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i40 to ptr
  %task33 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task33 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task33, align 8
  %comm34 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 101
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %comm34, ptr noundef nonnull @.str.14) #17
  br label %do.end38

do.end38:                                         ; preds = %do.end30, %if.end18.do.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_mntpt_kill_timer() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_enum(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_dynroot_depopulate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_deactivate_volume(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_destroy_sbi(ptr noundef %as) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %as, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %as to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %as, align 4
  %call = tail call fastcc ptr @afs_net(ptr noundef %1)
  %volume = getelementptr inbounds %struct.afs_super_info, ptr %as, i32 0, i32 2
  %2 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %volume, align 4
  tail call void @afs_put_volume(ptr noundef %call, ptr noundef %3, i32 noundef 8) #13
  %cell = getelementptr inbounds %struct.afs_super_info, ptr %as, i32 0, i32 1
  %4 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cell, align 4
  tail call void @afs_unuse_cell(ptr noundef %call, ptr noundef %5, i32 noundef 25) #13
  %6 = ptrtoint ptr %as to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %as, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !248
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #13, !srcloc !249
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_net.exit_crit_edge, label %if.then10.i.i.i.i, !prof !246

if.end5.i.i.i.i.put_net.exit_crit_edge:           ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_net.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #13
  br label %put_net.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !250
  tail call void @__put_net(ptr noundef %7) #13
  br label %put_net.exit

put_net.exit:                                     ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_net.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %as) #13
  br label %if.end

if.end:                                           ; preds = %put_net.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @afs_net(ptr noundef %net) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load i32, ptr @afs_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !251
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.32, i32 noundef 696, ptr noundef nonnull @.str.33) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 45, ptr noundef nonnull @.str.31) #13
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.32, i32 noundef 724, ptr noundef nonnull @.str.34) #13
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !252
  %9 = tail call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_volume(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_unuse_cell(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_find_cell(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_free_fc(ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 4
  tail call fastcc void @afs_destroy_sbi(ptr noundef %3)
  %net = getelementptr inbounds %struct.afs_fs_context, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  %volume = getelementptr inbounds %struct.afs_fs_context, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %volume, align 4
  tail call void @afs_put_volume(ptr noundef %5, ptr noundef %7, i32 noundef 9) #13
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  %cell = getelementptr inbounds %struct.afs_fs_context, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cell, align 4
  tail call void @afs_unuse_cell(ptr noundef %9, ptr noundef %11, i32 noundef 18) #13
  %key = getelementptr inbounds %struct.afs_fs_context, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %key, align 4
  tail call void @key_put(ptr noundef %13) #13
  tail call void @kfree(ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_parse_param(ptr noundef %fc, ptr noundef %param) #0 align 64 {
entry:
  %result = alloca %struct.fs_parse_result, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result) #13
  %0 = call ptr @memset(ptr %result, i32 255, i32 16)
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %1 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fs_private, align 4
  %log.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %call.i = call i32 @__fs_parse(ptr noundef %log.i, ptr noundef nonnull @afs_fs_parameters, ptr noundef %param, ptr noundef nonnull %result) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.end.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 0, label %sw.bb2
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %4 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_private, align 4
  %6 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %9 = load i32, ptr @afs_debug, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.do.end6.i_crit_edge, label %do.end.i, !prof !246

sw.bb.do.end6.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end6.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %10 = call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %comm.i, ptr noundef nonnull @.str.37, ptr noundef %8) #17
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %sw.bb.do.end6.i_crit_edge
  %source.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 10
  %14 = ptrtoint ptr %source.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %source.i, align 4
  %tobool7.not.i = icmp eq ptr %15, null
  br i1 %tobool7.not.i, label %if.end10.i, label %if.then8.i

if.then8.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %log9.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %log9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %log9.i, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %17, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.38) #13
  br label %cleanup

if.end10.i:                                       ; preds = %do.end6.i
  %tobool11.not.i = icmp eq ptr %8, null
  br i1 %tobool11.not.i, label %do.end15.i, label %if.end18.i

do.end15.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #17
  br label %cleanup

if.end18.i:                                       ; preds = %if.end10.i
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %8, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.129)
  switch i8 %19, label %if.end18.i.if.then26.i_crit_edge [
    i8 37, label %if.end18.i.lor.lhs.false.i_crit_edge
    i8 35, label %if.end18.i.lor.lhs.false.i_crit_edge24
  ]

if.end18.i.lor.lhs.false.i_crit_edge24:           ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i

if.end18.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i

if.end18.i.if.then26.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26.i

lor.lhs.false.i:                                  ; preds = %if.end18.i.lor.lhs.false.i_crit_edge, %if.end18.i.lor.lhs.false.i_crit_edge24
  %arrayidx24.i = getelementptr i8, ptr %8, i32 1
  %21 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx24.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool25.not.i = icmp eq i8 %22, 0
  br i1 %tobool25.not.i, label %lor.lhs.false.i.if.then26.i_crit_edge, label %if.end37.i

lor.lhs.false.i.if.then26.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26.i

if.then26.i:                                      ; preds = %lor.lhs.false.i.if.then26.i_crit_edge, %if.end18.i.if.then26.i_crit_edge
  %call27.i = call i32 @strcmp(ptr noundef nonnull %8, ptr noundef nonnull dereferenceable(5) @.str.42) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp eq i32 %call27.i, 0
  br i1 %cmp28.i, label %if.then30.i, label %do.end34.i

if.then30.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #15
  %no_cell.i = getelementptr inbounds %struct.afs_fs_context, ptr %5, i32 0, i32 3
  %23 = ptrtoint ptr %no_cell.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %no_cell.i, align 1
  br label %cleanup

do.end34.i:                                       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #15
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #17
  br label %cleanup

if.end37.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %19)
  %cmp40.i = icmp eq i8 %19, 37
  br i1 %cmp40.i, label %if.then42.i, label %if.end37.i.if.end43.i_crit_edge

if.end37.i.if.end43.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43.i

if.then42.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.afs_fs_context, ptr %5, i32 0, i32 5
  %24 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %type.i, align 4
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %5, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then42.i, %if.end37.i.if.end43.i_crit_edge
  %call44.i = call ptr @strchr(ptr noundef %arrayidx24.i, i32 noundef 58) #13
  %volname.i = getelementptr inbounds %struct.afs_fs_context, ptr %5, i32 0, i32 7
  %tobool46.not.i = icmp eq ptr %call44.i, null
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call44.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %arrayidx24.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %incdec.ptr50.i = getelementptr i8, ptr %call44.i, i32 1
  %storemerge.i = select i1 %tobool46.not.i, ptr %arrayidx24.i, ptr %incdec.ptr50.i
  %cellnamesz.0.i = select i1 %tobool46.not.i, i32 0, i32 %sub.ptr.sub.i
  %cellname.0.i = select i1 %tobool46.not.i, ptr null, ptr %arrayidx24.i
  %26 = ptrtoint ptr %volname.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %storemerge.i, ptr %volname.i, align 4
  %call54.i = call ptr @strrchr(ptr noundef %storemerge.i, i32 noundef 46) #13
  %tobool55.not.i = icmp eq ptr %call54.i, null
  br i1 %tobool55.not.i, label %if.end43.i.cond.false.i_crit_edge, label %if.then56.i

if.end43.i.cond.false.i_crit_edge:                ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i

if.then56.i:                                      ; preds = %if.end43.i
  %call57.i = call i32 @strcmp(ptr noundef nonnull %call54.i, ptr noundef nonnull dereferenceable(10) @.str.46) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp58.i = icmp eq i32 %call57.i, 0
  br i1 %cmp58.i, label %if.then56.i.cond.true.sink.split.i_crit_edge, label %if.else63.i

if.then56.i.cond.true.sink.split.i_crit_edge:     ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true.sink.split.i

if.else63.i:                                      ; preds = %if.then56.i
  %call64.i = call i32 @strcmp(ptr noundef nonnull %call54.i, ptr noundef nonnull dereferenceable(8) @.str.47) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %cmp65.i = icmp eq i32 %call64.i, 0
  br i1 %cmp65.i, label %if.else63.i.cond.true.sink.split.i_crit_edge, label %if.else70.i

if.else63.i.cond.true.sink.split.i_crit_edge:     ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true.sink.split.i

if.else70.i:                                      ; preds = %if.else63.i
  %arrayidx71.i = getelementptr i8, ptr %call54.i, i32 1
  %27 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx71.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp73.i = icmp eq i8 %28, 0
  br i1 %cmp73.i, label %if.else70.i.cond.true.i_crit_edge, label %if.else70.i.cond.false.i_crit_edge

if.else70.i.cond.false.i_crit_edge:               ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i

if.else70.i.cond.true.i_crit_edge:                ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true.i

cond.true.sink.split.i:                           ; preds = %if.else63.i.cond.true.sink.split.i_crit_edge, %if.then56.i.cond.true.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 1, %if.then56.i.cond.true.sink.split.i_crit_edge ], [ 2, %if.else63.i.cond.true.sink.split.i_crit_edge ]
  %type61.i = getelementptr inbounds %struct.afs_fs_context, ptr %5, i32 0, i32 5
  %29 = ptrtoint ptr %type61.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.sink.i, ptr %type61.i, align 4
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %5, align 4
  br label %cond.true.i

cond.true.i:                                      ; preds = %cond.true.sink.split.i, %if.else70.i.cond.true.i_crit_edge
  %31 = ptrtoint ptr %volname.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %volname.i, align 4
  %sub.ptr.lhs.cast83.i = ptrtoint ptr %call54.i to i32
  %sub.ptr.rhs.cast84.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub85.i = sub i32 %sub.ptr.lhs.cast83.i, %sub.ptr.rhs.cast84.i
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.else70.i.cond.false.i_crit_edge, %if.end43.i.cond.false.i_crit_edge
  %call87.i = call i32 @strlen(ptr noundef %storemerge.i) #18
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %tobool81.not248.i = phi ptr [ %call54.i, %cond.true.i ], [ @.str.58, %cond.false.i ]
  %cond.i = phi i32 [ %sub.ptr.sub85.i, %cond.true.i ], [ %call87.i, %cond.false.i ]
  %volnamesz.i = getelementptr inbounds %struct.afs_fs_context, ptr %5, i32 0, i32 6
  %33 = ptrtoint ptr %volnamesz.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond.i, ptr %volnamesz.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %34 = load i32, ptr @afs_debug, align 4
  %and89.i = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  br i1 %tobool90.not.i, label %cond.end.i.do.end115.i_crit_edge, label %do.end100.i, !prof !246

cond.end.i.do.end115.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end115.i

do.end100.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %35 = call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i242.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i242.i to ptr
  %task103.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task103.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task103.i, align 8
  %comm104.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 101
  %tobool106.not.i = icmp eq ptr %cellname.0.i, null
  %..str.51.i = select i1 %tobool106.not.i, ptr @.str.51, ptr %cellname.0.i
  %cell111.i = getelementptr inbounds %struct.afs_fs_context, ptr %5, i32 0, i32 9
  %39 = ptrtoint ptr %cell111.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cell111.i, align 4
  %call112.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %comm104.i, i32 noundef %cellnamesz.0.i, i32 noundef %cellnamesz.0.i, ptr noundef %..str.51.i, ptr noundef %40) #17
  br label %do.end115.i

do.end115.i:                                      ; preds = %do.end100.i, %cond.end.i.do.end115.i_crit_edge
  %tobool116.not.i = icmp eq ptr %cellname.0.i, null
  br i1 %tobool116.not.i, label %do.end115.i.do.body137.i_crit_edge, label %if.then117.i

do.end115.i.do.body137.i_crit_edge:               ; preds = %do.end115.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body137.i

if.then117.i:                                     ; preds = %do.end115.i
  %net.i = getelementptr inbounds %struct.afs_fs_context, ptr %5, i32 0, i32 8
  %41 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net.i, align 4
  %call118.i = call ptr @afs_lookup_cell(ptr noundef %42, ptr noundef nonnull %cellname.0.i, i32 noundef %cellnamesz.0.i, ptr noundef null, i1 noundef zeroext false) #13
  %cmp.i.i = icmp ugt ptr %call118.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end123.i, label %if.end132.i

do.end123.i:                                      ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #15
  %call130.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %cellnamesz.0.i, i32 noundef %cellnamesz.0.i, ptr noundef nonnull %cellname.0.i) #17
  %43 = ptrtoint ptr %call118.i to i32
  br label %cleanup

if.end132.i:                                      ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %net.i, align 4
  %cell134.i = getelementptr inbounds %struct.afs_fs_context, ptr %5, i32 0, i32 9
  %46 = ptrtoint ptr %cell134.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cell134.i, align 4
  call void @afs_unuse_cell(ptr noundef %45, ptr noundef %47, i32 noundef 22) #13
  call void @afs_see_cell(ptr noundef %call118.i, i32 noundef 13) #13
  %48 = ptrtoint ptr %cell134.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call118.i, ptr %cell134.i, align 4
  br label %do.body137.i

do.body137.i:                                     ; preds = %if.end132.i, %do.end115.i.do.body137.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %49 = load i32, ptr @afs_debug, align 4
  %and138.i = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138.i)
  %tobool139.not.i = icmp eq i32 %and138.i, 0
  br i1 %tobool139.not.i, label %do.body137.i.do.end175.i_crit_edge, label %do.end149.i, !prof !246

do.body137.i.do.end175.i_crit_edge:               ; preds = %do.body137.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end175.i

do.end149.i:                                      ; preds = %do.body137.i
  call void @__sanitizer_cov_trace_pc() #15
  %50 = call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i243.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i243.i to ptr
  %task152.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task152.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task152.i, align 8
  %comm153.i = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 101
  %cell155.i = getelementptr inbounds %struct.afs_fs_context, ptr %5, i32 0, i32 9
  %54 = ptrtoint ptr %cell155.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cell155.i, align 4
  %name156.i = getelementptr inbounds %struct.afs_cell, ptr %55, i32 0, i32 28
  %56 = ptrtoint ptr %name156.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name156.i, align 8
  %58 = ptrtoint ptr %volnamesz.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %volnamesz.i, align 4
  %60 = ptrtoint ptr %volname.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %volname.i, align 4
  %type166.i = getelementptr inbounds %struct.afs_fs_context, ptr %5, i32 0, i32 5
  %62 = ptrtoint ptr %type166.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %type166.i, align 4
  %conv167.i = zext i8 %63 to i32
  %64 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %5, align 4, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool169.not.i = icmp eq i8 %65, 0
  %cond171.i = select i1 %tobool169.not.i, ptr @.str.51, ptr @.str.59
  %call172.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %comm153.i, ptr noundef %57, ptr noundef %55, i32 noundef %59, i32 noundef %59, ptr noundef %61, ptr noundef nonnull %tobool81.not248.i, i32 noundef %conv167.i, ptr noundef nonnull %cond171.i) #17
  br label %do.end175.i

do.end175.i:                                      ; preds = %do.end149.i, %do.body137.i.do.end175.i_crit_edge
  %66 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %6, align 4
  %68 = ptrtoint ptr %source.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %source.i, align 4
  store ptr null, ptr %6, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %autocell = getelementptr inbounds %struct.afs_fs_context, ptr %2, i32 0, i32 1
  %69 = ptrtoint ptr %autocell to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %autocell, align 1
  br label %do.body

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dyn_root = getelementptr inbounds %struct.afs_fs_context, ptr %2, i32 0, i32 2
  %70 = ptrtoint ptr %dyn_root to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %dyn_root, align 2
  br label %do.body

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %71 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 8
  %flock_mode = getelementptr inbounds %struct.afs_fs_context, ptr %2, i32 0, i32 4
  %74 = ptrtoint ptr %flock_mode to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %flock_mode, align 4
  br label %do.body

do.body:                                          ; preds = %sw.bb4, %sw.bb3, %sw.bb2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %75 = load i32, ptr @afs_debug, align 4
  %and = and i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !246

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %76 = call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i23 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i23 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 101
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm, ptr noundef nonnull @.str.35) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %do.end175.i, %do.end123.i, %do.end34.i, %if.then30.i, %do.end15.i, %if.then8.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ -22, %if.then8.i ], [ 0, %if.then30.i ], [ -22, %do.end34.i ], [ %43, %do.end123.i ], [ 0, %do.end175.i ], [ -22, %do.end15.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_get_tree(ptr noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %dyn_root.i = getelementptr inbounds %struct.afs_fs_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dyn_root.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dyn_root.i, align 2, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then.i:                                        ; preds = %entry
  %no_cell.i = getelementptr inbounds %struct.afs_fs_context, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %no_cell.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %no_cell.i, align 1, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #17
  br label %do.body139

if.end.i:                                         ; preds = %if.then.i
  %cell3.i = getelementptr inbounds %struct.afs_fs_context, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %cell3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cell3.i, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %do.end8.i, label %reget_key.preheader.i

reget_key.preheader.i:                            ; preds = %if.end.i
  %call1398.i = tail call ptr @afs_request_key(ptr noundef nonnull %7) #13
  %cmp.i99.i = icmp ugt ptr %call1398.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99.i, label %reget_key.preheader.i.afs_validate_fc.exit_crit_edge, label %if.end17.lr.ph.i

reget_key.preheader.i.afs_validate_fc.exit_crit_edge: ; preds = %reget_key.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_validate_fc.exit

if.end17.lr.ph.i:                                 ; preds = %reget_key.preheader.i
  %key18.i = getelementptr inbounds %struct.afs_fs_context, ptr %1, i32 0, i32 11
  %volume19.i = getelementptr inbounds %struct.afs_fs_context, ptr %1, i32 0, i32 10
  %net.i = getelementptr inbounds %struct.afs_fs_context, ptr %1, i32 0, i32 8
  br label %if.end17.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #17
  br label %do.body139

if.end17.i:                                       ; preds = %do.end48.i.if.end17.i_crit_edge, %if.end17.lr.ph.i
  %call13100.i = phi ptr [ %call1398.i, %if.end17.lr.ph.i ], [ %call13.i, %do.end48.i.if.end17.i_crit_edge ]
  %8 = ptrtoint ptr %key18.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call13100.i, ptr %key18.i, align 4
  %9 = ptrtoint ptr %volume19.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %volume19.i, align 4
  %tobool20.not.i = icmp eq ptr %10, null
  br i1 %tobool20.not.i, label %if.end17.i.if.end24.i_crit_edge, label %if.then21.i

if.end17.i.if.end24.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24.i

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i, align 4
  tail call void @afs_put_volume(ptr noundef %12, ptr noundef nonnull %10, i32 noundef 12) #13
  %13 = ptrtoint ptr %volume19.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %volume19.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %if.end17.i.if.end24.i_crit_edge
  %14 = ptrtoint ptr %cell3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cell3.i, align 4
  %flags.i = getelementptr inbounds %struct.afs_cell, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags.i, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool27.not.i = icmp eq i32 %18, 0
  br i1 %tobool27.not.i, label %if.end24.i.if.end57.i_crit_edge, label %if.then28.i

if.end24.i.if.end57.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57.i

if.then28.i:                                      ; preds = %if.end24.i
  %call30.i = tail call i32 @afs_cell_detect_alias(ptr noundef %15, ptr noundef %call13100.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp.i = icmp slt i32 %call30.i, 0
  br i1 %cmp.i, label %if.then28.i.do.body139_crit_edge, label %if.end32.i

if.then28.i.do.body139_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body139

if.end32.i:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call30.i)
  %cmp33.i = icmp eq i32 %call30.i, 1
  br i1 %cmp33.i, label %do.body35.i, label %if.end32.i.if.end57.i_crit_edge

if.end32.i.if.end57.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57.i

do.body35.i:                                      ; preds = %if.end32.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %19 = load i32, ptr @afs_debug, align 4
  %and.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool36.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool36.not.i, label %do.body35.i.do.end48.i_crit_edge, label %do.end42.i, !prof !246

do.body35.i.do.end48.i_crit_edge:                 ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end48.i

do.end42.i:                                       ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #15
  %20 = tail call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 101
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %comm.i) #17
  br label %do.end48.i

do.end48.i:                                       ; preds = %do.end42.i, %do.body35.i.do.end48.i_crit_edge
  %24 = ptrtoint ptr %key18.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %key18.i, align 4
  tail call void @key_put(ptr noundef %25) #13
  %26 = ptrtoint ptr %key18.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %key18.i, align 4
  %27 = ptrtoint ptr %cell3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cell3.i, align 4
  %alias_of.i = getelementptr inbounds %struct.afs_cell, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %alias_of.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %alias_of.i, align 8
  %call52.i = tail call ptr @afs_use_cell(ptr noundef %30, i32 noundef 30) #13
  %31 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net.i, align 4
  %33 = ptrtoint ptr %cell3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cell3.i, align 4
  tail call void @afs_unuse_cell(ptr noundef %32, ptr noundef %34, i32 noundef 18) #13
  %35 = ptrtoint ptr %cell3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call52.i, ptr %cell3.i, align 4
  %call13.i = tail call ptr @afs_request_key(ptr noundef %call52.i) #13
  %cmp.i.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end48.i.afs_validate_fc.exit_crit_edge, label %do.end48.i.if.end17.i_crit_edge

do.end48.i.if.end17.i_crit_edge:                  ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i

do.end48.i.afs_validate_fc.exit_crit_edge:        ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_validate_fc.exit

if.end57.i:                                       ; preds = %if.end32.i.if.end57.i_crit_edge, %if.end24.i.if.end57.i_crit_edge
  %call58.i = tail call ptr @afs_create_volume(ptr noundef %1) #13
  %cmp.i94.i = icmp ugt ptr %call58.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94.i, label %if.end57.i.afs_validate_fc.exit_crit_edge, label %if.end62.i

if.end57.i.afs_validate_fc.exit_crit_edge:        ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_validate_fc.exit

if.end62.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %volume19.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call58.i, ptr %volume19.i, align 4
  br label %do.body

afs_validate_fc.exit:                             ; preds = %if.end57.i.afs_validate_fc.exit_crit_edge, %do.end48.i.afs_validate_fc.exit_crit_edge, %reget_key.preheader.i.afs_validate_fc.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call1398.i, %reget_key.preheader.i.afs_validate_fc.exit_crit_edge ], [ %call58.i, %if.end57.i.afs_validate_fc.exit_crit_edge ], [ %call13.i, %do.end48.i.afs_validate_fc.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool.not, label %afs_validate_fc.exit.do.body_crit_edge, label %afs_validate_fc.exit.do.body139_crit_edge

afs_validate_fc.exit.do.body139_crit_edge:        ; preds = %afs_validate_fc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body139

afs_validate_fc.exit.do.body_crit_edge:           ; preds = %afs_validate_fc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %afs_validate_fc.exit.do.body_crit_edge, %if.end62.i, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %37 = load i32, ptr @afs_debug, align 4
  %and = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end10_crit_edge, label %do.end, !prof !246

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %38 = tail call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i186 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i186 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 101
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %comm, ptr noundef nonnull @.str.60) #17
  br label %do.end10

do.end10:                                         ; preds = %do.end, %do.body.do.end10_crit_edge
  %42 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fs_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 16) #16
  %tobool.not.i188 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i188, label %do.end10.do.body139_crit_edge, label %if.then.i189

do.end10.do.body139_crit_edge:                    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body139

if.then.i189:                                     ; preds = %do.end10
  %net_ns.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 7
  %45 = ptrtoint ptr %net_ns.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %net_ns.i, align 4
  %count.i.i = getelementptr inbounds %struct.net, ptr %46, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #13
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #13, !srcloc !253
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i189.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !254

if.then.i189.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i189
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i189
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %48 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %.not.i.i.i.i.i = icmp sgt i32 %48, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_net.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !246

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_net.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_net.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i189.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i189.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef %.sink.i.i.i.i.i) #13
  br label %get_net.exit.i

get_net.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_net.exit.i_crit_edge
  %49 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %call7.i.i.i, align 8
  %flock_mode.i = getelementptr inbounds %struct.afs_fs_context, ptr %43, i32 0, i32 4
  %50 = ptrtoint ptr %flock_mode.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flock_mode.i, align 4
  %flock_mode3.i = getelementptr inbounds %struct.afs_super_info, ptr %call7.i.i.i, i32 0, i32 3
  %52 = trunc i32 %51 to i8
  %53 = ptrtoint ptr %flock_mode3.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %flock_mode3.i, align 4
  %dyn_root.i190 = getelementptr inbounds %struct.afs_fs_context, ptr %43, i32 0, i32 2
  %54 = ptrtoint ptr %dyn_root.i190 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %dyn_root.i190, align 2, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool4.not.i191 = icmp eq i8 %55, 0
  br i1 %tobool4.not.i191, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %get_net.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %dyn_root6.i = getelementptr inbounds %struct.afs_super_info, ptr %call7.i.i.i, i32 0, i32 4
  %56 = ptrtoint ptr %dyn_root6.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %dyn_root6.i, align 1
  br label %if.end14

if.else.i:                                        ; preds = %get_net.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %cell.i = getelementptr inbounds %struct.afs_fs_context, ptr %43, i32 0, i32 9
  %57 = ptrtoint ptr %cell.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cell.i, align 4
  %call7.i = tail call ptr @afs_use_cell(ptr noundef %58, i32 noundef 35) #13
  %cell8.i = getelementptr inbounds %struct.afs_super_info, ptr %call7.i.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %cell8.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i, ptr %cell8.i, align 4
  %volume.i = getelementptr inbounds %struct.afs_fs_context, ptr %43, i32 0, i32 10
  %60 = ptrtoint ptr %volume.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %volume.i, align 4
  %call9.i = tail call ptr @afs_get_volume(ptr noundef %61, i32 noundef 2) #13
  %volume10.i = getelementptr inbounds %struct.afs_super_info, ptr %call7.i.i.i, i32 0, i32 2
  %62 = ptrtoint ptr %volume10.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call9.i, ptr %volume10.i, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else.i, %if.then5.i
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %63 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i.i, ptr %s_fs_info, align 4
  %dyn_root = getelementptr inbounds %struct.afs_super_info, ptr %call7.i.i.i, i32 0, i32 4
  %64 = ptrtoint ptr %dyn_root to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %dyn_root, align 1, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool15.not = icmp eq i8 %65, 0
  %cond = select i1 %tobool15.not, ptr @afs_test_super, ptr @afs_dynroot_test_super
  %call16 = tail call ptr @sget_fc(ptr noundef %fc, ptr noundef nonnull %cond, ptr noundef nonnull @afs_set_super) #13
  %cmp.i192 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %call16 to i32
  br label %do.body139

if.end20:                                         ; preds = %if.end14
  %s_root = getelementptr inbounds %struct.super_block, ptr %call16, i32 0, i32 13
  %67 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_root, align 64
  %tobool21.not = icmp eq ptr %68, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %69 = load i32, ptr @afs_debug, align 4
  %and24 = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool21.not, label %do.body23, label %do.body48

do.body23:                                        ; preds = %if.end20
  br i1 %tobool25.not, label %do.body23.do.end44_crit_edge, label %do.end35, !prof !246

do.body23.do.end44_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end44

do.end35:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  %70 = tail call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i193 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i193 to ptr
  %task38 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %task38 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task38, align 8
  %comm39 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 101
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %comm39) #17
  br label %do.end44

do.end44:                                         ; preds = %do.end35, %do.body23.do.end44_crit_edge
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %call16, i32 0, i32 33
  %74 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %76 = load i32, ptr @afs_debug, align 4
  %and.i194 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i194)
  %tobool.not.i195 = icmp eq i32 %and.i194, 0
  br i1 %tobool.not.i195, label %do.end44.do.end7.i_crit_edge, label %do.end.i199, !prof !246

do.end44.do.end7.i_crit_edge:                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7.i

do.end.i199:                                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #15
  %77 = tail call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i.i196 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i196 to ptr
  %task.i197 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task.i197 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task.i197, align 8
  %comm.i198 = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 101
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %comm.i198, ptr noundef nonnull @.str.92) #17
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i199, %do.end44.do.end7.i_crit_edge
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %call16, i32 0, i32 3
  %81 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 4096, ptr %s_blocksize.i, align 16
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %call16, i32 0, i32 2
  %82 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 12, ptr %s_blocksize_bits.i, align 4
  %s_maxbytes.i = getelementptr inbounds %struct.super_block, ptr %call16, i32 0, i32 4
  %83 = ptrtoint ptr %s_maxbytes.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 17592186040320, ptr %s_maxbytes.i, align 8
  %s_magic.i = getelementptr inbounds %struct.super_block, ptr %call16, i32 0, i32 12
  %84 = ptrtoint ptr %s_magic.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1799439955, ptr %s_magic.i, align 4
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %call16, i32 0, i32 6
  %85 = ptrtoint ptr %s_op.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @afs_super_ops, ptr %s_op.i, align 4
  %dyn_root.i200 = getelementptr inbounds %struct.afs_super_info, ptr %75, i32 0, i32 4
  %86 = ptrtoint ptr %dyn_root.i200 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %dyn_root.i200, align 1, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool8.not.i = icmp eq i8 %87, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %do.end7.i.if.end10.i_crit_edge

do.end7.i.if.end10.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.then9.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %s_xattr.i = getelementptr inbounds %struct.super_block, ptr %call16, i32 0, i32 18
  %88 = ptrtoint ptr %s_xattr.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @afs_xattr_handlers, ptr %s_xattr.i, align 16
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %do.end7.i.if.end10.i_crit_edge
  %call11.i = tail call i32 @super_setup_bdi(ptr noundef %call16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.afs_fill_super.exit_crit_edge

if.end10.i.afs_fill_super.exit_crit_edge:         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_fill_super.exit

if.end14.i:                                       ; preds = %if.end10.i
  %89 = ptrtoint ptr %dyn_root.i200 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %dyn_root.i200, align 1, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool16.not.i = icmp eq i8 %90, 0
  br i1 %tobool16.not.i, label %if.else.i202, label %if.then17.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %call18.i = tail call ptr @afs_iget_pseudo_dir(ptr noundef %call16, i1 noundef zeroext true) #13
  br label %if.end24.i204

if.else.i202:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %call16, i32 0, i32 39
  %volume.i201 = getelementptr inbounds %struct.afs_super_info, ptr %75, i32 0, i32 2
  %91 = ptrtoint ptr %volume.i201 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %volume.i201, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %92, align 8
  %call20.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %s_id.i, ptr noundef nonnull @.str.93, i64 noundef %94) #13
  %95 = ptrtoint ptr %volume.i201 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %volume.i201, align 4
  %call22.i = tail call i32 @afs_activate_volume(ptr noundef %96) #13
  %key.i = getelementptr inbounds %struct.afs_fs_context, ptr %1, i32 0, i32 11
  %97 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %key.i, align 4
  %call23.i = tail call ptr @afs_root_iget(ptr noundef %call16, ptr noundef %98) #13
  br label %if.end24.i204

if.end24.i204:                                    ; preds = %if.else.i202, %if.then17.i
  %inode.0.i = phi ptr [ %call18.i, %if.then17.i ], [ %call23.i, %if.else.i202 ]
  %cmp.i.i203 = icmp ugt ptr %inode.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i203, label %if.then26.i, label %if.end28.i

if.then26.i:                                      ; preds = %if.end24.i204
  call void @__sanitizer_cov_trace_pc() #15
  %99 = ptrtoint ptr %inode.0.i to i32
  br label %afs_fill_super.exit

if.end28.i:                                       ; preds = %if.end24.i204
  %autocell.i = getelementptr inbounds %struct.afs_fs_context, ptr %1, i32 0, i32 1
  %100 = ptrtoint ptr %autocell.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %autocell.i, align 1, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool29.not.i = icmp eq i8 %101, 0
  br i1 %tobool29.not.i, label %lor.lhs.false.i, label %if.end28.i.if.then32.i_crit_edge

if.end28.i.if.then32.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then32.i

lor.lhs.false.i:                                  ; preds = %if.end28.i
  %102 = ptrtoint ptr %dyn_root.i200 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %dyn_root.i200, align 1, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool31.not.i = icmp eq i8 %103, 0
  br i1 %tobool31.not.i, label %lor.lhs.false.i.if.end34.i_crit_edge, label %lor.lhs.false.i.if.then32.i_crit_edge

lor.lhs.false.i.if.then32.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then32.i

lor.lhs.false.i.if.end34.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

if.then32.i:                                      ; preds = %lor.lhs.false.i.if.then32.i_crit_edge, %if.end28.i.if.then32.i_crit_edge
  %flags.i205 = getelementptr inbounds %struct.afs_vnode, ptr %inode.0.i, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags.i205) #13
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %lor.lhs.false.i.if.end34.i_crit_edge
  %call35.i = tail call ptr @d_make_root(ptr noundef %inode.0.i) #13
  %104 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call35.i, ptr %s_root, align 64
  %tobool37.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool37.not.i, label %if.end34.i.do.body112.i_crit_edge, label %if.end39.i

if.end34.i.do.body112.i_crit_edge:                ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body112.i

if.end39.i:                                       ; preds = %if.end34.i
  %105 = ptrtoint ptr %dyn_root.i200 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %dyn_root.i200, align 1, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool41.not.i = icmp eq i8 %106, 0
  %s_d_op47.i = getelementptr inbounds %struct.super_block, ptr %call16, i32 0, i32 45
  br i1 %tobool41.not.i, label %if.else46.i, label %if.then42.i

if.then42.i:                                      ; preds = %if.end39.i
  %107 = ptrtoint ptr %s_d_op47.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @afs_dynroot_dentry_operations, ptr %s_d_op47.i, align 8
  %call43.i = tail call i32 @afs_dynroot_populate(ptr noundef %call16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp.i206 = icmp slt i32 %call43.i, 0
  br i1 %cmp.i206, label %if.then42.i.do.body112.i_crit_edge, label %if.then42.i.do.body90.i_crit_edge

if.then42.i.do.body90.i_crit_edge:                ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body90.i

if.then42.i.do.body112.i_crit_edge:               ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body112.i

if.else46.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  %108 = ptrtoint ptr %s_d_op47.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @afs_fs_dentry_operations, ptr %s_d_op47.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !255
  %volume76.i = getelementptr inbounds %struct.afs_super_info, ptr %75, i32 0, i32 2
  %109 = ptrtoint ptr %volume76.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %volume76.i, align 4
  %sb77.i = getelementptr inbounds %struct.afs_volume, ptr %110, i32 0, i32 6
  %111 = ptrtoint ptr %sb77.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %call16, ptr %sb77.i, align 8
  br label %do.body90.i

do.body90.i:                                      ; preds = %if.else46.i, %if.then42.i.do.body90.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %112 = load i32, ptr @afs_debug, align 4
  %and91.i = and i32 %112, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  br i1 %tobool92.not.i, label %do.body90.i.if.end47_crit_edge, label %do.end102.i, !prof !246

do.body90.i.if.end47_crit_edge:                   ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

do.end102.i:                                      ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #15
  %113 = tail call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i166.i = and i32 %113, -16384
  %114 = inttoptr i32 %and.i166.i to ptr
  %task105.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %task105.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %task105.i, align 8
  %comm106.i = getelementptr inbounds %struct.task_struct, ptr %116, i32 0, i32 101
  %call108.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm106.i, ptr noundef nonnull @.str.92) #17
  br label %if.end47

do.body112.i:                                     ; preds = %if.then42.i.do.body112.i_crit_edge, %if.end34.i.do.body112.i_crit_edge
  %ret.0.i = phi i32 [ %call43.i, %if.then42.i.do.body112.i_crit_edge ], [ -12, %if.end34.i.do.body112.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %117 = load i32, ptr @afs_debug, align 4
  %and113.i = and i32 %117, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.i)
  %tobool114.not.i = icmp eq i32 %and113.i, 0
  br i1 %tobool114.not.i, label %do.body112.i.error_sb_crit_edge, label %do.end124.i, !prof !246

do.body112.i.error_sb_crit_edge:                  ; preds = %do.body112.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_sb

do.end124.i:                                      ; preds = %do.body112.i
  call void @__sanitizer_cov_trace_pc() #15
  %118 = tail call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i167.i = and i32 %118, -16384
  %119 = inttoptr i32 %and.i167.i to ptr
  %task127.i = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %task127.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %task127.i, align 8
  %comm128.i = getelementptr inbounds %struct.task_struct, ptr %121, i32 0, i32 101
  %call130.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm128.i, ptr noundef nonnull @.str.92, i32 noundef %ret.0.i) #17
  br label %error_sb

afs_fill_super.exit:                              ; preds = %if.then26.i, %if.end10.i.afs_fill_super.exit_crit_edge
  %retval.0.i207 = phi i32 [ %99, %if.then26.i ], [ %call11.i, %if.end10.i.afs_fill_super.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i207)
  %cmp = icmp slt i32 %retval.0.i207, 0
  br i1 %cmp, label %afs_fill_super.exit.error_sb_crit_edge, label %afs_fill_super.exit.if.end47_crit_edge

afs_fill_super.exit.if.end47_crit_edge:           ; preds = %afs_fill_super.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

afs_fill_super.exit.error_sb_crit_edge:           ; preds = %afs_fill_super.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_sb

if.end47:                                         ; preds = %afs_fill_super.exit.if.end47_crit_edge, %do.end102.i, %do.body90.i.if.end47_crit_edge
  %s_flags = getelementptr inbounds %struct.super_block, ptr %call16, i32 0, i32 10
  %122 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %s_flags, align 4
  %or = or i32 %123, 1073741824
  store i32 %or, ptr %s_flags, align 4
  br label %if.end114

do.body48:                                        ; preds = %if.end20
  br i1 %tobool25.not, label %do.body48.do.body70_crit_edge, label %do.end60, !prof !246

do.body48.do.body70_crit_edge:                    ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body70

do.end60:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #15
  %124 = tail call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i208 = and i32 %124, -16384
  %125 = inttoptr i32 %and.i208 to ptr
  %task63 = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %task63 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %task63, align 8
  %comm64 = getelementptr inbounds %struct.task_struct, ptr %127, i32 0, i32 101
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %comm64) #17
  br label %do.body70

do.body70:                                        ; preds = %do.end60, %do.body48.do.body70_crit_edge
  %s_flags71 = getelementptr inbounds %struct.super_block, ptr %call16, i32 0, i32 10
  %128 = ptrtoint ptr %s_flags71 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %s_flags71, align 4
  %and72 = and i32 %129, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %do.end85, label %do.body70.if.end114_crit_edge, !prof !254

do.body70.if.end114_crit_edge:                    ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end114

do.end85:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #15
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #17
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #17
  %130 = ptrtoint ptr %s_flags71 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %s_flags71, align 4
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %131, i32 noundef 1073741824) #17
  %132 = ptrtoint ptr %s_flags71 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %s_flags71, align 4
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %133, i32 noundef 1073741824) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 594, 0\0A.popsection", ""() #13, !srcloc !256
  unreachable

if.end114:                                        ; preds = %do.body70.if.end114_crit_edge, %if.end47
  %134 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %s_root, align 64
  %tobool.not.i209 = icmp eq ptr %135, null
  br i1 %tobool.not.i209, label %if.end114.dget.exit_crit_edge, label %if.then.i210

if.end114.dget.exit_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %dget.exit

if.then.i210:                                     ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %135, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #13
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i210, %if.end114.dget.exit_crit_edge
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %136 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %135, ptr %root, align 4
  %cell = getelementptr inbounds %struct.afs_super_info, ptr %call7.i.i.i, i32 0, i32 1
  %137 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cell, align 4
  %volume = getelementptr inbounds %struct.afs_super_info, ptr %call7.i.i.i, i32 0, i32 2
  %139 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %volume, align 8
  tail call fastcc void @trace_afs_get_tree(ptr noundef %138, ptr noundef %140)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %141 = load i32, ptr @afs_debug, align 4
  %and118 = and i32 %141, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %dget.exit.cleanup_crit_edge, label %do.end129, !prof !246

dget.exit.cleanup_crit_edge:                      ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end129:                                        ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #15
  %142 = tail call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i212 = and i32 %142, -16384
  %143 = inttoptr i32 %and.i212 to ptr
  %task132 = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %task132 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %task132, align 8
  %comm133 = getelementptr inbounds %struct.task_struct, ptr %145, i32 0, i32 101
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %comm133, ptr noundef nonnull @.str.60, ptr noundef %call16) #17
  br label %cleanup

error_sb:                                         ; preds = %afs_fill_super.exit.error_sb_crit_edge, %do.end124.i, %do.body112.i.error_sb_crit_edge
  %retval.0.i207222 = phi i32 [ %retval.0.i207, %afs_fill_super.exit.error_sb_crit_edge ], [ %ret.0.i, %do.end124.i ], [ %ret.0.i, %do.body112.i.error_sb_crit_edge ]
  tail call void @deactivate_locked_super(ptr noundef %call16) #13
  br label %do.body139

do.body139:                                       ; preds = %error_sb, %if.then18, %do.end10.do.body139_crit_edge, %afs_validate_fc.exit.do.body139_crit_edge, %if.then28.i.do.body139_crit_edge, %do.end8.i, %do.end.i
  %ret.0 = phi i32 [ %retval.0.i, %afs_validate_fc.exit.do.body139_crit_edge ], [ %66, %if.then18 ], [ %retval.0.i207222, %error_sb ], [ -12, %do.end10.do.body139_crit_edge ], [ -89, %do.end8.i ], [ -22, %do.end.i ], [ %call30.i, %if.then28.i.do.body139_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %146 = load i32, ptr @afs_debug, align 4
  %and140 = and i32 %146, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %do.body139.cleanup_crit_edge, label %do.end151, !prof !246

do.body139.cleanup_crit_edge:                     ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end151:                                        ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #15
  %147 = tail call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i213 = and i32 %147, -16384
  %148 = inttoptr i32 %and.i213 to ptr
  %task154 = getelementptr inbounds %struct.thread_info, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %task154 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %task154, align 8
  %comm155 = getelementptr inbounds %struct.task_struct, ptr %150, i32 0, i32 101
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm155, ptr noundef nonnull @.str.60, i32 noundef %ret.0) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end151, %do.body139.cleanup_crit_edge, %do.end129, %dget.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end129 ], [ 0, %dget.exit.cleanup_crit_edge ], [ %ret.0, %do.end151 ], [ %ret.0, %do.body139.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_lookup_cell(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_see_cell(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sget_fc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @afs_dynroot_test_super(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %fc) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %net_ns1 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 7
  %4 = ptrtoint ptr %net_ns1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_ns1, align 4
  %cmp = icmp eq ptr %3, %5
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dyn_root = getelementptr inbounds %struct.afs_super_info, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %dyn_root to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dyn_root, align 1, !range !245
  %tobool = zext i8 %7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %8 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %tobool, %land.rhs ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @afs_test_super(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %fc) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %net_ns1 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 7
  %6 = ptrtoint ptr %net_ns1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_ns1, align 4
  %cmp = icmp eq ptr %5, %7
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %volume = getelementptr inbounds %struct.afs_super_info, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %volume, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %land.lhs.true.land.end_crit_edge, label %land.lhs.true2

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  %volume4 = getelementptr inbounds %struct.afs_fs_context, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %volume4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %volume4, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %13, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %15)
  %cmp5 = icmp eq i64 %11, %15
  br i1 %cmp5, label %land.lhs.true6, label %land.lhs.true2.land.end_crit_edge

land.lhs.true2.land.end_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true2
  %cell = getelementptr inbounds %struct.afs_super_info, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cell, align 4
  %cell7 = getelementptr inbounds %struct.afs_fs_context, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %cell7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cell7, align 4
  %cmp8 = icmp eq ptr %17, %19
  br i1 %cmp8, label %land.rhs, label %land.lhs.true6.land.end_crit_edge

land.lhs.true6.land.end_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  %dyn_root = getelementptr inbounds %struct.afs_super_info, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %dyn_root to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dyn_root, align 1, !range !245
  %22 = xor i8 %21, 1
  %lnot = zext i8 %22 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6.land.end_crit_edge, %land.lhs.true2.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %23 = phi i32 [ 0, %land.lhs.true6.land.end_crit_edge ], [ 0, %land.lhs.true2.land.end_crit_edge ], [ 0, %land.lhs.true.land.end_crit_edge ], [ 0, %entry.land.end_crit_edge ], [ %lnot, %land.rhs ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_set_super(ptr noundef %sb, ptr nocapture noundef readnone %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @set_anon_super(ptr noundef %sb, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_get_tree(ptr noundef %cell, ptr noundef %volume) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_get_tree, i32 0, i32 1), ptr blockaddress(@trace_afs_get_tree, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !257

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !235) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !246

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.113, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !258
  %call42 = tail call i32 @__traceiter_afs_get_tree(ptr noundef null, ptr noundef %cell, ptr noundef %volume) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !259
  %13 = tail call i32 @llvm.read_register.i32(metadata !235) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !235) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !246

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.113, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !260
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_get_tree, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_get_tree, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_afs_get_tree.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_afs_get_tree.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.112, i32 noundef 1386, ptr noundef nonnull @.str.31) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !261
  %31 = tail call i32 @llvm.read_register.i32(metadata !235) #13
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
declare dso_local void @deactivate_locked_super(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_request_key(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_cell_detect_alias(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_use_cell(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_create_volume(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_get_volume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_anon_super(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @super_setup_bdi(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_iget_pseudo_dir(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_activate_volume(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_root_iget(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_dynroot_populate(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @afs_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @afs_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @afs_count_active_inodes, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull @afs_count_active_inodes, i32 1, i32 3, i32 1) #13
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @afs_count_active_inodes, ptr nonnull @afs_count_active_inodes, i32 1, ptr nonnull elementtype(i32) @afs_count_active_inodes) #13, !srcloc !262
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %call, i32 0, i32 2
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %volume to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %volume, align 8
  %lock_key = getelementptr inbounds %struct.afs_vnode, ptr %call, i32 0, i32 18
  %3 = ptrtoint ptr %lock_key to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %lock_key, align 8
  %permit_cache = getelementptr inbounds %struct.afs_vnode, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %permit_cache to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %permit_cache, align 4
  %cache = getelementptr inbounds %struct.afs_vnode, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %cache, align 8
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %call, i32 0, i32 13
  %6 = call ptr @memset(ptr %fid, i32 0, i32 128)
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %flags, align 8
  %lock_state = getelementptr inbounds %struct.afs_vnode, ptr %call, i32 0, i32 20
  %8 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %lock_state, align 8
  %bf.clear = and i16 %bf.load, 255
  store i16 %bf.clear, ptr %lock_state, align 8
  %rmdir_lock = getelementptr inbounds %struct.afs_vnode, ptr %call, i32 0, i32 9
  tail call void @__init_rwsem(ptr noundef %rmdir_lock, ptr noundef nonnull @.str.98, ptr noundef nonnull @afs_alloc_inode.__key) #13
  %cb_work = getelementptr inbounds %struct.afs_vnode, ptr %call, i32 0, i32 21
  tail call void @__init_work(ptr noundef %cb_work, i32 noundef 0) #13
  %9 = ptrtoint ptr %cb_work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %cb_work, align 4
  %lockdep_map = getelementptr inbounds %struct.afs_vnode, ptr %call, i32 0, i32 21, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.100, ptr noundef nonnull @afs_alloc_inode.__key.99, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry5 = getelementptr inbounds %struct.afs_vnode, ptr %call, i32 0, i32 21, i32 1
  %10 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry5, ptr %entry5, align 8
  %prev.i = getelementptr inbounds %struct.afs_vnode, ptr %call, i32 0, i32 21, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.afs_vnode, ptr %call, i32 0, i32 21, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @afs_invalidate_mmap_work, ptr %func, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %13 = load i32, ptr @afs_debug, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %do.end16, !prof !246

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %14 = tail call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 101
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %comm, ptr noundef nonnull @.str.102, ptr noundef nonnull %call) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_destroy_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body10_crit_edge, label %do.end, !prof !246

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = tail call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2
  %5 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %fid, align 8
  %vnode6 = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %vnode6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %vnode6, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %comm, ptr noundef nonnull @.str.104, ptr noundef %inode, i64 noundef %6, i64 noundef %8) #17
  br label %do.body10

do.body10:                                        ; preds = %do.end, %entry.do.body10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %9 = load i32, ptr @afs_debug, align 4
  %and11 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body10.do.end31_crit_edge, label %do.end22, !prof !246

do.body10.do.end31_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end31

do.end22:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  %10 = tail call i32 @llvm.read_register.i32(metadata !235) #13
  %and.i35 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i35 to ptr
  %task25 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task25, align 8
  %comm26 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %comm26, ptr noundef %inode) #17
  br label %do.end31

do.end31:                                         ; preds = %do.end22, %do.body10.do.end31_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @afs_count_active_inodes, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull @afs_count_active_inodes, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @afs_count_active_inodes, ptr nonnull @afs_count_active_inodes, i32 1, ptr nonnull elementtype(i32) @afs_count_active_inodes) #13, !srcloc !263
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @afs_inode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %inode) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_write_inode(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_drop_inode(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_evict_inode(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_statfs(ptr nocapture noundef readonly %dentry, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %s_magic = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_magic, align 4
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %buf, align 8
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %9 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1024, ptr %f_bsize, align 4
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %10 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 255, ptr %f_namelen, align 8
  %dyn_root = getelementptr inbounds %struct.afs_super_info, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %dyn_root to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dyn_root, align 1, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %13 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1, ptr %f_blocks, align 8
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %14 = call ptr @memset(ptr %f_bfree, i32 0, i32 16)
  br label %cleanup

if.end:                                           ; preds = %entry
  %volume = getelementptr inbounds %struct.afs_super_info, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %volume, align 4
  %call4 = tail call ptr @afs_alloc_operation(ptr noundef null, ptr noundef %16) #13
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %file.i = getelementptr inbounds %struct.afs_operation, ptr %call4, i32 0, i32 5
  %18 = ptrtoint ptr %file.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %5, ptr %file.i, align 8
  %need_io_lock.i = getelementptr inbounds %struct.afs_operation, ptr %call4, i32 0, i32 5, i32 0, i32 6
  %19 = ptrtoint ptr %need_io_lock.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %need_io_lock.i, align 1
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %need_io_lock.i, align 1
  %nr_files = getelementptr inbounds %struct.afs_operation, ptr %call4, i32 0, i32 12
  %20 = ptrtoint ptr %nr_files to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %nr_files, align 8
  %buf9 = getelementptr inbounds %struct.afs_operation, ptr %call4, i32 0, i32 17, i32 0, i32 1
  %21 = ptrtoint ptr %buf9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf, ptr %buf9, align 8
  %ops = getelementptr inbounds %struct.afs_operation, ptr %call4, i32 0, i32 3
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @afs_get_volume_status_operation, ptr %ops, align 4
  %call10 = tail call i32 @afs_do_sync_operation(ptr noundef %call4) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %17, %if.then6 ], [ %call10, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_show_options(ptr noundef %m, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %dyn_root = getelementptr inbounds %struct.afs_super_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dyn_root to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dyn_root, align 1, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.108) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.109) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %flock_mode = getelementptr inbounds %struct.afs_super_info, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %flock_mode to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load18 = load i8, ptr %flock_mode, align 4
  %switch.tableidx = add i8 %bf.load18, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %12 = icmp ult i8 %switch.tableidx, 4
  br i1 %12, label %switch.lookup, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

switch.lookup:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %13 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.afs_show_options, i32 0, i32 %13
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load ptr, ptr %switch.gep, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.110, ptr noundef nonnull %switch.load) #13
  br label %if.end12

if.end12:                                         ; preds = %switch.lookup, %if.end6.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_show_devname(ptr noundef %m, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %volume1 = getelementptr inbounds %struct.afs_super_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %volume1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %volume1, align 4
  %cell2 = getelementptr inbounds %struct.afs_super_info, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %cell2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cell2, align 4
  %dyn_root = getelementptr inbounds %struct.afs_super_info, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %dyn_root to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dyn_root, align 1, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.42) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.afs_volume, ptr %5, i32 0, i32 14
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type, align 8
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.130)
  switch i8 %11, label %if.end.sw.epilog_crit_edge [
    i8 2, label %sw.bb6
    i8 1, label %sw.bb
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %type_force = getelementptr inbounds %struct.afs_volume, ptr %5, i32 0, i32 15
  %13 = ptrtoint ptr %type_force to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type_force, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool3.not = icmp eq i8 %14, 0
  %spec.select = select i1 %tobool3.not, ptr @.str.51, ptr @.str.46
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb, %if.end.sw.epilog_crit_edge
  %suf.0 = phi ptr [ @.str.51, %if.end.sw.epilog_crit_edge ], [ @.str.47, %sw.bb6 ], [ %spec.select, %sw.bb ]
  %pref.0 = phi i32 [ 37, %if.end.sw.epilog_crit_edge ], [ 35, %sw.bb6 ], [ 35, %sw.bb ]
  %name = getelementptr inbounds %struct.afs_cell, ptr %7, i32 0, i32 28
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 8
  %name8 = getelementptr inbounds %struct.afs_volume, ptr %5, i32 0, i32 17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.111, i32 noundef %pref.0, ptr noundef %16, ptr noundef %name8, ptr noundef nonnull %suf.0) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_invalidate_mmap_work(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_alloc_operation(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_do_sync_operation(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fs_get_volume_status(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @yfs_fs_get_volume_status(ptr noundef) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @afs_get_volume_status_success(ptr nocapture noundef readonly %op) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %buf2 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 1
  %0 = ptrtoint ptr %buf2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf2, align 8
  %max_quota = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 8
  %2 = ptrtoint ptr %max_quota to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %max_quota, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %part_max_blocks = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 11
  %4 = ptrtoint ptr %part_max_blocks to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %part_max_blocks, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i64 [ %5, %if.then ], [ %3, %entry.if.end_crit_edge ]
  %6 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %.sink, ptr %6, align 8
  %blocks_in_use = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 9
  %8 = ptrtoint ptr %blocks_in_use to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %blocks_in_use, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %.sink, i64 %9)
  %cmp6 = icmp ugt i64 %.sink, %9
  br i1 %cmp6, label %if.then7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i64 %.sink, %9
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %sub, ptr %f_bfree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %sub, ptr %f_bavail, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_get_tree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_lock_work(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !79, !80, !81, !83, !84, !85, !86, !88, !90, !91, !92, !94, !96, !97, !98, !100, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !144, !145, !146, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !170, !171, !173, !174, !176, !178, !179, !181, !182, !184, !185, !186, !187, !189, !190, !191, !192, !194, !195, !196, !198, !200, !202, !204, !206, !208, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !227, !228, !229, !230, !232, !233, !234}
!llvm.named.register.sp = !{!235}
!llvm.module.flags = !{!236, !237, !238, !239, !240, !241, !242, !243}
!llvm.ident = !{!244}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/afs/super.c", i32 45, i32 12}
!2 = !{ptr @afs_fs_type, !3, !"afs_fs_type", i1 false, i1 false}
!3 = !{!"../fs/afs/super.c", i32 43, i32 25}
!4 = !{ptr @__UNIQUE_ID_alias529, !5, !"__UNIQUE_ID_alias529", i1 false, i1 false}
!5 = !{!"../fs/afs/super.c", i32 51, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/afs/super.c", i32 100, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @afs_fs_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @afs_fs_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/afs/super.c", i32 106, i32 39}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/afs/super.c", i32 112, i32 3}
!16 = !{ptr @afs_fs_init._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @afs_fs_init._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/afs/super.c", i32 120, i32 3}
!20 = !{ptr @afs_fs_init._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @afs_fs_init._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/afs/super.c", i32 124, i32 2}
!24 = !{ptr @afs_fs_init._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @afs_fs_init._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/afs/super.c", i32 133, i32 2}
!28 = !{ptr @afs_fs_exit._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @afs_fs_exit._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/afs/super.c", i32 139, i32 3}
!32 = !{ptr @afs_fs_exit._entry.15, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @afs_fs_exit._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/afs/super.c", i32 150, i32 2}
!36 = !{ptr @afs_fs_exit._entry.18, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @afs_fs_exit._entry_ptr.20, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @afs_net_id, !39, !"afs_net_id", i1 false, i1 false}
!39 = !{!"../fs/afs/super.c", i32 53, i32 5}
!40 = !{ptr @afs_inode_cachep, !41, !"afs_inode_cachep", i1 false, i1 false}
!41 = !{!"../fs/afs/super.c", i32 67, i32 27}
!42 = !{ptr @afs_count_active_inodes, !43, !"afs_count_active_inodes", i1 false, i1 false}
!43 = !{!"../fs/afs/super.c", i32 68, i32 17}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/afs/super.c", i32 86, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/afs/super.c", i32 87, i32 2}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/afs/super.c", i32 88, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/afs/super.c", i32 89, i32 2}
!52 = !{ptr @afs_fs_parameters, !53, !"afs_fs_parameters", i1 false, i1 false}
!53 = !{!"../fs/afs/super.c", i32 85, i32 39}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/afs/super.c", i32 78, i32 3}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/afs/super.c", i32 79, i32 3}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/afs/super.c", i32 80, i32 3}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/afs/super.c", i32 81, i32 3}
!62 = !{ptr @afs_param_flock, !63, !"afs_param_flock", i1 false, i1 false}
!63 = !{!"../fs/afs/super.c", i32 77, i32 36}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!70 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!74 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @afs_context_ops, !76, !"afs_context_ops", i1 false, i1 false}
!76 = !{!"../fs/afs/super.c", i32 620, i32 43}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/afs/super.c", i32 349, i32 2}
!79 = !{ptr @afs_parse_param._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @afs_parse_param._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/afs/super.c", i32 232, i32 2}
!83 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @afs_parse_source._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @afs_parse_source._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/afs/super.c", i32 235, i32 10}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/afs/super.c", i32 238, i32 3}
!90 = !{ptr @afs_parse_source._entry.39, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @afs_parse_source._entry_ptr.41, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/afs/super.c", i32 244, i32 20}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/afs/super.c", i32 248, i32 3}
!96 = !{ptr @afs_parse_source._entry.43, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @afs_parse_source._entry_ptr.45, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/afs/super.c", i32 274, i32 22}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/afs/super.c", i32 277, i32 29}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/afs/super.c", i32 289, i32 2}
!104 = !{ptr @afs_parse_source._entry.48, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @afs_parse_source._entry_ptr.50, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/afs/super.c", i32 297, i32 4}
!109 = !{ptr @afs_parse_source._entry.52, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @afs_parse_source._entry_ptr.54, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/afs/super.c", i32 306, i32 2}
!113 = !{ptr @afs_parse_source._entry.55, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @afs_parse_source._entry_ptr.57, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/afs/super.c", i32 567, i32 2}
!119 = !{ptr @afs_get_tree._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @afs_get_tree._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/afs/super.c", i32 587, i32 3}
!123 = !{ptr @afs_get_tree._entry.61, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @afs_get_tree._entry_ptr.63, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/afs/super.c", i32 593, i32 3}
!127 = !{ptr @afs_get_tree._entry.64, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @afs_get_tree._entry_ptr.66, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/afs/super.c", i32 594, i32 3}
!131 = !{ptr @afs_get_tree._entry.67, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @afs_get_tree._entry_ptr.69, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.71, !130, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @afs_get_tree._entry.70, !130, !"_entry", i1 false, i1 false}
!135 = !{ptr @afs_get_tree._entry_ptr.72, !130, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.74, !130, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @afs_get_tree._entry.73, !130, !"_entry", i1 false, i1 false}
!138 = !{ptr @afs_get_tree._entry_ptr.75, !130, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.77, !130, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @afs_get_tree._entry.76, !130, !"_entry", i1 false, i1 false}
!141 = !{ptr @afs_get_tree._entry_ptr.78, !130, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.80, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/afs/super.c", i32 599, i32 2}
!144 = !{ptr @afs_get_tree._entry.79, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @afs_get_tree._entry_ptr.81, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @afs_get_tree._entry.82, !147, !"_entry", i1 false, i1 false}
!147 = !{!"../fs/afs/super.c", i32 605, i32 2}
!148 = !{ptr @afs_get_tree._entry_ptr.83, !147, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.84, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/afs/super.c", i32 366, i32 4}
!151 = !{ptr @.str.85, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @afs_validate_fc._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @afs_validate_fc._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.87, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/afs/super.c", i32 371, i32 4}
!156 = !{ptr @afs_validate_fc._entry.86, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @afs_validate_fc._entry_ptr.88, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.90, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/afs/super.c", i32 394, i32 5}
!160 = !{ptr @afs_validate_fc._entry.89, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @afs_validate_fc._entry_ptr.91, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.92, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/afs/super.c", i32 452, i32 2}
!164 = !{ptr @afs_fill_super._entry, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @afs_fill_super._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.93, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/afs/super.c", i32 470, i32 21}
!168 = !{ptr @afs_fill_super._entry.94, !169, !"_entry", i1 false, i1 false}
!169 = !{!"../fs/afs/super.c", i32 496, i32 2}
!170 = !{ptr @afs_fill_super._entry_ptr.95, !169, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @afs_fill_super._entry.96, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../fs/afs/super.c", i32 500, i32 2}
!173 = !{ptr @afs_fill_super._entry_ptr.97, !172, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @afs_super_ops, !175, !"afs_super_ops", i1 false, i1 false}
!175 = !{!"../fs/afs/super.c", i32 55, i32 38}
!176 = !{ptr @afs_alloc_inode.__key, !177, !"__key", i1 false, i1 false}
!177 = !{!"../fs/afs/super.c", i32 702, i32 2}
!178 = !{ptr @.str.98, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @afs_alloc_inode.__key.99, !180, !"__key", i1 false, i1 false}
!180 = !{!"../fs/afs/super.c", i32 703, i32 2}
!181 = !{ptr @.str.100, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.101, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/afs/super.c", i32 705, i32 2}
!184 = !{ptr @.str.102, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @afs_alloc_inode._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @afs_alloc_inode._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.103, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/afs/super.c", i32 721, i32 2}
!189 = !{ptr @.str.104, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @afs_destroy_inode._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @afs_destroy_inode._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.106, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/afs/super.c", i32 723, i32 2}
!194 = !{ptr @afs_destroy_inode._entry.105, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @afs_destroy_inode._entry_ptr.107, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @afs_get_volume_status_operation, !197, !"afs_get_volume_status_operation", i1 false, i1 false}
!197 = !{!"../fs/afs/super.c", i32 743, i32 39}
!198 = !{ptr @.str.108, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/afs/super.c", i32 196, i32 15}
!200 = !{ptr @.str.109, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/afs/super.c", i32 198, i32 15}
!202 = !{ptr @.str.110, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/afs/super.c", i32 207, i32 17}
!204 = !{ptr @.str.111, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../fs/afs/super.c", i32 183, i32 16}
!206 = distinct !{null, !207, !"__already_done", i1 false, i1 false}
!207 = !{!"../include/trace/events/afs.h", i32 1362, i32 1}
!208 = !{ptr @.str.112, !207, !"<string literal>", i1 false, i1 false}
!209 = distinct !{null, !207, !"__warned", i1 false, i1 false}
!210 = distinct !{null, !211, !"__already_done", i1 false, i1 false}
!211 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!212 = !{ptr @.str.113, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @afs_i_init_once.__key, !214, !"__key", i1 false, i1 false}
!214 = !{!"../fs/afs/super.c", i32 663, i32 2}
!215 = !{ptr @.str.114, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @afs_i_init_once.__key.115, !217, !"__key", i1 false, i1 false}
!217 = !{!"../fs/afs/super.c", i32 664, i32 2}
!218 = !{ptr @.str.116, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @afs_i_init_once.__key.117, !220, !"__key", i1 false, i1 false}
!220 = !{!"../fs/afs/super.c", i32 665, i32 2}
!221 = !{ptr @.str.118, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @afs_i_init_once.__key.119, !223, !"__key", i1 false, i1 false}
!223 = !{!"../fs/afs/super.c", i32 666, i32 2}
!224 = !{ptr @.str.120, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @afs_i_init_once.__key.121, !226, !"__key", i1 false, i1 false}
!226 = !{!"../fs/afs/super.c", i32 670, i32 2}
!227 = !{ptr @.str.122, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @afs_i_init_once.__key.123, !226, !"__key", i1 false, i1 false}
!229 = !{ptr @.str.124, !226, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @afs_i_init_once.__key.125, !231, !"__key", i1 false, i1 false}
!231 = !{!"../fs/afs/super.c", i32 672, i32 2}
!232 = !{ptr @.str.126, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @afs_i_init_once.__key.127, !231, !"__key", i1 false, i1 false}
!234 = !{ptr @.str.128, !231, !"<string literal>", i1 false, i1 false}
!235 = !{!"sp"}
!236 = !{i32 1, !"wchar_size", i32 2}
!237 = !{i32 1, !"min_enum_size", i32 4}
!238 = !{i32 8, !"branch-target-enforcement", i32 0}
!239 = !{i32 8, !"sign-return-address", i32 0}
!240 = !{i32 8, !"sign-return-address-all", i32 0}
!241 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!242 = !{i32 7, !"uwtable", i32 1}
!243 = !{i32 7, !"frame-pointer", i32 2}
!244 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!245 = !{i8 0, i8 2}
!246 = !{!"branch_weights", i32 2000, i32 1}
!247 = !{i64 2157819495, i64 2157819974, i64 2157819532, i64 2157819588, i64 2157819622, i64 2157819646, i64 2157819687, i64 2157819708, i64 2157819736, i64 2157819770}
!248 = !{i64 2148315494}
!249 = !{i64 2148229958, i64 2148229990, i64 2148230019, i64 2148230053, i64 2148230084, i64 2148230107}
!250 = !{i64 2149321942}
!251 = !{i64 2149372432}
!252 = !{i64 2149372698}
!253 = !{i64 2148227493, i64 2148227525, i64 2148227554, i64 2148227588, i64 2148227619, i64 2148227642}
!254 = !{!"branch_weights", i32 1, i32 2000}
!255 = !{i64 2157848105}
!256 = !{i64 2157873649, i64 2157874128, i64 2157873686, i64 2157873742, i64 2157873776, i64 2157873800, i64 2157873841, i64 2157873862, i64 2157873890, i64 2157873924}
!257 = !{i64 2148707778, i64 2148707783, i64 2148707796, i64 2148707840, i64 2148707874, i64 2148707895}
!258 = !{i64 2157694779}
!259 = !{i64 2157694990}
!260 = !{i64 2149380991}
!261 = !{i64 2149382027}
!262 = !{i64 2148225963, i64 2148225989, i64 2148226018, i64 2148226052, i64 2148226083, i64 2148226106}
!263 = !{i64 2148228428, i64 2148228454, i64 2148228483, i64 2148228517, i64 2148228548, i64 2148228571}
