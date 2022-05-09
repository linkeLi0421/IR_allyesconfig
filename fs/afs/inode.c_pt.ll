; ModuleID = '/llk/IR_all_yes/fs/afs/inode.c_pt.bc'
source_filename = "../fs/afs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.afs_operation_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.2 }
%union.anon.2 = type { [5 x %struct.uid_gid_extent] }
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
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%union.anon.63 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.timespec64 = type { i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.afs_vnode = type { %struct.inode, ptr, %struct.afs_fid, %struct.afs_file_status, i64, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, ptr, i64, i16, %struct.work_struct, %struct.list_head, ptr, %struct.atomic_t, i32, i32, i32, i32, %struct.seqlock_t, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.152, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.153, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.154, ptr, %struct.address_space, %struct.list_head, %union.anon.155, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.152 = type { i32 }
%union.anon.153 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.154 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.155 = type { ptr }
%struct.afs_fid = type { i64, i64, i32, i32 }
%struct.afs_file_status = type { i64, i64, %struct.timespec64, %struct.timespec64, i64, i64, i64, i32, i32, i16, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.afs_vnode_param = type { ptr, %struct.afs_fid, %struct.afs_status_cb, i64, i32, i8, i8 }
%struct.afs_status_cb = type { %struct.afs_file_status, %struct.afs_callback, i8, i8, i8 }
%struct.afs_callback = type { i64 }
%struct.afs_operation = type { ptr, ptr, ptr, ptr, ptr, [2 x %struct.afs_vnode_param], ptr, %struct.afs_volsync, ptr, ptr, %struct.timespec64, %struct.timespec64, i16, i16, i32, i32, i32, %union.anon.158, %struct.afs_addr_cursor, ptr, ptr, ptr, i32, i16, i16, i32 }
%struct.afs_volsync = type { i64 }
%union.anon.158 = type { %struct.anon.169 }
%struct.anon.169 = type { %struct.afs_volume_status, ptr }
%struct.afs_volume_status = type { i64, i64, i8, i8, i8, i8, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.afs_addr_cursor = type { ptr, i32, i8, i8, i16, i16, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.139, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.139 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.afs_net = type { ptr, %struct.afs_uuid, i8, ptr, ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.rb_root, ptr, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.rw_semaphore, %struct.mutex, %struct.mutex, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.seqlock_t, %struct.work_struct, %struct.timer_list, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.afs_uuid = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.afs_volume = type { %union.anon.145, %struct.atomic_t, i64, ptr, %struct.rb_node, %struct.hlist_node, ptr, i32, ptr, ptr, %struct.rwlock_t, i32, i32, %struct.rwlock_t, i8, i8, i8, [65 x i8] }
%union.anon.145 = type { i64 }
%struct.anon.171 = type { i32, i32, [2 x i32] }
%struct.afs_vnode_cache_aux = type { i64 }
%struct.afs_super_info = type { ptr, ptr, ptr, i8, i8 }
%struct.afs_cell = type { %union.anon.144, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.hlist_node, i64, i64, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i16, i32, i32, %struct.rb_root, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.seqlock_t, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.rwlock_t, ptr, i8, ptr }
%union.anon.144 = type { %struct.rb_node }
%struct.afs_server_list = type { [3 x i64], %struct.refcount_struct, i8, i8, i16, i32, %struct.rwlock_t, [0 x %struct.afs_server_entry] }
%struct.afs_server_entry = type { ptr }
%struct.afs_server = type { %struct.callback_head, %union.anon.143, ptr, ptr, %struct.rb_node, ptr, ptr, %struct.list_head, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.work_struct, ptr, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, %struct.rwlock_t, i32, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.147 }
%union.anon.143 = type { %struct.afs_uuid }
%struct.anon.147 = type { i32, i32, i16, i8 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.4, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.5, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.6, %union.anon.10, ptr }
%union.anon.4 = type { %struct.rb_node }
%union.anon.5 = type { i64 }
%union.anon.6 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.7, ptr, ptr, ptr }
%union.anon.7 = type { i32 }
%union.anon.10 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.fscache_cookie = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, %struct.hlist_bl_node, %struct.list_head, %struct.list_head, %struct.work_struct, i64, i32, i32, i8, i8, i8, i8, i32, %union.anon.156, %union.anon.157 }
%struct.hlist_bl_node = type { ptr, ptr }
%union.anon.156 = type { ptr, [12 x i8] }
%union.anon.157 = type { ptr, [4 x i8] }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.qstr = type { %union.anon.24, ptr }
%union.anon.24 = type { i64 }
%struct.lockref = type { %union.anon.26 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.spinlock, i32 }
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.file = type { %union.anon.23, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.23 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_vnode_commit_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"afs_vnode_commit_status\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/afs/inode.c\00", [17 x i8] zeroinitializer }, align 32
@afs_vnode_commit_status._entry_ptr = internal global ptr @afs_vnode_commit_status._entry, section ".printk_index", align 4
@afs_fetch_status_operation = dso_local constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr @afs_fs_fetch_status, ptr @yfs_fs_fetch_status, ptr @afs_fetch_status_success, ptr @afs_check_for_remote_deletion, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@afs_fetch_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[%-6.6s] ==> %s(%s,{%llx:%llu.%u,S=%lx})\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_fetch_status\00", [47 x i8] zeroinitializer }, align 32
@afs_fetch_status._entry_ptr = internal global ptr @afs_fetch_status._entry, section ".printk_index", align 4
@afs_iget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%-6.6s] ==> %s(,{%llx:%llu.%u},,)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"afs_iget\00", [23 x i8] zeroinitializer }, align 32
@afs_iget._entry_ptr = internal global ptr @afs_iget._entry, section ".printk_index", align 4
@afs_iget._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() = -ENOMEM\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_iget._entry_ptr.9 = internal global ptr @afs_iget._entry.7, section ".printk_index", align 4
@afs_iget._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[%-6.6s]     GOT INODE %p { vl=%llx vn=%llx, u=%x }\0A\00", [43 x i8] zeroinitializer }, align 32
@afs_iget._entry_ptr.12 = internal global ptr @afs_iget._entry.10, section ".printk_index", align 4
@afs_iget._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %p\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_iget._entry_ptr.15 = internal global ptr @afs_iget._entry.13, section ".printk_index", align 4
@afs_iget._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_iget._entry_ptr.17 = internal global ptr @afs_iget._entry.16, section ".printk_index", align 4
@afs_iget._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.6, ptr @.str.2, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] <== %s() = %d [bad]\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_iget._entry_ptr.20 = internal global ptr @afs_iget._entry.18, section ".printk_index", align 4
@afs_root_iget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s] ==> %s(,{%llx},,)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"afs_root_iget\00", [18 x i8] zeroinitializer }, align 32
@afs_root_iget._entry_ptr = internal global ptr @afs_root_iget._entry, section ".printk_index", align 4
@afs_root_iget._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.22, ptr @.str.2, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_root_iget._entry_ptr.24 = internal global ptr @afs_root_iget._entry.23, section ".printk_index", align 4
@afs_root_iget._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.2, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[%-6.6s]     GOT ROOT INODE %p { vl=%llx }\0A\00", [52 x i8] zeroinitializer }, align 32
@afs_root_iget._entry_ptr.27 = internal global ptr @afs_root_iget._entry.25, section ".printk_index", align 4
@afs_root_iget._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.22, ptr @.str.2, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_root_iget._entry_ptr.29 = internal global ptr @afs_root_iget._entry.28, section ".printk_index", align 4
@afs_root_iget._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.22, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_root_iget._entry_ptr.31 = internal global ptr @afs_root_iget._entry.30, section ".printk_index", align 4
@afs_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[%-6.6s] ==> %s({v={%llx:%llu} fl=%lx},%x)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"afs_validate\00", [19 x i8] zeroinitializer }, align 32
@afs_validate._entry_ptr = internal global ptr @afs_validate._entry, section ".printk_index", align 4
@afs_validate._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s]     not promised\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_validate._entry_ptr.36 = internal global ptr @afs_validate._entry.34, section ".printk_index", align 4
@afs_validate._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.2, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%-6.6s]     new promise [fl=%lx]\0A\00", [61 x i8] zeroinitializer }, align 32
@afs_validate._entry_ptr.39 = internal global ptr @afs_validate._entry.37, section ".printk_index", align 4
@afs_validate._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.2, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%-6.6s]     file already deleted\0A\00", [61 x i8] zeroinitializer }, align 32
@afs_validate._entry_ptr.42 = internal global ptr @afs_validate._entry.40, section ".printk_index", align 4
@afs_validate._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.33, ptr @.str.2, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] <== %s() = 0\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_validate._entry_ptr.45 = internal global ptr @afs_validate._entry.43, section ".printk_index", align 4
@afs_validate._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.33, ptr @.str.2, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_validate._entry_ptr.48 = internal global ptr @afs_validate._entry.46, section ".printk_index", align 4
@afs_getattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 732, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%-6.6s] ==> %s({ ino=%lu v=%u })\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"afs_getattr\00", [20 x i8] zeroinitializer }, align 32
@afs_getattr._entry_ptr = internal global ptr @afs_getattr._entry, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@afs_drop_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.51, ptr @.str.2, i32 751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"afs_drop_inode\00", [17 x i8] zeroinitializer }, align 32
@afs_drop_inode._entry_ptr = internal global ptr @afs_drop_inode._entry, section ".printk_index", align 4
@afs_evict_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] ==> %s({%llx:%llu.%d})\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"afs_evict_inode\00", [16 x i8] zeroinitializer }, align 32
@afs_evict_inode._entry_ptr = internal global ptr @afs_evict_inode._entry, section ".printk_index", align 4
@afs_evict_inode._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s]     CLEAR INODE %p\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_evict_inode._entry_ptr.56 = internal global ptr @afs_evict_inode._entry.54, section ".printk_index", align 4
@afs_evict_inode._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.2, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\013\0A\00", [28 x i8] zeroinitializer }, align 32
@afs_evict_inode._entry_ptr.59 = internal global ptr @afs_evict_inode._entry.57, section ".printk_index", align 4
@afs_evict_inode._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.53, ptr @.str.2, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013AFS: Assertion failed\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_evict_inode._entry_ptr.62 = internal global ptr @afs_evict_inode._entry.60, section ".printk_index", align 4
@afs_evict_inode._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.53, ptr @.str.2, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%lu == %lu is false\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_evict_inode._entry_ptr.65 = internal global ptr @afs_evict_inode._entry.63, section ".printk_index", align 4
@afs_evict_inode._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.53, ptr @.str.2, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0130x%lx == 0x%lx is false\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_evict_inode._entry_ptr.68 = internal global ptr @afs_evict_inode._entry.66, section ".printk_index", align 4
@afs_evict_inode._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.53, ptr @.str.2, i32 801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_evict_inode._entry_ptr.71 = internal global ptr @afs_evict_inode._entry.69, section ".printk_index", align 4
@afs_setattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%-6.6s] ==> %s({%llx:%llu},{n=%pd},%x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"afs_setattr\00", [20 x i8] zeroinitializer }, align 32
@afs_setattr._entry_ptr = internal global ptr @afs_setattr._entry, section ".printk_index", align 4
@afs_setattr._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.2, i32 865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%-6.6s] <== %s() = 0 [unsupported]\0A\00", [59 x i8] zeroinitializer }, align 32
@afs_setattr._entry_ptr.76 = internal global ptr @afs_setattr._entry.74, section ".printk_index", align 4
@afs_setattr_operation = internal constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr @afs_fs_setattr, ptr @yfs_fs_setattr, ptr @afs_setattr_success, ptr null, ptr null, ptr @afs_setattr_edit_file, ptr null }, [36 x i8] zeroinitializer }, align 32
@afs_setattr._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.73, ptr @.str.2, i32 937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_setattr._entry_ptr.78 = internal global ptr @afs_setattr._entry.77, section ".printk_index", align 4
@afs_apply_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%-6.6s] ==> %s({%llx:%llu.%u} %s)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_apply_status\00", [47 x i8] zeroinitializer }, align 32
@afs_apply_status._entry_ptr = internal global ptr @afs_apply_status._entry, section ".printk_index", align 4
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@afs_apply_status._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.80, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014Vnode %llx:%llx:%x changed type %u to %u\0A\00", [52 x i8] zeroinitializer }, align 32
@afs_apply_status._entry_ptr.84 = internal global ptr @afs_apply_status._entry.82, section ".printk_index", align 4
@afs_apply_status._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.80, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014kAFS: vnode modified {%llx:%llu} %llx->%llx %s (op=%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@afs_apply_status._entry_ptr.87 = internal global ptr @afs_apply_status._entry.85, section ".printk_index", align 4
@afs_net_id = external dso_local local_unnamed_addr global i32, align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.88 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.92 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@afs_inode_init_from_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.93, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"afs_inode_init_from_status\00", [37 x i8] zeroinitializer }, align 32
@afs_inode_init_from_status._entry_ptr = internal global ptr @afs_inode_init_from_status._entry, section ".printk_index", align 4
@afs_inode_init_from_status._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%-6.6s]     FS: ft=%d lk=%d sz=%llu ver=%Lu mod=%hu\0A\00", [42 x i8] zeroinitializer }, align 32
@afs_inode_init_from_status._entry_ptr.96 = internal global ptr @afs_inode_init_from_status._entry.94, section ".printk_index", align 4
@afs_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@afs_file_operations = external dso_local constant %struct.file_operations, align 4
@afs_file_aops = external dso_local constant %struct.address_space_operations, align 4
@afs_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@afs_dir_file_operations = external dso_local constant %struct.file_operations, align 4
@afs_dir_aops = external dso_local constant %struct.address_space_operations, align 4
@afs_mntpt_inode_operations = external dso_local constant %struct.inode_operations, align 128
@afs_mntpt_file_operations = external dso_local constant %struct.file_operations, align 4
@afs_symlink_aops = external dso_local constant %struct.address_space_operations, align 4
@afs_symlink_inode_operations = internal constant %struct.inode_operations { ptr null, ptr @page_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@dump_vnode.once_only = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dump_vnode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014kAFS: AFS vnode with undefined type %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dump_vnode\00", [21 x i8] zeroinitializer }, align 32
@dump_vnode._entry_ptr = internal global ptr @dump_vnode._entry, section ".printk_index", align 4
@dump_vnode._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014kAFS: A=%d m=%o s=%llx v=%llx\0A\00", [63 x i8] zeroinitializer }, align 32
@dump_vnode._entry_ptr.101 = internal global ptr @dump_vnode._entry.99, section ".printk_index", align 4
@dump_vnode._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.98, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014kAFS: vnode %llx:%llx:%x\0A\00", [36 x i8] zeroinitializer }, align 32
@dump_vnode._entry_ptr.104 = internal global ptr @dump_vnode._entry.102, section ".printk_index", align 4
@dump_vnode._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.98, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014kAFS: dir %llx:%llx:%x\0A\00", [38 x i8] zeroinitializer }, align 32
@dump_vnode._entry_ptr.107 = internal global ptr @dump_vnode._entry.105, section ".printk_index", align 4
@afs_check_server_good.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_afs_cb_miss = external dso_local global %struct.tracepoint, align 4
@.str.108 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/afs.h\00", [37 x i8] zeroinitializer }, align 32
@trace_afs_cb_miss.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@afs_zap_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.2, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] ==> %s({%llx:%llu})\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"afs_zap_data\00", [19 x i8] zeroinitializer }, align 32
@afs_zap_data._entry_ptr = internal global ptr @afs_zap_data._entry, section ".printk_index", align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 272, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [27 x i8] c"afs_fetch_status_operation\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 329, i32 32 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 344, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 453, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 457, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 463, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 468, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 481, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 487, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 517, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 521, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 525, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 550, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 555, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 668, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 689, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 698, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 702, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 713, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 718, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 732, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 751, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 767, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 772, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 774, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 801, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 860, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 865, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant [22 x i8] c"afs_setattr_operation\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 838, i32 39 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 937, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 163, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 170, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 207, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 45, i32 7 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 695, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 723, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 67, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 71, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant [10 x i8] c"once_only\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 34, i32 23 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 36, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 37, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 42, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 47, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant [30 x i8] c"../include/trace/events/afs.h\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1415, i32 1 }
@___asan_gen_.402 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 108, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.411 = private constant [18 x i8] c"../fs/afs/inode.c\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 565, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 271, i32 2 }
@llvm.compiler.used = appending global [142 x ptr] [ptr @afs_apply_status._entry, ptr @afs_apply_status._entry.82, ptr @afs_apply_status._entry.85, ptr @afs_apply_status._entry_ptr, ptr @afs_apply_status._entry_ptr.84, ptr @afs_apply_status._entry_ptr.87, ptr @afs_drop_inode._entry, ptr @afs_drop_inode._entry_ptr, ptr @afs_evict_inode._entry, ptr @afs_evict_inode._entry.54, ptr @afs_evict_inode._entry.57, ptr @afs_evict_inode._entry.60, ptr @afs_evict_inode._entry.63, ptr @afs_evict_inode._entry.66, ptr @afs_evict_inode._entry.69, ptr @afs_evict_inode._entry_ptr, ptr @afs_evict_inode._entry_ptr.56, ptr @afs_evict_inode._entry_ptr.59, ptr @afs_evict_inode._entry_ptr.62, ptr @afs_evict_inode._entry_ptr.65, ptr @afs_evict_inode._entry_ptr.68, ptr @afs_evict_inode._entry_ptr.71, ptr @afs_fetch_status._entry, ptr @afs_fetch_status._entry_ptr, ptr @afs_getattr._entry, ptr @afs_getattr._entry_ptr, ptr @afs_iget._entry, ptr @afs_iget._entry.10, ptr @afs_iget._entry.13, ptr @afs_iget._entry.16, ptr @afs_iget._entry.18, ptr @afs_iget._entry.7, ptr @afs_iget._entry_ptr, ptr @afs_iget._entry_ptr.12, ptr @afs_iget._entry_ptr.15, ptr @afs_iget._entry_ptr.17, ptr @afs_iget._entry_ptr.20, ptr @afs_iget._entry_ptr.9, ptr @afs_inode_init_from_status._entry, ptr @afs_inode_init_from_status._entry.94, ptr @afs_inode_init_from_status._entry_ptr, ptr @afs_inode_init_from_status._entry_ptr.96, ptr @afs_root_iget._entry, ptr @afs_root_iget._entry.23, ptr @afs_root_iget._entry.25, ptr @afs_root_iget._entry.28, ptr @afs_root_iget._entry.30, ptr @afs_root_iget._entry_ptr, ptr @afs_root_iget._entry_ptr.24, ptr @afs_root_iget._entry_ptr.27, ptr @afs_root_iget._entry_ptr.29, ptr @afs_root_iget._entry_ptr.31, ptr @afs_setattr._entry, ptr @afs_setattr._entry.74, ptr @afs_setattr._entry.77, ptr @afs_setattr._entry_ptr, ptr @afs_setattr._entry_ptr.76, ptr @afs_setattr._entry_ptr.78, ptr @afs_validate._entry, ptr @afs_validate._entry.34, ptr @afs_validate._entry.37, ptr @afs_validate._entry.40, ptr @afs_validate._entry.43, ptr @afs_validate._entry.46, ptr @afs_validate._entry_ptr, ptr @afs_validate._entry_ptr.36, ptr @afs_validate._entry_ptr.39, ptr @afs_validate._entry_ptr.42, ptr @afs_validate._entry_ptr.45, ptr @afs_validate._entry_ptr.48, ptr @afs_vnode_commit_status._entry, ptr @afs_vnode_commit_status._entry_ptr, ptr @afs_zap_data._entry, ptr @afs_zap_data._entry_ptr, ptr @dump_vnode._entry, ptr @dump_vnode._entry.102, ptr @dump_vnode._entry.105, ptr @dump_vnode._entry.99, ptr @dump_vnode._entry_ptr, ptr @dump_vnode._entry_ptr.101, ptr @dump_vnode._entry_ptr.104, ptr @dump_vnode._entry_ptr.107, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @afs_fetch_status_operation, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.26, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @afs_setattr_operation, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @dump_vnode.once_only, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vnode_commit_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fetch_status_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fetch_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_iget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_iget._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_iget._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_iget._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_iget._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_iget._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_root_iget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_root_iget._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_root_iget._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_root_iget._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_root_iget._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_validate._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_validate._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_validate._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_validate._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_validate._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_getattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_drop_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_evict_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_evict_inode._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_evict_inode._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_evict_inode._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_evict_inode._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_evict_inode._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_evict_inode._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_setattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_setattr._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_setattr_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_setattr._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_apply_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_apply_status._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_apply_status._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_inode_init_from_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_inode_init_from_status._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_vnode.once_only to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_vnode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_vnode._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_vnode._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_vnode._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_zap_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_vnode_commit_status(ptr nocapture noundef %op, ptr noundef %vp) local_unnamed_addr #0 align 64 {
entry:
  %t.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vp, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !210

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1) #16
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %cb_lock = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 29
  %lock.i = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 29, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #13
  %7 = ptrtoint ptr %cb_lock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cb_lock, align 4
  %inc.i.i.i.i = add i32 %8, 1
  store i32 %inc.i.i.i.i, ptr %cb_lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !211
  %dep_map.i.i.i = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 29, i32 0, i32 0, i32 1
  %9 = tail call ptr @llvm.returnaddress(i32 0) #13
  %10 = ptrtoint ptr %9 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %10) #13
  %scb = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2
  %have_error = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %have_error to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %have_error, align 2, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not = icmp eq i8 %12, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %do.end7
  %abort_code = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 0, i32 13
  %13 = ptrtoint ptr %abort_code to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %abort_code, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %14)
  %cmp = icmp eq i32 %14, 102
  br i1 %cmp, label %if.then11, label %if.then9.out_crit_edge

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #13
  tail call void @clear_nlink(ptr noundef %1) #13
  tail call void @__afs_break_callback(ptr noundef %1, i32 noundef 3) #13
  %flags12 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %15 = ptrtoint ptr %flags12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags12, align 8
  %and13 = and i32 %16, -4097
  store i32 %and13, ptr %flags12, align 8
  br label %out

