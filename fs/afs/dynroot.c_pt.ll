; ModuleID = '/llk/IR_all_yes/fs/afs/dynroot.c_pt.bc'
source_filename = "../fs/afs/dynroot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.afs_fid = type { i64, i64, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.116 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.afs_super_info = type { ptr, ptr, ptr, i8, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.128, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.129, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.130, ptr, %struct.address_space, %struct.list_head, %union.anon.131, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.130 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.131 = type { ptr }
%struct.afs_vnode = type { %struct.inode, ptr, %struct.afs_fid, %struct.afs_file_status, i64, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, ptr, i64, i16, %struct.work_struct, %struct.list_head, ptr, %struct.atomic_t, i32, i32, i32, i32, %struct.seqlock_t, i64 }
%struct.afs_file_status = type { i64, i64, %struct.timespec64, %struct.timespec64, i64, i64, i64, i32, i32, i16, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.126, %struct.list_head, %struct.list_head, %union.anon.127 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.126 = type { %struct.list_head }
%union.anon.127 = type { %struct.hlist_node }
%struct.afs_net = type { ptr, %struct.afs_uuid, i8, ptr, ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.rb_root, ptr, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.rw_semaphore, %struct.mutex, %struct.mutex, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.seqlock_t, %struct.work_struct, %struct.timer_list, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.afs_uuid = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.afs_cell = type { %union.anon.149, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.hlist_node, i64, i64, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i16, i32, i32, %struct.rb_root, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.seqlock_t, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.rwlock_t, ptr, i8, ptr }
%union.anon.149 = type { %struct.rb_node }
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
@afs_iget_pseudo_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_iget_pseudo_dir\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/afs/dynroot.c\00", [47 x i8] zeroinitializer }, align 32
@afs_iget_pseudo_dir._entry_ptr = internal global ptr @afs_iget_pseudo_dir._entry, section ".printk_index", align 4
@afs_autocell_ino = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@afs_iget_pseudo_dir._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() = -ENOMEM\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_iget_pseudo_dir._entry_ptr.5 = internal global ptr @afs_iget_pseudo_dir._entry.3, section ".printk_index", align 4
@afs_iget_pseudo_dir._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%-6.6s]     GOT INODE %p { ino=%lu, vl=%llx, vn=%llx, u=%x }\0A\00", [33 x i8] zeroinitializer }, align 32
@afs_iget_pseudo_dir._entry_ptr.8 = internal global ptr @afs_iget_pseudo_dir._entry.6, section ".printk_index", align 4
@afs_dynroot_inode_operations = dso_local constant %struct.inode_operations { ptr @afs_dynroot_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@afs_autocell_inode_operations = external dso_local constant %struct.inode_operations, align 128
@afs_iget_pseudo_dir._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %p\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_iget_pseudo_dir._entry_ptr.11 = internal global ptr @afs_iget_pseudo_dir._entry.9, section ".printk_index", align 4
@afs_try_auto_mntpt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[%-6.6s] ==> %s(%p{%pd}, {%llx:%llu})\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"afs_try_auto_mntpt\00", [45 x i8] zeroinitializer }, align 32
@afs_try_auto_mntpt._entry_ptr = internal global ptr @afs_try_auto_mntpt._entry, section ".printk_index", align 4
@afs_try_auto_mntpt._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] <== %s()= %p\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_try_auto_mntpt._entry_ptr.16 = internal global ptr @afs_try_auto_mntpt._entry.14, section ".printk_index", align 4
@afs_try_auto_mntpt._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] <== %s()= %d\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_try_auto_mntpt._entry_ptr.19 = internal global ptr @afs_try_auto_mntpt._entry.17, section ".printk_index", align 4
@afs_dynroot_dentry_operations = dso_local local_unnamed_addr constant %struct.dentry_operations { ptr @afs_dynroot_d_revalidate, ptr null, ptr null, ptr null, ptr @afs_dynroot_d_delete, ptr null, ptr @afs_d_release, ptr null, ptr null, ptr null, ptr @afs_d_automount, ptr null, ptr null, [76 x i8] undef }, align 128
@afs_dynroot_rmdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s]     lookup %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"afs_dynroot_rmdir\00", [46 x i8] zeroinitializer }, align 32
@afs_dynroot_rmdir._entry_ptr = internal global ptr @afs_dynroot_rmdir._entry, section ".printk_index", align 4
@afs_dynroot_rmdir._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s]     rmdir %pd %u\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_dynroot_rmdir._entry_ptr.24 = internal global ptr @afs_dynroot_rmdir._entry.22, section ".printk_index", align 4
@afs_dynroot_rmdir._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s]     unpin %u\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_dynroot_rmdir._entry_ptr.27 = internal global ptr @afs_dynroot_rmdir._entry.25, section ".printk_index", align 4
@afs_dynroot_rmdir._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_dynroot_rmdir._entry_ptr.30 = internal global ptr @afs_dynroot_rmdir._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"afsdb\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"srv=1\00", [26 x i8] zeroinitializer }, align 32
@afs_dynroot_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%-6.6s] ==> %s(%pd)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"afs_dynroot_lookup\00", [45 x i8] zeroinitializer }, align 32
@afs_dynroot_lookup._entry_ptr = internal global ptr @afs_dynroot_lookup._entry, section ".printk_index", align 4
@afs_dynroot_lookup._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\013\0A\00", [28 x i8] zeroinitializer }, align 32
@afs_dynroot_lookup._entry_ptr.37 = internal global ptr @afs_dynroot_lookup._entry.35, section ".printk_index", align 4
@afs_dynroot_lookup._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013AFS: Assertion failed\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_dynroot_lookup._entry_ptr.40 = internal global ptr @afs_dynroot_lookup._entry.38, section ".printk_index", align 4
@afs_dynroot_lookup._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%lu == %lu is false\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_dynroot_lookup._entry_ptr.43 = internal global ptr @afs_dynroot_lookup._entry.41, section ".printk_index", align 4
@afs_dynroot_lookup._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.34, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0130x%lx == 0x%lx is false\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_dynroot_lookup._entry_ptr.46 = internal global ptr @afs_dynroot_lookup._entry.44, section ".printk_index", align 4
@afs_dynroot_lookup._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.34, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%-6.6s] <== %s() = -ENAMETOOLONG\0A\00", [61 x i8] zeroinitializer }, align 32
@afs_dynroot_lookup._entry_ptr.49 = internal global ptr @afs_dynroot_lookup._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"@cell\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@afs_net_id = external dso_local local_unnamed_addr global i32, align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 52, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"afs_autocell_ino\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 13, i32 17 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 67, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 71, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 102, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 149, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 165, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 169, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 320, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 324, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 327, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 334, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 132, i32 28 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 132, i32 48 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 223, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 225, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 231, i32 3 }
@___asan_gen_.183 = private constant [20 x i8] c"../fs/afs/dynroot.c\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 236, i32 34 }
@___asan_gen_.189 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 45, i32 7 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 695, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 723, i32 2 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @afs_dynroot_lookup._entry, ptr @afs_dynroot_lookup._entry.35, ptr @afs_dynroot_lookup._entry.38, ptr @afs_dynroot_lookup._entry.41, ptr @afs_dynroot_lookup._entry.44, ptr @afs_dynroot_lookup._entry.47, ptr @afs_dynroot_lookup._entry_ptr, ptr @afs_dynroot_lookup._entry_ptr.37, ptr @afs_dynroot_lookup._entry_ptr.40, ptr @afs_dynroot_lookup._entry_ptr.43, ptr @afs_dynroot_lookup._entry_ptr.46, ptr @afs_dynroot_lookup._entry_ptr.49, ptr @afs_dynroot_rmdir._entry, ptr @afs_dynroot_rmdir._entry.22, ptr @afs_dynroot_rmdir._entry.25, ptr @afs_dynroot_rmdir._entry.28, ptr @afs_dynroot_rmdir._entry_ptr, ptr @afs_dynroot_rmdir._entry_ptr.24, ptr @afs_dynroot_rmdir._entry_ptr.27, ptr @afs_dynroot_rmdir._entry_ptr.30, ptr @afs_iget_pseudo_dir._entry, ptr @afs_iget_pseudo_dir._entry.3, ptr @afs_iget_pseudo_dir._entry.6, ptr @afs_iget_pseudo_dir._entry.9, ptr @afs_iget_pseudo_dir._entry_ptr, ptr @afs_iget_pseudo_dir._entry_ptr.11, ptr @afs_iget_pseudo_dir._entry_ptr.5, ptr @afs_iget_pseudo_dir._entry_ptr.8, ptr @afs_try_auto_mntpt._entry, ptr @afs_try_auto_mntpt._entry.14, ptr @afs_try_auto_mntpt._entry.17, ptr @afs_try_auto_mntpt._entry_ptr, ptr @afs_try_auto_mntpt._entry_ptr.16, ptr @afs_try_auto_mntpt._entry_ptr.19, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @afs_autocell_ino, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_iget_pseudo_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_autocell_ino to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_iget_pseudo_dir._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_iget_pseudo_dir._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_iget_pseudo_dir._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_try_auto_mntpt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_try_auto_mntpt._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_try_auto_mntpt._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dynroot_rmdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dynroot_rmdir._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dynroot_rmdir._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dynroot_rmdir._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dynroot_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dynroot_lookup._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dynroot_lookup._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dynroot_lookup._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dynroot_lookup._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dynroot_lookup._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_iget_pseudo_dir(ptr noundef %sb, i1 noundef zeroext %root) local_unnamed_addr #0 align 64 {
entry:
  %fid = alloca %struct.afs_fid, align 8
  %tmp102 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fid) #12
  %2 = call ptr @memset(ptr %fid, i32 0, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %3 = load i32, ptr @afs_debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !103

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = tail call i32 @llvm.read_register.i32(metadata !93) #12
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1) #15
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %volume = getelementptr inbounds %struct.afs_super_info, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %volume, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %do.end7.if.end11_crit_edge, label %if.then9