if.else:                                          ; preds = %do.end7
  %have_status = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %have_status to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %have_status, align 8, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool16.not = icmp eq i8 %18, 0
  %op_unlinked = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 6
  %19 = ptrtoint ptr %op_unlinked to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load30 = load i8, ptr %op_unlinked, align 1
  br i1 %tobool16.not, label %if.else29, label %if.then17

if.then17:                                        ; preds = %if.else
  %20 = and i8 %bf.load30, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %bf.cast.not = icmp eq i8 %20, 0
  br i1 %bf.cast.not, label %if.then17.if.end24_crit_edge, label %land.lhs.true

if.then17.if.end24_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

land.lhs.true:                                    ; preds = %if.then17
  %flags18 = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 13
  %21 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags18, align 4
  %23 = and i32 %22, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool20.not = icmp eq i32 %23, 0
  br i1 %tobool20.not, label %lor.lhs.false, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false:                                    ; preds = %land.lhs.true
  %dv_before = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 3
  %24 = ptrtoint ptr %dv_before to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %dv_before, align 8
  %data_version = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %data_version to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %data_version, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %27)
  %cmp22.not = icmp eq i64 %25, %27
  br i1 %cmp22.not, label %lor.lhs.false.if.end24_crit_edge, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.end24:                                         ; preds = %lor.lhs.false.if.end24_crit_edge, %if.then17.if.end24_crit_edge
  %28 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vp, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %t.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %30 = load i32, ptr @afs_debug, align 4
  %and.i82 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i82)
  %tobool.not.i = icmp eq i32 %and.i82, 0
  br i1 %tobool.not.i, label %if.end24.do.body14.i_crit_edge, label %do.end.i, !prof !210

if.end24.do.body14.i_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body14.i

do.end.i:                                         ; preds = %if.end24
  %31 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 101
  %fid.i = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 1
  %35 = ptrtoint ptr %fid.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %fid.i, align 8
  %vnode7.i = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %vnode7.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %vnode7.i, align 8
  %unique.i = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %unique.i, align 4
  %type.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %41 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %type.i, align 8
  %tobool9.not.i = icmp eq ptr %42, null
  br i1 %tobool9.not.i, label %do.end.i.cond.end.i_crit_edge, label %cond.true.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %44, %cond.true.i ], [ @.str.81, %do.end.i.cond.end.i_crit_edge ]
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %comm.i, ptr noundef nonnull @.str.80, i64 noundef %36, i64 noundef %38, i32 noundef %40, ptr noundef %cond.i) #16
  br label %do.body14.i

do.body14.i:                                      ; preds = %cond.end.i, %if.end24.do.body14.i_crit_edge
  %flags.i = getelementptr inbounds %struct.afs_vnode, ptr %29, i32 0, i32 13
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %flags.i, align 4
  %47 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool16.not.i = icmp eq i32 %47, 0
  br i1 %tobool16.not.i, label %do.end32.i, label %do.body24.i, !prof !210

do.body24.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 167, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

do.end32.i:                                       ; preds = %do.body14.i
  %type33.i = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 0, i32 10
  %48 = ptrtoint ptr %type33.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type33.i, align 4
  %status34.i = getelementptr inbounds %struct.afs_vnode, ptr %29, i32 0, i32 3
  %type35.i = getelementptr inbounds %struct.afs_vnode, ptr %29, i32 0, i32 3, i32 10
  %50 = ptrtoint ptr %type35.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %type35.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp.not.i = icmp eq i32 %49, %51
  br i1 %cmp.not.i, label %if.end52.i, label %do.end39.i

do.end39.i:                                       ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  %fid41.i = getelementptr inbounds %struct.afs_vnode, ptr %29, i32 0, i32 2
  %52 = ptrtoint ptr %fid41.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %fid41.i, align 8
  %vnode44.i = getelementptr inbounds %struct.afs_vnode, ptr %29, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %vnode44.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %vnode44.i, align 8
  %unique46.i = getelementptr inbounds %struct.afs_vnode, ptr %29, i32 0, i32 2, i32 3
  %56 = ptrtoint ptr %unique46.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %unique46.i, align 4
  %call50.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i64 noundef %53, i64 noundef %55, i32 noundef %57, i32 noundef %49, i32 noundef %51) #16
  %call51.i = tail call i32 @afs_protocol_error(ptr noundef null, i32 noundef 0) #13
  br label %afs_apply_status.exit

if.end52.i:                                       ; preds = %do.end32.i
  %nlink.i = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 0, i32 11
  %58 = ptrtoint ptr %nlink.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nlink.i, align 8
  %nlink54.i = getelementptr inbounds %struct.afs_vnode, ptr %29, i32 0, i32 3, i32 11
  %60 = ptrtoint ptr %nlink54.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nlink54.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp55.not.i = icmp eq i32 %59, %61
  br i1 %cmp55.not.i, label %if.end52.i.if.end58.i_crit_edge, label %if.then56.i

if.end52.i.if.end58.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58.i

if.then56.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @set_nlink(ptr noundef %29, i32 noundef %59) #13
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then56.i, %if.end52.i.if.end58.i_crit_edge
  %owner.i = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 0, i32 5
  %62 = ptrtoint ptr %owner.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %owner.i, align 8
  %owner60.i = getelementptr inbounds %struct.afs_vnode, ptr %29, i32 0, i32 3, i32 5
  %64 = ptrtoint ptr %owner60.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %owner60.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %63, i64 %65)
  %cmp61.not.i = icmp eq i64 %63, %65
  br i1 %cmp61.not.i, label %if.end58.i.if.end66.i_crit_edge, label %if.then62.i

if.end58.i.if.end66.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.i

if.then62.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #15
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 2
  %conv.i = trunc i64 %63 to i32
  %call65.i = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %conv.i) #13
  %66 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call65.i, ptr %i_uid.i, align 4
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then62.i, %if.end58.i.if.end66.i_crit_edge
  %group.i = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 0, i32 6
  %67 = ptrtoint ptr %group.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %group.i, align 8
  %group68.i = getelementptr inbounds %struct.afs_vnode, ptr %29, i32 0, i32 3, i32 6
  %69 = ptrtoint ptr %group68.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %group68.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %68, i64 %70)
  %cmp69.not.i = icmp eq i64 %68, %70
  br i1 %cmp69.not.i, label %if.end66.i.if.end77.i_crit_edge, label %if.then71.i

if.end66.i.if.end77.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77.i

if.then71.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #15
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 3
  %conv74.i = trunc i64 %68 to i32
  %call75.i = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %conv74.i) #13
  %71 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call75.i, ptr %i_gid.i, align 8
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then71.i, %if.end66.i.if.end77.i_crit_edge
  %mode78.i = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 0, i32 9
  %72 = ptrtoint ptr %mode78.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %mode78.i, align 8
  %mode81.i = getelementptr inbounds %struct.afs_vnode, ptr %29, i32 0, i32 3, i32 9
  %74 = ptrtoint ptr %mode81.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %mode81.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %73, i16 %75)
  %cmp83.not.i = icmp eq i16 %73, %75
  br i1 %cmp83.not.i, label %if.end77.i.if.end104.i_crit_edge, label %if.then85.i

if.end77.i.if.end104.i_crit_edge:                 ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end104.i

if.then85.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %29, align 8
  %78 = and i16 %77, -4096
  %79 = and i16 %73, 4095
  %or266.i = or i16 %78, %79
  store volatile i16 %or266.i, ptr %29, align 8
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then85.i, %if.end77.i.if.end104.i_crit_edge
  %mtime_client.i = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 0, i32 2
  %80 = call ptr @memcpy(ptr %t.i, ptr %mtime_client.i, i32 16)
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 16
  %81 = call ptr @memmove(ptr %i_mtime.i, ptr %mtime_client.i, i32 16)
  %82 = ptrtoint ptr %op_unlinked to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load105.i = load i8, ptr %op_unlinked, align 1
  %83 = and i8 %bf.load105.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %bf.cast108.not.i = icmp eq i8 %83, 0
  br i1 %bf.cast108.not.i, label %if.end104.i.if.end110.i_crit_edge, label %if.then109.i

if.end104.i.if.end110.i_crit_edge:                ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end110.i

if.then109.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #15
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 17
  %ctime.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 11
  %84 = call ptr @memcpy(ptr %i_ctime.i, ptr %ctime.i, i32 16)
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.then109.i, %if.end104.i.if.end110.i_crit_edge
  %data_version.i = getelementptr inbounds %struct.afs_vnode, ptr %29, i32 0, i32 3, i32 1
  %85 = ptrtoint ptr %data_version.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %data_version.i, align 8
  %data_version112.i = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 0, i32 1
  %87 = ptrtoint ptr %data_version112.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %data_version112.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %86, i64 %88)
  %cmp113.not.i = icmp ne i64 %86, %88
  %89 = call ptr @memcpy(ptr %status34.i, ptr %scb, i32 104)
  %dv_before.i = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 3
  %90 = ptrtoint ptr %dv_before.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %dv_before.i, align 8
  %dv_delta.i = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 5
  %92 = ptrtoint ptr %dv_delta.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %dv_delta.i, align 4
  %conv118.i = zext i8 %93 to i64
  %add.i = add i64 %91, %conv118.i
  %94 = ptrtoint ptr %data_version112.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %data_version112.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %95)
  %cmp120.not.i = icmp eq i64 %add.i, %95
  br i1 %cmp120.not.i, label %if.else164.i, label %if.then122.i

if.then122.i:                                     ; preds = %if.end110.i
  %96 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %flags.i, align 4
  %and1.i267.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i267.i)
  %tobool125.not.i = icmp eq i32 %and1.i267.i, 0
  br i1 %tobool125.not.i, label %if.then122.i.if.end149.i_crit_edge, label %do.end129.i

if.then122.i.if.end149.i_crit_edge:               ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end149.i

do.end129.i:                                      ; preds = %if.then122.i
  %fid131.i = getelementptr inbounds %struct.afs_vnode, ptr %29, i32 0, i32 2
  %98 = ptrtoint ptr %fid131.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %fid131.i, align 8
  %vnode134.i = getelementptr inbounds %struct.afs_vnode, ptr %29, i32 0, i32 2, i32 1
  %100 = ptrtoint ptr %vnode134.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %vnode134.i, align 8
  %type140.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %102 = ptrtoint ptr %type140.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %type140.i, align 8
  %tobool141.not.i = icmp eq ptr %103, null
  br i1 %tobool141.not.i, label %do.end129.i.cond.end146.i_crit_edge, label %cond.true142.i

do.end129.i.cond.end146.i_crit_edge:              ; preds = %do.end129.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end146.i

cond.true142.i:                                   ; preds = %do.end129.i
  call void @__sanitizer_cov_trace_pc() #15
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  br label %cond.end146.i

cond.end146.i:                                    ; preds = %cond.true142.i, %do.end129.i.cond.end146.i_crit_edge
  %cond147.i = phi ptr [ %105, %cond.true142.i ], [ @.str.81, %do.end129.i.cond.end146.i_crit_edge ]
  %debug_id.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 14
  %106 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %debug_id.i, align 4
  %call148.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i64 noundef %99, i64 noundef %101, i64 noundef %add.i, i64 noundef %95, ptr noundef %cond147.i, i32 noundef %107) #16
  br label %if.end149.i

if.end149.i:                                      ; preds = %cond.end146.i, %if.then122.i.if.end149.i_crit_edge
  %108 = ptrtoint ptr %data_version112.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %data_version112.i, align 8
  %invalid_before.i = getelementptr inbounds %struct.afs_vnode, ptr %29, i32 0, i32 4
  %110 = ptrtoint ptr %invalid_before.i to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %invalid_before.i, align 8
  %111 = ptrtoint ptr %type35.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %type35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %112)
  %cmp153.i = icmp eq i32 %112, 2
  br i1 %cmp153.i, label %if.then155.i, label %if.else.i

if.then155.i:                                     ; preds = %if.end149.i
  %call157.i = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157.i)
  %tobool158.not.i = icmp eq i32 %call157.i, 0
  br i1 %tobool158.not.i, label %if.then155.i.if.end176.i_crit_edge, label %if.then159.i

if.then155.i.if.end176.i_crit_edge:               ; preds = %if.then155.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end176.i

if.then159.i:                                     ; preds = %if.then155.i
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 8
  %113 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %114, i32 0, i32 33
  %115 = ptrtoint ptr %s_fs_info.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %s_fs_info.i.i.i.i.i, align 16
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_net_id to i32))
  %119 = load i32, ptr @afs_net_id, align 4
  %120 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i.i.i.i.i.i.i.i.i.i.i = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i.i.i = add i32 %123, 1
  store volatile i32 %add.i.i.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !214
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i.i.i.i.i.i, label %if.then159.i.rcu_read_lock.exit.i.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i.i.i

if.then159.i.rcu_read_lock.exit.i.i.i.i.i.i_crit_edge: ; preds = %if.then159.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i.i:                      ; preds = %if.then159.i
  %call1.i.i.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.i.i:                     ; preds = %land.lhs.true.i.i.i.i.i.i.i
  %.b4.i.i.i.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i.i.i.i, label %land.lhs.true2.i.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i:                            ; preds = %land.lhs.true2.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 696, ptr noundef nonnull @.str.91) #13
  br label %rcu_read_lock.exit.i.i.i.i.i.i

rcu_read_lock.exit.i.i.i.i.i.i:                   ; preds = %if.then.i.i.i.i.i.i.i, %land.lhs.true2.i.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i.i_crit_edge, %if.then159.i.rcu_read_lock.exit.i.i.i.i.i.i_crit_edge
  %gen.i.i.i.i.i.i = getelementptr inbounds %struct.net, ptr %118, i32 0, i32 43
  %124 = ptrtoint ptr %gen.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile ptr, ptr %gen.i.i.i.i.i.i, align 128
  %call.i.i.i.i.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i, label %rcu_read_lock.exit.i.i.i.i.i.i.do.end7.i.i.i.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.i.i.i.do.end7.i.i.i.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i:                        ; preds = %rcu_read_lock.exit.i.i.i.i.i.i
  %call2.i.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i.i.i)
  %tobool3.not.i.i.i.i.i.i = icmp eq i32 %call2.i.i.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i.do.end7.i.i.i.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i.do.end7.i.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7.i.i.i.i.i.i

land.lhs.true4.i.i.i.i.i.i:                       ; preds = %land.lhs.true.i.i.i.i.i.i
  %.b9.i.i.i.i.i.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i.i.i.i.i.i, label %land.lhs.true4.i.i.i.i.i.i.do.end7.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i

land.lhs.true4.i.i.i.i.i.i.do.end7.i.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %land.lhs.true4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.88, i32 noundef 45, ptr noundef nonnull @.str.89) #13
  br label %do.end7.i.i.i.i.i.i

do.end7.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i.i, %land.lhs.true4.i.i.i.i.i.i.do.end7.i.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.i.do.end7.i.i.i.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.i.i.i.do.end7.i.i.i.i.i.i_crit_edge
  %arrayidx.i.i.i.i.i.i = getelementptr [0 x ptr], ptr %125, i32 0, i32 %119
  %126 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.i.i.i.i.i.i, align 4
  %call.i10.i.i.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i10.i.i.i.i.i.i, label %do.end7.i.i.i.i.i.i.afs_v2net.exit.i_crit_edge, label %land.lhs.true.i13.i.i.i.i.i.i

do.end7.i.i.i.i.i.i.afs_v2net.exit.i_crit_edge:   ; preds = %do.end7.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_v2net.exit.i

land.lhs.true.i13.i.i.i.i.i.i:                    ; preds = %do.end7.i.i.i.i.i.i
  %call1.i11.i.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i.i.i.i.i)
  %tobool.not.i12.i.i.i.i.i.i = icmp eq i32 %call1.i11.i.i.i.i.i.i, 0
  br i1 %tobool.not.i12.i.i.i.i.i.i, label %land.lhs.true.i13.i.i.i.i.i.i.afs_v2net.exit.i_crit_edge, label %land.lhs.true2.i15.i.i.i.i.i.i