do.end7.if.end11_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  %12 = ptrtoint ptr %fid to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %fid, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.end7.if.end11_crit_edge
  br i1 %root, label %if.end11.if.end18_crit_edge, label %if.else

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @afs_autocell_ino, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr nonnull @afs_autocell_ino, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @afs_autocell_ino, ptr nonnull @afs_autocell_ino, i32 1, ptr nonnull elementtype(i32) @afs_autocell_ino) #12, !srcloc !105
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !106
  %conv = sext i32 %asmresult.i.i.i.i to i64
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end11.if.end18_crit_edge
  %conv.sink = phi i64 [ %conv, %if.else ], [ 1, %if.end11.if.end18_crit_edge ]
  %.sink = phi i32 [ 0, %if.else ], [ 1, %if.end11.if.end18_crit_edge ]
  %14 = getelementptr inbounds %struct.afs_fid, ptr %fid, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv.sink, ptr %14, align 8
  %16 = getelementptr inbounds %struct.afs_fid, ptr %fid, i32 0, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %16, align 4
  %conv20 = trunc i64 %conv.sink to i32
  %call21 = call ptr @iget5_locked(ptr noundef %sb, i32 noundef %conv20, ptr noundef nonnull @afs_iget5_pseudo_test, ptr noundef nonnull @afs_iget5_pseudo_set, ptr noundef nonnull %fid) #12
  %tobool22.not = icmp eq ptr %call21, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %18 = load i32, ptr @afs_debug, align 4
  br i1 %tobool22.not, label %do.body24, label %do.body48

do.body24:                                        ; preds = %if.end18
  %and25 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.cleanup_crit_edge, label %do.end36, !prof !103

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end36:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  %19 = call i32 @llvm.read_register.i32(metadata !93) #12
  %and.i162 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i162 to ptr
  %task39 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task39, align 8
  %comm40 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 101
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm40, ptr noundef nonnull @.str.1) #15
  br label %cleanup

do.body48:                                        ; preds = %if.end18
  %and49 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body48.do.end72_crit_edge, label %do.end60, !prof !103

do.body48.do.end72_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end72

do.end60:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #14
  %23 = call i32 @llvm.read_register.i32(metadata !93) #12
  %and.i163 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i163 to ptr
  %task63 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task63 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task63, align 8
  %comm64 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 101
  %i_ino = getelementptr inbounds %struct.inode, ptr %call21, i32 0, i32 11
  %27 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i_ino, align 8
  %29 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %fid, align 8
  %31 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %14, align 8
  %33 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %16, align 4
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm64, ptr noundef nonnull %call21, i32 noundef %28, i64 noundef %30, i64 noundef %32, i32 noundef %34) #15
  br label %do.end72

do.end72:                                         ; preds = %do.end60, %do.body48.do.end72_crit_edge
  %i_state = getelementptr inbounds %struct.inode, ptr %call21, i32 0, i32 24
  %35 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i_state, align 8
  %and75 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body86, label %do.end94, !prof !107

do.body86:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/dynroot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #12, !srcloc !108
  unreachable

do.end94:                                         ; preds = %do.end72
  %i_size = getelementptr inbounds %struct.inode, ptr %call21, i32 0, i32 14
  %37 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 0, ptr %i_size, align 8
  %38 = ptrtoint ptr %call21 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 16749, ptr %call21, align 8
  br i1 %root, label %if.then96, label %do.end94.if.end99_crit_edge

do.end94.if.end99_crit_edge:                      ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.then96:                                        ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #14
  %39 = getelementptr inbounds %struct.inode, ptr %call21, i32 0, i32 44
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @simple_dir_operations, ptr %39, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %do.end94.if.end99_crit_edge
  %afs_autocell_inode_operations.sink = phi ptr [ @afs_dynroot_inode_operations, %if.then96 ], [ @afs_autocell_inode_operations, %do.end94.if.end99_crit_edge ]
  %41 = getelementptr inbounds %struct.inode, ptr %call21, i32 0, i32 7
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %afs_autocell_inode_operations.sink, ptr %41, align 8
  call void @set_nlink(ptr noundef nonnull %call21, i32 noundef 2) #12
  %i_uid = getelementptr inbounds %struct.inode, ptr %call21, i32 0, i32 2
  %43 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %call21, i32 0, i32 3
  %44 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %i_gid, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call21, i32 0, i32 17
  %i_atime = getelementptr inbounds %struct.inode, ptr %call21, i32 0, i32 15
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call21, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp102) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp102, ptr noundef nonnull %call21) #12
  %45 = call ptr @memcpy(ptr %i_mtime, ptr %tmp102, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp102) #12
  %46 = call ptr @memcpy(ptr %i_atime, ptr %i_mtime, i32 16)
  %47 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call21, i32 0, i32 22
  %48 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 0, ptr %i_blocks, align 8
  %i_generation = getelementptr inbounds %struct.inode, ptr %call21, i32 0, i32 49
  %49 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %i_generation, align 8
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %call21, i32 0, i32 13
  call void @_set_bit(i32 noundef 7, ptr noundef %flags) #12
  br i1 %root, label %if.end99.if.end106_crit_edge, label %if.then104

if.end99.if.end106_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  call void @_set_bit(i32 noundef 5, ptr noundef %flags) #12
  %i_flags = getelementptr inbounds %struct.inode, ptr %call21, i32 0, i32 4
  %50 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %i_flags, align 4
  %or = or i32 %51, 2048
  store i32 %or, ptr %i_flags, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %if.end99.if.end106_crit_edge
  %i_flags107 = getelementptr inbounds %struct.inode, ptr %call21, i32 0, i32 4
  %52 = ptrtoint ptr %i_flags107 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %i_flags107, align 4
  %or108 = or i32 %53, 2
  store i32 %or108, ptr %i_flags107, align 4
  call void @unlock_new_inode(ptr noundef nonnull %call21) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %54 = load i32, ptr @afs_debug, align 4
  %and110 = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end106.cleanup_crit_edge, label %do.end121, !prof !103

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end121:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  %55 = call i32 @llvm.read_register.i32(metadata !93) #12
  %and.i164 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i164 to ptr
  %task124 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task124 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task124, align 8
  %comm125 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 101
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm125, ptr noundef nonnull @.str.1, ptr noundef nonnull %call21) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end121, %if.end106.cleanup_crit_edge, %do.end36, %do.body24.cleanup_crit_edge
  %retval.0 = phi ptr [ %call21, %do.end121 ], [ %call21, %if.end106.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end36 ], [ inttoptr (i32 -12 to ptr), %do.body24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fid) #12
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget5_locked(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @afs_iget5_pseudo_test(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %opaque) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @afs_iget5_pseudo_set(ptr nocapture noundef %inode, ptr nocapture noundef readonly %opaque) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %fid3 = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %fid3, ptr %opaque, i32 24)
  %vnode4 = getelementptr inbounds %struct.afs_fid, ptr %opaque, i32 0, i32 1
  %8 = ptrtoint ptr %vnode4 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %vnode4, align 8
  %conv = trunc i64 %9 to i32
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %10 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %i_ino, align 8
  %unique = getelementptr inbounds %struct.afs_fid, ptr %opaque, i32 0, i32 3
  %11 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %unique, align 4
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %13 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %i_generation, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_try_auto_mntpt(ptr noundef %dentry, ptr noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !103

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !93) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 2
  %5 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %fid, align 8
  %vnode6 = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %vnode6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %vnode6, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm, ptr noundef nonnull @.str.13, ptr noundef %dentry, ptr noundef %dentry, i64 noundef %6, i64 noundef %8) #15
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 13
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  br i1 %tobool11.not, label %do.end9.do.body44_crit_edge, label %if.end13