land.lhs.true.i13.i.i.i.i.i.i.afs_v2net.exit.i_crit_edge: ; preds = %land.lhs.true.i13.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_v2net.exit.i

land.lhs.true2.i15.i.i.i.i.i.i:                   ; preds = %land.lhs.true.i13.i.i.i.i.i.i
  %.b4.i14.i.i.i.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i.i.i.i.i, label %land.lhs.true2.i15.i.i.i.i.i.i.afs_v2net.exit.i_crit_edge, label %if.then.i16.i.i.i.i.i.i

land.lhs.true2.i15.i.i.i.i.i.i.afs_v2net.exit.i_crit_edge: ; preds = %land.lhs.true2.i15.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_v2net.exit.i

if.then.i16.i.i.i.i.i.i:                          ; preds = %land.lhs.true2.i15.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 724, ptr noundef nonnull @.str.92) #13
  br label %afs_v2net.exit.i

afs_v2net.exit.i:                                 ; preds = %if.then.i16.i.i.i.i.i.i, %land.lhs.true2.i15.i.i.i.i.i.i.afs_v2net.exit.i_crit_edge, %land.lhs.true.i13.i.i.i.i.i.i.afs_v2net.exit.i_crit_edge, %do.end7.i.i.i.i.i.i.afs_v2net.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !215
  %128 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i.i.i.i.i17.i.i.i.i.i.i = and i32 %128, -16384
  %129 = inttoptr i32 %and.i.i.i.i.i17.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i18.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i.i.i = add i32 %131, -1
  store volatile i32 %sub.i.i.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i18.i.i.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %n_inval.i = getelementptr inbounds %struct.afs_net, ptr %127, i32 0, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_inval.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %n_inval.i, i32 1, i32 3, i32 1) #13
  %132 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_inval.i, ptr %n_inval.i, i32 1, ptr elementtype(i32) %n_inval.i) #13, !srcloc !216
  br i1 %cmp113.not.i, label %if.then181.critedge272.i, label %afs_v2net.exit.i.afs_apply_status.exit_crit_edge

afs_v2net.exit.i.afs_apply_status.exit_crit_edge: ; preds = %afs_v2net.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_apply_status.exit

if.else.i:                                        ; preds = %if.end149.i
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags.i) #13
  br i1 %cmp113.not.i, label %if.then181.critedge275.i, label %if.else.i.afs_apply_status.exit_crit_edge

if.else.i.afs_apply_status.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_apply_status.exit

if.else164.i:                                     ; preds = %if.end110.i
  %133 = ptrtoint ptr %type35.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %type35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %134)
  %cmp167.i = icmp eq i32 %134, 2
  %135 = and i8 %bf.load30, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %extract.t.i = icmp ne i8 %135, 0
  br i1 %cmp167.i, label %if.then169.i, label %if.else164.i.if.end176.i_crit_edge

if.else164.i.if.end176.i_crit_edge:               ; preds = %if.else164.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end176.i

if.then169.i:                                     ; preds = %if.else164.i
  %136 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %flags.i, align 4
  %138 = and i32 %137, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool172.not.i = icmp eq i32 %138, 0
  %spec.select.i = select i1 %tobool172.not.i, i1 %cmp113.not.i, i1 false
  br i1 %spec.select.i, label %if.then181.critedge.i, label %if.then169.i.afs_apply_status.exit_crit_edge

if.then169.i.afs_apply_status.exit_crit_edge:     ; preds = %if.then169.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_apply_status.exit

if.end176.i:                                      ; preds = %if.else164.i.if.end176.i_crit_edge, %if.then155.i.if.end176.i_crit_edge
  %change_size.0.off0.i = phi i1 [ %extract.t.i, %if.else164.i.if.end176.i_crit_edge ], [ true, %if.then155.i.if.end176.i_crit_edge ]
  br i1 %cmp113.not.i, label %if.then178.i, label %if.end176.i.afs_apply_status.exit_crit_edge

if.end176.i.afs_apply_status.exit_crit_edge:      ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_apply_status.exit

if.then178.i:                                     ; preds = %if.end176.i
  %139 = ptrtoint ptr %data_version112.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %data_version112.i, align 8
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 38
  %call.i.i.i270.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %i_version.i.i, i64 noundef %140) #13
  br i1 %change_size.0.off0.i, label %if.then178.i.if.then181.i_crit_edge, label %if.then178.i.afs_apply_status.exit_crit_edge

if.then178.i.afs_apply_status.exit_crit_edge:     ; preds = %if.then178.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_apply_status.exit

if.then178.i.if.then181.i_crit_edge:              ; preds = %if.then178.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then181.i

if.then181.critedge.i:                            ; preds = %if.then169.i
  call void @__sanitizer_cov_trace_pc() #15
  %i_version.i.c.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 38
  %call.i.i.i270.c.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.c.i, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %i_version.i.c.i, i64 noundef %add.i) #13
  br label %if.then181.i

if.then181.critedge272.i:                         ; preds = %afs_v2net.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %141 = ptrtoint ptr %data_version112.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %data_version112.i, align 8
  %i_version.i.c273.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 38
  %call.i.i.i270.c274.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.c273.i, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %i_version.i.c273.i, i64 noundef %142) #13
  br label %if.then181.i

if.then181.critedge275.i:                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %143 = ptrtoint ptr %data_version112.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %data_version112.i, align 8
  %i_version.i.c276.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 38
  %call.i.i.i270.c277.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.c276.i, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %i_version.i.c276.i, i64 noundef %144) #13
  br label %if.then181.i

if.then181.i:                                     ; preds = %if.then181.critedge275.i, %if.then181.critedge272.i, %if.then181.critedge.i, %if.then178.i.if.then181.i_crit_edge
  %145 = ptrtoint ptr %scb to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %scb, align 8
  tail call fastcc void @i_size_write(ptr noundef %29, i64 noundef %146) #13
  %add.i.i = add i64 %146, 1023
  %147 = lshr i64 %add.i.i, 9
  %shl.i.i = and i64 %147, 36028797018963966
  %i_blocks.i.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 22
  %148 = ptrtoint ptr %i_blocks.i.i to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %shl.i.i, ptr %i_blocks.i.i, align 8
  %i_ctime182.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 17
  %149 = call ptr @memcpy(ptr %i_ctime182.i, ptr %t.i, i32 16)
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 15
  %150 = call ptr @memcpy(ptr %i_atime.i, ptr %t.i, i32 16)
  br label %afs_apply_status.exit

afs_apply_status.exit:                            ; preds = %if.then181.i, %if.then178.i.afs_apply_status.exit_crit_edge, %if.end176.i.afs_apply_status.exit_crit_edge, %if.then169.i.afs_apply_status.exit_crit_edge, %if.else.i.afs_apply_status.exit_crit_edge, %afs_v2net.exit.i.afs_apply_status.exit_crit_edge, %do.end39.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %t.i)
  %have_cb = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 3
  %151 = ptrtoint ptr %have_cb to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %have_cb, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool26.not = icmp eq i8 %152, 0
  br i1 %tobool26.not, label %afs_apply_status.exit.out_crit_edge, label %if.then27

afs_apply_status.exit.out_crit_edge:              ; preds = %afs_apply_status.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then27:                                        ; preds = %afs_apply_status.exit
  %153 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %vp, align 8
  %cb_break_before.i = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 4
  %155 = ptrtoint ptr %cb_break_before.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %cb_break_before.i, align 8
  %cb_break1.i.i = getelementptr inbounds %struct.afs_vnode, ptr %154, i32 0, i32 28
  %157 = ptrtoint ptr %cb_break1.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %cb_break1.i.i, align 4
  %volume.i.i = getelementptr inbounds %struct.afs_vnode, ptr %154, i32 0, i32 1
  %159 = ptrtoint ptr %volume.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %volume.i.i, align 8
  %cb_v_break.i.i = getelementptr inbounds %struct.afs_volume, ptr %160, i32 0, i32 12
  %161 = ptrtoint ptr %cb_v_break.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %cb_v_break.i.i, align 8
  %add.i.i83 = add i32 %162, %158
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i83, i32 %156)
  %cmp.i.not.i = icmp eq i32 %add.i.i83, %156
  br i1 %cmp.i.not.i, label %if.then.i, label %if.then27.out_crit_edge

if.then27.out_crit_edge:                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  %callback.i = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 1
  %163 = ptrtoint ptr %callback.i to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %callback.i, align 8
  %cb_expires_at.i = getelementptr inbounds %struct.afs_vnode, ptr %154, i32 0, i32 30
  %165 = ptrtoint ptr %cb_expires_at.i to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %164, ptr %cb_expires_at.i, align 8
  %server.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 20
  %166 = ptrtoint ptr %server.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %server.i, align 8
  %cb_server.i = getelementptr inbounds %struct.afs_vnode, ptr %154, i32 0, i32 23
  %168 = ptrtoint ptr %cb_server.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %167, ptr %cb_server.i, align 8
  %flags.i84 = getelementptr inbounds %struct.afs_vnode, ptr %154, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i84) #13
  br label %out

if.else29:                                        ; preds = %if.else
  %169 = and i8 %bf.load30, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %bf.cast33.not = icmp eq i8 %169, 0
  br i1 %bf.cast33.not, label %if.else29.out_crit_edge, label %land.lhs.true34

if.else29.out_crit_edge:                          ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true34:                                  ; preds = %if.else29
  %flags35 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %170 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %flags35, align 8
  %and36 = and i32 %171, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.then38, label %land.lhs.true34.out_crit_edge

land.lhs.true34.out_crit_edge:                    ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then38:                                        ; preds = %land.lhs.true34
  tail call void @drop_nlink(ptr noundef %1) #13
  %172 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 12
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %cmp41 = icmp eq i32 %174, 0
  br i1 %cmp41, label %if.then42, label %if.then38.out_crit_edge

if.then38.out_crit_edge:                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then42:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  %flags43 = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags43) #13
  tail call void @__afs_break_callback(ptr noundef %1, i32 noundef 3) #13
  br label %out

out:                                              ; preds = %if.then42, %if.then38.out_crit_edge, %land.lhs.true34.out_crit_edge, %if.else29.out_crit_edge, %if.then.i, %if.then27.out_crit_edge, %afs_apply_status.exit.out_crit_edge, %lor.lhs.false.out_crit_edge, %land.lhs.true.out_crit_edge, %if.then11, %if.then9.out_crit_edge
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %10) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !217
  %175 = ptrtoint ptr %cb_lock to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %cb_lock, align 4
  %inc.i.i.i = add i32 %176, 1
  store i32 %inc.i.i.i, ptr %cb_lock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  %have_status50 = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 2
  %177 = ptrtoint ptr %have_status50 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %have_status50, align 8, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool51.not = icmp eq i8 %178, 0
  br i1 %tobool51.not, label %out.if.end54_crit_edge, label %if.then52