do.end9.do.body44_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

if.end13:                                         ; preds = %do.end9
  %d_sb.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %12 = ptrtoint ptr %d_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_sb.i.i, align 4
  %call.i.i = tail call fastcc ptr @afs_sb2net(ptr noundef %13) #12
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name1.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name1.i, align 8
  %16 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %d_name.i, align 8
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %19)
  %cmp.i = icmp eq i8 %19, 46
  br i1 %cmp.i, label %if.then.i, label %if.end13.if.end8.i_crit_edge

if.end13.if.end8.i_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp5.i = icmp eq i32 %17, 1
  br i1 %cmp5.i, label %if.then.i.do.body44_crit_edge, label %if.end.i

if.then.i.do.body44_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr.i = getelementptr i8, ptr %15, i32 1
  %dec.i = add i32 %17, -1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i, %if.end13.if.end8.i_crit_edge
  %name.0.i = phi ptr [ %incdec.ptr.i, %if.end.i ], [ %15, %if.end13.if.end8.i_crit_edge ]
  %len.0.i = phi i32 [ %dec.i, %if.end.i ], [ %17, %if.end13.if.end8.i_crit_edge ]
  %call9.i = tail call ptr @afs_find_cell(ptr noundef %call.i.i, ptr noundef %name.0.i, i32 noundef %len.0.i, i32 noundef 34) #12
  %cmp.i.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end12.i, label %afs_probe_cell_name.exit.thread86

afs_probe_cell_name.exit.thread86:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @afs_unuse_cell(ptr noundef %call.i.i, ptr noundef %call9.i, i32 noundef 24) #12
  br label %if.end16

if.end12.i:                                       ; preds = %if.end8.i
  %20 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i.i, align 4
  %call14.i = tail call i32 @dns_query(ptr noundef %21, ptr noundef nonnull @.str.31, ptr noundef %name.0.i, i32 noundef %len.0.i, ptr noundef nonnull @.str.32, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call14.i)
  %cmp15.i = icmp eq i32 %call14.i, -61
  br i1 %cmp15.i, label %if.end12.i.do.body44_crit_edge, label %afs_probe_cell_name.exit

if.end12.i.do.body44_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

afs_probe_cell_name.exit:                         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp = icmp slt i32 %call14.i, 0
  br i1 %cmp, label %afs_probe_cell_name.exit.do.body44_crit_edge, label %afs_probe_cell_name.exit.if.end16_crit_edge

afs_probe_cell_name.exit.if.end16_crit_edge:      ; preds = %afs_probe_cell_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

afs_probe_cell_name.exit.do.body44_crit_edge:     ; preds = %afs_probe_cell_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

if.end16:                                         ; preds = %afs_probe_cell_name.exit.if.end16_crit_edge, %afs_probe_cell_name.exit.thread86
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %call17 = tail call ptr @afs_iget_pseudo_dir(ptr noundef %23, i1 noundef zeroext false)
  %cmp.i81 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81, label %if.then19, label %do.body22

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %call17 to i32
  br label %do.body44

do.body22:                                        ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %25 = load i32, ptr @afs_debug, align 4
  %and23 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body22.cleanup_crit_edge, label %do.end34, !prof !103

do.body22.cleanup_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end34:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #14
  %26 = tail call i32 @llvm.read_register.i32(metadata !93) #12
  %and.i82 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i82 to ptr
  %task37 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task37, align 8
  %comm38 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 101
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %comm38, ptr noundef nonnull @.str.13, ptr noundef %call17) #15
  br label %cleanup

do.body44:                                        ; preds = %if.then19, %afs_probe_cell_name.exit.do.body44_crit_edge, %if.end12.i.do.body44_crit_edge, %if.then.i.do.body44_crit_edge, %do.end9.do.body44_crit_edge
  %ret.0 = phi i32 [ %call14.i, %afs_probe_cell_name.exit.do.body44_crit_edge ], [ %24, %if.then19 ], [ -2, %do.end9.do.body44_crit_edge ], [ -22, %if.then.i.do.body44_crit_edge ], [ -89, %if.end12.i.do.body44_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %30 = load i32, ptr @afs_debug, align 4
  %and45 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.body44.do.end65_crit_edge, label %do.end56, !prof !103

do.body44.do.end65_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65

do.end56:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #14
  %31 = tail call i32 @llvm.read_register.i32(metadata !93) #12
  %and.i83 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i83 to ptr
  %task59 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task59 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task59, align 8
  %comm60 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 101
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %comm60, ptr noundef nonnull @.str.13, i32 noundef %ret.0) #15
  br label %do.end65

do.end65:                                         ; preds = %do.end56, %do.body44.do.end65_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %ret.0)
  %cmp66 = icmp eq i32 %ret.0, -2
  %35 = inttoptr i32 %ret.0 to ptr
  %spec.select = select i1 %cmp66, ptr null, ptr %35
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %do.end34, %do.body22.cleanup_crit_edge
  %retval.0 = phi ptr [ %call17, %do.end34 ], [ %call17, %do.body22.cleanup_crit_edge ], [ %spec.select, %do.end65 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @afs_dynroot_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body6_crit_edge, label %do.end, !prof !103

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !93) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %comm, ptr noundef nonnull @.str.34, ptr noundef %dentry) #15
  br label %do.body6