out.if.end54_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then52:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  %key = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %179 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %key, align 4
  %cb_break_before = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 4
  %181 = ptrtoint ptr %cb_break_before to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %cb_break_before, align 8
  tail call void @afs_cache_permit(ptr noundef %1, ptr noundef %180, i32 noundef %182, ptr noundef %scb) #13
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %out.if.end54_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__afs_break_callback(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_cache_permit(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fs_fetch_status(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @yfs_fs_fetch_status(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_fetch_status_success(ptr noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %arrayidx = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 8
  %i_state = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 24
  %5 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_state, align 8
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @afs_inode_init_from_status(ptr noundef %op, ptr noundef %arrayidx, ptr noundef %4)
  %conv = trunc i32 %call to i16
  %error = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %7 = ptrtoint ptr %error to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %error, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then3, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %key = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %8 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %key, align 4
  %cb_break_before = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 %2, i32 4
  %10 = ptrtoint ptr %cb_break_before to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cb_break_before, align 8
  %scb = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 %2, i32 2
  tail call void @afs_cache_permit(ptr noundef %4, ptr noundef %9, i32 noundef %11, ptr noundef %scb) #13
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @afs_vnode_commit_status(ptr noundef %op, ptr noundef %arrayidx)
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3, %if.then.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_check_for_remote_deletion(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_fetch_status(ptr noundef %vnode, ptr noundef %key, i1 zeroext %is_new, ptr noundef writeonly %_caller_access) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !210

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 1
  %5 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %volume, align 8
  %name = getelementptr inbounds %struct.afs_volume, ptr %6, i32 0, i32 17
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2
  %7 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %fid, align 8
  %vnode6 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %vnode6 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %vnode6, align 8
  %unique = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %unique, align 4
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 13
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.4, ptr noundef %name, i64 noundef %8, i64 noundef %10, i32 noundef %12, i32 noundef %14) #16
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %volume11 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 1
  %15 = ptrtoint ptr %volume11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %volume11, align 8
  %call12 = tail call ptr @afs_alloc_operation(ptr noundef %key, ptr noundef %16) #13
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end16:                                         ; preds = %do.end10
  %file.i = getelementptr inbounds %struct.afs_operation, ptr %call12, i32 0, i32 5
  %18 = ptrtoint ptr %file.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %vnode, ptr %file.i, align 8
  %need_io_lock.i = getelementptr inbounds %struct.afs_operation, ptr %call12, i32 0, i32 5, i32 0, i32 6
  %19 = ptrtoint ptr %need_io_lock.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %need_io_lock.i, align 1
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %need_io_lock.i, align 1
  %nr_files = getelementptr inbounds %struct.afs_operation, ptr %call12, i32 0, i32 12
  %20 = ptrtoint ptr %nr_files to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %nr_files, align 8
  %ops = getelementptr inbounds %struct.afs_operation, ptr %call12, i32 0, i32 3
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @afs_fetch_status_operation, ptr %ops, align 4
  %call17 = tail call zeroext i1 @afs_begin_vnode_operation(ptr noundef %call12) #13
  tail call void @afs_wait_for_operation(ptr noundef %call12) #13
  %tobool18.not = icmp eq ptr %_caller_access, null
  br i1 %tobool18.not, label %if.end16.if.end20_crit_edge, label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %caller_access = getelementptr inbounds %struct.afs_operation, ptr %call12, i32 0, i32 5, i32 0, i32 2, i32 0, i32 7
  %22 = ptrtoint ptr %caller_access to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %caller_access, align 8
  %24 = ptrtoint ptr %_caller_access to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %_caller_access, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  %call21 = tail call i32 @afs_put_operation(ptr noundef %call12) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then14
  %retval.0 = phi i32 [ %17, %if.then14 ], [ %call21, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_alloc_operation(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @afs_begin_vnode_operation(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_wait_for_operation(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_put_operation(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @afs_ilookup5_test_by_fid(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %opaque) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vnode1 = getelementptr inbounds %struct.afs_fid, ptr %opaque, i32 0, i32 1
  %0 = ptrtoint ptr %vnode1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %vnode1, align 8
  %vnode3 = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %vnode3 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %vnode3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp eq i64 %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %vnode_hi = getelementptr inbounds %struct.afs_fid, ptr %opaque, i32 0, i32 2
  %4 = ptrtoint ptr %vnode_hi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vnode_hi, align 8
  %vnode_hi5 = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %vnode_hi5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vnode_hi5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp6 = icmp eq i32 %5, %7
  br i1 %cmp6, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %unique = getelementptr inbounds %struct.afs_fid, ptr %opaque, i32 0, i32 3
  %8 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %unique, align 4
  %unique8 = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %unique8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %unique8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp9 = icmp eq i32 %9, %11
  %phi.cast = zext i1 %cmp9 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %12 = phi i32 [ 0, %land.lhs.true.land.end_crit_edge ], [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_iget(ptr nocapture noundef readonly %op, ptr noundef %vp) local_unnamed_addr #0 align 64 {
entry:
  %key.i = alloca %struct.anon.171, align 4
  %aux.i = alloca %struct.afs_vnode_cache_aux, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %4 = load i32, ptr @afs_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !210

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 1
  %9 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %fid, align 8
  %vnode6 = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %vnode6 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %vnode6, align 8
  %unique = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %unique, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %comm, ptr noundef nonnull @.str.6, i64 noundef %10, i64 noundef %12, i32 noundef %14) #16
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %vnode12 = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %vnode12 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %vnode12, align 8
  %conv = trunc i64 %16 to i32
  %call13 = tail call ptr @iget5_locked(ptr noundef %3, i32 noundef %conv, ptr noundef nonnull @afs_iget5_test, ptr noundef nonnull @afs_iget5_set, ptr noundef %vp) #13
  %tobool14.not = icmp eq ptr %call13, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %17 = load i32, ptr @afs_debug, align 4
  br i1 %tobool14.not, label %do.body16, label %if.end39

do.body16:                                        ; preds = %do.end10
  %and17 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body16.cleanup_crit_edge, label %do.end28, !prof !210

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end28:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #15
  %18 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i170 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i170 to ptr
  %task31 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task31, align 8
  %comm32 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 101
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %comm32, ptr noundef nonnull @.str.6) #16
  br label %cleanup

if.end39:                                         ; preds = %do.end10
  %and42 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end39.do.end68_crit_edge, label %do.end53, !prof !210

if.end39.do.end68_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end68

do.end53:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %22 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i171 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i171 to ptr
  %task56 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task56 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task56, align 8
  %comm57 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 101
  %fid59 = getelementptr inbounds %struct.afs_vnode, ptr %call13, i32 0, i32 2
  %26 = ptrtoint ptr %fid59 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %fid59, align 8
  %vnode62 = getelementptr inbounds %struct.afs_vnode, ptr %call13, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %vnode62 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %vnode62, align 8
  %unique64 = getelementptr inbounds %struct.afs_vnode, ptr %call13, i32 0, i32 2, i32 3
  %30 = ptrtoint ptr %unique64 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %unique64, align 4
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %comm57, ptr noundef nonnull %call13, i64 noundef %27, i64 noundef %29, i32 noundef %31) #16
  br label %do.end68

do.end68:                                         ; preds = %do.end53, %if.end39.do.end68_crit_edge
  %i_state = getelementptr inbounds %struct.inode, ptr %call13, i32 0, i32 24
  %32 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_state, align 8
  %and69 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %do.body72, label %if.end94

do.body72:                                        ; preds = %do.end68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %34 = load i32, ptr @afs_debug, align 4
  %and73 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %do.body72.cleanup_crit_edge, label %do.end84, !prof !210

do.body72.cleanup_crit_edge:                      ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end84:                                         ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #15
  %35 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i172 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i172 to ptr
  %task87 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task87 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task87, align 8
  %comm88 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 101
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %comm88, ptr noundef nonnull @.str.6, ptr noundef nonnull %call13) #16
  br label %cleanup

if.end94:                                         ; preds = %do.end68
  %call95 = tail call fastcc i32 @afs_inode_init_from_status(ptr noundef %op, ptr noundef %vp, ptr noundef nonnull %call13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp = icmp slt i32 %call95, 0
  br i1 %cmp, label %bad_inode, label %if.end98

if.end98:                                         ; preds = %if.end94
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %aux.i) #13
  %type.i = getelementptr inbounds %struct.afs_vnode, ptr %call13, i32 0, i32 3, i32 10
  %39 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.not.i = icmp eq i32 %40, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.end98.afs_get_inode_cache.exit_crit_edge

if.end98.afs_get_inode_cache.exit_crit_edge:      ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_get_inode_cache.exit

if.end.i:                                         ; preds = %if.end98
  %41 = getelementptr inbounds %struct.anon.171, ptr %key.i, i32 0, i32 2, i32 1
  %42 = getelementptr inbounds %struct.anon.171, ptr %key.i, i32 0, i32 2
  %43 = getelementptr inbounds %struct.anon.171, ptr %key.i, i32 0, i32 1
  %vnode1.i = getelementptr inbounds %struct.afs_vnode, ptr %call13, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %vnode1.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %vnode1.i, align 8
  %conv.i = trunc i64 %45 to i32
  %46 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv.i, ptr %key.i, align 4
  %unique.i = getelementptr inbounds %struct.afs_vnode, ptr %call13, i32 0, i32 2, i32 3
  %47 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %unique.i, align 4
  %49 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %43, align 4
  %shr.i = lshr i64 %45, 32
  %conv6.i = trunc i64 %shr.i to i32
  %50 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv6.i, ptr %42, align 4
  %vnode_hi.i = getelementptr inbounds %struct.afs_vnode, ptr %call13, i32 0, i32 2, i32 2
  %51 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vnode_hi.i, align 8
  %53 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %41, align 4
  %data_version.i.i = getelementptr inbounds %struct.afs_vnode, ptr %call13, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %data_version.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %data_version.i.i, align 8
  %56 = ptrtoint ptr %aux.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %aux.i, align 8
  %volume.i = getelementptr inbounds %struct.afs_vnode, ptr %call13, i32 0, i32 1
  %57 = ptrtoint ptr %volume.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %volume.i, align 8
  %cache10.i = getelementptr inbounds %struct.afs_volume, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %cache10.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cache10.i, align 8
  %tobool.not.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i.i, label %if.end.i.afs_get_inode_cache.exit_crit_edge, label %if.end.i.i

if.end.i.afs_get_inode_cache.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_get_inode_cache.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %status.i = getelementptr inbounds %struct.afs_vnode, ptr %call13, i32 0, i32 3
  %61 = ptrtoint ptr %status.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %status.i, align 8
  %call.i.i = call ptr @__fscache_acquire_cookie(ptr noundef nonnull %60, i8 noundef zeroext 0, ptr noundef nonnull %key.i, i32 noundef 16, ptr noundef nonnull %aux.i, i32 noundef 8, i64 noundef %62) #13
  br label %afs_get_inode_cache.exit

afs_get_inode_cache.exit:                         ; preds = %if.end.i.i, %if.end.i.afs_get_inode_cache.exit_crit_edge, %if.end98.afs_get_inode_cache.exit_crit_edge
  %retval.0.i.sink.i = phi ptr [ null, %if.end98.afs_get_inode_cache.exit_crit_edge ], [ %call.i.i, %if.end.i.i ], [ null, %if.end.i.afs_get_inode_cache.exit_crit_edge ]
  %cache17.i = getelementptr inbounds %struct.afs_vnode, ptr %call13, i32 0, i32 5
  %63 = ptrtoint ptr %cache17.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %retval.0.i.sink.i, ptr %cache17.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %aux.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i) #13
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %call13, i32 0, i32 13
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #13
  call void @unlock_new_inode(ptr noundef nonnull %call13) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %64 = load i32, ptr @afs_debug, align 4
  %and100 = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %afs_get_inode_cache.exit.cleanup_crit_edge, label %do.end111, !prof !210

afs_get_inode_cache.exit.cleanup_crit_edge:       ; preds = %afs_get_inode_cache.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end111:                                        ; preds = %afs_get_inode_cache.exit
  call void @__sanitizer_cov_trace_pc() #15
  %65 = call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i173 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i173 to ptr
  %task114 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task114 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task114, align 8
  %comm115 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 101
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %comm115, ptr noundef nonnull @.str.6, ptr noundef nonnull %call13) #16
  br label %cleanup

bad_inode:                                        ; preds = %if.end94
  tail call void @iget_failed(ptr noundef nonnull %call13) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %69 = load i32, ptr @afs_debug, align 4
  %and122 = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %bad_inode.do.end142_crit_edge, label %do.end133, !prof !210

bad_inode.do.end142_crit_edge:                    ; preds = %bad_inode
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end142

do.end133:                                        ; preds = %bad_inode
  call void @__sanitizer_cov_trace_pc() #15
  %70 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i174 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i174 to ptr
  %task136 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %task136 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task136, align 8
  %comm137 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 101
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %comm137, ptr noundef nonnull @.str.6, i32 noundef %call95) #16
  br label %do.end142

do.end142:                                        ; preds = %do.end133, %bad_inode.do.end142_crit_edge
  %74 = inttoptr i32 %call95 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end142, %do.end111, %afs_get_inode_cache.exit.cleanup_crit_edge, %do.end84, %do.body72.cleanup_crit_edge, %do.end28, %do.body16.cleanup_crit_edge
  %retval.0 = phi ptr [ %74, %do.end142 ], [ %call13, %do.end84 ], [ %call13, %do.body72.cleanup_crit_edge ], [ %call13, %do.end111 ], [ %call13, %afs_get_inode_cache.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end28 ], [ inttoptr (i32 -12 to ptr), %do.body16.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget5_locked(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @afs_iget5_test(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %opaque) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vnode1.i = getelementptr inbounds %struct.afs_vnode_param, ptr %opaque, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %vnode1.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %vnode1.i, align 8
  %vnode3.i = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %vnode3.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %vnode3.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp.i = icmp eq i64 %1, %3
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.afs_ilookup5_test_by_fid.exit_crit_edge

entry.afs_ilookup5_test_by_fid.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_ilookup5_test_by_fid.exit

land.lhs.true.i:                                  ; preds = %entry
  %vnode_hi.i = getelementptr inbounds %struct.afs_vnode_param, ptr %opaque, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vnode_hi.i, align 8
  %vnode_hi5.i = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %vnode_hi5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vnode_hi5.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp6.i = icmp eq i32 %5, %7
  br i1 %cmp6.i, label %land.rhs.i, label %land.lhs.true.i.afs_ilookup5_test_by_fid.exit_crit_edge

land.lhs.true.i.afs_ilookup5_test_by_fid.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_ilookup5_test_by_fid.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %unique.i = getelementptr inbounds %struct.afs_vnode_param, ptr %opaque, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %unique.i, align 4
  %unique8.i = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %unique8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %unique8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp9.i = icmp eq i32 %9, %11
  %phi.cast.i = zext i1 %cmp9.i to i32
  br label %afs_ilookup5_test_by_fid.exit

afs_ilookup5_test_by_fid.exit:                    ; preds = %land.rhs.i, %land.lhs.true.i.afs_ilookup5_test_by_fid.exit_crit_edge, %entry.afs_ilookup5_test_by_fid.exit_crit_edge
  %12 = phi i32 [ 0, %land.lhs.true.i.afs_ilookup5_test_by_fid.exit_crit_edge ], [ 0, %entry.afs_ilookup5_test_by_fid.exit_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @afs_iget5_set(ptr nocapture noundef %inode, ptr nocapture noundef readonly %opaque) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %volume = getelementptr inbounds %struct.afs_super_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %volume, align 4
  %volume2 = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 1
  %6 = ptrtoint ptr %volume2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %volume2, align 8
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2
  %fid3 = getelementptr inbounds %struct.afs_vnode_param, ptr %opaque, i32 0, i32 1
  %7 = call ptr @memcpy(ptr %fid, ptr %fid3, i32 24)
  %vnode5 = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %vnode5 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %vnode5, align 8
  %conv = trunc i64 %9 to i32
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %10 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %i_ino, align 8
  %unique = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %unique, align 4
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %13 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %i_generation, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @afs_inode_init_from_status(ptr nocapture noundef readonly %op, ptr nocapture noundef readonly %vp, ptr noundef %vnode) unnamed_addr #0 align 64 {
entry:
  %t = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %scb = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %t)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body14_crit_edge, label %do.end, !prof !210

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body14

do.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 1
  %5 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %fid, align 8
  %vnode7 = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %vnode7 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %vnode7, align 8
  %unique = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %unique, align 4
  %type = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type, align 8
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi ptr [ %14, %cond.true ], [ @.str.81, %do.end.cond.end_crit_edge ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %comm, ptr noundef nonnull @.str.93, i64 noundef %6, i64 noundef %8, i32 noundef %10, ptr noundef %cond) #16
  br label %do.body14

do.body14:                                        ; preds = %cond.end, %entry.do.body14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %15 = load i32, ptr @afs_debug, align 4
  %and15 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body14.do.end36_crit_edge, label %do.end26, !prof !210

do.body14.do.end36_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end36

do.end26:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  %16 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i181 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i181 to ptr
  %task29 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task29, align 8
  %comm30 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 101
  %type32 = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 0, i32 10
  %20 = ptrtoint ptr %type32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type32, align 4
  %nlink = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 0, i32 11
  %22 = ptrtoint ptr %nlink to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nlink, align 8
  %24 = ptrtoint ptr %scb to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %scb, align 8
  %data_version = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 0, i32 1
  %26 = ptrtoint ptr %data_version to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %data_version, align 8
  %mode = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 0, i32 9
  %28 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mode, align 8
  %conv = zext i16 %29 to i32
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %comm30, i32 noundef %21, i32 noundef %23, i64 noundef %25, i64 noundef %27, i32 noundef %conv) #16
  br label %do.end36

do.end36:                                         ; preds = %do.end26, %do.body14.do.end36_crit_edge
  %cb_lock = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 29
  %lock.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 29, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #13
  %30 = ptrtoint ptr %cb_lock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cb_lock, align 4
  %inc.i.i.i.i = add i32 %31, 1
  store i32 %inc.i.i.i.i, ptr %cb_lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !211
  %dep_map.i.i.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 29, i32 0, i32 0, i32 1
  %32 = tail call ptr @llvm.returnaddress(i32 0) #13
  %33 = ptrtoint ptr %32 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %33) #13
  %cb_v_break = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 15
  %34 = ptrtoint ptr %cb_v_break to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cb_v_break, align 8
  %cb_v_break37 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 27
  %36 = ptrtoint ptr %cb_v_break37 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %cb_v_break37, align 8
  %cb_s_break = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 16
  %37 = ptrtoint ptr %cb_s_break to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cb_s_break, align 4
  %cb_s_break38 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 26
  %39 = ptrtoint ptr %cb_s_break38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %cb_s_break38, align 4
  %status39 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 3
  %40 = call ptr @memcpy(ptr %status39, ptr %scb, i32 104)
  %mtime_client = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 0, i32 2
  %41 = call ptr @memcpy(ptr %t, ptr %mtime_client, i32 16)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 17
  %42 = call ptr @memmove(ptr %i_ctime, ptr %mtime_client, i32 16)
  %i_mtime = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 16
  %43 = call ptr @memcpy(ptr %i_mtime, ptr %t, i32 16)
  %i_atime = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 15
  %44 = call ptr @memcpy(ptr %i_atime, ptr %t, i32 16)
  %i_flags = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 4
  %45 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i_flags, align 4
  %or = or i32 %46, 2
  store i32 %or, ptr %i_flags, align 4
  %i_uid = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 2
  %owner = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 0, i32 5
  %47 = ptrtoint ptr %owner to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %owner, align 8
  %conv41 = trunc i64 %48 to i32
  %call42 = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %conv41) #13
  %49 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call42, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 3
  %group = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 0, i32 6
  %50 = ptrtoint ptr %group to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %group, align 8
  %conv44 = trunc i64 %51 to i32
  %call45 = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %conv44) #13
  %52 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call45, ptr %i_gid, align 8
  %nlink47 = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 0, i32 11
  %53 = ptrtoint ptr %nlink47 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nlink47, align 8
  tail call void @set_nlink(ptr noundef %vnode, i32 noundef %54) #13
  %type48 = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 0, i32 10
  %55 = ptrtoint ptr %type48 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %type48, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values)
  switch i32 %56, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb54
    i32 3, label %sw.bb64
  ]

sw.bb:                                            ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #15
  %mode49 = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 0, i32 9
  %58 = ptrtoint ptr %mode49 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %mode49, align 8
  %60 = and i16 %59, 4095
  %61 = or i16 %60, -32768
  %62 = ptrtoint ptr %vnode to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %vnode, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 7
  %63 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @afs_file_inode_operations, ptr %i_op, align 8
  %64 = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 44
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @afs_file_operations, ptr %64, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 9
  %66 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %67, i32 0, i32 9
  %68 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @afs_file_aops, ptr %a_ops, align 4
  br label %sw.epilog

sw.bb54:                                          ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #15
  %mode55 = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 0, i32 9
  %69 = ptrtoint ptr %mode55 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %mode55, align 8
  %71 = and i16 %70, 4095
  %72 = or i16 %71, 16384
  %73 = ptrtoint ptr %vnode to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %vnode, align 8
  %i_op61 = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 7
  %74 = ptrtoint ptr %i_op61 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @afs_dir_inode_operations, ptr %i_op61, align 8
  %75 = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 44
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @afs_dir_file_operations, ptr %75, align 8
  %i_mapping62 = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 9
  %77 = ptrtoint ptr %i_mapping62 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i_mapping62, align 8
  %a_ops63 = getelementptr inbounds %struct.address_space, ptr %78, i32 0, i32 9
  %79 = ptrtoint ptr %a_ops63 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @afs_dir_aops, ptr %a_ops63, align 4
  br label %sw.epilog

sw.bb64:                                          ; preds = %do.end36
  %mode65 = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 0, i32 9
  %80 = ptrtoint ptr %mode65 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %mode65, align 8
  %82 = and i16 %81, 511
  call void @__sanitizer_cov_trace_const_cmp2(i16 420, i16 %82)
  %cmp = icmp eq i16 %82, 420
  br i1 %cmp, label %if.then69, label %if.else

if.then69:                                        ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #15
  %83 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %i_flags, align 4
  %or71 = or i32 %84, 2048
  store i32 %or71, ptr %i_flags, align 4
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #13
  %85 = ptrtoint ptr %vnode to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 16749, ptr %vnode, align 8
  %i_op73 = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 7
  %86 = ptrtoint ptr %i_op73 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @afs_mntpt_inode_operations, ptr %i_op73, align 8
  %87 = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 44
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @afs_mntpt_file_operations, ptr %87, align 8
  br label %if.end84

if.else:                                          ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #15
  %or78 = or i16 %81, -24576
  %89 = ptrtoint ptr %vnode to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %or78, ptr %vnode, align 8
  %i_op81 = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 7
  %90 = ptrtoint ptr %i_op81 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @afs_symlink_inode_operations, ptr %i_op81, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.else, %if.then69
  %i_mapping82 = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 9
  %91 = ptrtoint ptr %i_mapping82 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %i_mapping82, align 8
  %a_ops83 = getelementptr inbounds %struct.address_space, ptr %92, i32 0, i32 9
  %93 = ptrtoint ptr %a_ops83 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @afs_symlink_aops, ptr %a_ops83, align 4
  tail call void @inode_nohighmem(ptr noundef %vnode) #13
  br label %sw.epilog

sw.default:                                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #15
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  %94 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %file, align 8
  %cmp86.not = icmp eq ptr %95, %vnode
  %spec.select = select i1 %cmp86.not, ptr null, ptr %95
  tail call fastcc void @dump_vnode(ptr noundef %vnode, ptr noundef %spec.select)
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %33) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !217
  %96 = ptrtoint ptr %cb_lock to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cb_lock, align 4
  %inc.i.i.i = add i32 %97, 1
  store i32 %inc.i.i.i, ptr %cb_lock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  %call96 = tail call i32 @afs_protocol_error(ptr noundef null, i32 noundef 4) #13
  br label %cleanup

sw.epilog:                                        ; preds = %if.end84, %sw.bb54, %sw.bb
  %98 = ptrtoint ptr %scb to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %scb, align 8
  tail call fastcc void @i_size_write(ptr noundef %vnode, i64 noundef %99) #13
  %add.i = add i64 %99, 1023
  %100 = lshr i64 %add.i, 9
  %shl.i = and i64 %100, 36028797018963966
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 22
  %101 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %shl.i, ptr %i_blocks.i, align 8
  %data_version98 = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 0, i32 1
  %102 = ptrtoint ptr %data_version98 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %data_version98, align 8
  %invalid_before = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 4
  %104 = ptrtoint ptr %invalid_before to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %103, ptr %invalid_before, align 8
  %105 = load i64, ptr %data_version98, align 8
  %i_version.i = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 38
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %i_version.i, i64 noundef %105) #13
  %have_cb = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 3
  %106 = ptrtoint ptr %have_cb to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %have_cb, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool102.not = icmp eq i8 %107, 0
  br i1 %tobool102.not, label %if.then103, label %if.else105

if.then103:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %call104 = tail call i64 @ktime_get_real_seconds() #13
  %cb_expires_at = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 30
  %108 = ptrtoint ptr %cb_expires_at to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %call104, ptr %cb_expires_at, align 8
  br label %if.end109

if.else105:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %callback = getelementptr inbounds %struct.afs_vnode_param, ptr %vp, i32 0, i32 2, i32 1
  %109 = ptrtoint ptr %callback to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %callback, align 8
  %cb_expires_at107 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 30
  %111 = ptrtoint ptr %cb_expires_at107 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %110, ptr %cb_expires_at107, align 8
  %server = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 20
  %112 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %server, align 8
  %cb_server = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 23
  %114 = ptrtoint ptr %cb_server to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %113, ptr %cb_server, align 8
  %flags108 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags108) #13
  br label %if.end109

if.end109:                                        ; preds = %if.else105, %if.then103
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %33) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !217
  %115 = ptrtoint ptr %cb_lock to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cb_lock, align 4
  %inc.i.i.i184 = add i32 %116, 1
  store i32 %inc.i.i.i184, ptr %cb_lock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %sw.default
  %retval.0 = phi i32 [ %call96, %sw.default ], [ 0, %if.end109 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %t)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_root_iget(ptr noundef %sb, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  %key.i = alloca %struct.anon.171, align 4
  %aux.i = alloca %struct.afs_vnode_cache_aux, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !210

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %volume = getelementptr inbounds %struct.afs_super_info, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %volume, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %8, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %comm, ptr noundef nonnull @.str.22, i64 noundef %10) #16
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %call8 = tail call ptr @iget5_locked(ptr noundef %sb, i32 noundef 1, ptr noundef null, ptr noundef nonnull @afs_iget5_set_root, ptr noundef null) #13
  %tobool9.not = icmp eq ptr %call8, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %11 = load i32, ptr @afs_debug, align 4
  br i1 %tobool9.not, label %do.body11, label %do.body35

do.body11:                                        ; preds = %do.end7
  %and12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.cleanup_crit_edge, label %do.end23, !prof !210

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end23:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  %12 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i161 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i161 to ptr
  %task26 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task26, align 8
  %comm27 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %comm27, ptr noundef nonnull @.str.22) #16
  br label %cleanup

do.body35:                                        ; preds = %do.end7
  %and36 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body35.do.body58_crit_edge, label %do.end47, !prof !210

do.body35.do.body58_crit_edge:                    ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body58

do.end47:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #15
  %16 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i162 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i162 to ptr
  %task50 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task50, align 8
  %comm51 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 101
  %volume53 = getelementptr inbounds %struct.afs_super_info, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %volume53 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %volume53, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %21, align 8
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %comm51, ptr noundef nonnull %call8, i64 noundef %23) #16
  br label %do.body58

do.body58:                                        ; preds = %do.end47, %do.body35.do.body58_crit_edge
  %i_state = getelementptr inbounds %struct.inode, ptr %call8, i32 0, i32 24
  %24 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_state, align 8
  %and59 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %do.body70, label %do.end78, !prof !218

do.body70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 527, 0\0A.popsection", ""() #13, !srcloc !219
  unreachable

do.end78:                                         ; preds = %do.body58
  %volume80 = getelementptr inbounds %struct.afs_super_info, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %volume80 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %volume80, align 4
  %cb_v_break = getelementptr inbounds %struct.afs_volume, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %cb_v_break to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cb_v_break, align 8
  %cb_v_break81 = getelementptr inbounds %struct.afs_vnode, ptr %call8, i32 0, i32 27
  %30 = ptrtoint ptr %cb_v_break81 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %cb_v_break81, align 8
  %31 = load ptr, ptr %volume80, align 4
  %call83 = tail call ptr @afs_alloc_operation(ptr noundef %key, ptr noundef %31) #13
  %cmp.i = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then85, label %if.end87

if.then85:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %call83 to i32
  br label %error

if.end87:                                         ; preds = %do.end78
  %file.i = getelementptr inbounds %struct.afs_operation, ptr %call83, i32 0, i32 5
  %33 = ptrtoint ptr %file.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call8, ptr %file.i, align 8
  %need_io_lock.i = getelementptr inbounds %struct.afs_operation, ptr %call83, i32 0, i32 5, i32 0, i32 6
  %34 = ptrtoint ptr %need_io_lock.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i = load i8, ptr %need_io_lock.i, align 1
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %need_io_lock.i, align 1
  %nr_files = getelementptr inbounds %struct.afs_operation, ptr %call83, i32 0, i32 12
  %35 = ptrtoint ptr %nr_files to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %nr_files, align 8
  %ops = getelementptr inbounds %struct.afs_operation, ptr %call83, i32 0, i32 3
  %36 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @afs_fetch_status_operation, ptr %ops, align 4
  %call88 = tail call i32 @afs_do_sync_operation(ptr noundef %call83) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp = icmp slt i32 %call88, 0
  br i1 %cmp, label %if.end87.error_crit_edge, label %if.end90

if.end87.error_crit_edge:                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end90:                                         ; preds = %if.end87
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %aux.i) #13
  %type.i = getelementptr inbounds %struct.afs_vnode, ptr %call8, i32 0, i32 3, i32 10
  %37 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.not.i = icmp eq i32 %38, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.end90.afs_get_inode_cache.exit_crit_edge

if.end90.afs_get_inode_cache.exit_crit_edge:      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_get_inode_cache.exit

if.end.i:                                         ; preds = %if.end90
  %39 = getelementptr inbounds %struct.anon.171, ptr %key.i, i32 0, i32 2, i32 1
  %40 = getelementptr inbounds %struct.anon.171, ptr %key.i, i32 0, i32 2
  %41 = getelementptr inbounds %struct.anon.171, ptr %key.i, i32 0, i32 1
  %vnode1.i = getelementptr inbounds %struct.afs_vnode, ptr %call8, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %vnode1.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %vnode1.i, align 8
  %conv.i = trunc i64 %43 to i32
  %44 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv.i, ptr %key.i, align 4
  %unique.i = getelementptr inbounds %struct.afs_vnode, ptr %call8, i32 0, i32 2, i32 3
  %45 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %unique.i, align 4
  %47 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %41, align 4
  %shr.i = lshr i64 %43, 32
  %conv6.i = trunc i64 %shr.i to i32
  %48 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv6.i, ptr %40, align 4
  %vnode_hi.i = getelementptr inbounds %struct.afs_vnode, ptr %call8, i32 0, i32 2, i32 2
  %49 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vnode_hi.i, align 8
  %51 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %39, align 4
  %data_version.i.i = getelementptr inbounds %struct.afs_vnode, ptr %call8, i32 0, i32 3, i32 1
  %52 = ptrtoint ptr %data_version.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %data_version.i.i, align 8
  %54 = ptrtoint ptr %aux.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %aux.i, align 8
  %volume.i = getelementptr inbounds %struct.afs_vnode, ptr %call8, i32 0, i32 1
  %55 = ptrtoint ptr %volume.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %volume.i, align 8
  %cache10.i = getelementptr inbounds %struct.afs_volume, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %cache10.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cache10.i, align 8
  %tobool.not.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i, label %if.end.i.afs_get_inode_cache.exit_crit_edge, label %if.end.i.i

if.end.i.afs_get_inode_cache.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_get_inode_cache.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %status.i = getelementptr inbounds %struct.afs_vnode, ptr %call8, i32 0, i32 3
  %59 = ptrtoint ptr %status.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %status.i, align 8
  %call.i.i = call ptr @__fscache_acquire_cookie(ptr noundef nonnull %58, i8 noundef zeroext 0, ptr noundef nonnull %key.i, i32 noundef 16, ptr noundef nonnull %aux.i, i32 noundef 8, i64 noundef %60) #13
  br label %afs_get_inode_cache.exit

afs_get_inode_cache.exit:                         ; preds = %if.end.i.i, %if.end.i.afs_get_inode_cache.exit_crit_edge, %if.end90.afs_get_inode_cache.exit_crit_edge
  %retval.0.i.sink.i = phi ptr [ null, %if.end90.afs_get_inode_cache.exit_crit_edge ], [ %call.i.i, %if.end.i.i ], [ null, %if.end.i.afs_get_inode_cache.exit_crit_edge ]
  %cache17.i = getelementptr inbounds %struct.afs_vnode, ptr %call8, i32 0, i32 5
  %61 = ptrtoint ptr %cache17.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %retval.0.i.sink.i, ptr %cache17.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %aux.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i) #13
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %call8, i32 0, i32 13
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #13
  call void @unlock_new_inode(ptr noundef nonnull %call8) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %62 = load i32, ptr @afs_debug, align 4
  %and92 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %afs_get_inode_cache.exit.cleanup_crit_edge, label %do.end103, !prof !210

afs_get_inode_cache.exit.cleanup_crit_edge:       ; preds = %afs_get_inode_cache.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end103:                                        ; preds = %afs_get_inode_cache.exit
  call void @__sanitizer_cov_trace_pc() #15
  %63 = call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i163 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i163 to ptr
  %task106 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task106 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task106, align 8
  %comm107 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 101
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %comm107, ptr noundef nonnull @.str.22, ptr noundef nonnull %call8) #16
  br label %cleanup

error:                                            ; preds = %if.end87.error_crit_edge, %if.then85
  %ret.0 = phi i32 [ %32, %if.then85 ], [ %call88, %if.end87.error_crit_edge ]
  tail call void @iget_failed(ptr noundef nonnull %call8) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %67 = load i32, ptr @afs_debug, align 4
  %and114 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %error.do.end134_crit_edge, label %do.end125, !prof !210

error.do.end134_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end134

do.end125:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #15
  %68 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i164 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i164 to ptr
  %task128 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %task128 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task128, align 8
  %comm129 = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 101
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %comm129, ptr noundef nonnull @.str.22, i32 noundef %ret.0) #16
  br label %do.end134

do.end134:                                        ; preds = %do.end125, %error.do.end134_crit_edge
  %72 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end134, %do.end103, %afs_get_inode_cache.exit.cleanup_crit_edge, %do.end23, %do.body11.cleanup_crit_edge
  %retval.0 = phi ptr [ %72, %do.end134 ], [ %call8, %do.end103 ], [ %call8, %afs_get_inode_cache.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end23 ], [ inttoptr (i32 -12 to ptr), %do.body11.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @afs_iget5_set_root(ptr nocapture noundef %inode, ptr nocapture noundef readnone %opaque) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %volume = getelementptr inbounds %struct.afs_super_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %volume, align 4
  %volume2 = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 1
  %6 = ptrtoint ptr %volume2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %volume2, align 8
  %7 = load ptr, ptr %volume, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2
  %10 = ptrtoint ptr %fid to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %fid, align 8
  %vnode5 = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %vnode5 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1, ptr %vnode5, align 8
  %unique = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %unique to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %unique, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %i_ino, align 8
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %14 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %i_generation, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_do_sync_operation(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @afs_check_validity(ptr noundef %vnode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get_real_seconds() #13
  %cb_lock = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 29
  %lock.i.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 29, i32 1
  %cb_break1 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 28
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 13
  %cb_v_break = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 27
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 1
  %cb_fs_s_break.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 25
  %cb_server.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 23
  %cb_s_break.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 26
  %cb_expires_at = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 30
  br label %do.body

do.body:                                          ; preds = %need_seqretry.exit.do.body_crit_edge, %entry
  %seq.0 = phi i32 [ 0, %entry ], [ %seq.1, %need_seqretry.exit.do.body_crit_edge ]
  %need_clear.0 = phi i32 [ 0, %entry ], [ %need_clear.1, %need_seqretry.exit.do.body_crit_edge ]
  %and.i = and i32 %seq.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %cb_lock) #13
  %0 = ptrtoint ptr %cb_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %cb_lock, align 4
  %and18.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %if.then.i.read_seqbegin.exit.i_crit_edge, label %if.then.i.do.end.i.i_crit_edge

if.then.i.do.end.i.i_crit_edge:                   ; preds = %if.then.i
  br label %do.end.i.i

if.then.i.read_seqbegin.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_seqbegin.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %if.then.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !220
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !221
  %2 = ptrtoint ptr %cb_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cb_lock, align 4
  %and.i.i = and i32 %3, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.read_seqbegin.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i.read_seqbegin.exit.i_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_seqbegin.exit.i

read_seqbegin.exit.i:                             ; preds = %do.end.i.i.read_seqbegin.exit.i_crit_edge, %if.then.i.read_seqbegin.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %1, %if.then.i.read_seqbegin.exit.i_crit_edge ], [ %3, %do.end.i.i.read_seqbegin.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !222
  br label %read_seqbegin_or_lock.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #13
  br label %read_seqbegin_or_lock.exit

read_seqbegin_or_lock.exit:                       ; preds = %if.else.i, %read_seqbegin.exit.i
  %seq.1 = phi i32 [ %.lcssa.i.i, %read_seqbegin.exit.i ], [ %seq.0, %if.else.i ]
  %4 = ptrtoint ptr %cb_break1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cb_break1, align 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.else18, label %if.then

if.then:                                          ; preds = %read_seqbegin_or_lock.exit
  %8 = ptrtoint ptr %cb_v_break to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cb_v_break, align 8
  %10 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %volume, align 8
  %cb_v_break3 = getelementptr inbounds %struct.afs_volume, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %cb_v_break3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cb_v_break3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp.not = icmp eq i32 %9, %13
  br i1 %cmp.not, label %if.else, label %if.then.do.cond_crit_edge

if.then.do.cond_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond

if.else:                                          ; preds = %if.then
  %14 = ptrtoint ptr %cb_fs_s_break.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cb_fs_s_break.i, align 8
  %cell.i = getelementptr inbounds %struct.afs_volume, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %cell.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cell.i, align 8
  %fs_s_break.i = getelementptr inbounds %struct.afs_cell, ptr %17, i32 0, i32 24
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fs_s_break.i, i32 noundef 4) #13
  %18 = ptrtoint ptr %fs_s_break.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %fs_s_break.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %19)
  %cmp.i = icmp eq i32 %15, %19
  br i1 %cmp.i, label %if.else.if.else7_crit_edge, label %if.end.i

if.else.if.else7_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else7

if.end.i:                                         ; preds = %if.else
  %20 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !214
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i74 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i74, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 696, ptr noundef nonnull @.str.91) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %24 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %volume, align 8
  %servers.i = getelementptr inbounds %struct.afs_volume, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %servers.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %servers.i, align 4
  %call3.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i75 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i75, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end11.i_crit_edge

rcu_read_lock.exit.i.do.end11.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end11.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b36.i = load i1, ptr @afs_check_server_good.__warned, align 1
  br i1 %.b36.i, label %land.lhs.true6.i.do.end11.i_crit_edge, label %if.then8.i

land.lhs.true6.i.do.end11.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @afs_check_server_good.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 594, ptr noundef nonnull @.str.89) #13
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.then8.i, %land.lhs.true6.i.do.end11.i_crit_edge, %land.lhs.true.i.do.end11.i_crit_edge, %rcu_read_lock.exit.i.do.end11.i_crit_edge
  %nr_servers.i = getelementptr inbounds %struct.afs_server_list, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %nr_servers.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nr_servers.i, align 4
  %conv.i = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp1357.not.i = icmp eq i8 %29, 0
  br i1 %cmp1357.not.i, label %do.end11.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.end11.i.for.end.i_crit_edge:                   ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.end11.i
  %30 = ptrtoint ptr %cb_server.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cb_server.i, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.058.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.058.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.afs_server_list, ptr %27, i32 0, i32 7, i32 %i.058.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  %cmp17.i = icmp eq ptr %33, %31
  br i1 %cmp17.i, label %if.then19.i, label %for.cond.i

if.then19.i:                                      ; preds = %for.body.i
  %34 = ptrtoint ptr %cb_s_break.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cb_s_break.i, align 4
  %cb_s_break20.i = getelementptr inbounds %struct.afs_server, ptr %31, i32 0, i32 21
  %36 = ptrtoint ptr %cb_s_break20.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cb_s_break20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp21.i = icmp eq i32 %35, %37
  %call.i37.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i37.i, label %if.then19.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i40.i

if.then19.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true.i40.i:                              ; preds = %if.then19.i
  %call1.i38.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38.i)
  %tobool.not.i39.i = icmp eq i32 %call1.i38.i, 0
  br i1 %tobool.not.i39.i, label %land.lhs.true.i40.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i42.i

land.lhs.true.i40.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i42.i:                             ; preds = %land.lhs.true.i40.i
  %.b4.i41.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i41.i, label %land.lhs.true2.i42.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i43.i

land.lhs.true2.i42.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

if.then.i43.i:                                    ; preds = %land.lhs.true2.i42.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 724, ptr noundef nonnull @.str.92) #13
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i43.i, %land.lhs.true2.i42.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i40.i.rcu_read_unlock.exit.i_crit_edge, %if.then19.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !215
  %38 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i.i.i.i.i44.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i44.i to ptr
  %preempt_count.i.i.i.i45.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i45.i, align 4
  %sub.i.i.i55.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i55.i, ptr %preempt_count.i.i.i.i45.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br i1 %cmp21.i, label %rcu_read_unlock.exit.i.if.else7_crit_edge, label %rcu_read_unlock.exit.i.do.cond_crit_edge

rcu_read_unlock.exit.i.do.cond_crit_edge:         ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond

rcu_read_unlock.exit.i.if.else7_crit_edge:        ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else7

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %do.end11.i.for.end.i_crit_edge
  %call.i46.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i46.i, label %for.end.i.rcu_read_unlock.exit56.i_crit_edge, label %land.lhs.true.i49.i

for.end.i.rcu_read_unlock.exit56.i_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit56.i

land.lhs.true.i49.i:                              ; preds = %for.end.i
  %call1.i47.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i47.i)
  %tobool.not.i48.i = icmp eq i32 %call1.i47.i, 0
  br i1 %tobool.not.i48.i, label %land.lhs.true.i49.i.rcu_read_unlock.exit56.i_crit_edge, label %land.lhs.true2.i51.i

land.lhs.true.i49.i.rcu_read_unlock.exit56.i_crit_edge: ; preds = %land.lhs.true.i49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit56.i

land.lhs.true2.i51.i:                             ; preds = %land.lhs.true.i49.i
  %.b4.i50.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i50.i, label %land.lhs.true2.i51.i.rcu_read_unlock.exit56.i_crit_edge, label %if.then.i52.i

land.lhs.true2.i51.i.rcu_read_unlock.exit56.i_crit_edge: ; preds = %land.lhs.true2.i51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit56.i

if.then.i52.i:                                    ; preds = %land.lhs.true2.i51.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 724, ptr noundef nonnull @.str.92) #13
  br label %rcu_read_unlock.exit56.i

rcu_read_unlock.exit56.i:                         ; preds = %if.then.i52.i, %land.lhs.true2.i51.i.rcu_read_unlock.exit56.i_crit_edge, %land.lhs.true.i49.i.rcu_read_unlock.exit56.i_crit_edge, %for.end.i.rcu_read_unlock.exit56.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !215
  %42 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i.i.i.i.i44.i.c = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i44.i.c to ptr
  %preempt_count.i.i.i.i45.i.c = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i45.i.c to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i45.i.c, align 4
  %sub.i.i.i55.i.c = add i32 %45, -1
  store volatile i32 %sub.i.i.i55.i.c, ptr %preempt_count.i.i.i.i45.i.c, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %do.cond

if.else7:                                         ; preds = %rcu_read_unlock.exit.i.if.else7_crit_edge, %if.else.if.else7_crit_edge
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags, align 4
  %48 = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool10.not = icmp eq i32 %48, 0
  br i1 %tobool10.not, label %if.else12, label %if.else7.do.cond_crit_edge

if.else7.do.cond_crit_edge:                       ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond

if.else12:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %cb_expires_at to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %cb_expires_at, align 8
  %sub = add i64 %50, -10
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %call)
  %cmp13.not = icmp sgt i64 %sub, %call
  %spec.select = select i1 %cmp13.not, i32 %need_clear.0, i32 4
  br label %do.cond

if.else18:                                        ; preds = %read_seqbegin_or_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %flags, align 4
  %53 = and i32 %52, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool21.not = icmp eq i32 %53, 0
  %spec.select70 = select i1 %tobool21.not, i32 1, i32 %need_clear.0
  br label %do.cond

do.cond:                                          ; preds = %if.else18, %if.else12, %if.else7.do.cond_crit_edge, %rcu_read_unlock.exit56.i, %rcu_read_unlock.exit.i.do.cond_crit_edge, %if.then.do.cond_crit_edge
  %need_clear.1 = phi i32 [ 7, %if.then.do.cond_crit_edge ], [ 5, %rcu_read_unlock.exit.i.do.cond_crit_edge ], [ 9, %if.else7.do.cond_crit_edge ], [ %spec.select, %if.else12 ], [ %spec.select70, %if.else18 ], [ 5, %rcu_read_unlock.exit56.i ]
  %and.i76 = and i32 %seq.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i76)
  %tobool.not.i77 = icmp eq i32 %and.i76, 0
  br i1 %tobool.not.i77, label %need_seqretry.exit, label %if.then.i81