do.body6:                                         ; preds = %do.end, %entry.do.body6_crit_edge
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i, align 8
  %cmp.not = icmp eq ptr %6, null
  br i1 %cmp.not, label %do.end40, label %do.end18, !prof !103

do.end18:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #15
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #15
  %7 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i, align 8
  %9 = ptrtoint ptr %8 to i32
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %9, i32 noundef 0) #15
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  %12 = ptrtoint ptr %11 to i32
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %12, i32 noundef 0) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/dynroot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 225, 0\0A.popsection", ""() #12, !srcloc !109
  unreachable

do.end40:                                         ; preds = %do.body6
  %and41 = and i32 %flags, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end45, label %do.end40.return_crit_edge

do.end40.return_crit_edge:                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end45:                                         ; preds = %do.end40
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %13 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %14)
  %cmp46 = icmp ugt i32 %14, 255
  br i1 %cmp46, label %do.body48, label %if.end69

do.body48:                                        ; preds = %if.end45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %15 = load i32, ptr @afs_debug, align 4
  %and49 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body48.return_crit_edge, label %do.end59, !prof !103

do.body48.return_crit_edge:                       ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end59:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #14
  %16 = tail call i32 @llvm.read_register.i32(metadata !93) #12
  %and.i92 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i92 to ptr
  %task62 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task62 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task62, align 8
  %comm63 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 101
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %comm63, ptr noundef nonnull @.str.34) #15
  br label %return

if.end69:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %cmp72 = icmp eq i32 %14, 5
  br i1 %cmp72, label %land.lhs.true, label %if.end69.if.end78_crit_edge

if.end69.if.end78_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

land.lhs.true:                                    ; preds = %if.end69
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 8
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(5) %21, ptr noundef nonnull dereferenceable(5) @.str.50, i32 5) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp75 = icmp eq i32 %bcmp, 0
  br i1 %cmp75, label %if.then76, label %land.lhs.true.if.end78_crit_edge

land.lhs.true.if.end78_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.then76:                                        ; preds = %land.lhs.true
  %d_sb.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %22 = ptrtoint ptr %d_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_sb.i.i, align 4
  %call.i.i = tail call fastcc ptr @afs_sb2net(ptr noundef %23) #12
  %ws_cell.i = getelementptr inbounds %struct.afs_net, ptr %call.i.i, i32 0, i32 10
  %24 = ptrtoint ptr %ws_cell.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ws_cell.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.then76.return_crit_edge, label %if.end.i

if.then76.return_crit_edge:                       ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i:                                         ; preds = %if.then76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 257) #17
  %tobool4.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.return_crit_edge, label %if.end6.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end6.i:                                        ; preds = %if.end.i
  %cells_lock.i = getelementptr inbounds %struct.afs_net, ptr %call.i.i, i32 0, i32 14
  tail call void @down_read(ptr noundef %cells_lock.i) #12
  %27 = ptrtoint ptr %ws_cell.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ws_cell.i, align 4
  %tobool8.not.i = icmp eq ptr %28, null
  br i1 %tobool8.not.i, label %if.end11.thread.i, label %if.end16.i

if.end11.thread.i:                                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @up_read(ptr noundef %cells_lock.i) #12
  br label %out_n.i

if.end16.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %name_len.i = getelementptr inbounds %struct.afs_cell, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %name_len.i, align 4
  %conv.i = zext i8 %30 to i32
  %name10.i = getelementptr inbounds %struct.afs_cell, ptr %28, i32 0, i32 28
  %31 = ptrtoint ptr %name10.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name10.i, align 8
  %add.i = add nuw nsw i32 %conv.i, 1
  %33 = call ptr @memcpy(ptr %call7.i.i, ptr %32, i32 %add.i)
  tail call void @up_read(ptr noundef %cells_lock.i) #12
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %34 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d_parent.i, align 8
  %call17.i = tail call ptr @lookup_one_len(ptr noundef nonnull %call7.i.i, ptr noundef %35, i32 noundef %conv.i) #12
  br label %out_n.i