need_seqretry.exit:                               ; preds = %do.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !223
  %54 = ptrtoint ptr %cb_lock to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %cb_lock, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %55, %seq.1
  br i1 %cmp.i.i.i.i.not, label %need_seqretry.exit.done_seqretry.exit_crit_edge, label %need_seqretry.exit.do.body_crit_edge

need_seqretry.exit.do.body_crit_edge:             ; preds = %need_seqretry.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

need_seqretry.exit.done_seqretry.exit_crit_edge:  ; preds = %need_seqretry.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %done_seqretry.exit

if.then.i81:                                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #13
  br label %done_seqretry.exit

done_seqretry.exit:                               ; preds = %if.then.i81, %need_seqretry.exit.done_seqretry.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %need_clear.1)
  %cmp30 = icmp eq i32 %need_clear.1, 0
  br i1 %cmp30, label %done_seqretry.exit.cleanup_crit_edge, label %if.end32

done_seqretry.exit.cleanup_crit_edge:             ; preds = %done_seqretry.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end32:                                         ; preds = %done_seqretry.exit
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #13
  %56 = ptrtoint ptr %cb_lock to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cb_lock, align 4
  %inc.i.i.i.i = add i32 %57, 1
  store i32 %inc.i.i.i.i, ptr %cb_lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !211
  %dep_map.i.i.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 29, i32 0, i32 0, i32 1
  %58 = tail call ptr @llvm.returnaddress(i32 0) #13
  %59 = ptrtoint ptr %58 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %59) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %need_clear.1)
  %cmp34 = icmp eq i32 %need_clear.1, 1
  br i1 %cmp34, label %if.then35, label %if.else39

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %volume, align 8
  %cb_v_break37 = getelementptr inbounds %struct.afs_volume, ptr %61, i32 0, i32 12
  %62 = ptrtoint ptr %cb_v_break37 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cb_v_break37, align 8
  %64 = ptrtoint ptr %cb_v_break to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %cb_v_break, align 8
  br label %if.end45

if.else39:                                        ; preds = %if.end32
  %65 = ptrtoint ptr %cb_break1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cb_break1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %66)
  %cmp41 = icmp eq i32 %5, %66
  br i1 %cmp41, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__afs_break_callback(ptr noundef %vnode, i32 noundef %need_clear.1) #13
  br label %if.end45

if.else43:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #15
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2
  tail call fastcc void @trace_afs_cb_miss(ptr noundef %fid, i32 noundef %need_clear.1)
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then42, %if.then35
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %59) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !217
  %67 = ptrtoint ptr %cb_lock to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cb_lock, align 4
  %inc.i.i.i = add i32 %68, 1
  store i32 %inc.i.i.i, ptr %cb_lock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %done_seqretry.exit.cleanup_crit_edge
  ret i1 %cmp30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_cb_miss(ptr noundef %fid, i32 noundef %reason) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_cb_miss, i32 0, i32 1), ptr blockaddress(@trace_afs_cb_miss, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !224

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !200) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !210

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.109, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !225
  %call42 = tail call i32 @__traceiter_afs_cb_miss(ptr noundef null, ptr noundef %fid, i32 noundef %reason) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !226
  %13 = tail call i32 @llvm.read_register.i32(metadata !200) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !200) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !210

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.109, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !227
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_cb_miss, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_cb_miss, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_afs_cb_miss.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_afs_cb_miss.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.108, i32 noundef 1433, ptr noundef nonnull @.str.89) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !228
  %31 = tail call i32 @llvm.read_register.i32(metadata !200) #13
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
define dso_local i32 @afs_validate(ptr noundef %vnode, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  %aux.i.i = alloca %struct.afs_vnode_cache_aux, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !210

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

do.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2
  %5 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %fid, align 8
  %vnode5 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %vnode5 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %vnode5, align 8
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 13
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 8
  %tobool.not.i = icmp eq ptr %key, null
  br i1 %tobool.not.i, label %do.end.key_serial.exit_crit_edge, label %cond.true.i

do.end.key_serial.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %key_serial.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %serial.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 1
  %11 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %do.end.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %12, %cond.true.i ], [ 0, %do.end.key_serial.exit_crit_edge ]
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %comm, ptr noundef nonnull @.str.33, i64 noundef %6, i64 noundef %8, i32 noundef %10, i32 noundef %cond.i) #16
  br label %do.end9

do.end9:                                          ; preds = %key_serial.exit, %entry.do.end9_crit_edge
  %flags10 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 13
  %13 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags10, align 4
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not = icmp eq i32 %15, 0
  br i1 %tobool12.not, label %if.end24, label %if.then19, !prof !210

if.then19:                                        ; preds = %do.end9
  %16 = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 12
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool20.not = icmp eq i32 %18, 0
  br i1 %tobool20.not, label %if.then19.do.body121_crit_edge, label %if.then21

if.then19.do.body121_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body121

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @clear_nlink(ptr noundef %vnode) #13
  br label %do.body121

if.end24:                                         ; preds = %do.end9
  %19 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags10, align 4
  %and1.i187 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i187)
  %tobool27.not = icmp eq i32 %and1.i187, 0
  br i1 %tobool27.not, label %if.end24.if.end30_crit_edge, label %land.lhs.true

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end24
  %call28 = tail call zeroext i1 @afs_check_validity(ptr noundef %vnode)
  br i1 %call28, label %land.lhs.true.do.body121_crit_edge, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

land.lhs.true.do.body121_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body121

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %if.end24.if.end30_crit_edge
  %validate_lock = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 8
  tail call void @down_write(ptr noundef %validate_lock) #13
  %21 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags10, align 4
  %and1.i188 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i188)
  %tobool33.not = icmp eq i32 %and1.i188, 0
  br i1 %tobool33.not, label %do.body35, label %if.end30.if.end87_crit_edge

if.end30.if.end87_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

do.body35:                                        ; preds = %if.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %23 = load i32, ptr @afs_debug, align 4
  %and36 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body35.do.end56_crit_edge, label %do.end47, !prof !210

do.body35.do.end56_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end56

do.end47:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #15
  %24 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i191 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i191 to ptr
  %task50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task50, align 8
  %comm51 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 101
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %comm51) #16
  br label %do.end56

do.end56:                                         ; preds = %do.end47, %do.body35.do.end56_crit_edge
  %call57 = tail call i32 @afs_fetch_status(ptr noundef %vnode, ptr noundef %key, i1 zeroext undef, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp = icmp slt i32 %call57, 0
  br i1 %cmp, label %if.then58, label %do.body64

if.then58:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call57)
  %cmp59 = icmp eq i32 %call57, -2
  br i1 %cmp59, label %if.then60, label %if.then58.error_unlock_crit_edge

if.then58.error_unlock_crit_edge:                 ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_unlock

if.then60:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags10) #13
  br label %error_unlock

do.body64:                                        ; preds = %do.end56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %28 = load i32, ptr @afs_debug, align 4
  %and65 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %do.body64.if.end87_crit_edge, label %do.end76, !prof !210

do.body64.if.end87_crit_edge:                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

do.end76:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #15
  %29 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i192 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i192 to ptr
  %task79 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task79 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task79, align 8
  %comm80 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 101
  %33 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags10, align 8
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %comm80, i32 noundef %34) #16
  br label %if.end87

if.end87:                                         ; preds = %do.end76, %do.body64.if.end87_crit_edge, %if.end30.if.end87_crit_edge
  %35 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags10, align 4
  %37 = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool90.not = icmp eq i32 %37, 0
  br i1 %tobool90.not, label %if.end114, label %do.body92

do.body92:                                        ; preds = %if.end87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %38 = load i32, ptr @afs_debug, align 4
  %and93 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %do.body92.error_unlock_crit_edge, label %do.end104, !prof !210

do.body92.error_unlock_crit_edge:                 ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_unlock

do.end104:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #15
  %39 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i193 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i193 to ptr
  %task107 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task107 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task107, align 8
  %comm108 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 101
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %comm108) #16
  br label %error_unlock

if.end114:                                        ; preds = %if.end87
  %call116 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end114.if.end119_crit_edge, label %if.then118

if.end114.if.end119_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end119

if.then118:                                       ; preds = %if.end114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %43 = load i32, ptr @afs_debug, align 4
  %and.i194 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i194)
  %tobool.not.i195 = icmp eq i32 %and.i194, 0
  br i1 %tobool.not.i195, label %if.then118.do.end7.i_crit_edge, label %do.end.i, !prof !210

if.then118.do.end7.i_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7.i

do.end.i:                                         ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #15
  %44 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 101
  %fid.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2
  %48 = ptrtoint ptr %fid.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %fid.i, align 8
  %vnode5.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %vnode5.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %vnode5.i, align 8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %comm.i, ptr noundef nonnull @.str.111, i64 noundef %49, i64 noundef %51) #16
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %if.then118.do.end7.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %aux.i.i) #13
  %data_version.i.i.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 3, i32 1
  %52 = ptrtoint ptr %data_version.i.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %data_version.i.i.i, align 8
  %54 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %aux.i.i, align 8
  %cache.i.i.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 5
  %55 = ptrtoint ptr %cache.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cache.i.i.i, align 8
  %i_size_seqcount.i.i.i = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 23
  %i_size18.i.i.i = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 14
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %while.end.i.i.i.do.body.i.i.i_crit_edge, %do.end7.i
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %i_size_seqcount.i.i.i) #13
  %57 = ptrtoint ptr %i_size_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %i_size_seqcount.i.i.i, align 4
  %and29.i.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i.i)
  %tobool.not30.i.i.i = icmp eq i32 %and29.i.i.i, 0
  br i1 %tobool.not30.i.i.i, label %do.body.i.i.i.while.end.i.i.i_crit_edge, label %do.body.i.i.i.do.end.i.i.i_crit_edge

do.body.i.i.i.do.end.i.i.i_crit_edge:             ; preds = %do.body.i.i.i
  br label %do.end.i.i.i

do.body.i.i.i.while.end.i.i.i_crit_edge:          ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i.i

do.end.i.i.i:                                     ; preds = %do.end.i.i.i.do.end.i.i.i_crit_edge, %do.body.i.i.i.do.end.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !229
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !230
  %59 = ptrtoint ptr %i_size_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %i_size_seqcount.i.i.i, align 4
  %and.i.i.i = and i32 %60, 1
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i.while.end.i.i.i_crit_edge, label %do.end.i.i.i.do.end.i.i.i_crit_edge

do.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i

do.end.i.i.i.while.end.i.i.i_crit_edge:           ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %do.end.i.i.i.while.end.i.i.i_crit_edge, %do.body.i.i.i.while.end.i.i.i_crit_edge
  %.lcssa.i.i.i = phi i32 [ %58, %do.body.i.i.i.while.end.i.i.i_crit_edge ], [ %60, %do.end.i.i.i.while.end.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !231
  %61 = ptrtoint ptr %i_size18.i.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %i_size18.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !223
  %63 = ptrtoint ptr %i_size_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %i_size_seqcount.i.i.i, align 4
  %cmp.i.i.not.i.i.i = icmp eq i32 %64, %.lcssa.i.i.i
  br i1 %cmp.i.i.not.i.i.i, label %i_size_read.exit.i.i, label %while.end.i.i.i.do.body.i.i.i_crit_edge

while.end.i.i.i.do.body.i.i.i_crit_edge:          ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i

i_size_read.exit.i.i:                             ; preds = %while.end.i.i.i
  %tobool.not.i1.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i1.i.i, label %i_size_read.exit.i.i.afs_invalidate_cache.exit.i_crit_edge, label %land.lhs.true.i.i.i

i_size_read.exit.i.i.afs_invalidate_cache.exit.i_crit_edge: ; preds = %i_size_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_invalidate_cache.exit.i

land.lhs.true.i.i.i:                              ; preds = %i_size_read.exit.i.i
  %flags1.i.i.i = getelementptr inbounds %struct.fscache_cookie, ptr %56, i32 0, i32 14
  %65 = ptrtoint ptr %flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %flags1.i.i.i, align 4
  %67 = and i32 %66, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool2.not.i.i.i = icmp eq i32 %67, 0
  br i1 %tobool2.not.i.i.i, label %if.then.i.i.i, label %land.lhs.true.i.i.i.afs_invalidate_cache.exit.i_crit_edge

land.lhs.true.i.i.i.afs_invalidate_cache.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_invalidate_cache.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__fscache_invalidate(ptr noundef nonnull %56, ptr noundef nonnull %aux.i.i, i64 noundef %62, i32 noundef 0) #13
  br label %afs_invalidate_cache.exit.i

afs_invalidate_cache.exit.i:                      ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i.afs_invalidate_cache.exit.i_crit_edge, %i_size_read.exit.i.i.afs_invalidate_cache.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %aux.i.i) #13
  %68 = ptrtoint ptr %vnode to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %vnode, align 8
  %70 = and i16 %69, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %70)
  %cmp.i = icmp eq i16 %70, -32768
  %i_mapping.i.i = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 9
  %71 = ptrtoint ptr %i_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i_mapping.i.i, align 8
  br i1 %cmp.i, label %invalidate_remote_inode.exit.i, label %if.else.i

invalidate_remote_inode.exit.i:                   ; preds = %afs_invalidate_cache.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = call i32 @invalidate_mapping_pages(ptr noundef %72, i32 noundef 0, i32 noundef -1) #13
  br label %if.end119

if.else.i:                                        ; preds = %afs_invalidate_cache.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call13.i = call i32 @invalidate_inode_pages2(ptr noundef %72) #13
  br label %if.end119

if.end119:                                        ; preds = %if.else.i, %invalidate_remote_inode.exit.i, %if.end114.if.end119_crit_edge
  call void @up_write(ptr noundef %validate_lock) #13
  br label %do.body121

do.body121:                                       ; preds = %if.end119, %land.lhs.true.do.body121_crit_edge, %if.then21, %if.then19.do.body121_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %73 = load i32, ptr @afs_debug, align 4
  %and122 = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %do.body121.cleanup_crit_edge, label %do.end133, !prof !210

do.body121.cleanup_crit_edge:                     ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end133:                                        ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #15
  %74 = call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i196 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i196 to ptr
  %task136 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %task136 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task136, align 8
  %comm137 = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 101
  %call139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %comm137, ptr noundef nonnull @.str.33) #16
  br label %cleanup

error_unlock:                                     ; preds = %do.end104, %do.body92.error_unlock_crit_edge, %if.then60, %if.then58.error_unlock_crit_edge
  %ret.0 = phi i32 [ -116, %if.then60 ], [ %call57, %if.then58.error_unlock_crit_edge ], [ -116, %do.end104 ], [ -116, %do.body92.error_unlock_crit_edge ]
  tail call void @up_write(ptr noundef %validate_lock) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %78 = load i32, ptr @afs_debug, align 4
  %and145 = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %error_unlock.cleanup_crit_edge, label %do.end156, !prof !210

error_unlock.cleanup_crit_edge:                   ; preds = %error_unlock
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end156:                                        ; preds = %error_unlock
  call void @__sanitizer_cov_trace_pc() #15
  %79 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i197 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i197 to ptr
  %task159 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task159 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task159, align 8
  %comm160 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 101
  %call162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %comm160, ptr noundef nonnull @.str.33, i32 noundef %ret.0) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end156, %error_unlock.cleanup_crit_edge, %do.end133, %do.body121.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end133 ], [ 0, %do.body121.cleanup_crit_edge ], [ %ret.0, %do.end156 ], [ %ret.0, %error_unlock.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_getattr(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %4 = load i32, ptr @afs_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !210

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino, align 8
  %i_generation = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 49
  %11 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_generation, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %comm, ptr noundef nonnull @.str.50, i32 noundef %10, i32 noundef %12) #16
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %cb_lock = getelementptr inbounds %struct.afs_vnode, ptr %3, i32 0, i32 29
  %lock.i.i = getelementptr inbounds %struct.afs_vnode, ptr %3, i32 0, i32 29, i32 1
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %3, i32 0, i32 13
  %nlink = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 2
  br label %do.body9

do.body9:                                         ; preds = %need_seqretry.exit.do.body9_crit_edge, %do.end8
  %seq.0 = phi i32 [ 0, %do.end8 ], [ %seq.1, %need_seqretry.exit.do.body9_crit_edge ]
  %and.i29 = and i32 %seq.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool.not.i = icmp eq i32 %and.i29, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body9
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %cb_lock) #13
  %13 = ptrtoint ptr %cb_lock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %cb_lock, align 4
  %and18.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %if.then.i.read_seqbegin.exit.i_crit_edge, label %if.then.i.do.end.i.i_crit_edge

if.then.i.do.end.i.i_crit_edge:                   ; preds = %if.then.i
  br label %do.end.i.i

if.then.i.read_seqbegin.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_seqbegin.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %if.then.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !220
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !221
  %15 = ptrtoint ptr %cb_lock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %cb_lock, align 4
  %and.i.i = and i32 %16, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.read_seqbegin.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i.read_seqbegin.exit.i_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_seqbegin.exit.i

read_seqbegin.exit.i:                             ; preds = %do.end.i.i.read_seqbegin.exit.i_crit_edge, %if.then.i.read_seqbegin.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %14, %if.then.i.read_seqbegin.exit.i_crit_edge ], [ %16, %do.end.i.i.read_seqbegin.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !222
  br label %read_seqbegin_or_lock.exit

if.else.i:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #13
  br label %read_seqbegin_or_lock.exit

read_seqbegin_or_lock.exit:                       ; preds = %if.else.i, %read_seqbegin.exit.i
  %seq.1 = phi i32 [ %.lcssa.i.i, %read_seqbegin.exit.i ], [ %seq.0, %if.else.i ]
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %stat) #13
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %19 = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool11.not = icmp eq i32 %19, 0
  br i1 %tobool11.not, label %read_seqbegin_or_lock.exit.do.cond15_crit_edge, label %land.lhs.true

read_seqbegin_or_lock.exit.do.cond15_crit_edge:   ; preds = %read_seqbegin_or_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond15

land.lhs.true:                                    ; preds = %read_seqbegin_or_lock.exit
  %20 = ptrtoint ptr %nlink to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nlink, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not = icmp eq i32 %21, 0
  br i1 %cmp.not, label %land.lhs.true.do.cond15_crit_edge, label %if.then12

land.lhs.true.do.cond15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond15

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %sub = add i32 %21, -1
  %22 = ptrtoint ptr %nlink to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %nlink, align 8
  br label %do.cond15

do.cond15:                                        ; preds = %if.then12, %land.lhs.true.do.cond15_crit_edge, %read_seqbegin_or_lock.exit.do.cond15_crit_edge
  %and.i30 = and i32 %seq.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %tobool.not.i31 = icmp eq i32 %and.i30, 0
  br i1 %tobool.not.i31, label %need_seqretry.exit, label %if.then.i35

need_seqretry.exit:                               ; preds = %do.cond15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !223
  %23 = ptrtoint ptr %cb_lock to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %cb_lock, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %24, %seq.1
  br i1 %cmp.i.i.i.i.not, label %need_seqretry.exit.done_seqretry.exit_crit_edge, label %need_seqretry.exit.do.body9_crit_edge

need_seqretry.exit.do.body9_crit_edge:            ; preds = %need_seqretry.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body9

need_seqretry.exit.done_seqretry.exit_crit_edge:  ; preds = %need_seqretry.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %done_seqretry.exit

if.then.i35:                                      ; preds = %do.cond15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #13
  br label %done_seqretry.exit

done_seqretry.exit:                               ; preds = %if.then.i35, %need_seqretry.exit.done_seqretry.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_drop_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !210

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.51) #16
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 13
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call i32 @generic_delete_inode(ptr noundef %inode) #13
  br label %return

if.else:                                          ; preds = %do.end5
  %8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.else.return_crit_edge, label %lor.rhs.i

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.rhs.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %pprev.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28, i32 1
  %11 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %12, null
  %lnot.ext.i.i.i = zext i1 %tobool.not.i.i.i to i32
  br label %return

return:                                           ; preds = %lor.rhs.i, %if.else.return_crit_edge, %if.then9
  %retval.0 = phi i32 [ %call10, %if.then9 ], [ 1, %if.else.return_crit_edge ], [ %lnot.ext.i.i.i, %lor.rhs.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_evict_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %i_size.i = alloca i64, align 8
  %aux = alloca %struct.afs_vnode_cache_aux, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %aux) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body11_crit_edge, label %do.end, !prof !210

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = tail call i32 @llvm.read_register.i32(metadata !200) #13
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
  %unique = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %unique, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %comm, ptr noundef nonnull @.str.53, i64 noundef %6, i64 noundef %8, i32 noundef %10) #16
  br label %do.body11

do.body11:                                        ; preds = %do.end, %entry.do.body11_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %11 = load i32, ptr @afs_debug, align 4
  %and12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.do.body33_crit_edge, label %do.end23, !prof !210

do.body11.do.body33_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body33

do.end23:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  %12 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i148 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i148 to ptr
  %task26 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task26, align 8
  %comm27 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %comm27, ptr noundef %inode) #16
  br label %do.body33

do.body33:                                        ; preds = %do.end23, %do.body11.do.body33_crit_edge
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %17 to i64
  %vnode35 = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %vnode35 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %vnode35, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %conv)
  %cmp.not = icmp eq i64 %19, %conv
  br i1 %cmp.not, label %do.end82, label %do.end48, !prof !210

do.end48:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #15
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #16
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #16
  %20 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino, align 8
  %22 = ptrtoint ptr %vnode35 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %vnode35, align 8
  %conv63 = trunc i64 %23 to i32
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %21, i32 noundef %conv63) #16
  %24 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_ino, align 8
  %26 = ptrtoint ptr %vnode35 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %vnode35, align 8
  %conv72 = trunc i64 %27 to i32
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %25, i32 noundef %conv72) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 774, 0\0A.popsection", ""() #13, !srcloc !232
  unreachable

do.end82:                                         ; preds = %do.body33
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #13
  %data_version.i = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %data_version.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %data_version.i, align 8
  %30 = ptrtoint ptr %aux to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %aux, align 8
  %cache.i = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 5
  %31 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cache.i, align 8
  %i_state.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %33 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_state.i, align 8
  %and.i149 = and i32 %34, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i149)
  %tobool.not.i = icmp eq i32 %and.i149, 0
  br i1 %tobool.not.i, label %do.end82.fscache_clear_inode_writeback.exit_crit_edge, label %if.then.i

do.end82.fscache_clear_inode_writeback.exit_crit_edge: ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %fscache_clear_inode_writeback.exit

if.then.i:                                        ; preds = %do.end82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i_size.i) #13
  %i_size_seqcount.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %i_size18.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %if.then.i
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %i_size_seqcount.i.i) #13
  %35 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and29.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool.not30.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool.not30.i.i, label %do.body.i.i.while.end.i.i_crit_edge, label %do.body.i.i.do.end.i.i_crit_edge

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  br label %do.end.i.i

do.body.i.i.while.end.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !229
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !230
  %37 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and.i.i = and i32 %38, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.while.end.i.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end.i.i.while.end.i.i_crit_edge, %do.body.i.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %36, %do.body.i.i.while.end.i.i_crit_edge ], [ %38, %do.end.i.i.while.end.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !231
  %39 = ptrtoint ptr %i_size18.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %i_size18.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !223
  %41 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq i32 %42, %.lcssa.i.i
  br i1 %cmp.i.i.not.i.i, label %i_size_read.exit.i, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i

i_size_read.exit.i:                               ; preds = %while.end.i.i
  %43 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %40, ptr %i_size.i, align 8
  %tobool.not.i2.i = icmp eq ptr %32, null
  br i1 %tobool.not.i2.i, label %i_size_read.exit.i.fscache_unuse_cookie.exit.i_crit_edge, label %if.then.i.i

i_size_read.exit.i.fscache_unuse_cookie.exit.i_crit_edge: ; preds = %i_size_read.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fscache_unuse_cookie.exit.i

if.then.i.i:                                      ; preds = %i_size_read.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__fscache_unuse_cookie(ptr noundef nonnull %32, ptr noundef nonnull %aux, ptr noundef nonnull %i_size.i) #13
  br label %fscache_unuse_cookie.exit.i

fscache_unuse_cookie.exit.i:                      ; preds = %if.then.i.i, %i_size_read.exit.i.fscache_unuse_cookie.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i_size.i) #13
  br label %fscache_clear_inode_writeback.exit

fscache_clear_inode_writeback.exit:               ; preds = %fscache_unuse_cookie.exit.i, %do.end82.fscache_clear_inode_writeback.exit_crit_edge
  call void @clear_inode(ptr noundef %inode) #13
  %wb_keys = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 14
  %44 = ptrtoint ptr %wb_keys to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %wb_keys, align 4
  %cmp.i.not154 = icmp eq ptr %45, %wb_keys
  br i1 %cmp.i.not154, label %fscache_clear_inode_writeback.exit.while.end_crit_edge, label %fscache_clear_inode_writeback.exit.while.body_crit_edge

fscache_clear_inode_writeback.exit.while.body_crit_edge: ; preds = %fscache_clear_inode_writeback.exit
  br label %while.body

fscache_clear_inode_writeback.exit.while.end_crit_edge: ; preds = %fscache_clear_inode_writeback.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %fscache_clear_inode_writeback.exit.while.body_crit_edge
  %46 = phi ptr [ %56, %list_del.exit.while.body_crit_edge ], [ %45, %fscache_clear_inode_writeback.exit.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %46, i32 -8
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %46) #13
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i, align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %46, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %53 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 256 to ptr), ptr %46, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @afs_put_wb_key(ptr noundef %add.ptr) #13
  %55 = ptrtoint ptr %wb_keys to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %wb_keys, align 4
  %cmp.i.not = icmp eq ptr %56, %wb_keys
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %fscache_clear_inode_writeback.exit.while.end_crit_edge
  %57 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cache.i, align 8
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 13
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %flags, align 4
  %tobool.not.i150 = icmp eq ptr %58, null
  br i1 %tobool.not.i150, label %while.end.fscache_relinquish_cookie.exit_crit_edge, label %if.then.i151

while.end.fscache_relinquish_cookie.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %fscache_relinquish_cookie.exit

if.then.i151:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %61 = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool91 = icmp ne i32 %61, 0
  call void @__fscache_relinquish_cookie(ptr noundef nonnull %58, i1 noundef zeroext %tobool91) #13
  br label %fscache_relinquish_cookie.exit

fscache_relinquish_cookie.exit:                   ; preds = %if.then.i151, %while.end.fscache_relinquish_cookie.exit_crit_edge
  %62 = ptrtoint ptr %cache.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %cache.i, align 8
  call void @afs_prune_wb_keys(ptr noundef %inode) #13
  %permit_cache = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 6
  %63 = ptrtoint ptr %permit_cache to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %permit_cache, align 4
  call void @afs_put_permits(ptr noundef %64) #13
  %silly_key = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 10
  %65 = ptrtoint ptr %silly_key to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %silly_key, align 4
  call void @key_put(ptr noundef %66) #13
  %67 = ptrtoint ptr %silly_key to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %silly_key, align 4
  %lock_key = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 18
  %68 = ptrtoint ptr %lock_key to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %lock_key, align 8
  call void @key_put(ptr noundef %69) #13
  %70 = ptrtoint ptr %lock_key to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %lock_key, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %71 = load i32, ptr @afs_debug, align 4
  %and101 = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %fscache_relinquish_cookie.exit.do.end121_crit_edge, label %do.end112, !prof !210

fscache_relinquish_cookie.exit.do.end121_crit_edge: ; preds = %fscache_relinquish_cookie.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end121

do.end112:                                        ; preds = %fscache_relinquish_cookie.exit
  call void @__sanitizer_cov_trace_pc() #15
  %72 = call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i152 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i152 to ptr
  %task115 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %task115 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task115, align 8
  %comm116 = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 101
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %comm116, ptr noundef nonnull @.str.53) #16
  br label %do.end121

do.end121:                                        ; preds = %do.end112, %fscache_relinquish_cookie.exit.do.end121_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %aux) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_wb_key(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_prune_wb_keys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_permits(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_setattr(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %attr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !210

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %fid, align 8
  %vnode7 = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %vnode7 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %vnode7, align 8
  %11 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %attr, align 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %comm, ptr noundef nonnull @.str.73, i64 noundef %8, i64 noundef %10, ptr noundef %dentry, i32 noundef %12) #16
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %13 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %attr, align 8
  %and12 = and i32 %14, 196911
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body15, label %if.end37

do.body15:                                        ; preds = %do.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %15 = load i32, ptr @afs_debug, align 4
  %and16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body15.cleanup162_crit_edge, label %do.end27, !prof !210

do.body15.cleanup162_crit_edge:                   ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup162

do.end27:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #15
  %16 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i226 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i226 to ptr
  %task30 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task30, align 8
  %comm31 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 101
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %comm31, ptr noundef nonnull @.str.73) #16
  br label %cleanup162

if.end37:                                         ; preds = %do.end10
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.end37
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %i_size_seqcount.i) #13
  %20 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %do.body.i.while.end.i_crit_edge, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  br label %do.end.i

do.body.i.while.end.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !229
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !230
  %22 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i227 = and i32 %23, 1
  %tobool.not.i = icmp eq i32 %and.i227, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %do.body.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %21, %do.body.i.while.end.i_crit_edge ], [ %23, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !231
  %24 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !223
  %26 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %27, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %28 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %attr, align 8
  %and40 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %i_size_read.exit.if.end58_crit_edge, label %if.then42

i_size_read.exit.if.end58_crit_edge:              ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.then42:                                        ; preds = %i_size_read.exit
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %1, align 8
  %32 = and i16 %31, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %32)
  %cmp = icmp eq i16 %32, -32768
  br i1 %cmp, label %if.end46, label %if.then42.cleanup162_crit_edge

if.then42.cleanup162_crit_edge:                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup162

if.end46:                                         ; preds = %if.then42
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %33 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ia_size, align 8
  %call47 = tail call i32 @inode_newsize_ok(ptr noundef %1, i64 noundef %34) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.cleanup162_crit_edge

if.end46.cleanup162_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup162

if.end50:                                         ; preds = %if.end46
  %35 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ia_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %25)
  %cmp52 = icmp eq i64 %36, %25
  br i1 %cmp52, label %if.then54, label %if.end50.if.end58_crit_edge

if.end50.if.end58_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %attr, align 8
  %and56 = and i32 %38, -9
  store i32 %and56, ptr %attr, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.end50.if.end58_crit_edge, %i_size_read.exit.if.end58_crit_edge
  %cache.i = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 5
  %39 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cache.i, align 8
  %tobool.not.i228 = icmp eq ptr %40, null
  br i1 %tobool.not.i228, label %if.end58.fscache_use_cookie.exit_crit_edge, label %if.then.i

if.end58.fscache_use_cookie.exit_crit_edge:       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %fscache_use_cookie.exit

if.then.i:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__fscache_use_cookie(ptr noundef nonnull %40, i1 noundef zeroext true) #13
  br label %fscache_use_cookie.exit

fscache_use_cookie.exit:                          ; preds = %if.then.i, %if.end58.fscache_use_cookie.exit_crit_edge
  %validate_lock = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 8
  tail call void @down_write(ptr noundef %validate_lock) #13
  %41 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %attr, align 8
  %and61 = and i32 %42, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %fscache_use_cookie.exit.if.end105_crit_edge, label %land.lhs.true

fscache_use_cookie.exit.if.end105_crit_edge:      ; preds = %fscache_use_cookie.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

land.lhs.true:                                    ; preds = %fscache_use_cookie.exit
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %1, align 8
  %45 = and i16 %44, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %45)
  %cmp66 = icmp eq i16 %45, -32768
  br i1 %cmp66, label %if.then68, label %land.lhs.true.if.end105_crit_edge

land.lhs.true.if.end105_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

if.then68:                                        ; preds = %land.lhs.true
  %ia_size69 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %46 = ptrtoint ptr %ia_size69 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ia_size69, align 8
  %48 = tail call i64 @llvm.smin.i64(i64 %47, i64 %25)
  %49 = tail call i64 @llvm.smax.i64(i64 %47, i64 %25)
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %50 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_mapping, align 8
  %call80 = tail call i32 @filemap_fdatawait_range(ptr noundef %51, i64 noundef %48, i64 noundef %49) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.then68.out_unlock_crit_edge, label %if.end84

if.then68.out_unlock_crit_edge:                   ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end84:                                         ; preds = %if.then68
  %52 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %attr, align 8
  %and86 = and i32 %53, 196871
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %land.lhs.true88, label %if.end84.if.end105_crit_edge

if.end84.if.end105_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

land.lhs.true88:                                  ; preds = %if.end84
  %54 = ptrtoint ptr %ia_size69 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %ia_size69, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %55, i64 %25)
  %cmp90 = icmp slt i64 %55, %25
  br i1 %cmp90, label %land.lhs.true92, label %land.lhs.true88.if.end105_crit_edge

land.lhs.true88.if.end105_crit_edge:              ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

land.lhs.true92:                                  ; preds = %land.lhs.true88
  %status = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 3
  %56 = ptrtoint ptr %status to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %status, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %55, i64 %57)
  %cmp95 = icmp ugt i64 %55, %57
  br i1 %cmp95, label %if.then97, label %land.lhs.true92.if.end105_crit_edge

land.lhs.true92.if.end105_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

if.then97:                                        ; preds = %land.lhs.true92
  tail call void @truncate_pagecache(ptr noundef %1, i64 noundef %55) #13
  %58 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cache.i, align 8
  %60 = ptrtoint ptr %ia_size69 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %ia_size69, align 8
  %tobool.not.i230 = icmp eq ptr %59, null
  br i1 %tobool.not.i230, label %if.then97.fscache_resize_cookie.exit_crit_edge, label %land.lhs.true.i

if.then97.fscache_resize_cookie.exit_crit_edge:   ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #15
  br label %fscache_resize_cookie.exit

land.lhs.true.i:                                  ; preds = %if.then97
  %flags.i = getelementptr inbounds %struct.fscache_cookie, ptr %59, i32 0, i32 14
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %flags.i, align 4
  %64 = and i32 %63, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool1.not.i = icmp eq i32 %64, 0
  br i1 %tobool1.not.i, label %if.then.i231, label %land.lhs.true.i.fscache_resize_cookie.exit_crit_edge

land.lhs.true.i.fscache_resize_cookie.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fscache_resize_cookie.exit

if.then.i231:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__fscache_resize_cookie(ptr noundef nonnull %59, i64 noundef %61) #13
  br label %fscache_resize_cookie.exit

fscache_resize_cookie.exit:                       ; preds = %if.then.i231, %land.lhs.true.i.fscache_resize_cookie.exit_crit_edge, %if.then97.fscache_resize_cookie.exit_crit_edge
  %65 = ptrtoint ptr %ia_size69 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %ia_size69, align 8
  tail call fastcc void @i_size_write(ptr noundef %1, i64 noundef %66)
  br label %out_unlock

if.end105:                                        ; preds = %land.lhs.true92.if.end105_crit_edge, %land.lhs.true88.if.end105_crit_edge, %if.end84.if.end105_crit_edge, %land.lhs.true.if.end105_crit_edge, %fscache_use_cookie.exit.if.end105_crit_edge
  %67 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %attr, align 8
  %and107 = and i32 %68, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end105.cond.end112_crit_edge, label %cond.true109

if.end105.cond.end112_crit_edge:                  ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end112

cond.true109:                                     ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  %ia_file = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 8
  %69 = ptrtoint ptr %ia_file to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ia_file, align 8
  %private_data.i = getelementptr inbounds %struct.file, ptr %70, i32 0, i32 16
  %71 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %private_data.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  br label %cond.end112

cond.end112:                                      ; preds = %cond.true109, %if.end105.cond.end112_crit_edge
  %cond113 = phi ptr [ %74, %cond.true109 ], [ null, %if.end105.cond.end112_crit_edge ]
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 1
  %75 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %volume, align 8
  %call114 = tail call ptr @afs_alloc_operation(ptr noundef %cond113, ptr noundef %76) #13
  %cmp.i = icmp ugt ptr %call114, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then116, label %if.end118

if.then116:                                       ; preds = %cond.end112
  call void @__sanitizer_cov_trace_pc() #15
  %77 = ptrtoint ptr %call114 to i32
  br label %out_unlock

if.end118:                                        ; preds = %cond.end112
  %file.i = getelementptr inbounds %struct.afs_operation, ptr %call114, i32 0, i32 5
  %78 = ptrtoint ptr %file.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %1, ptr %file.i, align 8
  %need_io_lock.i = getelementptr inbounds %struct.afs_operation, ptr %call114, i32 0, i32 5, i32 0, i32 6
  %79 = ptrtoint ptr %need_io_lock.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load.i = load i8, ptr %need_io_lock.i, align 1
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %need_io_lock.i, align 1
  %80 = getelementptr inbounds %struct.afs_operation, ptr %call114, i32 0, i32 17
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %attr, ptr %80, align 8
  %82 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %attr, align 8
  %and121 = and i32 %83, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end118.if.end126_crit_edge, label %if.then123

if.end118.if.end126_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end126

if.then123:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  %dv_delta = getelementptr inbounds %struct.afs_operation, ptr %call114, i32 0, i32 5, i32 0, i32 5
  %84 = ptrtoint ptr %dv_delta to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %dv_delta, align 4
  %bf.set = or i8 %bf.load.i, 80
  %85 = ptrtoint ptr %need_io_lock.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %bf.set, ptr %need_io_lock.i, align 1
  br label %if.end126