out_n.i:                                          ; preds = %if.end16.i, %if.end11.thread.i
  %ret.0.i = phi ptr [ %call17.i, %if.end16.i ], [ inttoptr (i32 -2 to ptr), %if.end11.thread.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %return

if.end78:                                         ; preds = %land.lhs.true.if.end78_crit_edge, %if.end69.if.end78_crit_edge
  %call79 = tail call ptr @afs_try_auto_mntpt(ptr noundef %dentry, ptr noundef %dir)
  %call80 = tail call ptr @d_splice_alias(ptr noundef %call79, ptr noundef %dentry) #12
  br label %return

return:                                           ; preds = %if.end78, %out_n.i, %if.end.i.return_crit_edge, %if.then76.return_crit_edge, %do.end59, %do.body48.return_crit_edge, %do.end40.return_crit_edge
  %retval.0 = phi ptr [ %call80, %if.end78 ], [ inttoptr (i32 -95 to ptr), %do.end40.return_crit_edge ], [ inttoptr (i32 -36 to ptr), %do.body48.return_crit_edge ], [ inttoptr (i32 -36 to ptr), %do.end59 ], [ %ret.0.i, %out_n.i ], [ inttoptr (i32 -12 to ptr), %if.end.i.return_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then76.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @afs_dynroot_d_revalidate(ptr nocapture noundef readnone %dentry, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @afs_dynroot_d_delete(ptr nocapture noundef readonly %dentry) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %cmp.i = icmp ne ptr %1, null
  %conv = zext i1 %cmp.i to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_d_release(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_d_automount(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_dynroot_mkdir(ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %cell) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dynroot_sb = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 32
  %0 = ptrtoint ptr %dynroot_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dynroot_sb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %s_active = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_active, i32 noundef 4) #12
  %2 = ptrtoint ptr %s_active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %s_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %s_root = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_root, align 64
  %d_inode = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #12
  %name = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 28
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  %name_len = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 27
  %10 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %name_len, align 4
  %conv = zext i8 %11 to i32
  %call1 = tail call ptr @lookup_one_len(ptr noundef %9, ptr noundef %5, i32 noundef %conv) #12
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %call1 to i32
  br label %unlock

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %call1, i32 0, i32 11
  %13 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 1 to ptr), ptr %d_fsdata, align 4
  br label %unlock

unlock:                                           ; preds = %if.end5, %if.then3
  %ret.0 = phi i32 [ %12, %if.then3 ], [ 0, %if.end5 ]
  %14 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i17 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i17) #12
  br label %cleanup

cleanup:                                          ; preds = %unlock, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_dynroot_rmdir(ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %cell) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dynroot_sb = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 32
  %0 = ptrtoint ptr %dynroot_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dynroot_sb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %s_active = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_active, i32 noundef 4) #12
  %2 = ptrtoint ptr %s_active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %s_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %s_root = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_root, align 64
  %d_inode = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #12
  %name = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 28
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  %name_len = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 27
  %10 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %name_len, align 4
  %conv = zext i8 %11 to i32
  %call1 = tail call ptr @try_lookup_one_len(ptr noundef %9, ptr noundef %5, i32 noundef %conv) #12
  %tobool.not.i = icmp eq ptr %call1, null
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %12 = load i32, ptr @afs_debug, align 4
  %and = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %spec.select.i, label %do.body, label %do.body16

do.body:                                          ; preds = %if.end
  br i1 %tobool4.not, label %do.body.no_dentry_crit_edge, label %do.end, !prof !103

do.body.no_dentry_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_dentry

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %13 = tail call i32 @llvm.read_register.i32(metadata !93) #12
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 101
  %17 = ptrtoint ptr %call1 to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %comm, i32 noundef %17) #15
  br label %no_dentry

do.body16:                                        ; preds = %if.end
  br i1 %tobool4.not, label %do.body16.do.end38_crit_edge, label %do.end28, !prof !103

do.body16.do.end38_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end38

do.end28:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  %18 = tail call i32 @llvm.read_register.i32(metadata !93) #12
  %and.i104 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i104 to ptr
  %task31 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task31, align 8
  %comm32 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 101
  %count.i = getelementptr inbounds %struct.dentry, ptr %call1, i32 0, i32 7, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count.i, align 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %comm32, ptr noundef nonnull %call1, i32 noundef %23) #15
  br label %do.end38

do.end38:                                         ; preds = %do.end28, %do.body16.do.end38_crit_edge
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %call1, i32 0, i32 11
  %24 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_fsdata, align 4
  %tobool39.not = icmp eq ptr %25, null
  br i1 %tobool39.not, label %do.end38.if.end65_crit_edge, label %do.body41

do.end38.if.end65_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

do.body41:                                        ; preds = %do.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %26 = load i32, ptr @afs_debug, align 4
  %and42 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %do.body41.do.end63_crit_edge, label %do.end53, !prof !103

do.body41.do.end63_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end63

do.end53:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #14
  %27 = tail call i32 @llvm.read_register.i32(metadata !93) #12
  %and.i105 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i105 to ptr
  %task56 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task56, align 8
  %comm57 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 101
  %count.i106 = getelementptr inbounds %struct.dentry, ptr %call1, i32 0, i32 7, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %count.i106 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count.i106, align 4
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %comm57, i32 noundef %32) #15
  br label %do.end63

do.end63:                                         ; preds = %do.end53, %do.body41.do.end63_crit_edge
  %33 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %d_fsdata, align 4
  tail call void @dput(ptr noundef nonnull %call1) #12
  br label %if.end65

if.end65:                                         ; preds = %do.end63, %do.end38.if.end65_crit_edge
  tail call void @dput(ptr noundef nonnull %call1) #12
  br label %no_dentry

no_dentry:                                        ; preds = %if.end65, %do.end, %do.body.no_dentry_crit_edge
  %34 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i107 = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i107) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %36 = load i32, ptr @afs_debug, align 4
  %and68 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %no_dentry.cleanup_crit_edge, label %do.end79, !prof !103

no_dentry.cleanup_crit_edge:                      ; preds = %no_dentry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end79:                                         ; preds = %no_dentry
  call void @__sanitizer_cov_trace_pc() #14
  %37 = tail call i32 @llvm.read_register.i32(metadata !93) #12
  %and.i108 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i108 to ptr
  %task82 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task82 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task82, align 8
  %comm83 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 101
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %comm83, ptr noundef nonnull @.str.21) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end79, %no_dentry.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @try_lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_dynroot_populate(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @afs_sb2net(ptr noundef %sb)
  %proc_cells_lock = getelementptr inbounds %struct.afs_net, ptr %call, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %proc_cells_lock, i32 noundef 0) #12
  %dynroot_sb = getelementptr inbounds %struct.afs_net, ptr %call, i32 0, i32 32
  %0 = ptrtoint ptr %dynroot_sb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %sb, ptr %dynroot_sb, align 4
  %proc_cells = getelementptr inbounds %struct.afs_net, ptr %call, i32 0, i32 17
  %1 = ptrtoint ptr %proc_cells to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %proc_cells, align 4
  %tobool.not = icmp eq ptr %2, null
  %add.ptr = getelementptr i8, ptr %2, i32 -72
  %tobool2.not3336 = icmp eq ptr %add.ptr, null
  %tobool2.not33 = or i1 %tobool.not, %tobool2.not3336
  br i1 %tobool2.not33, label %entry.out_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %cell.034 = phi ptr [ %add.ptr10, %for.inc.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %3 = ptrtoint ptr %dynroot_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dynroot_sb, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %lor.lhs.false.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %for.body
  %s_active.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_active.i, i32 noundef 4) #12
  %5 = ptrtoint ptr %s_active.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %s_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %lor.lhs.false.i.for.inc_crit_edge, label %if.end.i

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i:                                         ; preds = %lor.lhs.false.i
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 13
  %7 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_root.i, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.i) #12
  %name.i = getelementptr inbounds %struct.afs_cell, ptr %cell.034, i32 0, i32 28
  %11 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name.i, align 8
  %name_len.i = getelementptr inbounds %struct.afs_cell, ptr %cell.034, i32 0, i32 27
  %13 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %name_len.i, align 4
  %conv.i = zext i8 %14 to i32
  %call1.i = tail call ptr @lookup_one_len(ptr noundef %12, ptr noundef %8, i32 noundef %conv.i) #12
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %call1.i to i32
  br label %afs_dynroot_mkdir.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %call1.i, i32 0, i32 11
  %16 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 1 to ptr), ptr %d_fsdata.i, align 4
  br label %afs_dynroot_mkdir.exit

afs_dynroot_mkdir.exit:                           ; preds = %if.end5.i, %if.then3.i
  %ret.0.i = phi i32 [ %15, %if.then3.i ], [ 0, %if.end5.i ]
  %17 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i17.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i17.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp slt i32 %ret.0.i, 0
  br i1 %cmp, label %error, label %afs_dynroot_mkdir.exit.for.inc_crit_edge

afs_dynroot_mkdir.exit.for.inc_crit_edge:         ; preds = %afs_dynroot_mkdir.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %afs_dynroot_mkdir.exit.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %proc_link = getelementptr inbounds %struct.afs_cell, ptr %cell.034, i32 0, i32 6
  %19 = ptrtoint ptr %proc_link to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %proc_link, align 8
  %tobool6.not = icmp eq ptr %20, null
  %add.ptr10 = getelementptr i8, ptr %20, i32 -72
  %tobool2.not37 = icmp eq ptr %add.ptr10, null
  %tobool2.not = or i1 %tobool6.not, %tobool2.not37
  br i1 %tobool2.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %error, %for.inc.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %ret.0.i, %error ], [ 0, %entry.out_crit_edge ], [ 0, %for.inc.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %proc_cells_lock) #12
  ret i32 %ret.0

error:                                            ; preds = %afs_dynroot_mkdir.exit
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %dynroot_sb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %dynroot_sb, align 4
  br label %out
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @afs_sb2net(ptr nocapture noundef readonly %sb) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_net_id to i32))
  %4 = load i32, ptr @afs_net_id, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !93) #12
  %and.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !110
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i, label %entry.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 696, ptr noundef nonnull @.str.54) #12
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %gen.i.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 43
  %9 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %gen.i.i, align 128
  %call.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 45, ptr noundef nonnull @.str.52) #12
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i.i.do.end7.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge
  %arrayidx.i.i = getelementptr [0 x ptr], ptr %10, i32 0, i32 %4
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i10.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i10.i.i, label %do.end7.i.i.afs_net.exit_crit_edge, label %land.lhs.true.i13.i.i

do.end7.i.i.afs_net.exit_crit_edge:               ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_net.exit

land.lhs.true.i13.i.i:                            ; preds = %do.end7.i.i
  %call1.i11.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call1.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i13.i.i.afs_net.exit_crit_edge, label %land.lhs.true2.i15.i.i

land.lhs.true.i13.i.i.afs_net.exit_crit_edge:     ; preds = %land.lhs.true.i13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_net.exit

land.lhs.true2.i15.i.i:                           ; preds = %land.lhs.true.i13.i.i
  %.b4.i14.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i, label %land.lhs.true2.i15.i.i.afs_net.exit_crit_edge, label %if.then.i16.i.i

land.lhs.true2.i15.i.i.afs_net.exit_crit_edge:    ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_net.exit

if.then.i16.i.i:                                  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 724, ptr noundef nonnull @.str.55) #12
  br label %afs_net.exit

afs_net.exit:                                     ; preds = %if.then.i16.i.i, %land.lhs.true2.i15.i.i.afs_net.exit_crit_edge, %land.lhs.true.i13.i.i.afs_net.exit_crit_edge, %do.end7.i.i.afs_net.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !111
  %13 = tail call i32 @llvm.read_register.i32(metadata !93) #12
  %and.i.i.i.i.i17.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i17.i.i to ptr
  %preempt_count.i.i.i.i18.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i, align 4
  %sub.i.i.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i18.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_dynroot_depopulate(ptr noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @afs_sb2net(ptr noundef %sb)
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %0 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_root, align 64
  %proc_cells_lock = getelementptr inbounds %struct.afs_net, ptr %call, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %proc_cells_lock, i32 noundef 0) #12
  %dynroot_sb = getelementptr inbounds %struct.afs_net, ptr %call, i32 0, i32 32
  %2 = ptrtoint ptr %dynroot_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dynroot_sb, align 4
  %cmp = icmp eq ptr %3, %sb
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %dynroot_sb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dynroot_sb, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %proc_cells_lock) #12
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end22_crit_edge, label %if.then3

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then3:                                         ; preds = %if.end
  %d_inode = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #12
  %d_subdirs = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %d_subdirs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_subdirs, align 8
  %cmp11.not41 = icmp eq ptr %8, %d_subdirs
  br i1 %cmp11.not41, label %if.then3.for.end_crit_edge, label %if.then3.for.body_crit_edge

if.then3.for.body_crit_edge:                      ; preds = %if.then3
  br label %for.body