if.end126:                                        ; preds = %if.then123, %if.end118.if.end126_crit_edge
  %ctime = getelementptr inbounds %struct.afs_operation, ptr %call114, i32 0, i32 11
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 7
  %86 = call ptr @memcpy(ptr %ctime, ptr %ia_ctime, i32 16)
  %87 = ptrtoint ptr %need_io_lock.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load129 = load i8, ptr %need_io_lock.i, align 1
  %bf.set136 = or i8 %bf.load129, 34
  store i8 %bf.set136, ptr %need_io_lock.i, align 1
  %ops = getelementptr inbounds %struct.afs_operation, ptr %call114, i32 0, i32 3
  %88 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @afs_setattr_operation, ptr %ops, align 4
  %call137 = tail call i32 @afs_do_sync_operation(ptr noundef %call114) #13
  br label %out_unlock

out_unlock:                                       ; preds = %if.end126, %if.then116, %fscache_resize_cookie.exit, %if.then68.out_unlock_crit_edge
  %ret.1 = phi i32 [ %77, %if.then116 ], [ %call137, %if.end126 ], [ 0, %fscache_resize_cookie.exit ], [ %call80, %if.then68.out_unlock_crit_edge ]
  tail call void @up_write(ptr noundef %validate_lock) #13
  %89 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cache.i, align 8
  %tobool.not.i233 = icmp eq ptr %90, null
  br i1 %tobool.not.i233, label %out_unlock.fscache_unuse_cookie.exit_crit_edge, label %if.then.i234

out_unlock.fscache_unuse_cookie.exit_crit_edge:   ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #15
  br label %fscache_unuse_cookie.exit

if.then.i234:                                     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__fscache_unuse_cookie(ptr noundef nonnull %90, ptr noundef null, ptr noundef null) #13
  br label %fscache_unuse_cookie.exit

fscache_unuse_cookie.exit:                        ; preds = %if.then.i234, %out_unlock.fscache_unuse_cookie.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %91 = load i32, ptr @afs_debug, align 4
  %and141 = and i32 %91, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %fscache_unuse_cookie.exit.cleanup162_crit_edge, label %do.end152, !prof !210

fscache_unuse_cookie.exit.cleanup162_crit_edge:   ; preds = %fscache_unuse_cookie.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup162

do.end152:                                        ; preds = %fscache_unuse_cookie.exit
  call void @__sanitizer_cov_trace_pc() #15
  %92 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i235 = and i32 %92, -16384
  %93 = inttoptr i32 %and.i235 to ptr
  %task155 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %task155 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %task155, align 8
  %comm156 = getelementptr inbounds %struct.task_struct, ptr %95, i32 0, i32 101
  %call158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %comm156, ptr noundef nonnull @.str.73, i32 noundef %ret.1) #16
  br label %cleanup162

cleanup162:                                       ; preds = %do.end152, %fscache_unuse_cookie.exit.cleanup162_crit_edge, %if.end46.cleanup162_crit_edge, %if.then42.cleanup162_crit_edge, %do.end27, %do.body15.cleanup162_crit_edge
  %retval.0 = phi i32 [ 0, %do.end27 ], [ 0, %do.body15.cleanup162_crit_edge ], [ -21, %if.then42.cleanup162_crit_edge ], [ %call47, %if.end46.cleanup162_crit_edge ], [ %ret.1, %do.end152 ], [ %ret.1, %fscache_unuse_cookie.exit.cleanup162_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_newsize_ok(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %9 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !235
  %18 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !236
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !237
  %37 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !210

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.112, i32 noundef 271, i32 noundef 9, ptr noundef null) #13
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !211
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #13
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #13
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !217
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !238
  %48 = tail call i32 @llvm.read_register.i32(metadata !200) #13
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_protocol_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_vnode(ptr nocapture noundef readonly %vnode, ptr noundef readonly %parent_vnode) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 3
  %type = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 3, i32 10
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %1) #16
  %abort_code = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 3, i32 13
  %2 = ptrtoint ptr %abort_code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %abort_code, align 8
  %mode = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 3, i32 9
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mode, align 8
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %status, align 8
  %data_version = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %data_version to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %data_version, align 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %3, i32 noundef %conv, i64 noundef %7, i64 noundef %9) #16
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2
  %10 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %fid, align 8
  %vnode13 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %vnode13 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %vnode13, align 8
  %unique = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %unique, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, i64 noundef %11, i64 noundef %13, i32 noundef %15) #16
  %tobool.not = icmp eq ptr %parent_vnode, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end17

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fid19 = getelementptr inbounds %struct.afs_vnode, ptr %parent_vnode, i32 0, i32 2
  %16 = ptrtoint ptr %fid19 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fid19, align 8
  %vnode22 = getelementptr inbounds %struct.afs_vnode, ptr %parent_vnode, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %vnode22 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %vnode22, align 8
  %unique24 = getelementptr inbounds %struct.afs_vnode, ptr %parent_vnode, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %unique24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %unique24, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i64 noundef %17, i64 noundef %19, i32 noundef %21) #16
  br label %if.end

if.end:                                           ; preds = %do.end17, %entry.if.end_crit_edge
  %call26 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @dump_vnode.once_only) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_stack() #16
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end.if.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_get_link(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__fscache_acquire_cookie(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @seqcount_lockdep_reader_access(ptr noundef %s) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !239
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.body24.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  %dep_map.c = getelementptr inbounds %struct.seqcount, ptr %s, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #13
  tail call void @lock_release(ptr noundef %dep_map.c, i32 noundef %2) #13
  tail call void @trace_hardirqs_on() #13
  br label %do.body24

do.body24.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map.c48 = getelementptr inbounds %struct.seqcount, ptr %s, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #13
  tail call void @lock_release(ptr noundef %dep_map.c48, i32 noundef %4) #13
  br label %do.body24

do.body24:                                        ; preds = %do.body24.critedge, %if.then
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !240
  %and.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body24.do.end39_crit_edge, !prof !218

do.body24.do.end39_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #13, !srcloc !241
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_cb_miss(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_invalidate(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_relinquish_cookie(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_use_cookie(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_resize_cookie(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fs_setattr(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @yfs_fs_setattr(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_setattr_success(ptr noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 8
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %i_size_seqcount.i) #13
  %2 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %do.body.i.while.end.i_crit_edge, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  br label %do.end.i

do.body.i.while.end.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !229
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !230
  %4 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %5, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %do.body.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %3, %do.body.i.while.end.i_crit_edge ], [ %5, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !231
  %6 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !223
  %8 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %9, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %10 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %old_i_size1 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %old_i_size1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %7, ptr %old_i_size1, align 8
  tail call void @afs_vnode_commit_status(ptr noundef %op, ptr noundef %file)
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %10, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %and = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %i_size_read.exit.if.end4_crit_edge, label %if.then

i_size_read.exit.if.end4_crit_edge:               ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then:                                          ; preds = %i_size_read.exit
  %ia_size = getelementptr inbounds %struct.iattr, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ia_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %7)
  %cmp = icmp sgt i64 %17, %7
  br i1 %cmp, label %if.then3, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pagecache_isize_extended(ptr noundef %1, i64 noundef %7, i64 noundef %17) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then.if.end4_crit_edge, %i_size_read.exit.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_setattr_edit_file(ptr nocapture noundef readonly %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 8
  %2 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then:                                          ; preds = %entry
  %ia_size = getelementptr inbounds %struct.iattr, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ia_size, align 8
  %old_i_size = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %old_i_size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %old_i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %cmp = icmp slt i64 %8, %10
  br i1 %cmp, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @truncate_pagecache(ptr noundef %1, i64 noundef %8) #13
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %cmp3.not = icmp eq i64 %8, %10
  br i1 %cmp3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then4:                                         ; preds = %if.end
  %11 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %file, align 8
  %cache.i = getelementptr inbounds %struct.afs_vnode, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cache.i, align 8
  %scb = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 2
  %15 = ptrtoint ptr %scb to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %scb, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then4.if.end8_crit_edge, label %land.lhs.true.i

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true.i:                                  ; preds = %if.then4
  %flags.i = getelementptr inbounds %struct.fscache_cookie, ptr %14, i32 0, i32 14
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags.i, align 4
  %19 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool1.not.i = icmp eq i32 %19, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.if.end8_crit_edge

land.lhs.true.i.if.end8_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__fscache_resize_cookie(ptr noundef nonnull %14, i64 noundef %16) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then.i, %land.lhs.true.i.if.end8_crit_edge, %if.then4.if.end8_crit_edge, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pagecache_isize_extended(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_unuse_cookie(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !129, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !154, !155, !156, !158, !159, !160, !162, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !185, !186, !187, !189, !190, !192, !193, !194, !195, !197, !198}
!llvm.named.register.sp = !{!200}
!llvm.module.flags = !{!201, !202, !203, !204, !205, !206, !207, !208}
!llvm.ident = !{!209}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/afs/inode.c", i32 272, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @afs_vnode_commit_status._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @afs_vnode_commit_status._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @afs_fetch_status_operation, !7, !"afs_fetch_status_operation", i1 false, i1 false}
!7 = !{!"../fs/afs/inode.c", i32 329, i32 32}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/afs/inode.c", i32 344, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @afs_fetch_status._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @afs_fetch_status._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/afs/inode.c", i32 453, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @afs_iget._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @afs_iget._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/afs/inode.c", i32 457, i32 3}
!20 = !{ptr @afs_iget._entry.7, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @afs_iget._entry_ptr.9, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/afs/inode.c", i32 463, i32 2}
!24 = !{ptr @afs_iget._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @afs_iget._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/afs/inode.c", i32 468, i32 3}
!28 = !{ptr @afs_iget._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @afs_iget._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @afs_iget._entry.16, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../fs/afs/inode.c", i32 481, i32 2}
!32 = !{ptr @afs_iget._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/afs/inode.c", i32 487, i32 2}
!35 = !{ptr @afs_iget._entry.18, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @afs_iget._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/afs/inode.c", i32 517, i32 2}
!39 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @afs_root_iget._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @afs_root_iget._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @afs_root_iget._entry.23, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../fs/afs/inode.c", i32 521, i32 3}
!44 = !{ptr @afs_root_iget._entry_ptr.24, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/afs/inode.c", i32 525, i32 2}
!47 = !{ptr @afs_root_iget._entry.25, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @afs_root_iget._entry_ptr.27, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @afs_root_iget._entry.28, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../fs/afs/inode.c", i32 550, i32 2}
!51 = !{ptr @afs_root_iget._entry_ptr.29, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @afs_root_iget._entry.30, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../fs/afs/inode.c", i32 555, i32 2}
!54 = !{ptr @afs_root_iget._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/afs/inode.c", i32 668, i32 2}
!57 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @afs_validate._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @afs_validate._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/afs/inode.c", i32 689, i32 3}
!62 = !{ptr @afs_validate._entry.34, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @afs_validate._entry_ptr.36, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/afs/inode.c", i32 698, i32 3}
!66 = !{ptr @afs_validate._entry.37, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @afs_validate._entry_ptr.39, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/afs/inode.c", i32 702, i32 3}
!70 = !{ptr @afs_validate._entry.40, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @afs_validate._entry_ptr.42, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.44, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/afs/inode.c", i32 713, i32 2}
!74 = !{ptr @afs_validate._entry.43, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @afs_validate._entry_ptr.45, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.47, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/afs/inode.c", i32 718, i32 2}
!78 = !{ptr @afs_validate._entry.46, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @afs_validate._entry_ptr.48, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.49, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/afs/inode.c", i32 732, i32 2}
!82 = !{ptr @.str.50, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @afs_getattr._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @afs_getattr._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.51, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/afs/inode.c", i32 751, i32 2}
!87 = !{ptr @afs_drop_inode._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @afs_drop_inode._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/afs/inode.c", i32 767, i32 2}
!91 = !{ptr @.str.53, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @afs_evict_inode._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @afs_evict_inode._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/afs/inode.c", i32 772, i32 2}
!96 = !{ptr @afs_evict_inode._entry.54, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @afs_evict_inode._entry_ptr.56, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.58, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/afs/inode.c", i32 774, i32 2}
!100 = !{ptr @afs_evict_inode._entry.57, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @afs_evict_inode._entry_ptr.59, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.61, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @afs_evict_inode._entry.60, !99, !"_entry", i1 false, i1 false}
!104 = !{ptr @afs_evict_inode._entry_ptr.62, !99, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.64, !99, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @afs_evict_inode._entry.63, !99, !"_entry", i1 false, i1 false}
!107 = !{ptr @afs_evict_inode._entry_ptr.65, !99, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.67, !99, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @afs_evict_inode._entry.66, !99, !"_entry", i1 false, i1 false}
!110 = !{ptr @afs_evict_inode._entry_ptr.68, !99, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.70, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/afs/inode.c", i32 801, i32 2}
!113 = !{ptr @afs_evict_inode._entry.69, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @afs_evict_inode._entry_ptr.71, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.72, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/afs/inode.c", i32 860, i32 2}
!117 = !{ptr @.str.73, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @afs_setattr._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @afs_setattr._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.75, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/afs/inode.c", i32 865, i32 3}
!122 = !{ptr @afs_setattr._entry.74, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @afs_setattr._entry_ptr.76, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @afs_setattr._entry.77, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../fs/afs/inode.c", i32 937, i32 2}
!126 = !{ptr @afs_setattr._entry_ptr.78, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.79, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/afs/inode.c", i32 163, i32 2}
!129 = !{ptr @.str.80, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @afs_apply_status._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @afs_apply_status._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.81, !128, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.83, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/afs/inode.c", i32 170, i32 3}
!135 = !{ptr @afs_apply_status._entry.82, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @afs_apply_status._entry_ptr.84, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.86, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/afs/inode.c", i32 207, i32 4}
!139 = !{ptr @afs_apply_status._entry.85, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @afs_apply_status._entry_ptr.87, !138, !"_entry_ptr", i1 false, i1 false}
!141 = distinct !{null, !142, !"__warned", i1 false, i1 false}
!142 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!143 = !{ptr @.str.88, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.89, !142, !"<string literal>", i1 false, i1 false}
!145 = distinct !{null, !146, !"__warned", i1 false, i1 false}
!146 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!147 = !{ptr @.str.90, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.91, !146, !"<string literal>", i1 false, i1 false}
!149 = distinct !{null, !150, !"__warned", i1 false, i1 false}
!150 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!151 = !{ptr @.str.92, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.93, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/afs/inode.c", i32 67, i32 2}
!154 = !{ptr @afs_inode_init_from_status._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @afs_inode_init_from_status._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.95, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/afs/inode.c", i32 71, i32 2}
!158 = !{ptr @afs_inode_init_from_status._entry.94, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @afs_inode_init_from_status._entry_ptr.96, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @afs_symlink_inode_operations, !161, !"afs_symlink_inode_operations", i1 false, i1 false}
!161 = !{!"../fs/afs/inode.c", i32 28, i32 38}
!162 = !{ptr @dump_vnode.once_only, !163, !"once_only", i1 false, i1 false}
!163 = !{!"../fs/afs/inode.c", i32 34, i32 23}
!164 = !{ptr @.str.97, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/afs/inode.c", i32 36, i32 2}
!166 = !{ptr @.str.98, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @dump_vnode._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @dump_vnode._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.100, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/afs/inode.c", i32 37, i32 2}
!171 = !{ptr @dump_vnode._entry.99, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @dump_vnode._entry_ptr.101, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.103, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/afs/inode.c", i32 42, i32 2}
!175 = !{ptr @dump_vnode._entry.102, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @dump_vnode._entry_ptr.104, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.106, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/afs/inode.c", i32 47, i32 3}
!179 = !{ptr @dump_vnode._entry.105, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @dump_vnode._entry_ptr.107, !178, !"_entry_ptr", i1 false, i1 false}
!181 = distinct !{null, !182, !"__warned", i1 false, i1 false}
!182 = !{!"../fs/afs/inode.c", i32 594, i32 10}
!183 = distinct !{null, !184, !"__already_done", i1 false, i1 false}
!184 = !{!"../include/trace/events/afs.h", i32 1415, i32 1}
!185 = !{ptr @.str.108, !184, !"<string literal>", i1 false, i1 false}
!186 = distinct !{null, !184, !"__warned", i1 false, i1 false}
!187 = distinct !{null, !188, !"__already_done", i1 false, i1 false}
!188 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!189 = !{ptr @.str.109, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.110, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/afs/inode.c", i32 565, i32 2}
!192 = !{ptr @.str.111, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @afs_zap_data._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @afs_zap_data._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = distinct !{null, !196, !"__already_done", i1 false, i1 false}
!196 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!197 = !{ptr @.str.112, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @afs_setattr_operation, !199, !"afs_setattr_operation", i1 false, i1 false}
!199 = !{!"../fs/afs/inode.c", i32 838, i32 39}
!200 = !{!"sp"}
!201 = !{i32 1, !"wchar_size", i32 2}
!202 = !{i32 1, !"min_enum_size", i32 4}
!203 = !{i32 8, !"branch-target-enforcement", i32 0}
!204 = !{i32 8, !"sign-return-address", i32 0}
!205 = !{i32 8, !"sign-return-address-all", i32 0}
!206 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!207 = !{i32 7, !"uwtable", i32 1}
!208 = !{i32 7, !"frame-pointer", i32 2}
!209 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!210 = !{!"branch_weights", i32 2000, i32 1}
!211 = !{i64 2149994963}
!212 = !{i8 0, i8 2}
!213 = !{i64 2157831083, i64 2157831562, i64 2157831120, i64 2157831176, i64 2157831210, i64 2157831234, i64 2157831275, i64 2157831296, i64 2157831324, i64 2157831358}
!214 = !{i64 2149378971}
!215 = !{i64 2149379237}
!216 = !{i64 2148232502, i64 2148232528, i64 2148232557, i64 2148232591, i64 2148232622, i64 2148232645}
!217 = !{i64 2149995288}
!218 = !{!"branch_weights", i32 1, i32 2000}
!219 = !{i64 2157862332, i64 2157862811, i64 2157862369, i64 2157862425, i64 2157862459, i64 2157862483, i64 2157862524, i64 2157862545, i64 2157862573, i64 2157862607}
!220 = !{i64 2150009391}
!221 = !{i64 2150009233}
!222 = !{i64 2150009561}
!223 = !{i64 2149994638}
!224 = !{i64 2148714317, i64 2148714322, i64 2148714335, i64 2148714379, i64 2148714413, i64 2148714434}
!225 = !{i64 2157734255}
!226 = !{i64 2157734462}
!227 = !{i64 2149387530}
!228 = !{i64 2149388566}
!229 = !{i64 2152725936}
!230 = !{i64 2152725778}
!231 = !{i64 2152726106}
!232 = !{i64 2157904189, i64 2157904668, i64 2157904226, i64 2157904282, i64 2157904316, i64 2157904340, i64 2157904381, i64 2157904402, i64 2157904430, i64 2157904464}
!233 = !{i64 2152727867}
!234 = !{i64 2149886970}
!235 = !{i64 2149891902}
!236 = !{i64 2149913614}
!237 = !{i64 2149918506}
!238 = !{i64 2152739729}
!239 = !{i64 624983, i64 625044}
!240 = !{i64 627715}
!241 = !{i64 628000}