if.then3.for.end_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then3.for.body_crit_edge
  %.pn.in42 = phi ptr [ %.pn44, %for.inc.for.body_crit_edge ], [ %8, %if.then3.for.body_crit_edge ]
  %9 = ptrtoint ptr %.pn.in42 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn44 = load ptr, ptr %.pn.in42, align 8
  %d_fsdata = getelementptr i8, ptr %.pn.in42, i32 -12
  %10 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_fsdata, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %if.then13

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %subdir.043 = getelementptr i8, ptr %.pn.in42, i32 -184
  %12 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %d_fsdata, align 4
  tail call void @dput(ptr noundef %subdir.043) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %for.body.for.inc_crit_edge
  %cmp11.not = icmp eq ptr %.pn44, %d_subdirs
  br i1 %cmp11.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then3.for.end_crit_edge
  %13 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i38 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i38) #12
  br label %if.end22

if.end22:                                         ; preds = %for.end, %if.end.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_find_cell(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_unuse_cell(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dns_query(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
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

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !78, !79, !80, !82, !84, !85, !86, !88, !89, !90, !92}
!llvm.named.register.sp = !{!93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/afs/dynroot.c", i32 52, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @afs_iget_pseudo_dir._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @afs_iget_pseudo_dir._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/afs/dynroot.c", i32 67, i32 3}
!8 = !{ptr @afs_iget_pseudo_dir._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @afs_iget_pseudo_dir._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/afs/dynroot.c", i32 71, i32 2}
!12 = !{ptr @afs_iget_pseudo_dir._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @afs_iget_pseudo_dir._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/afs/dynroot.c", i32 102, i32 2}
!16 = !{ptr @afs_iget_pseudo_dir._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @afs_iget_pseudo_dir._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/afs/dynroot.c", i32 149, i32 2}
!20 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @afs_try_auto_mntpt._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @afs_try_auto_mntpt._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/afs/dynroot.c", i32 165, i32 2}
!25 = !{ptr @afs_try_auto_mntpt._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @afs_try_auto_mntpt._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/afs/dynroot.c", i32 169, i32 2}
!29 = !{ptr @afs_try_auto_mntpt._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @afs_try_auto_mntpt._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @afs_dynroot_inode_operations, !32, !"afs_dynroot_inode_operations", i1 false, i1 false}
!32 = !{!"../fs/afs/dynroot.c", i32 242, i32 31}
!33 = !{ptr @afs_dynroot_dentry_operations, !34, !"afs_dynroot_dentry_operations", i1 false, i1 false}
!34 = !{!"../fs/afs/dynroot.c", i32 265, i32 32}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/afs/dynroot.c", i32 320, i32 3}
!37 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @afs_dynroot_rmdir._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @afs_dynroot_rmdir._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/afs/dynroot.c", i32 324, i32 2}
!42 = !{ptr @afs_dynroot_rmdir._entry.22, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @afs_dynroot_rmdir._entry_ptr.24, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/afs/dynroot.c", i32 327, i32 3}
!46 = !{ptr @afs_dynroot_rmdir._entry.25, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @afs_dynroot_rmdir._entry_ptr.27, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/afs/dynroot.c", i32 334, i32 2}
!50 = !{ptr @afs_dynroot_rmdir._entry.28, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @afs_dynroot_rmdir._entry_ptr.30, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @afs_autocell_ino, !53, !"afs_autocell_ino", i1 false, i1 false}
!53 = !{!"../fs/afs/dynroot.c", i32 13, i32 17}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/afs/dynroot.c", i32 132, i32 28}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/afs/dynroot.c", i32 132, i32 48}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/afs/dynroot.c", i32 223, i32 2}
!60 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @afs_dynroot_lookup._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @afs_dynroot_lookup._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/afs/dynroot.c", i32 225, i32 2}
!65 = !{ptr @afs_dynroot_lookup._entry.35, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @afs_dynroot_lookup._entry_ptr.37, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @afs_dynroot_lookup._entry.38, !64, !"_entry", i1 false, i1 false}
!69 = !{ptr @afs_dynroot_lookup._entry_ptr.40, !64, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.42, !64, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @afs_dynroot_lookup._entry.41, !64, !"_entry", i1 false, i1 false}
!72 = !{ptr @afs_dynroot_lookup._entry_ptr.43, !64, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.45, !64, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @afs_dynroot_lookup._entry.44, !64, !"_entry", i1 false, i1 false}
!75 = !{ptr @afs_dynroot_lookup._entry_ptr.46, !64, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.48, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/afs/dynroot.c", i32 231, i32 3}
!78 = !{ptr @afs_dynroot_lookup._entry.47, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @afs_dynroot_lookup._entry_ptr.49, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.50, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/afs/dynroot.c", i32 236, i32 34}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!84 = !{ptr @.str.51, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.52, !83, !"<string literal>", i1 false, i1 false}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!88 = !{ptr @.str.53, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.54, !87, !"<string literal>", i1 false, i1 false}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!92 = !{ptr @.str.55, !91, !"<string literal>", i1 false, i1 false}
!93 = !{!"sp"}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"branch_weights", i32 2000, i32 1}
!104 = !{i64 2148744623}
!105 = !{i64 2148659908, i64 2148659940, i64 2148659969, i64 2148660003, i64 2148660034, i64 2148660057}
!106 = !{i64 2148744852}
!107 = !{!"branch_weights", i32 1, i32 2000}
!108 = !{i64 2157787799, i64 2157788279, i64 2157787836, i64 2157787892, i64 2157787926, i64 2157787950, i64 2157787991, i64 2157788012, i64 2157788040, i64 2157788074}
!109 = !{i64 2157805693, i64 2157806174, i64 2157805730, i64 2157805786, i64 2157805820, i64 2157805844, i64 2157805885, i64 2157805906, i64 2157805934, i64 2157805968}
!110 = !{i64 2149471634}
!111 = !{i64 2149471900}
