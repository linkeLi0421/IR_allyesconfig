; ModuleID = '/llk/IR_all_yes/fs/afs/write.c_pt.bc'
source_filename = "../fs/afs/write.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.netfs_read_request_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.110 }
%struct.atomic_t = type { i32 }
%union.anon.110 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.afs_operation_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon, %union.anon.125, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.125 = type { %struct.atomic_t }
%struct.afs_vnode = type { %struct.inode, ptr, %struct.afs_fid, %struct.afs_file_status, i64, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, ptr, i64, i16, %struct.work_struct, %struct.list_head, ptr, %struct.atomic_t, i32, i32, i32, i32, %struct.seqlock_t, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.126, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.127, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.128, ptr, %struct.address_space, %struct.list_head, %union.anon.129, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.126 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.127 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.128 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.129 = type { ptr }
%struct.afs_fid = type { i64, i64, i32, i32 }
%struct.afs_file_status = type { i64, i64, %struct.timespec64, %struct.timespec64, i64, i64, i64, i32, i32, i16, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.100, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.100 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.148 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.anon.119 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.fscache_cookie = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, %struct.hlist_bl_node, %struct.list_head, %struct.list_head, %struct.work_struct, i64, i32, i32, i8, i8, i8, i8, i32, %union.anon.149, %union.anon.150 }
%struct.hlist_bl_node = type { ptr, ptr }
%union.anon.149 = type { ptr, [12 x i8] }
%union.anon.150 = type { ptr, [4 x i8] }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.36, %union.anon.37 }
%union.anon.36 = type { ptr }
%union.anon.37 = type { i64 }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.vm_fault = type { %struct.anon.106, i32, ptr, ptr, %union.anon.107, ptr, ptr, ptr, ptr, ptr }
%struct.anon.106 = type { ptr, i32, i32, i32 }
%union.anon.107 = type { i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.104, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.afs_volume = type { %union.anon.151, %struct.atomic_t, i64, ptr, %struct.rb_node, %struct.hlist_node, ptr, i32, ptr, ptr, %struct.rwlock_t, i32, i32, %struct.rwlock_t, i8, i8, i8, [65 x i8] }
%union.anon.151 = type { i64 }
%struct.afs_wb_key = type { %struct.refcount_struct, ptr, %struct.list_head }
%struct.afs_operation = type { ptr, ptr, ptr, ptr, ptr, [2 x %struct.afs_vnode_param], ptr, %struct.afs_volsync, ptr, ptr, %struct.timespec64, %struct.timespec64, i16, i16, i32, i32, i32, %union.anon.159, %struct.afs_addr_cursor, ptr, ptr, ptr, i32, i16, i16, i32 }
%struct.afs_vnode_param = type { ptr, %struct.afs_fid, %struct.afs_status_cb, i64, i32, i8, i8 }
%struct.afs_status_cb = type { %struct.afs_file_status, %struct.afs_callback, i8, i8, i8 }
%struct.afs_callback = type { i64 }
%struct.afs_volsync = type { i64 }
%union.anon.159 = type { %struct.anon.168 }
%struct.anon.168 = type { %struct.afs_volume_status, ptr }
%struct.afs_volume_status = type { i64, i64, i8, i8, i8, i8, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.afs_addr_cursor = type { ptr, i32, i8, i8, i16, i16, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.anon.3 = type { [16 x i8], %struct.lockdep_map }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.171, [64 x ptr], %union.anon.172 }
%union.anon.171 = type { %struct.list_head }
%union.anon.172 = type { [3 x [2 x i32]] }
%struct.afs_vnode_cache_aux = type { i64 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.17, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.18, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.19, %union.anon.23, ptr }
%union.anon.17 = type { %struct.rb_node }
%union.anon.18 = type { i64 }
%union.anon.19 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.20, ptr, ptr, ptr }
%union.anon.20 = type { i32 }
%union.anon.23 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.afs_net = type { ptr, %struct.afs_uuid, i8, ptr, ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.rb_root, ptr, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.rw_semaphore, %struct.mutex, %struct.mutex, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.seqlock_t, %struct.work_struct, %struct.timer_list, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.afs_uuid = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.27, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.80, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.80 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
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
@afs_write_begin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%-6.6s] ==> %s({%llx:%llu},%llx,%x)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"afs_write_begin\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/afs/write.c\00", [17 x i8] zeroinitializer }, align 32
@afs_write_begin._entry_ptr = internal global ptr @afs_write_begin._entry, section ".printk_index", align 4
@afs_req_ops = external dso_local constant %struct.netfs_read_request_ops, align 4
@afs_write_begin._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\013\0A\00", [28 x i8] zeroinitializer }, align 32
@afs_write_begin._entry_ptr.5 = internal global ptr @afs_write_begin._entry.3, section ".printk_index", align 4
@afs_write_begin._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013AFS: Assertion failed\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_write_begin._entry_ptr.8 = internal global ptr @afs_write_begin._entry.6, section ".printk_index", align 4
@afs_write_begin._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%lu <= %lu is false\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_write_begin._entry_ptr.11 = internal global ptr @afs_write_begin._entry.9, section ".printk_index", align 4
@afs_write_begin._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0130x%lx <= 0x%lx is false\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_write_begin._entry_ptr.14 = internal global ptr @afs_write_begin._entry.12, section ".printk_index", align 4
@afs_write_begin.___tp_str = internal global ptr @.str.15, section "__tracepoint_str", align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"alrdy\00", [26 x i8] zeroinitializer }, align 32
@afs_write_begin._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] <== %s() = 0\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_write_begin._entry_ptr.18 = internal global ptr @afs_write_begin._entry.16, section ".printk_index", align 4
@afs_write_begin._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s]     flush conflict\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_write_begin._entry_ptr.21 = internal global ptr @afs_write_begin._entry.19, section ".printk_index", align 4
@afs_write_begin._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_write_begin._entry_ptr.24 = internal global ptr @afs_write_begin._entry.22, section ".printk_index", align 4
@afs_write_end._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%-6.6s] ==> %s({%llx:%llu},{%lx})\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"afs_write_end\00", [18 x i8] zeroinitializer }, align 32
@afs_write_end._entry_ptr = internal global ptr @afs_write_end._entry, section ".printk_index", align 4
@afs_write_end.___tp_str = internal global ptr @.str.27, section "__tracepoint_str", align 4
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dirty+\00", [25 x i8] zeroinitializer }, align 32
@afs_write_end.___tp_str.28 = internal global ptr @.str.29, section "__tracepoint_str", align 4
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dirty\00", [26 x i8] zeroinitializer }, align 32
@afs_write_end._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s]     dirtied %lx\0A\00", [38 x i8] zeroinitializer }, align 32
@afs_write_end._entry_ptr.32 = internal global ptr @afs_write_end._entry.30, section ".printk_index", align 4
@afs_writepage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s] ==> %s({%lx},)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"afs_writepage\00", [18 x i8] zeroinitializer }, align 32
@afs_writepage._entry_ptr = internal global ptr @afs_writepage._entry, section ".printk_index", align 4
@afs_writepage._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s] <== %s() = %zd\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_writepage._entry_ptr.37 = internal global ptr @afs_writepage._entry.35, section ".printk_index", align 4
@afs_writepage._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.34, ptr @.str.2, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_writepage._entry_ptr.39 = internal global ptr @afs_writepage._entry.38, section ".printk_index", align 4
@afs_writepages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"afs_writepages\00", [17 x i8] zeroinitializer }, align 32
@afs_writepages._entry_ptr = internal global ptr @afs_writepages._entry, section ".printk_index", align 4
@afs_writepages._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.41, ptr @.str.2, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_writepages._entry_ptr.43 = internal global ptr @afs_writepages._entry.42, section ".printk_index", align 4
@afs_file_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%-6.6s] ==> %s({%llx:%llu},{%zu},)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"afs_file_write\00", [17 x i8] zeroinitializer }, align 32
@afs_file_write._entry_ptr = internal global ptr @afs_file_write._entry, section ".printk_index", align 4
@afs_file_write._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016AFS: Attempt to write to active swap file!\0A\00", [50 x i8] zeroinitializer }, align 32
@afs_file_write._entry_ptr.48 = internal global ptr @afs_file_write._entry.46, section ".printk_index", align 4
@afs_file_write._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.45, ptr @.str.2, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_file_write._entry_ptr.50 = internal global ptr @afs_file_write._entry.49, section ".printk_index", align 4
@afs_fsync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%-6.6s] ==> %s({%llx:%llu},{n=%pD},%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"afs_fsync\00", [22 x i8] zeroinitializer }, align 32
@afs_fsync._entry_ptr = internal global ptr @afs_fsync._entry, section ".printk_index", align 4
@afs_page_mkwrite._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%-6.6s] ==> %s({{%llx:%llu}},{%lx})\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_page_mkwrite\00", [47 x i8] zeroinitializer }, align 32
@afs_page_mkwrite._entry_ptr = internal global ptr @afs_page_mkwrite._entry, section ".printk_index", align 4
@afs_page_mkwrite.___tp_str = internal global ptr @.str.55, section "__tracepoint_str", align 4
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mkwrite+\00", [23 x i8] zeroinitializer }, align 32
@afs_page_mkwrite.___tp_str.56 = internal global ptr @.str.57, section "__tracepoint_str", align 4
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mkwrite\00", [24 x i8] zeroinitializer }, align 32
@afs_launder_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] ==> %s({%lx})\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_launder_page\00", [47 x i8] zeroinitializer }, align 32
@afs_launder_page._entry_ptr = internal global ptr @afs_launder_page._entry, section ".printk_index", align 4
@afs_launder_page.___tp_str = internal global ptr @.str.60, section "__tracepoint_str", align 4
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"launder\00", [24 x i8] zeroinitializer }, align 32
@afs_launder_page.___tp_str.61 = internal global ptr @.str.62, section "__tracepoint_str", align 4
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"laundered\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_afs_folio_dirty = external dso_local global %struct.tracepoint, align 4
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/afs.h\00", [37 x i8] zeroinitializer }, align 32
@trace_afs_folio_dirty.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@fscache_n_updates = external dso_local global %struct.atomic_t, align 4
@.str.72 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@afs_write_back_from_locked_folio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] ==> %s(,%lx,%llx-%llx)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"afs_write_back_from_locked_folio\00", [63 x i8] zeroinitializer }, align 32
@afs_write_back_from_locked_folio._entry_ptr = internal global ptr @afs_write_back_from_locked_folio._entry, section ".printk_index", align 4
@afs_write_back_from_locked_folio.___tp_str = internal global ptr @.str.75, section "__tracepoint_str", align 4
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"store\00", [26 x i8] zeroinitializer }, align 32
@afs_write_back_from_locked_folio._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.74, ptr @.str.2, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%-6.6s]     write back %x @%llx [%llx]\0A\00", [55 x i8] zeroinitializer }, align 32
@afs_write_back_from_locked_folio._entry_ptr.78 = internal global ptr @afs_write_back_from_locked_folio._entry.76, section ".printk_index", align 4
@afs_write_back_from_locked_folio._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.74, ptr @.str.2, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[%-6.6s]     write discard %x @%llx [%llx]\0A\00", [52 x i8] zeroinitializer }, align 32
@afs_write_back_from_locked_folio._entry_ptr.81 = internal global ptr @afs_write_back_from_locked_folio._entry.79, section ".printk_index", align 4
@afs_write_back_from_locked_folio._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.74, ptr @.str.2, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015kAFS: Unexpected error from FS.StoreData %d\0A\00", [49 x i8] zeroinitializer }, align 32
@afs_write_back_from_locked_folio._entry_ptr.84 = internal global ptr @afs_write_back_from_locked_folio._entry.82, section ".printk_index", align 4
@afs_write_back_from_locked_folio._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.74, ptr @.str.2, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_write_back_from_locked_folio._entry_ptr.86 = internal global ptr @afs_write_back_from_locked_folio._entry.85, section ".printk_index", align 4
@.str.87 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"VM_BUG_ON_FOLIO(folio_test_private_2(folio))\00", [51 x i8] zeroinitializer }, align 32
@afs_extend_writeback.___tp_str = internal global ptr @.str.88, section "__tracepoint_str", align 4
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"store+\00", [25 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_unless = external dso_local global %struct.tracepoint, align 4
@xa_head.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/xarray.h\00", [41 x i8] zeroinitializer }, align 32
@xa_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.92 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@afs_pages_written_back._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%-6.6s] ==> %s({%llx:%llu},{%x @%llx})\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"afs_pages_written_back\00", [41 x i8] zeroinitializer }, align 32
@afs_pages_written_back._entry_ptr = internal global ptr @afs_pages_written_back._entry, section ".printk_index", align 4
@afs_pages_written_back._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[%-6.6s]     bad %x @%llx page %lx %lx\0A\00", [56 x i8] zeroinitializer }, align 32
@afs_pages_written_back._entry_ptr.97 = internal global ptr @afs_pages_written_back._entry.95, section ".printk_index", align 4
@afs_pages_written_back._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.94, ptr @.str.2, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_pages_written_back._entry_ptr.99 = internal global ptr @afs_pages_written_back._entry.98, section ".printk_index", align 4
@afs_pages_written_back._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.94, ptr @.str.2, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_pages_written_back._entry_ptr.101 = internal global ptr @afs_pages_written_back._entry.100, section ".printk_index", align 4
@afs_pages_written_back.___tp_str = internal global ptr @.str.102, section "__tracepoint_str", align 4
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clear\00", [26 x i8] zeroinitializer }, align 32
@afs_pages_written_back._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.94, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_pages_written_back._entry_ptr.105 = internal global ptr @afs_pages_written_back._entry.103, section ".printk_index", align 4
@afs_redirty_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%-6.6s] ==> %s({%llx:%llu},%llx @%llx)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"afs_redirty_pages\00", [46 x i8] zeroinitializer }, align 32
@afs_redirty_pages._entry_ptr = internal global ptr @afs_redirty_pages._entry, section ".printk_index", align 4
@afs_redirty_pages._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s]     redirty %llx @%llx\0A\00", [63 x i8] zeroinitializer }, align 32
@afs_redirty_pages._entry_ptr.110 = internal global ptr @afs_redirty_pages._entry.108, section ".printk_index", align 4
@afs_redirty_pages._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.107, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_redirty_pages._entry_ptr.112 = internal global ptr @afs_redirty_pages._entry.111, section ".printk_index", align 4
@__tracepoint_afs_file_error = external dso_local global %struct.tracepoint, align 4
@trace_afs_file_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@afs_kill_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.113, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"afs_kill_pages\00", [17 x i8] zeroinitializer }, align 32
@afs_kill_pages._entry_ptr = internal global ptr @afs_kill_pages._entry, section ".printk_index", align 4
@afs_kill_pages._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s]     kill %lx (to %lx)\0A\00", [32 x i8] zeroinitializer }, align 32
@afs_kill_pages._entry_ptr.116 = internal global ptr @afs_kill_pages._entry.114, section ".printk_index", align 4
@afs_kill_pages._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.113, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_kill_pages._entry_ptr.118 = internal global ptr @afs_kill_pages._entry.117, section ".printk_index", align 4
@afs_writepages_region._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.2, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] ==> %s(%llx,%llx,)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"afs_writepages_region\00", [42 x i8] zeroinitializer }, align 32
@afs_writepages_region._entry_ptr = internal global ptr @afs_writepages_region._entry, section ".printk_index", align 4
@afs_writepages_region._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.120, ptr @.str.2, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s]     wback %lx\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_writepages_region._entry_ptr.123 = internal global ptr @afs_writepages_region._entry.121, section ".printk_index", align 4
@afs_writepages_region._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.120, ptr @.str.2, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_writepages_region._entry_ptr.125 = internal global ptr @afs_writepages_region._entry.124, section ".printk_index", align 4
@afs_writepages_region._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.120, ptr @.str.2, i32 784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] <== %s() = 0 [%llx]\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_writepages_region._entry_ptr.128 = internal global ptr @afs_writepages_region._entry.126, section ".printk_index", align 4
@.str.129 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.130 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@afs_store_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%-6.6s] ==> %s(%s{%llx:%llu.%u},%llx,%llx)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"afs_store_data\00", [17 x i8] zeroinitializer }, align 32
@afs_store_data._entry_ptr = internal global ptr @afs_store_data._entry, section ".printk_index", align 4
@afs_store_data._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.133, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%-6.6s] <== %s() = %d [no keys]\0A\00", [62 x i8] zeroinitializer }, align 32
@afs_store_data._entry_ptr.136 = internal global ptr @afs_store_data._entry.134, section ".printk_index", align 4
@afs_store_data_operation = internal constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr @afs_fs_store_data, ptr @yfs_fs_store_data, ptr @afs_store_data_success, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@afs_store_data._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.133, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s]     next\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_store_data._entry_ptr.139 = internal global ptr @afs_store_data._entry.137, section ".printk_index", align 4
@afs_store_data._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.133, ptr @.str.2, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_store_data._entry_ptr.141 = internal global ptr @afs_store_data._entry.140, section ".printk_index", align 4
@afs_get_writeback_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s]     wbk %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"afs_get_writeback_key\00", [42 x i8] zeroinitializer }, align 32
@afs_get_writeback_key._entry_ptr = internal global ptr @afs_get_writeback_key._entry, section ".printk_index", align 4
@afs_get_writeback_key._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.2, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s]     USE WB KEY %u\0A\00", [36 x i8] zeroinitializer }, align 32
@afs_get_writeback_key._entry_ptr.146 = internal global ptr @afs_get_writeback_key._entry.144, section ".printk_index", align 4
@afs_net_id = external dso_local local_unnamed_addr global i32, align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.147 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 4294967167, i64 4294967168, i64 4294967169, i64 4294967170, i64 4294967173, i64 4294967174, i64 4294967175, i64 4294967266, i64 4294967268, i64 4294967269, i64 4294967283, i64 4294967290, i64 4294967291, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.148 = internal global [8 x i64] [i64 6, i64 32, i64 4294967167, i64 4294967168, i64 4294967169, i64 4294967170, i64 4294967283, i64 4294967295]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 1026, i64 1030]
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 55, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 79, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 82, i32 33 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 95, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 102, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 114, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 132, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 169, i32 32 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 173, i32 32 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 177, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 678, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 688, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 692, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 798, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 832, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 846, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 850, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 864, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 879, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 904, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 938, i32 32 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 941, i32 32 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 992, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1008, i32 32 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1012, i32 31 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 260, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 698, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant [30 x i8] c"../include/trace/events/afs.h\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1019, i32 1 }
@___asan_gen_.328 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 108, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 797, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 717, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 271, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 1160, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 564, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 580, i32 31 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 607, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 617, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 633, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 664, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant [25 x i8] c"../include/linux/netfs.h\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 41, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 526, i32 33 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 695, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1166, i32 9 }
@___asan_gen_.391 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 723, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 266, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 274, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 276, i32 4 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 279, i32 32 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 287, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 234, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 238, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 252, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 196, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 200, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 219, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 708, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 721, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 774, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 784, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 49, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 34, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 362, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 371, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant [25 x i8] c"afs_store_data_operation\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 345, i32 39 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 406, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 418, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 310, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.529 = private constant [18 x i8] c"../fs/afs/write.c\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 314, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.532 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 45, i32 7 }
@llvm.compiler.used = appending global [185 x ptr] [ptr @afs_extend_writeback.___tp_str, ptr @afs_file_write._entry, ptr @afs_file_write._entry.46, ptr @afs_file_write._entry.49, ptr @afs_file_write._entry_ptr, ptr @afs_file_write._entry_ptr.48, ptr @afs_file_write._entry_ptr.50, ptr @afs_fsync._entry, ptr @afs_fsync._entry_ptr, ptr @afs_get_writeback_key._entry, ptr @afs_get_writeback_key._entry.144, ptr @afs_get_writeback_key._entry_ptr, ptr @afs_get_writeback_key._entry_ptr.146, ptr @afs_kill_pages._entry, ptr @afs_kill_pages._entry.114, ptr @afs_kill_pages._entry.117, ptr @afs_kill_pages._entry_ptr, ptr @afs_kill_pages._entry_ptr.116, ptr @afs_kill_pages._entry_ptr.118, ptr @afs_launder_page.___tp_str, ptr @afs_launder_page.___tp_str.61, ptr @afs_launder_page._entry, ptr @afs_launder_page._entry_ptr, ptr @afs_page_mkwrite.___tp_str, ptr @afs_page_mkwrite.___tp_str.56, ptr @afs_page_mkwrite._entry, ptr @afs_page_mkwrite._entry_ptr, ptr @afs_pages_written_back.___tp_str, ptr @afs_pages_written_back._entry, ptr @afs_pages_written_back._entry.100, ptr @afs_pages_written_back._entry.103, ptr @afs_pages_written_back._entry.95, ptr @afs_pages_written_back._entry.98, ptr @afs_pages_written_back._entry_ptr, ptr @afs_pages_written_back._entry_ptr.101, ptr @afs_pages_written_back._entry_ptr.105, ptr @afs_pages_written_back._entry_ptr.97, ptr @afs_pages_written_back._entry_ptr.99, ptr @afs_redirty_pages._entry, ptr @afs_redirty_pages._entry.108, ptr @afs_redirty_pages._entry.111, ptr @afs_redirty_pages._entry_ptr, ptr @afs_redirty_pages._entry_ptr.110, ptr @afs_redirty_pages._entry_ptr.112, ptr @afs_store_data._entry, ptr @afs_store_data._entry.134, ptr @afs_store_data._entry.137, ptr @afs_store_data._entry.140, ptr @afs_store_data._entry_ptr, ptr @afs_store_data._entry_ptr.136, ptr @afs_store_data._entry_ptr.139, ptr @afs_store_data._entry_ptr.141, ptr @afs_write_back_from_locked_folio.___tp_str, ptr @afs_write_back_from_locked_folio._entry, ptr @afs_write_back_from_locked_folio._entry.76, ptr @afs_write_back_from_locked_folio._entry.79, ptr @afs_write_back_from_locked_folio._entry.82, ptr @afs_write_back_from_locked_folio._entry.85, ptr @afs_write_back_from_locked_folio._entry_ptr, ptr @afs_write_back_from_locked_folio._entry_ptr.78, ptr @afs_write_back_from_locked_folio._entry_ptr.81, ptr @afs_write_back_from_locked_folio._entry_ptr.84, ptr @afs_write_back_from_locked_folio._entry_ptr.86, ptr @afs_write_begin.___tp_str, ptr @afs_write_begin._entry, ptr @afs_write_begin._entry.12, ptr @afs_write_begin._entry.16, ptr @afs_write_begin._entry.19, ptr @afs_write_begin._entry.22, ptr @afs_write_begin._entry.3, ptr @afs_write_begin._entry.6, ptr @afs_write_begin._entry.9, ptr @afs_write_begin._entry_ptr, ptr @afs_write_begin._entry_ptr.11, ptr @afs_write_begin._entry_ptr.14, ptr @afs_write_begin._entry_ptr.18, ptr @afs_write_begin._entry_ptr.21, ptr @afs_write_begin._entry_ptr.24, ptr @afs_write_begin._entry_ptr.5, ptr @afs_write_begin._entry_ptr.8, ptr @afs_write_end.___tp_str, ptr @afs_write_end.___tp_str.28, ptr @afs_write_end._entry, ptr @afs_write_end._entry.30, ptr @afs_write_end._entry_ptr, ptr @afs_write_end._entry_ptr.32, ptr @afs_writepage._entry, ptr @afs_writepage._entry.35, ptr @afs_writepage._entry.38, ptr @afs_writepage._entry_ptr, ptr @afs_writepage._entry_ptr.37, ptr @afs_writepage._entry_ptr.39, ptr @afs_writepages._entry, ptr @afs_writepages._entry.42, ptr @afs_writepages._entry_ptr, ptr @afs_writepages._entry_ptr.43, ptr @afs_writepages_region._entry, ptr @afs_writepages_region._entry.121, ptr @afs_writepages_region._entry.124, ptr @afs_writepages_region._entry.126, ptr @afs_writepages_region._entry_ptr, ptr @afs_writepages_region._entry_ptr.123, ptr @afs_writepages_region._entry_ptr.125, ptr @afs_writepages_region._entry_ptr.128, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.40, ptr @.str.41, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.113, ptr @.str.115, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.135, ptr @afs_store_data_operation, ptr @.str.138, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.147], section "llvm.metadata"
@0 = internal global [128 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_write_begin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_write_begin._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_write_begin._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_write_begin._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_write_begin._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_write_begin._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_write_begin._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_write_begin._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_write_end._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_write_end._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_writepage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_writepage._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_writepage._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_writepages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_writepages._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_file_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_file_write._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_file_write._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fsync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_page_mkwrite._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_launder_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_write_back_from_locked_folio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_write_back_from_locked_folio._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_write_back_from_locked_folio._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_write_back_from_locked_folio._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_write_back_from_locked_folio._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_pages_written_back._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_pages_written_back._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_pages_written_back._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_pages_written_back._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_pages_written_back._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_redirty_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_redirty_pages._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_redirty_pages._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_kill_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_kill_pages._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_kill_pages._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_writepages_region._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_writepages_region._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_writepages_region._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_writepages_region._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_store_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_store_data._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_store_data_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_store_data._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_store_data._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_get_writeback_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_get_writeback_key._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_set_page_dirty(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cache.i = getelementptr inbounds %struct.afs_vnode, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cache.i, align 8
  %call2 = tail call i32 @fscache_set_page_dirty(ptr noundef %page, ptr noundef %5) #9
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscache_set_page_dirty(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_write_begin(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr nocapture noundef writeonly %_page, ptr noundef %fsdata) local_unnamed_addr #0 align 64 {
entry:
  %folio = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %folio) #9
  %2 = ptrtoint ptr %folio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %folio, align 4, !annotation !280
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %3 = load i32, ptr @afs_debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !281

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fid, align 8
  %vnode7 = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %vnode7 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %vnode7, align 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, i64 noundef %9, i64 noundef %11, i64 noundef %pos, i32 noundef %len) #12
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %call11 = call i32 @netfs_write_begin(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef nonnull %folio, ptr noundef %fsdata, ptr noundef nonnull @afs_req_ops, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end10.cleanup_crit_edge, label %if.end13

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %do.end10
  %12 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %folio, align 4
  %14 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !281

if.then.i.i.i.i:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %13, ptr noundef nonnull @.str.63) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %if.end13
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %13, align 4
  %19 = and i32 %18, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.if.end.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %14, align 4
  %and.i.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_swapcache.exit.i, label %if.then.i.i.i, !prof !281

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %13, ptr noundef nonnull @.str.63) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_swapcache.exit.i:                      ; preds = %land.rhs.i.i
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %13, align 4
  %24 = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i, label %folio_test_swapcache.exit.i.if.end.i_crit_edge, label %if.then.i, !prof !281

folio_test_swapcache.exit.i.if.end.i_crit_edge:   ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = call i32 @__page_file_index(ptr noundef %13) #9
  br label %folio_index.exit

if.end.i:                                         ; preds = %folio_test_swapcache.exit.i.if.end.i_crit_edge, %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge
  %index.i = getelementptr inbounds %struct.anon.148, ptr %13, i32 0, i32 3
  %25 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index.i, align 4
  br label %folio_index.exit

folio_index.exit:                                 ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %if.then.i ], [ %26, %if.end.i ]
  %mul.neg = mul i32 %retval.0.i, -4096
  %27 = trunc i64 %pos to i32
  %conv15 = add i32 %mul.neg, %27
  %add = add i32 %conv15, %len
  %flags66 = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 13
  br label %try_again

try_again:                                        ; preds = %folio_lock_killable.exit.try_again_crit_edge, %folio_index.exit
  %28 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %folio, align 4
  %30 = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %and.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private.exit, label %if.then.i.i, !prof !281

if.then.i.i:                                      ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.63) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_private.exit:                          ; preds = %try_again
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %29, align 4
  %35 = and i32 %34, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not = icmp eq i32 %35, 0
  br i1 %tobool.i.not, label %folio_test_private.exit.if.end75_crit_edge, label %if.then17

folio_test_private.exit.if.end75_crit_edge:       ; preds = %folio_test_private.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then17:                                        ; preds = %folio_test_private.exit
  %private.i = getelementptr inbounds %struct.anon.148, ptr %29, i32 0, i32 4
  %36 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %private.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %39 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp.i.not.i.i.i.i.i.i = icmp eq i32 %40, -1
  br i1 %cmp.i.not.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i, !prof !283

if.then.i.i.i.i.i.i:                              ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.65) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i.i.i.i:                          ; preds = %if.then17
  %41 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %29, align 4
  %43 = and i32 %42, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.i.i.i.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i.afs_folio_dirty_from.exit_crit_edge, label %if.end.i.i.i.i.i

PageHead.exit.i.i.i.i.i.afs_folio_dirty_from.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_folio_dirty_from.exit

if.end.i.i.i.i.i:                                 ; preds = %PageHead.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = getelementptr %struct.page, ptr %29, i32 1, i32 1
  %compound_order.i.i.i.i.i = getelementptr inbounds %struct.anon.119, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %compound_order.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %compound_order.i.i.i.i.i, align 1
  %conv.i.i.i.i.i = zext i8 %46 to i32
  %phi.bo.i.i = add nsw i32 %conv.i.i.i.i.i, -3
  br label %afs_folio_dirty_from.exit

afs_folio_dirty_from.exit:                        ; preds = %if.end.i.i.i.i.i, %PageHead.exit.i.i.i.i.i.afs_folio_dirty_from.exit_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ %phi.bo.i.i, %if.end.i.i.i.i.i ], [ -3, %PageHead.exit.i.i.i.i.i.afs_folio_dirty_from.exit_crit_edge ]
  %and.i185 = and i32 %38, 32767
  %47 = call i32 @llvm.smax.i32(i32 %retval.0.i.i.i.i.i, i32 0) #9
  %shl.i = shl i32 %and.i185, %47
  %48 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp.i.not.i.i.i.i.i.i186 = icmp eq i32 %49, -1
  br i1 %cmp.i.not.i.i.i.i.i.i186, label %if.then.i.i.i.i.i.i187, label %PageHead.exit.i.i.i.i.i189, !prof !283

if.then.i.i.i.i.i.i187:                           ; preds = %afs_folio_dirty_from.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.65) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i.i.i.i189:                       ; preds = %afs_folio_dirty_from.exit
  %50 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %29, align 4
  %52 = and i32 %51, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i.i.i.i.i188 = icmp eq i32 %52, 0
  br i1 %tobool.not.i.i.i.i.i188, label %PageHead.exit.i.i.i.i.i189.afs_folio_dirty_to.exit_crit_edge, label %if.end.i.i.i.i.i193

PageHead.exit.i.i.i.i.i189.afs_folio_dirty_to.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i.i189
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_folio_dirty_to.exit

if.end.i.i.i.i.i193:                              ; preds = %PageHead.exit.i.i.i.i.i189
  call void @__sanitizer_cov_trace_pc() #11
  %53 = getelementptr %struct.page, ptr %29, i32 1, i32 1
  %compound_order.i.i.i.i.i190 = getelementptr inbounds %struct.anon.119, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %compound_order.i.i.i.i.i190 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %compound_order.i.i.i.i.i190, align 1
  %conv.i.i.i.i.i191 = zext i8 %55 to i32
  %phi.bo.i.i192 = add nsw i32 %conv.i.i.i.i.i191, -3
  br label %afs_folio_dirty_to.exit

afs_folio_dirty_to.exit:                          ; preds = %if.end.i.i.i.i.i193, %PageHead.exit.i.i.i.i.i189.afs_folio_dirty_to.exit_crit_edge
  %retval.0.i.i.i.i.i194 = phi i32 [ %phi.bo.i.i192, %if.end.i.i.i.i.i193 ], [ -3, %PageHead.exit.i.i.i.i.i189.afs_folio_dirty_to.exit_crit_edge ]
  %shr.i195 = lshr i32 %38, 16
  %and.i196 = and i32 %shr.i195, 32767
  %add.i = add nuw nsw i32 %and.i196, 1
  %56 = call i32 @llvm.smax.i32(i32 %retval.0.i.i.i.i.i194, i32 0) #9
  %shl.i197 = shl i32 %add.i, %56
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl.i197)
  %cmp22.not = icmp ugt i32 %shl.i, %shl.i197
  br i1 %cmp22.not, label %do.end35, label %do.end61, !prof !283

do.end35:                                         ; preds = %afs_folio_dirty_to.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %shl.i, i32 noundef %shl.i197) #12
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %shl.i, i32 noundef %shl.i197) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/write.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 79, 0\0A.popsection", ""() #9, !srcloc !285
  unreachable

do.end61:                                         ; preds = %afs_folio_dirty_to.exit
  %57 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %30, align 4
  %and.i.i.i181 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i181)
  %tobool.not.i.i182 = icmp eq i32 %and.i.i.i181, 0
  br i1 %tobool.not.i.i182, label %folio_test_writeback.exit, label %if.then.i.i183, !prof !281

if.then.i.i183:                                   ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.63) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_writeback.exit:                        ; preds = %do.end61
  %59 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %29, align 4
  %61 = and i32 %60, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.i184.not = icmp eq i32 %61, 0
  br i1 %tobool.i184.not, label %if.end65, label %if.then63

if.then63:                                        ; preds = %folio_test_writeback.exit
  call void @__sanitizer_cov_trace_pc() #11
  %62 = load ptr, ptr @afs_write_begin.___tp_str, align 4
  call fastcc void @trace_afs_folio_dirty(ptr noundef %1, ptr noundef %62, ptr noundef %29)
  br label %do.body98

if.end65:                                         ; preds = %folio_test_writeback.exit
  %63 = ptrtoint ptr %flags66 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %flags66, align 4
  %65 = and i32 %64, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool68.not = icmp eq i32 %65, 0
  br i1 %tobool68.not, label %land.lhs.true, label %if.end65.if.end75_crit_edge

if.end65.if.end75_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

land.lhs.true:                                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %shl.i)
  %cmp69 = icmp ult i32 %add, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15, i32 %shl.i197)
  %cmp71 = icmp ugt i32 %conv15, %shl.i197
  %or.cond = select i1 %cmp69, i1 true, i1 %cmp71
  br i1 %or.cond, label %land.lhs.true.do.body98_crit_edge, label %land.lhs.true.if.end75_crit_edge

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

land.lhs.true.do.body98_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body98

if.end75:                                         ; preds = %land.lhs.true.if.end75_crit_edge, %if.end65.if.end75_crit_edge, %folio_test_private.exit.if.end75_crit_edge
  %66 = ptrtoint ptr %_page to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %29, ptr %_page, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %67 = load i32, ptr @afs_debug, align 4
  %and77 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end75.cleanup_crit_edge, label %do.end88, !prof !281

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end88:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %68 = call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i198 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i198 to ptr
  %task91 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %task91 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task91, align 8
  %comm92 = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 101
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %comm92, ptr noundef nonnull @.str.1) #12
  br label %cleanup

do.body98:                                        ; preds = %land.lhs.true.do.body98_crit_edge, %if.then63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %72 = load i32, ptr @afs_debug, align 4
  %and99 = and i32 %72, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %do.body98.do.end119_crit_edge, label %do.end110, !prof !281

do.body98.do.end119_crit_edge:                    ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end119

do.end110:                                        ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #11
  %73 = call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i199 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i199 to ptr
  %task113 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %task113 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task113, align 8
  %comm114 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 101
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %comm114) #12
  br label %do.end119

do.end119:                                        ; preds = %do.end110, %do.body98.do.end119_crit_edge
  %77 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %folio, align 4
  %call120 = call i32 @folio_write_one(ptr noundef %78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %cmp121 = icmp slt i32 %call120, 0
  br i1 %cmp121, label %do.end119.error_crit_edge, label %if.end124

do.end119.error_crit_edge:                        ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end124:                                        ; preds = %do.end119
  %79 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %folio, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.69, i32 noundef 797) #9
  %81 = getelementptr inbounds %struct.page, ptr %80, i32 0, i32 1
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %81, align 4
  %and.i.i.i.i200 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i200)
  %tobool.not.i.i.i201 = icmp eq i32 %and.i.i.i.i200, 0
  br i1 %tobool.not.i.i.i201, label %folio_flags.exit.i.i, label %if.then.i.i.i202, !prof !281

if.then.i.i.i202:                                 ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %80, ptr noundef nonnull @.str.63) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_flags.exit.i.i:                             ; preds = %if.end124
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %80, i32 noundef 4) #9
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %80, align 4
  %and.i.i4.i.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i203 = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i203, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i204_crit_edge

folio_flags.exit.i.i.if.then.i204_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i204

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %80, i32 1, i32 3, i32 1) #9
  %86 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %80, ptr %80, i32 1, ptr elementtype(i32) %80) #9, !srcloc !286
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %86, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !287
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.folio_lock_killable.exit_crit_edge, label %folio_trylock.exit.i.if.then.i204_crit_edge

folio_trylock.exit.i.if.then.i204_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i204

folio_trylock.exit.i.folio_lock_killable.exit_crit_edge: ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_lock_killable.exit

if.then.i204:                                     ; preds = %folio_trylock.exit.i.if.then.i204_crit_edge, %folio_flags.exit.i.i.if.then.i204_crit_edge
  %call3.i = call i32 @__folio_lock_killable(ptr noundef %80) #9
  br label %folio_lock_killable.exit

folio_lock_killable.exit:                         ; preds = %if.then.i204, %folio_trylock.exit.i.folio_lock_killable.exit_crit_edge
  %retval.0.i205 = phi i32 [ %call3.i, %if.then.i204 ], [ 0, %folio_trylock.exit.i.folio_lock_killable.exit_crit_edge ]
  %cmp126 = icmp slt i32 %retval.0.i205, 0
  br i1 %cmp126, label %folio_lock_killable.exit.error_crit_edge, label %folio_lock_killable.exit.try_again_crit_edge

folio_lock_killable.exit.try_again_crit_edge:     ; preds = %folio_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_again

folio_lock_killable.exit.error_crit_edge:         ; preds = %folio_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

error:                                            ; preds = %folio_lock_killable.exit.error_crit_edge, %do.end119.error_crit_edge
  %ret.0 = phi i32 [ %call120, %do.end119.error_crit_edge ], [ %retval.0.i205, %folio_lock_killable.exit.error_crit_edge ]
  %87 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %folio, align 4
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %88, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %89 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i.i.i = icmp eq i32 %90, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i206, label %do.end5.i.i.i, !prof !283

if.then.i.i.i206:                                 ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %88, ptr noundef nonnull @.str.70) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !288
  unreachable

do.end5.i.i.i:                                    ; preds = %error
  %call.i.i.i10.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !289
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %91 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !290
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %91, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_write_begin, %if.then.i.i.i.i207)) #9
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i207], !srcloc !292

if.then.i.i.i.i207:                               ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %88, i32 noundef -1, i32 noundef %conv.i.i.i.i) #9
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i207, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i208, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_put.exit

if.then.i208:                                     ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %88) #9
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i208, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %92 = load i32, ptr @afs_debug, align 4
  %and131 = and i32 %92, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %folio_put.exit.cleanup_crit_edge, label %do.end142, !prof !281

folio_put.exit.cleanup_crit_edge:                 ; preds = %folio_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end142:                                        ; preds = %folio_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  %93 = call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i210 = and i32 %93, -16384
  %94 = inttoptr i32 %and.i210 to ptr
  %task145 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %task145 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %task145, align 8
  %comm146 = getelementptr inbounds %struct.task_struct, ptr %96, i32 0, i32 101
  %call148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %comm146, ptr noundef nonnull @.str.1, i32 noundef %ret.0) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end142, %folio_put.exit.cleanup_crit_edge, %do.end88, %if.end75.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %do.end10.cleanup_crit_edge ], [ 0, %do.end88 ], [ 0, %if.end75.cleanup_crit_edge ], [ %ret.0, %do.end142 ], [ %ret.0, %folio_put.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %folio) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netfs_write_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @folio_index(ptr noundef %folio) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_swapbacked.exit.i, label %if.then.i.i.i, !prof !281

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.63) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_swapbacked.exit.i:                     ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i, label %folio_test_swapbacked.exit.i.if.end_crit_edge, label %land.rhs.i

folio_test_swapbacked.exit.i.if.end_crit_edge:    ; preds = %folio_test_swapbacked.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs.i:                                       ; preds = %folio_test_swapbacked.exit.i
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_swapcache.exit, label %if.then.i.i, !prof !281

if.then.i.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.63) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_swapcache.exit:                        ; preds = %land.rhs.i
  %8 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %folio, align 4
  %10 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %folio_test_swapcache.exit.if.end_crit_edge, label %if.then, !prof !281

folio_test_swapcache.exit.if.end_crit_edge:       ; preds = %folio_test_swapcache.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %folio_test_swapcache.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @__page_file_index(ptr noundef %folio) #9
  br label %return

if.end:                                           ; preds = %folio_test_swapcache.exit.if.end_crit_edge, %folio_test_swapbacked.exit.i.if.end_crit_edge
  %index = getelementptr inbounds %struct.anon.148, ptr %folio, i32 0, i32 3
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_folio_dirty(ptr noundef %vnode, ptr noundef %where, ptr noundef %folio) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_folio_dirty, i32 0, i32 1), ptr blockaddress(@trace_afs_folio_dirty, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !292

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !270) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !281

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !293
  %call42 = tail call i32 @__traceiter_afs_folio_dirty(ptr noundef null, ptr noundef %vnode, ptr noundef %where, ptr noundef %folio) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !294
  %13 = tail call i32 @llvm.read_register.i32(metadata !270) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !270) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !281

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !295
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_folio_dirty, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_folio_dirty, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_afs_folio_dirty.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_afs_folio_dirty.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 1048, ptr noundef nonnull @.str.67) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !296
  %31 = tail call i32 @llvm.read_register.i32(metadata !270) #9
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
declare dso_local i32 @folio_write_one(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @folio_put(ptr noundef %folio) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #9
  %0 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %_refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end5.i.i, !prof !283

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.70) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !288
  unreachable

do.end5.i.i:                                      ; preds = %entry
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !289
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i, ptr %_refcount.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i) #9, !srcloc !290
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@folio_put, %if.then.i.i.i)) #9
          to label %folio_put_testzero.exit [label %if.then.i.i.i], !srcloc !292

if.then.i.i.i:                                    ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i = zext i1 %cmp.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %folio, i32 noundef -1, i32 noundef %conv.i.i.i) #9
  br label %folio_put_testzero.exit

folio_put_testzero.exit:                          ; preds = %if.then.i.i.i, %do.end5.i.i
  br i1 %cmp.i.i.i.i.i, label %if.then, label %folio_put_testzero.exit.if.end_crit_edge

folio_put_testzero.exit.if.end_crit_edge:         ; preds = %folio_put_testzero.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %folio_put_testzero.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %folio) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %folio_put_testzero.exit.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_write_end(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %subpage, ptr nocapture noundef readnone %fsdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %subpage, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !281

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %subpage to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %5 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_inode.i, align 8
  %conv = trunc i64 %pos to i32
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.not.i.i.i.i = icmp eq i32 %8, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !283

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.65) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i.i:                              ; preds = %_compound_head.exit
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %4, align 4
  %11 = and i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_size.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.119, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %14 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.end.i.i.i ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i.i
  %sub = add i32 %shl.i, -1
  %and = and i32 %sub, %conv
  %add = add i32 %and, %copied
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %15 = load i32, ptr @afs_debug, align 4
  %and4 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %folio_size.exit.do.end14_crit_edge, label %do.end, !prof !281

folio_size.exit.do.end14_crit_edge:               ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

do.end:                                           ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %16 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i130 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i130 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %6, i32 0, i32 2
  %20 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %fid, align 8
  %vnode10 = getelementptr inbounds %struct.afs_vnode, ptr %6, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %vnode10 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %vnode10, align 8
  %call11 = tail call fastcc i32 @folio_index(ptr noundef %4)
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %comm, ptr noundef nonnull @.str.26, i64 noundef %21, i64 noundef %23, i32 noundef %call11) #12
  br label %do.end14

do.end14:                                         ; preds = %do.end, %folio_size.exit.do.end14_crit_edge
  %24 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %and.i.i.i131 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i131)
  %tobool.not.i.i132 = icmp eq i32 %and.i.i.i131, 0
  br i1 %tobool.not.i.i132, label %folio_flags.exit.i, label %if.then.i.i133, !prof !281

if.then.i.i133:                                   ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.63) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_flags.exit.i:                               ; preds = %do.end14
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %4, align 4
  %29 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i134.not = icmp eq i32 %29, 0
  br i1 %tobool.i134.not, label %if.then16, label %folio_test_uptodate.exit.thread

folio_test_uptodate.exit.thread:                  ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !297
  br label %if.end20

if.then16:                                        ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %copied, i32 %len)
  %cmp = icmp ult i32 %copied, %len
  br i1 %cmp, label %if.then16.out_crit_edge, label %if.end19

if.then16.out_crit_edge:                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end19:                                         ; preds = %if.then16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !298
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %24, align 4
  %and.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_mark_uptodate.exit, label %if.then.i.i, !prof !281

if.then.i.i:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.63) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_mark_uptodate.exit:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %4) #9
  br label %if.end20

if.end20:                                         ; preds = %folio_mark_uptodate.exit, %folio_test_uptodate.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied)
  %cmp21 = icmp eq i32 %copied, 0
  br i1 %cmp21, label %if.end20.out_crit_edge, label %if.end24

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end24:                                         ; preds = %if.end20
  %conv25 = zext i32 %copied to i64
  %add26 = add i64 %conv25, %pos
  %call27 = tail call fastcc i64 @i_size_read(ptr noundef %6)
  call void @__sanitizer_cov_trace_cmp8(i64 %add26, i64 %call27)
  %cmp28 = icmp sgt i64 %add26, %call27
  br i1 %cmp28, label %if.then30, label %if.end24.if.end39_crit_edge

if.end24.if.end39_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then30:                                        ; preds = %if.end24
  %cb_lock = getelementptr inbounds %struct.afs_vnode, ptr %6, i32 0, i32 29
  %lock.i = getelementptr inbounds %struct.afs_vnode, ptr %6, i32 0, i32 29, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %32 = ptrtoint ptr %cb_lock to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cb_lock, align 4
  %inc.i.i.i.i = add i32 %33, 1
  store i32 %inc.i.i.i.i, ptr %cb_lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !299
  %dep_map.i.i.i = getelementptr inbounds %struct.afs_vnode, ptr %6, i32 0, i32 29, i32 0, i32 0, i32 1
  %34 = tail call ptr @llvm.returnaddress(i32 0) #9
  %35 = ptrtoint ptr %34 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %35) #9
  %call32 = tail call fastcc i64 @i_size_read(ptr noundef %6)
  call void @__sanitizer_cov_trace_cmp8(i64 %add26, i64 %call32)
  %cmp33 = icmp sgt i64 %add26, %call32
  br i1 %cmp33, label %if.then35, label %if.then30.if.end36_crit_edge

if.then30.if.end36_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then35:                                        ; preds = %if.then30
  %36 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %39, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !300
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %40 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i.i136 = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i.i136, label %if.then35.afs_set_i_size.exit_crit_edge, label %land.lhs.true.i.i.i

if.then35.afs_set_i_size.exit_crit_edge:          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_set_i_size.exit

land.lhs.true.i.i.i:                              ; preds = %if.then35
  %41 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %44, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !301
  %45 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i28.i.i = add i32 %50, ptrtoint (ptr @lockdep_recursion to i32)
  %51 = inttoptr i32 %add.i28.i.i to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !302
  %54 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i7.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool20.not.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.afs_set_i_size.exit_crit_edge

land.lhs.true.i.i.i.afs_set_i_size.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_set_i_size.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %58 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i29.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i29.i.i to ptr
  %preempt_count.i.i30.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i30.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i.i.i = icmp eq i32 %61, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i.afs_set_i_size.exit_crit_edge

land.rhs.i.i.i.afs_set_i_size.exit_crit_edge:     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_set_i_size.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %62 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i9.i.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %65, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !303
  %66 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %67
  %68 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %69, ptrtoint (ptr @hardirqs_enabled to i32)
  %70 = inttoptr i32 %add47.i.i.i to ptr
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !304
  %73 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i12.i.i.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %76, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool54.not.i.i.i = icmp eq i32 %72, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.afs_set_i_size.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.afs_set_i_size.exit_crit_edge:   ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_set_i_size.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.afs_set_i_size.exit_crit_edge, label %if.then.i.i.i, !prof !281

land.rhs58.i.i.i.afs_set_i_size.exit_crit_edge:   ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_set_i_size.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %afs_set_i_size.exit

afs_set_i_size.exit:                              ; preds = %if.then.i.i.i, %land.rhs58.i.i.i.afs_set_i_size.exit_crit_edge, %land.rhs22.i.i.i.afs_set_i_size.exit_crit_edge, %land.rhs.i.i.i.afs_set_i_size.exit_crit_edge, %land.lhs.true.i.i.i.afs_set_i_size.exit_crit_edge, %if.then35.afs_set_i_size.exit_crit_edge
  %i_size_seqcount.i.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 23
  %77 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %i_size_seqcount.i.i, align 4
  %inc.i.i.i.i.i = add i32 %78, 1
  store i32 %inc.i.i.i.i.i, ptr %i_size_seqcount.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !299
  %dep_map.i.i.i.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 23, i32 1
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %35) #9
  %i_size8.i.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 14
  %79 = ptrtoint ptr %i_size8.i.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %add26, ptr %i_size8.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %35) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !305
  %80 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %i_size_seqcount.i.i, align 4
  %inc.i.i.i.i137 = add i32 %81, 1
  store i32 %inc.i.i.i.i137, ptr %i_size_seqcount.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !306
  %82 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i26.i.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i26.i.i to ptr
  %preempt_count.i.i27.i.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i27.i.i, align 4
  %sub.i.i.i = add i32 %85, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i27.i.i, align 4
  %add.i = add i64 %add26, 1023
  %86 = lshr i64 %add.i, 9
  %shl.i138 = and i64 %86, 36028797018963966
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 22
  %87 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %shl.i138, ptr %i_blocks.i, align 8
  br label %if.end36

if.end36:                                         ; preds = %afs_set_i_size.exit, %if.then30.if.end36_crit_edge
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %35) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !305
  %88 = ptrtoint ptr %cb_lock to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cb_lock, align 4
  %inc.i.i.i = add i32 %89, 1
  store i32 %inc.i.i.i, ptr %cb_lock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  %cache.i = getelementptr inbounds %struct.afs_vnode, ptr %6, i32 0, i32 5
  %90 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cache.i, align 8
  %tobool.not.i140 = icmp eq ptr %91, null
  br i1 %tobool.not.i140, label %if.end36.if.end39_crit_edge, label %land.lhs.true.i

if.end36.if.end39_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

land.lhs.true.i:                                  ; preds = %if.end36
  %flags.i = getelementptr inbounds %struct.fscache_cookie, ptr %91, i32 0, i32 14
  %92 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %flags.i, align 4
  %94 = and i32 %93, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool1.not.i = icmp eq i32 %94, 0
  br i1 %tobool1.not.i, label %if.then.i141, label %land.lhs.true.i.if.end39_crit_edge

land.lhs.true.i.if.end39_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then.i141:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fscache_n_updates, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @fscache_n_updates, i32 1, i32 3, i32 1) #9
  %95 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fscache_n_updates, ptr nonnull @fscache_n_updates, i32 1, ptr nonnull elementtype(i32) @fscache_n_updates) #9, !srcloc !307
  %object_size4.i.i.i = getelementptr inbounds %struct.fscache_cookie, ptr %91, i32 0, i32 12
  %96 = ptrtoint ptr %object_size4.i.i.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %add26, ptr %object_size4.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !308
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags.i) #9
  br label %if.end39

if.end39:                                         ; preds = %if.then.i141, %land.lhs.true.i.if.end39_crit_edge, %if.end36.if.end39_crit_edge, %if.end24.if.end39_crit_edge
  %97 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %24, align 4
  %and.i.i.i127 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i127)
  %tobool.not.i.i128 = icmp eq i32 %and.i.i.i127, 0
  br i1 %tobool.not.i.i128, label %folio_test_private.exit, label %if.then.i.i129, !prof !281

if.then.i.i129:                                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.63) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_private.exit:                          ; preds = %if.end39
  %99 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %4, align 4
  %101 = and i32 %100, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.i.not = icmp eq i32 %101, 0
  br i1 %tobool.i.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %folio_test_private.exit
  %private.i = getelementptr inbounds %struct.anon.148, ptr %4, i32 0, i32 4
  %102 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %private.i, align 4
  %104 = ptrtoint ptr %103 to i32
  %105 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %106)
  %cmp.i.not.i.i.i.i.i.i = icmp eq i32 %106, -1
  br i1 %cmp.i.not.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i, !prof !283

if.then.i.i.i.i.i.i:                              ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.65) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i.i.i.i:                          ; preds = %if.then41
  %107 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %4, align 4
  %109 = and i32 %108, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i.i.i.i.i = icmp eq i32 %109, 0
  br i1 %tobool.not.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i.afs_folio_dirty_from.exit_crit_edge, label %if.end.i.i.i.i.i

PageHead.exit.i.i.i.i.i.afs_folio_dirty_from.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_folio_dirty_from.exit

if.end.i.i.i.i.i:                                 ; preds = %PageHead.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %110 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i.i.i = getelementptr inbounds %struct.anon.119, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %compound_order.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %compound_order.i.i.i.i.i, align 1
  %conv.i.i.i.i.i = zext i8 %112 to i32
  %phi.bo.i.i = add nsw i32 %conv.i.i.i.i.i, -3
  br label %afs_folio_dirty_from.exit

afs_folio_dirty_from.exit:                        ; preds = %if.end.i.i.i.i.i, %PageHead.exit.i.i.i.i.i.afs_folio_dirty_from.exit_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ %phi.bo.i.i, %if.end.i.i.i.i.i ], [ -3, %PageHead.exit.i.i.i.i.i.afs_folio_dirty_from.exit_crit_edge ]
  %and.i143 = and i32 %104, 32767
  %113 = tail call i32 @llvm.smax.i32(i32 %retval.0.i.i.i.i.i, i32 0) #9
  %shl.i144 = shl i32 %and.i143, %113
  %114 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %115)
  %cmp.i.not.i.i.i.i.i.i145 = icmp eq i32 %115, -1
  br i1 %cmp.i.not.i.i.i.i.i.i145, label %if.then.i.i.i.i.i.i146, label %PageHead.exit.i.i.i.i.i148, !prof !283

if.then.i.i.i.i.i.i146:                           ; preds = %afs_folio_dirty_from.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.65) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i.i.i.i148:                       ; preds = %afs_folio_dirty_from.exit
  %116 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %4, align 4
  %118 = and i32 %117, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool.not.i.i.i.i.i147 = icmp eq i32 %118, 0
  br i1 %tobool.not.i.i.i.i.i147, label %PageHead.exit.i.i.i.i.i148.afs_folio_dirty_to.exit_crit_edge, label %if.end.i.i.i.i.i152

PageHead.exit.i.i.i.i.i148.afs_folio_dirty_to.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i.i148
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_folio_dirty_to.exit

if.end.i.i.i.i.i152:                              ; preds = %PageHead.exit.i.i.i.i.i148
  call void @__sanitizer_cov_trace_pc() #11
  %119 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i.i.i149 = getelementptr inbounds %struct.anon.119, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %compound_order.i.i.i.i.i149 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %compound_order.i.i.i.i.i149, align 1
  %conv.i.i.i.i.i150 = zext i8 %121 to i32
  %phi.bo.i.i151 = add nsw i32 %conv.i.i.i.i.i150, -3
  br label %afs_folio_dirty_to.exit

afs_folio_dirty_to.exit:                          ; preds = %if.end.i.i.i.i.i152, %PageHead.exit.i.i.i.i.i148.afs_folio_dirty_to.exit_crit_edge
  %retval.0.i.i.i.i.i153 = phi i32 [ %phi.bo.i.i151, %if.end.i.i.i.i.i152 ], [ -3, %PageHead.exit.i.i.i.i.i148.afs_folio_dirty_to.exit_crit_edge ]
  %shr.i = lshr i32 %104, 16
  %and.i154 = and i32 %shr.i, 32767
  %add.i155 = add nuw nsw i32 %and.i154, 1
  %122 = tail call i32 @llvm.smax.i32(i32 %retval.0.i.i.i.i.i153, i32 0) #9
  %shl.i156 = shl i32 %add.i155, %122
  %123 = tail call i32 @llvm.umin.i32(i32 %and, i32 %shl.i144)
  %124 = tail call i32 @llvm.umax.i32(i32 %add, i32 %shl.i156)
  %125 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %126)
  %cmp.i.not.i.i.i.i.i.i157 = icmp eq i32 %126, -1
  br i1 %cmp.i.not.i.i.i.i.i.i157, label %if.then.i.i.i.i.i.i158, label %PageHead.exit.i.i.i.i.i160, !prof !283

if.then.i.i.i.i.i.i158:                           ; preds = %afs_folio_dirty_to.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.65) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i.i.i.i160:                       ; preds = %afs_folio_dirty_to.exit
  %127 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %4, align 4
  %129 = and i32 %128, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.not.i.i.i.i.i159 = icmp eq i32 %129, 0
  br i1 %tobool.not.i.i.i.i.i159, label %PageHead.exit.i.i.i.i.i160.afs_folio_dirty.exit_crit_edge, label %if.end.i.i.i.i.i164

PageHead.exit.i.i.i.i.i160.afs_folio_dirty.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_folio_dirty.exit

if.end.i.i.i.i.i164:                              ; preds = %PageHead.exit.i.i.i.i.i160
  call void @__sanitizer_cov_trace_pc() #11
  %130 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i.i.i161 = getelementptr inbounds %struct.anon.119, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %compound_order.i.i.i.i.i161 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %compound_order.i.i.i.i.i161, align 1
  %conv.i.i.i.i.i162 = zext i8 %132 to i32
  %phi.bo.i.i163 = add nsw i32 %conv.i.i.i.i.i162, -3
  br label %afs_folio_dirty.exit

afs_folio_dirty.exit:                             ; preds = %if.end.i.i.i.i.i164, %PageHead.exit.i.i.i.i.i160.afs_folio_dirty.exit_crit_edge
  %retval.0.i.i.i.i.i165 = phi i32 [ %phi.bo.i.i163, %if.end.i.i.i.i.i164 ], [ -3, %PageHead.exit.i.i.i.i.i160.afs_folio_dirty.exit_crit_edge ]
  %133 = tail call i32 @llvm.smax.i32(i32 %retval.0.i.i.i.i.i165, i32 0) #9
  %shr.i166 = lshr i32 %123, %133
  %sub.i167 = add i32 %124, -1
  %shr1.i = lshr i32 %sub.i167, %133
  %shl.i168 = shl i32 %shr1.i, 16
  %or.i = or i32 %shl.i168, %shr.i166
  %134 = inttoptr i32 %or.i to ptr
  %135 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %134, ptr %private.i, align 4
  br label %if.end58

if.else:                                          ; preds = %folio_test_private.exit
  %136 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %137)
  %cmp.i.not.i.i.i.i.i.i169 = icmp eq i32 %137, -1
  br i1 %cmp.i.not.i.i.i.i.i.i169, label %if.then.i.i.i.i.i.i170, label %PageHead.exit.i.i.i.i.i172, !prof !283

if.then.i.i.i.i.i.i170:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.65) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i.i.i.i172:                       ; preds = %if.else
  %138 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %4, align 4
  %140 = and i32 %139, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.not.i.i.i.i.i171 = icmp eq i32 %140, 0
  br i1 %tobool.not.i.i.i.i.i171, label %PageHead.exit.i.i.i.i.i172.afs_folio_dirty.exit183_crit_edge, label %if.end.i.i.i.i.i176

PageHead.exit.i.i.i.i.i172.afs_folio_dirty.exit183_crit_edge: ; preds = %PageHead.exit.i.i.i.i.i172
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_folio_dirty.exit183

if.end.i.i.i.i.i176:                              ; preds = %PageHead.exit.i.i.i.i.i172
  call void @__sanitizer_cov_trace_pc() #11
  %141 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i.i.i173 = getelementptr inbounds %struct.anon.119, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %compound_order.i.i.i.i.i173 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %compound_order.i.i.i.i.i173, align 1
  %conv.i.i.i.i.i174 = zext i8 %143 to i32
  %phi.bo.i.i175 = add nsw i32 %conv.i.i.i.i.i174, -3
  br label %afs_folio_dirty.exit183

afs_folio_dirty.exit183:                          ; preds = %if.end.i.i.i.i.i176, %PageHead.exit.i.i.i.i.i172.afs_folio_dirty.exit183_crit_edge
  %retval.0.i.i.i.i.i177 = phi i32 [ %phi.bo.i.i175, %if.end.i.i.i.i.i176 ], [ -3, %PageHead.exit.i.i.i.i.i172.afs_folio_dirty.exit183_crit_edge ]
  %144 = tail call i32 @llvm.smax.i32(i32 %retval.0.i.i.i.i.i177, i32 0) #9
  %shr.i178 = lshr i32 %and, %144
  %sub.i179 = add i32 %add, -1
  %shr1.i180 = lshr i32 %sub.i179, %144
  %shl.i181 = shl i32 %shr1.i180, 16
  %or.i182 = or i32 %shl.i181, %shr.i178
  %145 = inttoptr i32 %or.i182 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %146 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %147, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i.i184, label %do.end5.i.i, !prof !283

if.then.i.i184:                                   ; preds = %afs_folio_dirty.exit183
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.72) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !309
  unreachable

do.end5.i.i:                                      ; preds = %afs_folio_dirty.exit183
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %148 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !307
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@afs_write_end, %if.then.i.i.i.i185)) #9
          to label %folio_get.exit.i [label %if.then.i.i.i.i185], !srcloc !292

if.then.i.i.i.i185:                               ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %4, i32 noundef 1) #9
  br label %folio_get.exit.i

folio_get.exit.i:                                 ; preds = %if.then.i.i.i.i185, %do.end5.i.i
  %private.i186 = getelementptr inbounds %struct.anon.148, ptr %4, i32 0, i32 4
  %149 = ptrtoint ptr %private.i186 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %145, ptr %private.i186, align 4
  %150 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %24, align 4
  %and.i.i.i.i187 = and i32 %151, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i187)
  %tobool.not.i.i.i188 = icmp eq i32 %and.i.i.i.i187, 0
  br i1 %tobool.not.i.i.i188, label %folio_attach_private.exit, label %if.then.i.i.i189, !prof !281

if.then.i.i.i189:                                 ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.63) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_attach_private.exit:                        ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 13, ptr noundef %4) #9
  br label %if.end58

if.end58:                                         ; preds = %folio_attach_private.exit, %afs_folio_dirty.exit
  %afs_write_end.___tp_str.28.sink = phi ptr [ @afs_write_end.___tp_str.28, %folio_attach_private.exit ], [ @afs_write_end.___tp_str, %afs_folio_dirty.exit ]
  %152 = ptrtoint ptr %afs_write_end.___tp_str.28.sink to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %afs_write_end.___tp_str.28.sink, align 4
  tail call fastcc void @trace_afs_folio_dirty(ptr noundef %6, ptr noundef %153, ptr noundef %4)
  %call59 = tail call zeroext i1 @folio_mark_dirty(ptr noundef %4) #9
  br i1 %call59, label %do.body61, label %if.end58.out_crit_edge

if.end58.out_crit_edge:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body61:                                        ; preds = %if.end58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %154 = load i32, ptr @afs_debug, align 4
  %and62 = and i32 %154, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %do.body61.out_crit_edge, label %do.end73, !prof !281

do.body61.out_crit_edge:                          ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end73:                                         ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #11
  %155 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i190 = and i32 %155, -16384
  %156 = inttoptr i32 %and.i190 to ptr
  %task76 = getelementptr inbounds %struct.thread_info, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %task76 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %task76, align 8
  %comm77 = getelementptr inbounds %struct.task_struct, ptr %158, i32 0, i32 101
  %call79 = tail call fastcc i32 @folio_index(ptr noundef %4)
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %comm77, i32 noundef %call79) #12
  br label %out

out:                                              ; preds = %do.end73, %do.body61.out_crit_edge, %if.end58.out_crit_edge, %if.end20.out_crit_edge, %if.then16.out_crit_edge
  %copied.addr.0 = phi i32 [ 0, %if.end20.out_crit_edge ], [ %copied, %do.end73 ], [ %copied, %do.body61.out_crit_edge ], [ %copied, %if.end58.out_crit_edge ], [ 0, %if.then16.out_crit_edge ]
  tail call void @folio_unlock(ptr noundef %4) #9
  %_refcount.i.i.i.i191 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i192 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i191, i32 noundef 4) #9
  %159 = ptrtoint ptr %_refcount.i.i.i.i191 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %_refcount.i.i.i.i191, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp.i.i.i193 = icmp eq i32 %160, 0
  br i1 %cmp.i.i.i193, label %if.then.i.i.i194, label %do.end5.i.i.i, !prof !283

if.then.i.i.i194:                                 ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.70) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !288
  unreachable

do.end5.i.i.i:                                    ; preds = %out
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i191, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !289
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i191, i32 1, i32 3, i32 1) #9
  %161 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i191, ptr %_refcount.i.i.i.i191, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i191) #9, !srcloc !290
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %161, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_write_end, %if.then.i.i.i.i195)) #9
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i195], !srcloc !292

if.then.i.i.i.i195:                               ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #9
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i195, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i196, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_put.exit

if.then.i196:                                     ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %4) #9
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i196, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret i32 %copied.addr.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !310
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %1 = tail call ptr @llvm.returnaddress(i32 0) #9
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call ptr @llvm.returnaddress(i32 0) #9
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #9
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !311
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !283

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !312
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !313
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !314
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !315
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !316
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_writepage(ptr noundef %subpage, ptr noundef %wbc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %subpage, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !281

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %subpage to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %5 = load i32, ptr @afs_debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %_compound_head.exit.do.end8_crit_edge, label %do.end, !prof !281

_compound_head.exit.do.end8_crit_edge:            ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end:                                           ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i68 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i68 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %call5 = tail call fastcc i32 @folio_index(ptr noundef %4)
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %comm, ptr noundef nonnull @.str.34, i32 noundef %call5) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %_compound_head.exit.do.end8_crit_edge
  tail call void @folio_wait_private_2(ptr noundef %4) #9
  %10 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !281

if.then.i.i.i.i:                                  ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.63) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %do.end8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %4, align 4
  %15 = and i32 %14, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.end.i70_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.if.end.i70_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i70

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %10, align 4
  %and.i.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_swapcache.exit.i, label %if.then.i.i.i, !prof !281

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.63) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_swapcache.exit.i:                      ; preds = %land.rhs.i.i
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %4, align 4
  %20 = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i, label %folio_test_swapcache.exit.i.if.end.i70_crit_edge, label %if.then.i69, !prof !281

folio_test_swapcache.exit.i.if.end.i70_crit_edge: ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i70

if.then.i69:                                      ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 @__page_file_index(ptr noundef %4) #9
  br label %folio_index.exit

if.end.i70:                                       ; preds = %folio_test_swapcache.exit.i.if.end.i70_crit_edge, %folio_test_swapbacked.exit.i.i.if.end.i70_crit_edge
  %index.i = getelementptr inbounds %struct.anon.148, ptr %4, i32 0, i32 3
  %21 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i, align 4
  br label %folio_index.exit

folio_index.exit:                                 ; preds = %if.end.i70, %if.then.i69
  %retval.0.i71 = phi i32 [ %call2.i, %if.then.i69 ], [ %22, %if.end.i70 ]
  %mul = shl i32 %retval.0.i71, 12
  %conv = zext i32 %mul to i64
  %call10 = tail call ptr @folio_mapping(ptr noundef %4) #9
  %sub = xor i64 %conv, 9223372036854775807
  %call11 = tail call fastcc i32 @afs_write_back_from_locked_folio(ptr noundef %call10, ptr noundef %wbc, ptr noundef %4, i64 noundef %conv, i64 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %23 = load i32, ptr @afs_debug, align 4
  %and15 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %cmp, label %do.body14, label %do.body37

do.body14:                                        ; preds = %folio_index.exit
  br i1 %tobool16.not, label %do.body14.cleanup_crit_edge, label %do.end26, !prof !281

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end26:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %24 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i72 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i72 to ptr
  %task29 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task29, align 8
  %comm30 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 101
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %comm30, ptr noundef nonnull @.str.34, i32 noundef %call11) #12
  br label %cleanup

do.body37:                                        ; preds = %folio_index.exit
  br i1 %tobool16.not, label %do.body37.cleanup_crit_edge, label %do.end49, !prof !281

do.body37.cleanup_crit_edge:                      ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end49:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  %28 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i73 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i73 to ptr
  %task52 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task52, align 8
  %comm53 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 101
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %comm53, ptr noundef nonnull @.str.34) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %do.body37.cleanup_crit_edge, %do.end26, %do.body14.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %do.end26 ], [ %call11, %do.body14.cleanup_crit_edge ], [ 0, %do.end49 ], [ 0, %do.body37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @afs_write_back_from_locked_folio(ptr noundef %mapping, ptr noundef %wbc, ptr noundef %folio, i64 noundef %start, i64 noundef %end) unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.iov_iter, align 8
  %len = alloca i32, align 4
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter) #9
  %2 = call ptr @memset(ptr %iter, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %len, align 4, !annotation !280
  %call1 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool = icmp ne i32 %6, 0
  %cache.i = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cache.i, align 8
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags6 = getelementptr inbounds %struct.fscache_cookie, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags6, align 4
  %11 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %12 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool8.not, %land.rhs ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #9
  %13 = ptrtoint ptr %wbc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wbc, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %15 = load i32, ptr @afs_debug, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %land.end.do.end19_crit_edge, label %do.end, !prof !281

land.end.do.end19_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

do.end:                                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 101
  %call16 = tail call fastcc i32 @folio_index(ptr noundef %folio)
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %comm, ptr noundef nonnull @.str.74, i32 noundef %call16, i64 noundef %start, i64 noundef %end) #12
  br label %do.end19

do.end19:                                         ; preds = %do.end, %land.end.do.end19_crit_edge
  %call20 = tail call zeroext i1 @__folio_start_writeback(ptr noundef %folio, i1 noundef zeroext false) #9
  br i1 %call20, label %do.body22, label %if.end28

do.body22:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/write.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 567, 0\0A.popsection", ""() #9, !srcloc !317
  unreachable

if.end28:                                         ; preds = %do.end19
  br i1 %12, label %if.then.i, label %if.end28.afs_folio_start_fscache.exit_crit_edge

if.end28.afs_folio_start_fscache.exit_crit_edge:  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_folio_start_fscache.exit

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @folio_start_fscache(ptr noundef %folio) #9
  br label %afs_folio_start_fscache.exit

afs_folio_start_fscache.exit:                     ; preds = %if.then.i, %if.end28.afs_folio_start_fscache.exit_crit_edge
  %20 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.not.i.i.i = icmp eq i32 %21, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !283

if.then.i.i.i:                                    ; preds = %afs_folio_start_fscache.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.65) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i:                                ; preds = %afs_folio_start_fscache.exit
  %22 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %folio, align 4
  %24 = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge, label %if.end.i.i

PageHead.exit.i.i.folio_nr_pages.exit_crit_edge:  ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_nr_pages.exit

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %compound_nr.i.i = getelementptr %struct.page, ptr %folio, i32 1, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %compound_nr.i.i, align 4
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %if.end.i.i, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge
  %retval.0.i.i = phi i32 [ %26, %if.end.i.i ], [ 1, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge ]
  %sub = sub i32 %14, %retval.0.i.i
  %27 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub, ptr %count, align 4
  %private.i = getelementptr inbounds %struct.anon.148, ptr %folio, i32 0, i32 4
  %28 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private.i, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.i.not.i.i.i.i.i.i = icmp eq i32 %32, -1
  br i1 %cmp.i.not.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i, !prof !283

if.then.i.i.i.i.i.i:                              ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.65) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i.i.i.i:                          ; preds = %folio_nr_pages.exit
  %33 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %folio, align 4
  %35 = and i32 %34, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i.afs_folio_dirty_from.exit_crit_edge, label %if.end.i.i.i.i.i

PageHead.exit.i.i.i.i.i.afs_folio_dirty_from.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_folio_dirty_from.exit

if.end.i.i.i.i.i:                                 ; preds = %PageHead.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = getelementptr %struct.page, ptr %folio, i32 1, i32 1
  %compound_order.i.i.i.i.i = getelementptr inbounds %struct.anon.119, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %compound_order.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %compound_order.i.i.i.i.i, align 1
  %conv.i.i.i.i.i = zext i8 %38 to i32
  %phi.bo.i.i = add nsw i32 %conv.i.i.i.i.i, -3
  br label %afs_folio_dirty_from.exit

afs_folio_dirty_from.exit:                        ; preds = %if.end.i.i.i.i.i, %PageHead.exit.i.i.i.i.i.afs_folio_dirty_from.exit_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ %phi.bo.i.i, %if.end.i.i.i.i.i ], [ -3, %PageHead.exit.i.i.i.i.i.afs_folio_dirty_from.exit_crit_edge ]
  %and.i251 = and i32 %30, 32767
  %39 = tail call i32 @llvm.smax.i32(i32 %retval.0.i.i.i.i.i, i32 0) #9
  %shl.i = shl i32 %and.i251, %39
  %40 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp.i.not.i.i.i.i.i.i252 = icmp eq i32 %41, -1
  br i1 %cmp.i.not.i.i.i.i.i.i252, label %if.then.i.i.i.i.i.i253, label %PageHead.exit.i.i.i.i.i255, !prof !283

if.then.i.i.i.i.i.i253:                           ; preds = %afs_folio_dirty_from.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.65) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i.i.i.i255:                       ; preds = %afs_folio_dirty_from.exit
  %42 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %folio, align 4
  %44 = and i32 %43, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i.i.i.i254 = icmp eq i32 %44, 0
  br i1 %tobool.not.i.i.i.i.i254, label %PageHead.exit.i.i.i.i.i255.afs_folio_dirty_to.exit_crit_edge, label %if.end.i.i.i.i.i259

PageHead.exit.i.i.i.i.i255.afs_folio_dirty_to.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i.i255
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_folio_dirty_to.exit

if.end.i.i.i.i.i259:                              ; preds = %PageHead.exit.i.i.i.i.i255
  call void @__sanitizer_cov_trace_pc() #11
  %45 = getelementptr %struct.page, ptr %folio, i32 1, i32 1
  %compound_order.i.i.i.i.i256 = getelementptr inbounds %struct.anon.119, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %compound_order.i.i.i.i.i256 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %compound_order.i.i.i.i.i256, align 1
  %conv.i.i.i.i.i257 = zext i8 %47 to i32
  %phi.bo.i.i258 = add nsw i32 %conv.i.i.i.i.i257, -3
  br label %afs_folio_dirty_to.exit

afs_folio_dirty_to.exit:                          ; preds = %if.end.i.i.i.i.i259, %PageHead.exit.i.i.i.i.i255.afs_folio_dirty_to.exit_crit_edge
  %retval.0.i.i.i.i.i260 = phi i32 [ %phi.bo.i.i258, %if.end.i.i.i.i.i259 ], [ -3, %PageHead.exit.i.i.i.i.i255.afs_folio_dirty_to.exit_crit_edge ]
  %shr.i261 = lshr i32 %30, 16
  %and.i262 = and i32 %shr.i261, 32767
  %add.i = add nuw nsw i32 %and.i262, 1
  %48 = tail call i32 @llvm.smax.i32(i32 %retval.0.i.i.i.i.i260, i32 0) #9
  %shl.i263 = shl i32 %add.i, %48
  %49 = load ptr, ptr @afs_write_back_from_locked_folio.___tp_str, align 4
  tail call fastcc void @trace_afs_folio_dirty(ptr noundef %1, ptr noundef %49, ptr noundef %folio)
  %sub35 = sub i32 %shl.i263, %shl.i
  %50 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub35, ptr %len, align 4
  %conv = zext i32 %shl.i to i64
  %add = add i64 %conv, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %call1, i64 %add)
  %cmp = icmp sgt i64 %call1, %add
  br i1 %cmp, label %if.then37, label %do.body105.critedge

if.then37:                                        ; preds = %afs_folio_dirty_to.exit
  %sub39 = add i64 %end, 1
  %add40 = sub i64 %sub39, %add
  %sub46 = sub i64 %call1, %add
  %51 = tail call i64 @llvm.umin.i64(i64 %add40, i64 %sub46)
  %52 = tail call i64 @llvm.umin.i64(i64 %51, i64 268435456)
  %cond53.off0 = trunc i64 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub35, i32 %cond53.off0)
  %cmp55 = icmp ult i32 %sub35, %cond53.off0
  br i1 %cmp55, label %land.lhs.true, label %do.body81.critedge245

land.lhs.true:                                    ; preds = %if.then37
  %53 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp.i.not.i.i.i.i = icmp eq i32 %54, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !283

if.then.i.i.i.i:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.65) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i.i:                              ; preds = %land.lhs.true
  %55 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %folio, align 4
  %57 = and i32 %56, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_size.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = getelementptr %struct.page, ptr %folio, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.119, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %60 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.end.i.i.i ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %shl.i264 = shl i32 4096, %retval.0.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i263, i32 %shl.i264)
  %cmp58 = icmp eq i32 %shl.i263, %shl.i264
  %brmerge = select i1 %cmp58, i1 true, i1 %tobool
  br i1 %brmerge, label %if.then62, label %do.body81.critedge

if.then62:                                        ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @afs_extend_writeback(ptr noundef %mapping, ptr noundef %1, ptr noundef nonnull %count, i64 noundef %add, i64 noundef %52, i1 noundef zeroext %tobool, i1 noundef zeroext %12, ptr noundef nonnull %len)
  %61 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len, align 4
  %63 = tail call i32 @llvm.umin.i32(i32 %62, i32 %cond53.off0)
  %64 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %len, align 4
  br label %do.body81

do.body81.critedge:                               ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %sub35, ptr %len, align 4
  br label %do.body81

do.body81.critedge245:                            ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %cond53.off0, ptr %len, align 4
  br label %do.body81

do.body81:                                        ; preds = %do.body81.critedge245, %do.body81.critedge, %if.then62
  tail call void @folio_unlock(ptr noundef %folio) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %67 = load i32, ptr @afs_debug, align 4
  %and82 = and i32 %67, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %do.body81.do.end102_crit_edge, label %do.end93, !prof !281

do.body81.do.end102_crit_edge:                    ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end102

do.end93:                                         ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #11
  %68 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i265 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i265 to ptr
  %task96 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %task96 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task96, align 8
  %comm97 = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 101
  %72 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len, align 4
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %comm97, i32 noundef %73, i64 noundef %add, i64 noundef %call1) #12
  br label %do.end102

do.end102:                                        ; preds = %do.end93, %do.body81.do.end102_crit_edge
  %74 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len, align 4
  br i1 %12, label %if.then.i.i, label %do.end102.if.end129_crit_edge

do.end102.if.end129_crit_edge:                    ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then.i.i:                                      ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #11
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %76 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %i_mapping.i, align 8
  %78 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cache.i, align 8
  tail call void @__fscache_write_to_cache(ptr noundef %79, ptr noundef %77, i64 noundef %add, i32 noundef %75, i64 noundef %call1, ptr noundef nonnull @afs_write_to_cache_done, ptr noundef %1, i1 noundef zeroext true) #9
  br label %if.end129

do.body105.critedge:                              ; preds = %afs_folio_dirty_to.exit
  tail call void @folio_unlock(ptr noundef %folio) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %80 = load i32, ptr @afs_debug, align 4
  %and106 = and i32 %80, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %do.body105.critedge.do.end126_crit_edge, label %do.end117, !prof !281

do.body105.critedge.do.end126_crit_edge:          ; preds = %do.body105.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end126

do.end117:                                        ; preds = %do.body105.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %81 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i266 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i266 to ptr
  %task120 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %task120 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task120, align 8
  %comm121 = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 101
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %comm121, i32 noundef %sub35, i64 noundef %add, i64 noundef %call1) #12
  br label %do.end126

do.end126:                                        ; preds = %do.end117, %do.body105.critedge.do.end126_crit_edge
  br i1 %12, label %if.then.i268, label %do.end126.if.end129.thread_crit_edge

do.end126.if.end129.thread_crit_edge:             ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129.thread

if.then.i268:                                     ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__fscache_clear_page_bits(ptr noundef %mapping, i64 noundef %add, i32 noundef %sub35) #9
  br label %if.end129.thread

if.end129.thread:                                 ; preds = %if.then.i268, %do.end126.if.end129.thread_crit_edge
  tail call fastcc void @afs_pages_written_back(ptr noundef %1, i64 noundef %add, i32 noundef %sub35)
  br label %sw.bb

if.end129:                                        ; preds = %if.then.i.i, %do.end102.if.end129_crit_edge
  %i_pages = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 1
  call void @iov_iter_xarray(ptr noundef nonnull %iter, i32 noundef 1, ptr noundef %i_pages, i64 noundef %add, i32 noundef %75) #9
  %call104 = call fastcc i32 @afs_store_data(ptr noundef %1, ptr noundef nonnull %iter, i64 noundef %add, i1 noundef zeroext false)
  %85 = zext i32 %call104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call104, label %do.end133 [
    i32 0, label %if.end129.sw.bb_crit_edge
    i32 -13, label %if.end129.sw.bb136_crit_edge
    i32 -1, label %if.end129.sw.bb136_crit_edge294
    i32 -126, label %if.end129.sw.bb136_crit_edge295
    i32 -127, label %if.end129.sw.bb136_crit_edge296
    i32 -129, label %if.end129.sw.bb136_crit_edge297
    i32 -128, label %if.end129.sw.bb136_crit_edge298
    i32 -122, label %if.end129.sw.bb138_crit_edge
    i32 -28, label %if.end129.sw.bb138_crit_edge299
    i32 -30, label %if.end129.if.end.i280_crit_edge
    i32 -5, label %if.end129.if.end.i280_crit_edge300
    i32 -121, label %if.end129.if.end.i280_crit_edge301
    i32 -27, label %if.end129.if.end.i280_crit_edge302
    i32 -2, label %if.end129.if.end.i280_crit_edge303
    i32 -123, label %if.end129.if.end.i280_crit_edge304
    i32 -6, label %if.end129.if.end.i280_crit_edge305
  ]

if.end129.if.end.i280_crit_edge305:               ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i280

if.end129.if.end.i280_crit_edge304:               ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i280

if.end129.if.end.i280_crit_edge303:               ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i280

if.end129.if.end.i280_crit_edge302:               ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i280

if.end129.if.end.i280_crit_edge301:               ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i280

if.end129.if.end.i280_crit_edge300:               ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i280

if.end129.if.end.i280_crit_edge:                  ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i280

if.end129.sw.bb138_crit_edge299:                  ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb138

if.end129.sw.bb138_crit_edge:                     ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb138

if.end129.sw.bb136_crit_edge298:                  ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb136

if.end129.sw.bb136_crit_edge297:                  ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb136

if.end129.sw.bb136_crit_edge296:                  ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb136

if.end129.sw.bb136_crit_edge295:                  ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb136

if.end129.sw.bb136_crit_edge294:                  ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb136

if.end129.sw.bb136_crit_edge:                     ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb136

if.end129.sw.bb_crit_edge:                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %if.end129.sw.bb_crit_edge, %if.end129.thread
  %86 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %count, align 4
  %88 = ptrtoint ptr %wbc to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %wbc, align 8
  %89 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len, align 4
  br label %do.body142

do.end133:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  %call135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %call104) #12
  br label %sw.bb136

sw.bb136:                                         ; preds = %do.end133, %if.end129.sw.bb136_crit_edge, %if.end129.sw.bb136_crit_edge294, %if.end129.sw.bb136_crit_edge295, %if.end129.sw.bb136_crit_edge296, %if.end129.sw.bb136_crit_edge297, %if.end129.sw.bb136_crit_edge298
  %91 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %len, align 4
  %conv137 = zext i32 %92 to i64
  call fastcc void @afs_redirty_pages(ptr noundef %wbc, ptr noundef %mapping, i64 noundef %add, i64 noundef %conv137)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool.not.i = icmp eq i32 %call104, 0
  br i1 %tobool.not.i, label %sw.bb136.do.body142_crit_edge, label %if.end.i, !prof !281

sw.bb136.do.body142_crit_edge:                    ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body142

if.end.i:                                         ; preds = %sw.bb136
  call void @__filemap_set_wb_err(ptr noundef %mapping, i32 noundef %call104) #9
  %93 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mapping, align 4
  %tobool4.not.i = icmp eq ptr %94, null
  br i1 %tobool4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %94, i32 0, i32 8
  %95 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %i_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %96, i32 0, i32 50
  %call.i = call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef %call104) #9
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call104)
  %cmp.i = icmp eq i32 %call104, -28
  %flags.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 10
  %..i = zext i1 %cmp.i to i32
  call void @_set_bit(i32 noundef %..i, ptr noundef %flags.i) #9
  br label %do.body142

sw.bb138:                                         ; preds = %if.end129.sw.bb138_crit_edge, %if.end129.sw.bb138_crit_edge299
  %97 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len, align 4
  %conv139 = zext i32 %98 to i64
  call fastcc void @afs_redirty_pages(ptr noundef %wbc, ptr noundef %mapping, i64 noundef %add, i64 noundef %conv139)
  call void @__filemap_set_wb_err(ptr noundef %mapping, i32 noundef -28) #9
  %99 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mapping, align 4
  %tobool4.not.i269 = icmp eq ptr %100, null
  br i1 %tobool4.not.i269, label %sw.bb138.mapping_set_error.exit277_crit_edge, label %if.then5.i274

sw.bb138.mapping_set_error.exit277_crit_edge:     ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #11
  br label %mapping_set_error.exit277

if.then5.i274:                                    ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb.i271 = getelementptr inbounds %struct.inode, ptr %100, i32 0, i32 8
  %101 = ptrtoint ptr %i_sb.i271 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %i_sb.i271, align 4
  %s_wb_err.i272 = getelementptr inbounds %struct.super_block, ptr %102, i32 0, i32 50
  %call.i273 = call i32 @errseq_set(ptr noundef %s_wb_err.i272, i32 noundef -28) #9
  br label %mapping_set_error.exit277

mapping_set_error.exit277:                        ; preds = %if.then5.i274, %sw.bb138.mapping_set_error.exit277_crit_edge
  %flags.i275 = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 10
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.i275) #9
  br label %do.body142

if.end.i280:                                      ; preds = %if.end129.if.end.i280_crit_edge, %if.end129.if.end.i280_crit_edge300, %if.end129.if.end.i280_crit_edge301, %if.end129.if.end.i280_crit_edge302, %if.end129.if.end.i280_crit_edge303, %if.end129.if.end.i280_crit_edge304, %if.end129.if.end.i280_crit_edge305
  call fastcc void @trace_afs_file_error(ptr noundef %1, i32 noundef %call104)
  %103 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %len, align 4
  %conv141 = zext i32 %104 to i64
  call fastcc void @afs_kill_pages(ptr noundef %mapping, i64 noundef %add, i64 noundef %conv141)
  call void @__filemap_set_wb_err(ptr noundef %mapping, i32 noundef %call104) #9
  %105 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mapping, align 4
  %tobool4.not.i279 = icmp eq ptr %106, null
  br i1 %tobool4.not.i279, label %if.end.i280.mapping_set_error.exit289_crit_edge, label %if.then5.i284

if.end.i280.mapping_set_error.exit289_crit_edge:  ; preds = %if.end.i280
  call void @__sanitizer_cov_trace_pc() #11
  br label %mapping_set_error.exit289

if.then5.i284:                                    ; preds = %if.end.i280
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb.i281 = getelementptr inbounds %struct.inode, ptr %106, i32 0, i32 8
  %107 = ptrtoint ptr %i_sb.i281 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %i_sb.i281, align 4
  %s_wb_err.i282 = getelementptr inbounds %struct.super_block, ptr %108, i32 0, i32 50
  %call.i283 = call i32 @errseq_set(ptr noundef %s_wb_err.i282, i32 noundef %call104) #9
  br label %mapping_set_error.exit289

mapping_set_error.exit289:                        ; preds = %if.then5.i284, %if.end.i280.mapping_set_error.exit289_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call104)
  %cmp.i285 = icmp eq i32 %call104, -28
  %flags.i286 = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 10
  %..i287 = zext i1 %cmp.i285 to i32
  call void @_set_bit(i32 noundef %..i287, ptr noundef %flags.i286) #9
  br label %do.body142

do.body142:                                       ; preds = %mapping_set_error.exit289, %mapping_set_error.exit277, %if.end7.i, %sw.bb136.do.body142_crit_edge, %sw.bb
  %ret.1 = phi i32 [ %call104, %mapping_set_error.exit289 ], [ %call104, %mapping_set_error.exit277 ], [ %90, %sw.bb ], [ 0, %sw.bb136.do.body142_crit_edge ], [ %call104, %if.end7.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %109 = load i32, ptr @afs_debug, align 4
  %and143 = and i32 %109, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %do.body142.do.end163_crit_edge, label %do.end154, !prof !281

do.body142.do.end163_crit_edge:                   ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end163

do.end154:                                        ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #11
  %110 = call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i290 = and i32 %110, -16384
  %111 = inttoptr i32 %and.i290 to ptr
  %task157 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %task157 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %task157, align 8
  %comm158 = getelementptr inbounds %struct.task_struct, ptr %113, i32 0, i32 101
  %call160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %comm158, ptr noundef nonnull @.str.74, i32 noundef %ret.1) #12
  br label %do.end163

do.end163:                                        ; preds = %do.end154, %do.body142.do.end163_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #9
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @folio_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_writepages(ptr noundef %mapping, ptr noundef %wbc) local_unnamed_addr #0 align 64 {
entry:
  %next = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next) #9
  %2 = ptrtoint ptr %next to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %next, align 8, !annotation !280
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %3 = load i32, ptr @afs_debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !281

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm, ptr noundef nonnull @.str.41) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %8 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  %validate_lock = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 8
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @down_read(ptr noundef %validate_lock) #9
  br label %if.end14

if.else:                                          ; preds = %do.end7
  %call10 = tail call i32 @down_read_trylock(ptr noundef %validate_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.else.cleanup_crit_edge, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.then8
  %range_cyclic = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5
  %10 = ptrtoint ptr %range_cyclic to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %range_cyclic, align 4
  %11 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool15.not = icmp eq i16 %11, 0
  br i1 %tobool15.not, label %if.else38, label %if.then16

if.then16:                                        ; preds = %if.end14
  %writeback_index = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 8
  %12 = ptrtoint ptr %writeback_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %writeback_index, align 4
  %mul = shl i32 %13, 12
  %conv = zext i32 %mul to i64
  %call17 = call fastcc i32 @afs_writepages_region(ptr noundef %mapping, ptr noundef %wbc, i64 noundef %conv, i64 noundef 9223372036854775807, ptr noundef nonnull %next)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.then16.if.end62_crit_edge

if.then16.if.end62_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then20:                                        ; preds = %if.then16
  %14 = ptrtoint ptr %next to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %next, align 8
  %div = sdiv i64 %15, 4096
  %conv21 = trunc i64 %div to i32
  %16 = ptrtoint ptr %writeback_index to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv21, ptr %writeback_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp23.not = icmp eq i32 %mul, 0
  br i1 %cmp23.not, label %if.then20.if.end62_crit_edge, label %land.lhs.true

if.then20.if.end62_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

land.lhs.true:                                    ; preds = %if.then20
  %17 = ptrtoint ptr %wbc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wbc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp25 = icmp sgt i32 %18, 0
  br i1 %cmp25, label %if.then27, label %land.lhs.true.if.end62_crit_edge

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then27:                                        ; preds = %land.lhs.true
  %call28 = call fastcc i32 @afs_writepages_region(ptr noundef %mapping, ptr noundef %wbc, i64 noundef 0, i64 noundef %conv, ptr noundef nonnull %next)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.then27.if.end62_crit_edge

if.then27.if.end62_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then31:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %next to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %next, align 8
  %div32 = sdiv i64 %20, 4096
  %conv33 = trunc i64 %div32 to i32
  %21 = ptrtoint ptr %writeback_index to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv33, ptr %writeback_index, align 4
  br label %if.end62

if.else38:                                        ; preds = %if.end14
  %range_start = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 2
  %22 = ptrtoint ptr %range_start to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %range_start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %cmp39 = icmp eq i64 %23, 0
  br i1 %cmp39, label %land.lhs.true41, label %if.else38.if.else57_crit_edge

if.else38.if.else57_crit_edge:                    ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else57

land.lhs.true41:                                  ; preds = %if.else38
  %range_end = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 3
  %24 = ptrtoint ptr %range_end to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %range_end, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %25)
  %cmp42 = icmp eq i64 %25, 9223372036854775807
  br i1 %cmp42, label %if.then44, label %land.lhs.true41.if.else57_crit_edge

land.lhs.true41.if.else57_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else57

if.then44:                                        ; preds = %land.lhs.true41
  %call45 = call fastcc i32 @afs_writepages_region(ptr noundef %mapping, ptr noundef %wbc, i64 noundef 0, i64 noundef 9223372036854775807, ptr noundef nonnull %next)
  %26 = ptrtoint ptr %wbc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wbc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp47 = icmp sgt i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp50 = icmp eq i32 %call45, 0
  %or.cond = select i1 %cmp47, i1 %cmp50, i1 false
  br i1 %or.cond, label %if.then52, label %if.then44.if.end62_crit_edge

if.then44.if.end62_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then52:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %next to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %next, align 8
  %div53 = sdiv i64 %29, 4096
  %conv54 = trunc i64 %div53 to i32
  %writeback_index55 = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 8
  %30 = ptrtoint ptr %writeback_index55 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv54, ptr %writeback_index55, align 4
  br label %if.end62

if.else57:                                        ; preds = %land.lhs.true41.if.else57_crit_edge, %if.else38.if.else57_crit_edge
  %range_end59 = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 3
  %31 = ptrtoint ptr %range_end59 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %range_end59, align 8
  %call60 = call fastcc i32 @afs_writepages_region(ptr noundef %mapping, ptr noundef %wbc, i64 noundef %23, i64 noundef %32, ptr noundef nonnull %next)
  br label %if.end62

if.end62:                                         ; preds = %if.else57, %if.then52, %if.then44.if.end62_crit_edge, %if.then31, %if.then27.if.end62_crit_edge, %land.lhs.true.if.end62_crit_edge, %if.then20.if.end62_crit_edge, %if.then16.if.end62_crit_edge
  %ret.0 = phi i32 [ 0, %if.then31 ], [ %call28, %if.then27.if.end62_crit_edge ], [ 0, %land.lhs.true.if.end62_crit_edge ], [ 0, %if.then20.if.end62_crit_edge ], [ %call17, %if.then16.if.end62_crit_edge ], [ 0, %if.then52 ], [ %call45, %if.then44.if.end62_crit_edge ], [ %call60, %if.else57 ]
  %validate_lock63 = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 8
  tail call void @up_read(ptr noundef %validate_lock63) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %33 = load i32, ptr @afs_debug, align 4
  %and65 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end62.cleanup_crit_edge, label %do.end76, !prof !281

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end76:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %34 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i116 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i116 to ptr
  %task79 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task79 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task79, align 8
  %comm80 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 101
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %comm80, ptr noundef nonnull @.str.41, i32 noundef %ret.0) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end76, %if.end62.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else.cleanup_crit_edge ], [ %ret.0, %do.end76 ], [ %ret.0, %if.end62.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @afs_writepages_region(ptr noundef %mapping, ptr noundef %wbc, i64 noundef %start, i64 noundef %end, ptr nocapture noundef writeonly %_next) unnamed_addr #0 align 64 {
entry:
  %head_page = alloca ptr, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %head_page) #9
  %0 = ptrtoint ptr %head_page to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %head_page, align 4, !annotation !280
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %1 = load i32, ptr @afs_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !281

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %comm, ptr noundef nonnull @.str.120, i64 noundef %start, i64 noundef %end) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %div8 = sdiv i64 %end, 4096
  %conv9 = trunc i64 %div8 to i32
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  br label %do.body7

do.body7:                                         ; preds = %do.cond126.do.body7_crit_edge, %do.end6
  %skips.0 = phi i32 [ 0, %do.end6 ], [ %skips.2.ph, %do.cond126.do.body7_crit_edge ]
  %start.addr.0 = phi i64 [ %start, %do.end6 ], [ %start.addr.2.ph, %do.cond126.do.body7_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #9
  %div = sdiv i64 %start.addr.0, 4096
  %conv = trunc i64 %div to i32
  %6 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %index, align 4
  %call10 = call i32 @find_get_pages_range_tag(ptr noundef %mapping, ptr noundef nonnull %index, i32 noundef %conv9, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %head_page) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body7.cleanup_crit_edge, label %if.end13

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %do.body7
  %7 = ptrtoint ptr %head_page to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head_page, align 4
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i208 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i208)
  %tobool.not.i = icmp eq i32 %and.i208, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !281

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %11, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %8 to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %12, %if.end.i ]
  %13 = inttoptr i32 %retval.0.i to ptr
  %index.i.i = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %15 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %16 = load i32, ptr @afs_debug, align 4
  %and17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %_compound_head.exit.do.end38_crit_edge, label %do.end28, !prof !281

_compound_head.exit.do.end38_crit_edge:           ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

do.end28:                                         ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  %17 = call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i209 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i209 to ptr
  %task31 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task31, align 8
  %comm32 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 101
  %call34 = call fastcc i32 @folio_index(ptr noundef %13)
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %comm32, i32 noundef %call34) #12
  br label %do.end38

do.end38:                                         ; preds = %do.end28, %_compound_head.exit.do.end38_crit_edge
  %21 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not = icmp eq i32 %22, 0
  br i1 %cmp.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %do.end38
  call void @__might_sleep(ptr noundef nonnull @.str.69, i32 noundef 797) #9
  %23 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !281

if.then.i.i.i:                                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  %26 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %26, ptr noundef nonnull @.str.63) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_flags.exit.i.i:                             ; preds = %if.then40
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %13, i32 noundef 4) #9
  %27 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %13, align 4
  %and.i.i4.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.folio_lock_killable.exit_crit_edge

folio_flags.exit.i.i.folio_lock_killable.exit_crit_edge: ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_lock_killable.exit

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %13, i32 1, i32 3, i32 1) #9
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #9, !srcloc !286
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !287
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.if.end49_crit_edge, label %folio_trylock.exit.i.folio_lock_killable.exit_crit_edge

folio_trylock.exit.i.folio_lock_killable.exit_crit_edge: ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_lock_killable.exit

folio_trylock.exit.i.if.end49_crit_edge:          ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

folio_lock_killable.exit:                         ; preds = %folio_trylock.exit.i.folio_lock_killable.exit_crit_edge, %folio_flags.exit.i.i.folio_lock_killable.exit_crit_edge
  %call3.i = call i32 @__folio_lock_killable(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp42 = icmp slt i32 %call3.i, 0
  br i1 %cmp42, label %if.then44, label %folio_lock_killable.exit.if.end49_crit_edge

folio_lock_killable.exit.if.end49_crit_edge:      ; preds = %folio_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then44:                                        ; preds = %folio_lock_killable.exit
  %30 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %31 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i.i = icmp eq i32 %32, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i212, label %do.end5.i.i.i, !prof !283

if.then.i.i.i212:                                 ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %30, ptr noundef nonnull @.str.70) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !288
  unreachable

do.end5.i.i.i:                                    ; preds = %if.then44
  %call.i.i.i10.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !289
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %33 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !290
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_writepages_region, %if.then.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !292

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %30, i32 noundef -1, i32 noundef %conv.i.i.i.i) #9
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i213, label %folio_put_testzero.exit.i.cleanup.thread_crit_edge

folio_put_testzero.exit.i.cleanup.thread_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.then.i213:                                     ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %30) #9
  br label %cleanup.thread

if.else:                                          ; preds = %do.end38
  %34 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %and.i.i.i215 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i215)
  %tobool.not.i.i216 = icmp eq i32 %and.i.i.i215, 0
  br i1 %tobool.not.i.i216, label %folio_flags.exit.i, label %if.then.i.i217, !prof !281

if.then.i.i217:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %37 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %37, ptr noundef nonnull @.str.63) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_flags.exit.i:                               ; preds = %if.else
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %13, i32 noundef 4) #9
  %38 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %13, align 4
  %and.i.i4.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i)
  %tobool.not.i.i.i218 = icmp eq i32 %and.i.i4.i, 0
  br i1 %tobool.not.i.i.i218, label %folio_trylock.exit, label %folio_flags.exit.i.if.then47_crit_edge

folio_flags.exit.i.if.then47_crit_edge:           ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

folio_trylock.exit:                               ; preds = %folio_flags.exit.i
  call void @llvm.prefetch.p0(ptr %13, i32 1, i32 3, i32 1) #9
  %40 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #9, !srcloc !286
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !287
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.i, label %folio_trylock.exit.if.end49_crit_edge, label %folio_trylock.exit.if.then47_crit_edge

folio_trylock.exit.if.then47_crit_edge:           ; preds = %folio_trylock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

folio_trylock.exit.if.end49_crit_edge:            ; preds = %folio_trylock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then47:                                        ; preds = %folio_trylock.exit.if.then47_crit_edge, %folio_flags.exit.i.if.then47_crit_edge
  %41 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i219 = getelementptr inbounds %struct.page, ptr %41, i32 0, i32 3
  %call.i.i.i.i.i.i220 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i219, i32 noundef 4) #9
  %42 = ptrtoint ptr %_refcount.i.i.i.i219 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %_refcount.i.i.i.i219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i.i.i221 = icmp eq i32 %43, 0
  br i1 %cmp.i.i.i221, label %if.then.i.i.i222, label %do.end5.i.i.i226, !prof !283

if.then.i.i.i222:                                 ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %41, ptr noundef nonnull @.str.70) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !288
  unreachable

do.end5.i.i.i226:                                 ; preds = %if.then47
  %call.i.i.i10.i.i.i223 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i219, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !289
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i219, i32 1, i32 3, i32 1) #9
  %44 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i219, ptr %_refcount.i.i.i.i219, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i219) #9, !srcloc !290
  %asmresult.i.i.i.i.i.i.i.i.i224 = extractvalue { i32, i32 } %44, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i224)
  %cmp.i.i.i.i.i.i225 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i224, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_writepages_region, %if.then.i.i.i.i228)) #9
          to label %folio_put_testzero.exit.i229 [label %if.then.i.i.i.i228], !srcloc !292

if.then.i.i.i.i228:                               ; preds = %do.end5.i.i.i226
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i227 = zext i1 %cmp.i.i.i.i.i.i225 to i32
  call void @__page_ref_mod_and_test(ptr noundef %41, i32 noundef -1, i32 noundef %conv.i.i.i.i227) #9
  br label %folio_put_testzero.exit.i229

folio_put_testzero.exit.i229:                     ; preds = %if.then.i.i.i.i228, %do.end5.i.i.i226
  br i1 %cmp.i.i.i.i.i.i225, label %if.then.i230, label %folio_put_testzero.exit.i229.cleanup.thread_crit_edge

folio_put_testzero.exit.i229.cleanup.thread_crit_edge: ; preds = %folio_put_testzero.exit.i229
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.then.i230:                                     ; preds = %folio_put_testzero.exit.i229
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %41) #9
  br label %cleanup.thread

if.end49:                                         ; preds = %folio_trylock.exit.if.end49_crit_edge, %folio_lock_killable.exit.if.end49_crit_edge, %folio_trylock.exit.i.if.end49_crit_edge
  %call50 = call ptr @folio_mapping(ptr noundef %13) #9
  %cmp51.not = icmp eq ptr %call50, %mapping
  br i1 %cmp51.not, label %lor.lhs.false, label %if.end49.if.then54_crit_edge

if.end49.if.then54_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

lor.lhs.false:                                    ; preds = %if.end49
  %45 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %and.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_dirty.exit, label %if.then.i.i, !prof !281

if.then.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %48 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %48, ptr noundef nonnull @.str.63) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_dirty.exit:                            ; preds = %lor.lhs.false
  %49 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %13, align 4
  %51 = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.i.not = icmp eq i32 %51, 0
  br i1 %tobool.i.not, label %folio_test_dirty.exit.if.then54_crit_edge, label %if.end57

folio_test_dirty.exit.if.then54_crit_edge:        ; preds = %folio_test_dirty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

if.then54:                                        ; preds = %folio_test_dirty.exit.if.then54_crit_edge, %if.end49.if.then54_crit_edge
  %52 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp.i.not.i.i.i.i = icmp eq i32 %53, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i233, label %PageHead.exit.i.i.i, !prof !283

if.then.i.i.i.i233:                               ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %54 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %54, ptr noundef nonnull @.str.65) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i.i:                              ; preds = %if.then54
  %55 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %13, align 4
  %57 = and i32 %56, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i.i234 = icmp eq i32 %57, 0
  br i1 %tobool.not.i.i.i234, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i235

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_size.exit

if.end.i.i.i235:                                  ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = getelementptr %struct.page, ptr %13, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.119, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %60 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i235, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i236 = phi i32 [ %conv.i.i.i, %if.end.i.i.i235 ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i.i236
  %conv56 = zext i32 %shl.i to i64
  %add = add nuw nsw i64 %shl.i.i, %conv56
  call void @folio_unlock(ptr noundef %13) #9
  %_refcount.i.i.i.i237 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 3
  %call.i.i.i.i.i.i238 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i237, i32 noundef 4) #9
  %61 = ptrtoint ptr %_refcount.i.i.i.i237 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %_refcount.i.i.i.i237, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.i.i.i239 = icmp eq i32 %62, 0
  br i1 %cmp.i.i.i239, label %if.then.i.i.i240, label %do.end5.i.i.i244, !prof !283

if.then.i.i.i240:                                 ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %63 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %63, ptr noundef nonnull @.str.70) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !288
  unreachable

do.end5.i.i.i244:                                 ; preds = %folio_size.exit
  %call.i.i.i10.i.i.i241 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i237, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !289
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i237, i32 1, i32 3, i32 1) #9
  %64 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i237, ptr %_refcount.i.i.i.i237, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i237) #9, !srcloc !290
  %asmresult.i.i.i.i.i.i.i.i.i242 = extractvalue { i32, i32 } %64, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i242)
  %cmp.i.i.i.i.i.i243 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i242, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_writepages_region, %if.then.i.i.i.i246)) #9
          to label %folio_put_testzero.exit.i247 [label %if.then.i.i.i.i246], !srcloc !292

if.then.i.i.i.i246:                               ; preds = %do.end5.i.i.i244
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i245 = zext i1 %cmp.i.i.i.i.i.i243 to i32
  call void @__page_ref_mod_and_test(ptr noundef %13, i32 noundef -1, i32 noundef %conv.i.i.i.i245) #9
  br label %folio_put_testzero.exit.i247

folio_put_testzero.exit.i247:                     ; preds = %if.then.i.i.i.i246, %do.end5.i.i.i244
  br i1 %cmp.i.i.i.i.i.i243, label %if.then.i248, label %folio_put_testzero.exit.i247.do.cond126_crit_edge

folio_put_testzero.exit.i247.do.cond126_crit_edge: ; preds = %folio_put_testzero.exit.i247
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond126

if.then.i248:                                     ; preds = %folio_put_testzero.exit.i247
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %13) #9
  br label %do.cond126

if.end57:                                         ; preds = %folio_test_dirty.exit
  %65 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %45, align 4
  %and.i.i.i199 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i199)
  %tobool.not.i.i200 = icmp eq i32 %and.i.i.i199, 0
  br i1 %tobool.not.i.i200, label %folio_test_writeback.exit, label %if.then.i.i201, !prof !281

if.then.i.i201:                                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %67 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %67, ptr noundef nonnull @.str.63) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_writeback.exit:                        ; preds = %if.end57
  %68 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %13, align 4
  %70 = and i32 %69, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.i202.not = icmp eq i32 %70, 0
  br i1 %tobool.i202.not, label %lor.lhs.false60, label %folio_test_writeback.exit.if.then63_crit_edge

folio_test_writeback.exit.if.then63_crit_edge:    ; preds = %folio_test_writeback.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63

lor.lhs.false60:                                  ; preds = %folio_test_writeback.exit
  %71 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %45, align 4
  %and.i.i.i203 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i203)
  %tobool.not.i.i204 = icmp eq i32 %and.i.i.i203, 0
  br i1 %tobool.not.i.i204, label %folio_test_private_2.exit, label %if.then.i.i205, !prof !281

if.then.i.i205:                                   ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #11
  %73 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %73, ptr noundef nonnull @.str.63) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_private_2.exit:                        ; preds = %lor.lhs.false60
  %74 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %13, align 4
  %76 = and i32 %75, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.i206.not = icmp eq i32 %76, 0
  br i1 %tobool.i206.not, label %if.end85, label %folio_test_private_2.exit.if.then63_crit_edge

folio_test_private_2.exit.if.then63_crit_edge:    ; preds = %folio_test_private_2.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63

if.then63:                                        ; preds = %folio_test_private_2.exit.if.then63_crit_edge, %folio_test_writeback.exit.if.then63_crit_edge
  call void @folio_unlock(ptr noundef %13) #9
  %77 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp65.not = icmp eq i32 %78, 0
  br i1 %cmp65.not, label %if.else68, label %if.then67

if.then67:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  call void @folio_wait_writeback(ptr noundef %13) #9
  call void @folio_wait_private_2(ptr noundef %13) #9
  br label %if.end72

if.else68:                                        ; preds = %if.then63
  %79 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %cmp.i.not.i.i.i.i251 = icmp eq i32 %80, -1
  br i1 %cmp.i.not.i.i.i.i251, label %if.then.i.i.i.i252, label %PageHead.exit.i.i.i254, !prof !283

if.then.i.i.i.i252:                               ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #11
  %81 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %81, ptr noundef nonnull @.str.65) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i.i254:                           ; preds = %if.else68
  %82 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %13, align 4
  %84 = and i32 %83, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i.i.i253 = icmp eq i32 %84, 0
  br i1 %tobool.not.i.i.i253, label %PageHead.exit.i.i.i254.folio_size.exit260_crit_edge, label %if.end.i.i.i257

PageHead.exit.i.i.i254.folio_size.exit260_crit_edge: ; preds = %PageHead.exit.i.i.i254
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_size.exit260

if.end.i.i.i257:                                  ; preds = %PageHead.exit.i.i.i254
  call void @__sanitizer_cov_trace_pc() #11
  %85 = getelementptr %struct.page, ptr %13, i32 1, i32 1
  %compound_order.i.i.i255 = getelementptr inbounds %struct.anon.119, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %compound_order.i.i.i255 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %compound_order.i.i.i255, align 1
  %conv.i.i.i256 = zext i8 %87 to i32
  br label %folio_size.exit260

folio_size.exit260:                               ; preds = %if.end.i.i.i257, %PageHead.exit.i.i.i254.folio_size.exit260_crit_edge
  %retval.0.i.i.i258 = phi i32 [ %conv.i.i.i256, %if.end.i.i.i257 ], [ 0, %PageHead.exit.i.i.i254.folio_size.exit260_crit_edge ]
  %shl.i259 = shl i32 4096, %retval.0.i.i.i258
  %conv70 = zext i32 %shl.i259 to i64
  %add71 = add nuw nsw i64 %shl.i.i, %conv70
  br label %if.end72

if.end72:                                         ; preds = %folio_size.exit260, %if.then67
  %start.addr.1 = phi i64 [ %shl.i.i, %if.then67 ], [ %add71, %folio_size.exit260 ]
  %_refcount.i.i.i.i261 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 3
  %call.i.i.i.i.i.i262 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i261, i32 noundef 4) #9
  %88 = ptrtoint ptr %_refcount.i.i.i.i261 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %_refcount.i.i.i.i261, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp.i.i.i263 = icmp eq i32 %89, 0
  br i1 %cmp.i.i.i263, label %if.then.i.i.i264, label %do.end5.i.i.i268, !prof !283

if.then.i.i.i264:                                 ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %90 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %90, ptr noundef nonnull @.str.70) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !288
  unreachable

do.end5.i.i.i268:                                 ; preds = %if.end72
  %call.i.i.i10.i.i.i265 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i261, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !289
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i261, i32 1, i32 3, i32 1) #9
  %91 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i261, ptr %_refcount.i.i.i.i261, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i261) #9, !srcloc !290
  %asmresult.i.i.i.i.i.i.i.i.i266 = extractvalue { i32, i32 } %91, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i266)
  %cmp.i.i.i.i.i.i267 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i266, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_writepages_region, %if.then.i.i.i.i270)) #9
          to label %folio_put_testzero.exit.i271 [label %if.then.i.i.i.i270], !srcloc !292

if.then.i.i.i.i270:                               ; preds = %do.end5.i.i.i268
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i269 = zext i1 %cmp.i.i.i.i.i.i267 to i32
  call void @__page_ref_mod_and_test(ptr noundef %13, i32 noundef -1, i32 noundef %conv.i.i.i.i269) #9
  br label %folio_put_testzero.exit.i271

folio_put_testzero.exit.i271:                     ; preds = %if.then.i.i.i.i270, %do.end5.i.i.i268
  br i1 %cmp.i.i.i.i.i.i267, label %if.then.i272, label %folio_put_testzero.exit.i271.folio_put.exit274_crit_edge

folio_put_testzero.exit.i271.folio_put.exit274_crit_edge: ; preds = %folio_put_testzero.exit.i271
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_put.exit274

if.then.i272:                                     ; preds = %folio_put_testzero.exit.i271
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %13) #9
  br label %folio_put.exit274

folio_put.exit274:                                ; preds = %if.then.i272, %folio_put_testzero.exit.i271.folio_put.exit274_crit_edge
  %92 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp74 = icmp eq i32 %93, 0
  br i1 %cmp74, label %if.then76, label %folio_put.exit274.do.cond126_crit_edge

folio_put.exit274.do.cond126_crit_edge:           ; preds = %folio_put.exit274
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond126

if.then76:                                        ; preds = %folio_put.exit274
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %skips.0)
  %cmp77 = icmp sgt i32 %skips.0, 4
  br i1 %cmp77, label %if.then76.cleanup_crit_edge, label %lor.lhs.false79

if.then76.cleanup_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false79:                                  ; preds = %if.then76
  %94 = call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i to ptr
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %95, align 16384
  %98 = and i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.i207.not = icmp eq i32 %98, 0
  %inc = add nsw i32 %skips.0, 1
  br i1 %tobool.i207.not, label %lor.lhs.false79.do.cond126_crit_edge, label %lor.lhs.false79.cleanup_crit_edge

lor.lhs.false79.cleanup_crit_edge:                ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false79.do.cond126_crit_edge:             ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond126

if.end85:                                         ; preds = %folio_test_private_2.exit
  %call86 = call zeroext i1 @folio_clear_dirty_for_io(ptr noundef %13) #9
  br i1 %call86, label %if.end94, label %do.body88

do.body88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/write.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 770, 0\0A.popsection", ""() #9, !srcloc !318
  unreachable

if.end94:                                         ; preds = %if.end85
  %call95 = call fastcc i32 @afs_write_back_from_locked_folio(ptr noundef %mapping, ptr noundef %wbc, ptr noundef %13, i64 noundef %shl.i.i, i64 noundef %end)
  %_refcount.i.i.i.i275 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 3
  %call.i.i.i.i.i.i276 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i275, i32 noundef 4) #9
  %99 = ptrtoint ptr %_refcount.i.i.i.i275 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %_refcount.i.i.i.i275, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp.i.i.i277 = icmp eq i32 %100, 0
  br i1 %cmp.i.i.i277, label %if.then.i.i.i278, label %do.end5.i.i.i282, !prof !283

if.then.i.i.i278:                                 ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  %101 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %101, ptr noundef nonnull @.str.70) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !288
  unreachable

do.end5.i.i.i282:                                 ; preds = %if.end94
  %call.i.i.i10.i.i.i279 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i275, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !289
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i275, i32 1, i32 3, i32 1) #9
  %102 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i275, ptr %_refcount.i.i.i.i275, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i275) #9, !srcloc !290
  %asmresult.i.i.i.i.i.i.i.i.i280 = extractvalue { i32, i32 } %102, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i280)
  %cmp.i.i.i.i.i.i281 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i280, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_writepages_region, %if.then.i.i.i.i284)) #9
          to label %folio_put_testzero.exit.i285 [label %if.then.i.i.i.i284], !srcloc !292

if.then.i.i.i.i284:                               ; preds = %do.end5.i.i.i282
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i283 = zext i1 %cmp.i.i.i.i.i.i281 to i32
  call void @__page_ref_mod_and_test(ptr noundef %13, i32 noundef -1, i32 noundef %conv.i.i.i.i283) #9
  br label %folio_put_testzero.exit.i285

folio_put_testzero.exit.i285:                     ; preds = %if.then.i.i.i.i284, %do.end5.i.i.i282
  br i1 %cmp.i.i.i.i.i.i281, label %if.then.i286, label %folio_put_testzero.exit.i285.folio_put.exit288_crit_edge

folio_put_testzero.exit.i285.folio_put.exit288_crit_edge: ; preds = %folio_put_testzero.exit.i285
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_put.exit288

if.then.i286:                                     ; preds = %folio_put_testzero.exit.i285
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %13) #9
  br label %folio_put.exit288

folio_put.exit288:                                ; preds = %if.then.i286, %folio_put_testzero.exit.i285.folio_put.exit288_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %do.body99, label %if.end121

do.body99:                                        ; preds = %folio_put.exit288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %103 = load i32, ptr @afs_debug, align 4
  %and100 = and i32 %103, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %do.body99.cleanup.thread_crit_edge, label %do.end111, !prof !281

do.body99.cleanup.thread_crit_edge:               ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

do.end111:                                        ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  %104 = call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i289 = and i32 %104, -16384
  %105 = inttoptr i32 %and.i289 to ptr
  %task114 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %task114 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %task114, align 8
  %comm115 = getelementptr inbounds %struct.task_struct, ptr %107, i32 0, i32 101
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %comm115, ptr noundef nonnull @.str.120, i32 noundef %call95) #12
  br label %cleanup.thread

if.end121:                                        ; preds = %folio_put.exit288
  call void @__sanitizer_cov_trace_pc() #11
  %conv122308 = zext i32 %call95 to i64
  %add123 = add nuw nsw i64 %shl.i.i, %conv122308
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 780, i32 noundef 0) #9
  %call.i = call i32 @__cond_resched() #9
  br label %do.cond126

cleanup.thread:                                   ; preds = %do.end111, %do.body99.cleanup.thread_crit_edge, %if.then.i230, %folio_put_testzero.exit.i229.cleanup.thread_crit_edge, %if.then.i213, %folio_put_testzero.exit.i.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ 0, %if.then.i230 ], [ 0, %folio_put_testzero.exit.i229.cleanup.thread_crit_edge ], [ %call3.i, %if.then.i213 ], [ %call3.i, %folio_put_testzero.exit.i.cleanup.thread_crit_edge ], [ %call95, %do.body99.cleanup.thread_crit_edge ], [ %call95, %do.end111 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #9
  br label %cleanup152

cleanup:                                          ; preds = %lor.lhs.false79.cleanup_crit_edge, %if.then76.cleanup_crit_edge, %do.body7.cleanup_crit_edge
  %start.addr.2 = phi i64 [ %start.addr.0, %do.body7.cleanup_crit_edge ], [ %start.addr.1, %if.then76.cleanup_crit_edge ], [ %start.addr.1, %lor.lhs.false79.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #9
  br label %do.end129

do.cond126:                                       ; preds = %if.end121, %lor.lhs.false79.do.cond126_crit_edge, %folio_put.exit274.do.cond126_crit_edge, %if.then.i248, %folio_put_testzero.exit.i247.do.cond126_crit_edge
  %skips.2.ph = phi i32 [ %skips.0, %if.then.i248 ], [ %skips.0, %folio_put_testzero.exit.i247.do.cond126_crit_edge ], [ %inc, %lor.lhs.false79.do.cond126_crit_edge ], [ %skips.0, %folio_put.exit274.do.cond126_crit_edge ], [ %skips.0, %if.end121 ]
  %start.addr.2.ph = phi i64 [ %add, %if.then.i248 ], [ %add, %folio_put_testzero.exit.i247.do.cond126_crit_edge ], [ %start.addr.1, %lor.lhs.false79.do.cond126_crit_edge ], [ %start.addr.1, %folio_put.exit274.do.cond126_crit_edge ], [ %add123, %if.end121 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #9
  %108 = ptrtoint ptr %wbc to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %wbc, align 8
  %cmp127 = icmp sgt i32 %109, 0
  br i1 %cmp127, label %do.cond126.do.body7_crit_edge, label %do.cond126.do.end129_crit_edge

do.cond126.do.end129_crit_edge:                   ; preds = %do.cond126
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end129

do.cond126.do.body7_crit_edge:                    ; preds = %do.cond126
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

do.end129:                                        ; preds = %do.cond126.do.end129_crit_edge, %cleanup
  %start.addr.2305 = phi i64 [ %start.addr.2, %cleanup ], [ %start.addr.2.ph, %do.cond126.do.end129_crit_edge ]
  %110 = ptrtoint ptr %_next to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %start.addr.2305, ptr %_next, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %111 = load i32, ptr @afs_debug, align 4
  %and131 = and i32 %111, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %do.end129.cleanup152_crit_edge, label %do.end142, !prof !281

do.end129.cleanup152_crit_edge:                   ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup152

do.end142:                                        ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #11
  %112 = call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i290 = and i32 %112, -16384
  %113 = inttoptr i32 %and.i290 to ptr
  %task145 = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %task145 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %task145, align 8
  %comm146 = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 101
  %call148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %comm146, ptr noundef nonnull @.str.120, i64 noundef %start.addr.2305) #12
  br label %cleanup152

cleanup152:                                       ; preds = %do.end142, %do.end129.cleanup152_crit_edge, %cleanup.thread
  %retval.2 = phi i32 [ 0, %do.end142 ], [ 0, %do.end129.cleanup152_crit_edge ], [ %retval.1.ph, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %head_page) #9
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_file_write(ptr noundef %iocb, ptr noundef %from) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %8 = load i32, ptr @afs_debug, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end, !prof !281

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %fid, align 8
  %vnode9 = getelementptr inbounds %struct.afs_vnode, ptr %3, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %vnode9 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %vnode9, align 8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %comm, ptr noundef nonnull @.str.45, i64 noundef %14, i64 noundef %16, i32 noundef %7) #12
  br label %do.end12

do.end12:                                         ; preds = %do.end, %entry.do.end12_crit_edge
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_flags, align 4
  %and13 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end21, label %do.end18

do.end18:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #12
  br label %cleanup

if.end21:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool22.not = icmp eq i32 %7, 0
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %call25 = tail call i32 @afs_validate(ptr noundef %3, ptr noundef %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %if.end24.cleanup_crit_edge, label %if.end27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  %call28 = tail call i32 @generic_file_write_iter(ptr noundef %iocb, ptr noundef %from) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %21 = load i32, ptr @afs_debug, align 4
  %and30 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end27.cleanup_crit_edge, label %do.end41, !prof !281

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end41:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %22 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i64 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i64 to ptr
  %task44 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task44, align 8
  %comm45 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 101
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %comm45, ptr noundef nonnull @.str.45, i32 noundef %call28) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.end27.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end18
  %retval.0 = phi i32 [ -16, %do.end18 ], [ 0, %if.end21.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %call28, %do.end41 ], [ %call28, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_validate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_write_iter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_fsync(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %4 = load i32, ptr @afs_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !281

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %fid, align 8
  %vnode7 = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %vnode7 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %vnode7, align 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %comm, ptr noundef nonnull @.str.52, i64 noundef %10, i64 noundef %12, ptr noundef %file, i32 noundef %datasync) #12
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %call11 = tail call i32 @afs_validate(ptr noundef %1, ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end10.cleanup_crit_edge, label %if.end13

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 @file_write_and_wait_range(ptr noundef %file, i64 noundef %start, i64 noundef %end) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end13 ], [ %call11, %do.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_page_mkwrite(ptr nocapture noundef readonly %vmf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %page = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page, align 4
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !281

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %4, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %5, %if.end.i ]
  %6 = inttoptr i32 %retval.0.i to ptr
  %7 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_inode.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 16
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %15 = load i32, ptr @afs_debug, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %_compound_head.exit.do.end12_crit_edge, label %do.end, !prof !281

_compound_head.exit.do.end12_crit_edge:           ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

do.end:                                           ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  %16 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i69 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i69 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %12, i32 0, i32 2
  %20 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %fid, align 8
  %vnode8 = getelementptr inbounds %struct.afs_vnode, ptr %12, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %vnode8 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %vnode8, align 8
  %call9 = tail call fastcc i32 @folio_index(ptr noundef %6)
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %comm, ptr noundef nonnull @.str.54, i64 noundef %21, i64 noundef %23, i32 noundef %call9) #12
  br label %do.end12

do.end12:                                         ; preds = %do.end, %_compound_head.exit.do.end12_crit_edge
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %14, align 4
  %call13 = tail call i32 @afs_validate(ptr noundef %12, ptr noundef %25) #9
  %i_sb = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 8
  %26 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %27, i32 0, i32 32, i32 2, i32 1
  tail call void @__might_sleep(ptr noundef nonnull @.str.129, i32 noundef 49) #9
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %27, i32 0, i32 32, i32 2, i32 1, i32 5
  %28 = tail call ptr @llvm.returnaddress(i32 0) #9
  %29 = ptrtoint ptr %28 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %29) #9
  %30 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %33, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !319
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %do.end12.rcu_sync_is_idle.exit.i.i.i_crit_edge

do.end12.rcu_sync_is_idle.exit.i.i.i_crit_edge:   ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.end12
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.130, i32 noundef 35, ptr noundef nonnull @.str.131) #9
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %do.end12.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %34 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool7.not.i.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body7.i.i.i, label %if.else.i.i.i, !prof !281

do.body7.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !310
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %27, i32 0, i32 32, i32 2, i32 1, i32 1
  %37 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_count.i.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %45, %39
  %46 = inttoptr i32 %add.i.i.i to ptr
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %add21.i.i.i = add i32 %48, 1
  store i32 %add21.i.i.i, ptr %46, align 4
  %49 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !311
  %and.i.i.i.i.i = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then41.i.i.i, label %do.body7.i.i.i.do.end43.i.i.i_crit_edge, !prof !283

do.body7.i.i.i.do.end43.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43.i.i.i

if.then41.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end43.i.i.i

do.end43.i.i.i:                                   ; preds = %if.then41.i.i.i, %do.body7.i.i.i.do.end43.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %36) #9, !srcloc !312
  br label %sb_start_pagefault.exit

if.else.i.i.i:                                    ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call50.i.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext false) #9
  br label %sb_start_pagefault.exit

sb_start_pagefault.exit:                          ; preds = %if.else.i.i.i, %do.end43.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !320
  %50 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i58.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i58.i.i.i to ptr
  %preempt_count.i.i59.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i59.i.i.i, align 4
  %sub.i.i.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i59.i.i.i, align 4
  %54 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %54, align 4
  %and.i.i.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private_2.exit, label %if.then.i.i, !prof !281

if.then.i.i:                                      ; preds = %sb_start_pagefault.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.63) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_private_2.exit:                        ; preds = %sb_start_pagefault.exit
  %57 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %6, align 4
  %59 = and i32 %58, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.i.not = icmp eq i32 %59, 0
  br i1 %tobool.i.not, label %folio_test_private_2.exit.if.end17_crit_edge, label %land.lhs.true

folio_test_private_2.exit.if.end17_crit_edge:     ; preds = %folio_test_private_2.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true:                                    ; preds = %folio_test_private_2.exit
  %call.i = tail call i32 @folio_wait_private_2_killable(ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %folio_test_private_2.exit.if.end17_crit_edge
  %call18 = tail call i32 @folio_wait_writeback_killable(ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end21:                                         ; preds = %if.end17
  tail call void @__might_sleep(ptr noundef nonnull @.str.69, i32 noundef 797) #9
  %60 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %54, align 4
  %and.i.i.i.i70 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i70)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i70, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !281

if.then.i.i.i:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.63) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_flags.exit.i.i:                             ; preds = %if.end21
  %call.i.i.i.i71 = tail call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #9
  %62 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %6, align 4
  %and.i.i4.i.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i72 = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i72, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.folio_lock_killable.exit_crit_edge

folio_flags.exit.i.i.folio_lock_killable.exit_crit_edge: ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_lock_killable.exit

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %6, i32 1, i32 3, i32 1) #9
  %64 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #9, !srcloc !286
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %64, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !287
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.if.end25_crit_edge, label %folio_trylock.exit.i.folio_lock_killable.exit_crit_edge

folio_trylock.exit.i.folio_lock_killable.exit_crit_edge: ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_lock_killable.exit

folio_trylock.exit.i.if.end25_crit_edge:          ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

folio_lock_killable.exit:                         ; preds = %folio_trylock.exit.i.folio_lock_killable.exit_crit_edge, %folio_flags.exit.i.i.folio_lock_killable.exit_crit_edge
  %call3.i = tail call i32 @__folio_lock_killable(ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp23 = icmp slt i32 %call3.i, 0
  br i1 %cmp23, label %folio_lock_killable.exit.out_crit_edge, label %folio_lock_killable.exit.if.end25_crit_edge

folio_lock_killable.exit.if.end25_crit_edge:      ; preds = %folio_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

folio_lock_killable.exit.out_crit_edge:           ; preds = %folio_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end25:                                         ; preds = %folio_lock_killable.exit.if.end25_crit_edge, %folio_trylock.exit.i.if.end25_crit_edge
  %call26 = tail call i32 @folio_wait_writeback_killable(ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @folio_unlock(ptr noundef %6) #9
  br label %out

if.end29:                                         ; preds = %if.end25
  %65 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %cmp.i.not.i.i.i.i = icmp eq i32 %66, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i75, label %PageHead.exit.i.i.i, !prof !283

if.then.i.i.i.i75:                                ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.65) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i.i:                              ; preds = %if.end29
  %67 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %6, align 4
  %69 = and i32 %68, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i.i.i76 = icmp eq i32 %69, 0
  br i1 %tobool.not.i.i.i76, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_size.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = getelementptr %struct.page, ptr %6, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.119, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %72 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.end.i.i.i ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i.i
  %73 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %74)
  %cmp.i.not.i.i.i.i.i.i = icmp eq i32 %74, -1
  br i1 %cmp.i.not.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i, !prof !283

if.then.i.i.i.i.i.i:                              ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.65) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i.i.i.i:                          ; preds = %folio_size.exit
  %75 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %6, align 4
  %77 = and i32 %76, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i.i.i.i.i = icmp eq i32 %77, 0
  br i1 %tobool.not.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i.afs_folio_dirty.exit_crit_edge, label %if.end.i.i.i.i.i

PageHead.exit.i.i.i.i.i.afs_folio_dirty.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_folio_dirty.exit

if.end.i.i.i.i.i:                                 ; preds = %PageHead.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = getelementptr %struct.page, ptr %6, i32 1, i32 1
  %compound_order.i.i.i.i.i = getelementptr inbounds %struct.anon.119, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %compound_order.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %compound_order.i.i.i.i.i, align 1
  %conv.i.i.i.i.i = zext i8 %80 to i32
  %phi.bo.i.i = add nsw i32 %conv.i.i.i.i.i, -3
  br label %afs_folio_dirty.exit

afs_folio_dirty.exit:                             ; preds = %if.end.i.i.i.i.i, %PageHead.exit.i.i.i.i.i.afs_folio_dirty.exit_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ %phi.bo.i.i, %if.end.i.i.i.i.i ], [ -3, %PageHead.exit.i.i.i.i.i.afs_folio_dirty.exit_crit_edge ]
  %81 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %54, align 4
  %and.i.i.i65 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i65)
  %tobool.not.i.i66 = icmp eq i32 %and.i.i.i65, 0
  br i1 %tobool.not.i.i66, label %folio_test_private.exit, label %if.then.i.i67, !prof !281

if.then.i.i67:                                    ; preds = %afs_folio_dirty.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.63) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_private.exit:                          ; preds = %afs_folio_dirty.exit
  %sub.i77 = add i32 %shl.i, -1
  %83 = tail call i32 @llvm.smax.i32(i32 %retval.0.i.i.i.i.i, i32 0) #9
  %shr1.i = lshr i32 %sub.i77, %83
  %shl.i78 = shl i32 %shr1.i, 16
  %or.i = or i32 %shl.i78, 32768
  %84 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %6, align 4
  %86 = and i32 %85, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.i68.not = icmp eq i32 %86, 0
  %87 = inttoptr i32 %or.i to ptr
  br i1 %tobool.i68.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %folio_test_private.exit
  call void @__sanitizer_cov_trace_pc() #11
  %private.i.i = getelementptr inbounds %struct.anon.148, ptr %6, i32 0, i32 4
  %88 = ptrtoint ptr %private.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %private.i.i, align 4
  br label %if.end38

if.else:                                          ; preds = %folio_test_private.exit
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %89 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %90, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i.i79, label %do.end5.i.i, !prof !283

if.then.i.i79:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.72) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !309
  unreachable

do.end5.i.i:                                      ; preds = %if.else
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %91 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !307
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@afs_page_mkwrite, %if.then.i.i.i.i80)) #9
          to label %folio_get.exit.i [label %if.then.i.i.i.i80], !srcloc !292

if.then.i.i.i.i80:                                ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %6, i32 noundef 1) #9
  br label %folio_get.exit.i

folio_get.exit.i:                                 ; preds = %if.then.i.i.i.i80, %do.end5.i.i
  %private.i = getelementptr inbounds %struct.anon.148, ptr %6, i32 0, i32 4
  %92 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %87, ptr %private.i, align 4
  %93 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %54, align 4
  %and.i.i.i.i81 = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i81)
  %tobool.not.i.i.i82 = icmp eq i32 %and.i.i.i.i81, 0
  br i1 %tobool.not.i.i.i82, label %folio_attach_private.exit, label %if.then.i.i.i83, !prof !281

if.then.i.i.i83:                                  ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.63) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_attach_private.exit:                        ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 13, ptr noundef %6) #9
  br label %if.end38

if.end38:                                         ; preds = %folio_attach_private.exit, %if.then34
  %afs_page_mkwrite.___tp_str.56.sink = phi ptr [ @afs_page_mkwrite.___tp_str.56, %folio_attach_private.exit ], [ @afs_page_mkwrite.___tp_str, %if.then34 ]
  %95 = ptrtoint ptr %afs_page_mkwrite.___tp_str.56.sink to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %afs_page_mkwrite.___tp_str.56.sink, align 4
  tail call fastcc void @trace_afs_folio_dirty(ptr noundef %12, ptr noundef %96, ptr noundef %6)
  %call39 = tail call i32 @file_update_time(ptr noundef %10) #9
  br label %out

out:                                              ; preds = %if.end38, %if.then28, %folio_lock_killable.exit.out_crit_edge, %if.end17.out_crit_edge, %land.lhs.true.out_crit_edge
  %ret.0 = phi i32 [ 1024, %land.lhs.true.out_crit_edge ], [ 1024, %if.end17.out_crit_edge ], [ 1024, %folio_lock_killable.exit.out_crit_edge ], [ 1024, %if.then28 ], [ 512, %if.end38 ]
  %97 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i.i84 = getelementptr %struct.super_block, ptr %98, i32 0, i32 32, i32 2, i32 1
  %dep_map.i.i.i85 = getelementptr %struct.super_block, ptr %98, i32 0, i32 32, i32 2, i32 1, i32 5
  tail call void @lock_release(ptr noundef %dep_map.i.i.i85, i32 noundef %29) #9
  %99 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i.i.i.i86 = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i.i.i.i86 to ptr
  %preempt_count.i.i.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %preempt_count.i.i.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %preempt_count.i.i.i.i.i87, align 4
  %add.i.i.i.i88 = add i32 %102, 1
  store volatile i32 %add.i.i.i.i88, ptr %preempt_count.i.i.i.i.i87, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !321
  %call.i.i.i.i89 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i89)
  %tobool.not.i.i.i.i90 = icmp eq i32 %call.i.i.i.i89, 0
  br i1 %tobool.not.i.i.i.i90, label %land.lhs.true.i.i.i.i93, label %out.rcu_sync_is_idle.exit.i.i.i98_crit_edge

out.rcu_sync_is_idle.exit.i.i.i98_crit_edge:      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i.i98

land.lhs.true.i.i.i.i93:                          ; preds = %out
  %call1.i.i.i.i91 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i91)
  %tobool2.not.i.i.i.i92 = icmp eq i32 %call1.i.i.i.i91, 0
  br i1 %tobool2.not.i.i.i.i92, label %land.lhs.true.i.i.i.i93.rcu_sync_is_idle.exit.i.i.i98_crit_edge, label %land.lhs.true3.i.i.i.i95

land.lhs.true.i.i.i.i93.rcu_sync_is_idle.exit.i.i.i98_crit_edge: ; preds = %land.lhs.true.i.i.i.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i.i98

land.lhs.true3.i.i.i.i95:                         ; preds = %land.lhs.true.i.i.i.i93
  %.b8.i.i.i.i94 = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i94, label %land.lhs.true3.i.i.i.i95.rcu_sync_is_idle.exit.i.i.i98_crit_edge, label %if.then.i.i.i.i96

land.lhs.true3.i.i.i.i95.rcu_sync_is_idle.exit.i.i.i98_crit_edge: ; preds = %land.lhs.true3.i.i.i.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i.i98

if.then.i.i.i.i96:                                ; preds = %land.lhs.true3.i.i.i.i95
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.130, i32 noundef 35, ptr noundef nonnull @.str.131) #9
  br label %rcu_sync_is_idle.exit.i.i.i98

rcu_sync_is_idle.exit.i.i.i98:                    ; preds = %if.then.i.i.i.i96, %land.lhs.true3.i.i.i.i95.rcu_sync_is_idle.exit.i.i.i98_crit_edge, %land.lhs.true.i.i.i.i93.rcu_sync_is_idle.exit.i.i.i98_crit_edge, %out.rcu_sync_is_idle.exit.i.i.i98_crit_edge
  %103 = ptrtoint ptr %add.ptr1.i.i84 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %add.ptr1.i.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool7.not.i.i.i.i97 = icmp eq i32 %104, 0
  br i1 %tobool7.not.i.i.i.i97, label %do.body3.i.i.i, label %do.end49.i.i.i, !prof !281

do.body3.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i98
  %105 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !310
  %read_count.i.i.i99 = getelementptr %struct.super_block, ptr %98, i32 0, i32 32, i32 2, i32 1, i32 1
  %106 = ptrtoint ptr %read_count.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %read_count.i.i.i99, align 4
  %108 = ptrtoint ptr %107 to i32
  %109 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i.i100 = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i.i.i100 to ptr
  %cpu.i.i.i101 = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %cpu.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cpu.i.i.i101, align 4
  %arrayidx.i.i.i102 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %112
  %113 = ptrtoint ptr %arrayidx.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.i.i.i102, align 4
  %add.i.i.i103 = add i32 %114, %108
  %115 = inttoptr i32 %add.i.i.i103 to ptr
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 4
  %add17.i.i.i = add i32 %117, -1
  store i32 %add17.i.i.i, ptr %115, align 4
  %118 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !311
  %and.i.i.i.i.i104 = and i32 %118, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i104)
  %tobool28.not.i.i.i = icmp eq i32 %and.i.i.i.i.i104, 0
  br i1 %tobool28.not.i.i.i, label %if.then37.i.i.i, label %do.body3.i.i.i.do.end39.i.i.i_crit_edge, !prof !283

do.body3.i.i.i.do.end39.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39.i.i.i

if.then37.i.i.i:                                  ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %if.then37.i.i.i, %do.body3.i.i.i.do.end39.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %105) #9, !srcloc !312
  br label %sb_end_pagefault.exit

do.end49.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !322
  %119 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !310
  %read_count75.i.i.i = getelementptr %struct.super_block, ptr %98, i32 0, i32 32, i32 2, i32 1, i32 1
  %120 = ptrtoint ptr %read_count75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %read_count75.i.i.i, align 4
  %122 = ptrtoint ptr %121 to i32
  %123 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i122.i.i.i = and i32 %123, -16384
  %124 = inttoptr i32 %and.i122.i.i.i to ptr
  %cpu78.i.i.i = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 3
  %125 = ptrtoint ptr %cpu78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cpu78.i.i.i, align 4
  %arrayidx79.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %126
  %127 = ptrtoint ptr %arrayidx79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx79.i.i.i, align 4
  %add80.i.i.i = add i32 %128, %122
  %129 = inttoptr i32 %add80.i.i.i to ptr
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 4
  %add81.i.i.i = add i32 %131, -1
  store i32 %add81.i.i.i, ptr %129, align 4
  %132 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !311
  %and.i.i123.i.i.i = and i32 %132, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i.i)
  %tobool92.not.i.i.i = icmp eq i32 %and.i.i123.i.i.i, 0
  br i1 %tobool92.not.i.i.i, label %if.then101.i.i.i, label %do.end49.i.i.i.do.end104.i.i.i_crit_edge, !prof !283

do.end49.i.i.i.do.end104.i.i.i_crit_edge:         ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end104.i.i.i

if.then101.i.i.i:                                 ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end104.i.i.i

do.end104.i.i.i:                                  ; preds = %if.then101.i.i.i, %do.end49.i.i.i.do.end104.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %119) #9, !srcloc !312
  %writer.i.i.i = getelementptr %struct.super_block, ptr %98, i32 0, i32 32, i32 2, i32 1, i32 2
  %call111.i.i.i = tail call i32 @rcuwait_wake_up(ptr noundef %writer.i.i.i) #9
  br label %sb_end_pagefault.exit

sb_end_pagefault.exit:                            ; preds = %do.end104.i.i.i, %do.end39.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !323
  %133 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i120.i.i.i = and i32 %133, -16384
  %134 = inttoptr i32 %and.i.i.i120.i.i.i to ptr
  %preempt_count.i.i121.i.i.i = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %preempt_count.i.i121.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %preempt_count.i.i121.i.i.i, align 4
  %sub.i.i.i.i105 = add i32 %136, -1
  store volatile i32 %sub.i.i.i.i105, ptr %preempt_count.i.i121.i.i.i, align 4
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_wait_writeback_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_prune_wb_keys(ptr noundef %vnode) local_unnamed_addr #0 align 64 {
entry:
  %graveyard = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %graveyard) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %graveyard, i32 0, i32 1
  %1 = ptrtoint ptr %graveyard to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %graveyard, ptr %graveyard, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %graveyard, ptr %0, align 4
  %wb_lock = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 11
  call void @_raw_spin_lock(ptr noundef %wb_lock) #9
  %xa_flags.i.i = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 46, i32 1, i32 1
  %3 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %xa_flags.i.i, align 4
  %5 = and i32 %4, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %if.then, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then:                                          ; preds = %entry
  %wb_keys = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 14
  %6 = ptrtoint ptr %wb_keys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wb_keys, align 4
  %cmp.not52 = icmp eq ptr %7, %wb_keys
  br i1 %cmp.not52, label %if.then.if.end21_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn.in53 = phi ptr [ %.pn55, %for.inc.for.body_crit_edge ], [ %7, %if.then.for.body_crit_edge ]
  %8 = ptrtoint ptr %.pn.in53 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn55 = load ptr, ptr %.pn.in53, align 4
  %wbk.0 = getelementptr i8, ptr %.pn.in53, i32 -8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %wbk.0, i32 noundef 4) #9
  %9 = ptrtoint ptr %wbk.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %wbk.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp13 = icmp eq i32 %10, 1
  br i1 %cmp13, label %if.then14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then14:                                        ; preds = %for.body
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in53) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then14.__list_del_entry.exit.i_crit_edge

if.then14.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in53, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %.pn.in53 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn.in53, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then14.__list_del_entry.exit.i_crit_edge
  %17 = ptrtoint ptr %graveyard to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %graveyard, align 4
  %call.i.i.i45 = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in53, ptr noundef nonnull %graveyard, ptr noundef %18) #9
  br i1 %call.i.i.i45, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %.pn.in53, ptr %prev1.i.i2.i, align 4
  %20 = ptrtoint ptr %.pn.in53 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %.pn.in53, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in53, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %graveyard, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %graveyard to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %.pn.in53, ptr %graveyard, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn55, %wb_keys
  br i1 %cmp.not, label %for.inc.if.end21_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end21_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end21:                                         ; preds = %for.inc.if.end21_crit_edge, %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  call void @_raw_spin_unlock(ptr noundef %wb_lock) #9
  %23 = ptrtoint ptr %graveyard to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %graveyard, align 4
  %cmp.i.not56 = icmp eq ptr %24, %graveyard
  br i1 %cmp.i.not56, label %if.end21.while.end_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  br label %while.body

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %if.end21.while.body_crit_edge
  %25 = phi ptr [ %35, %list_del.exit.while.body_crit_edge ], [ %24, %if.end21.while.body_crit_edge ]
  %add.ptr28 = getelementptr i8, ptr %25, i32 -8
  %call.i.i46 = call zeroext i1 @__list_del_entry_valid(ptr noundef %25) #9
  br i1 %call.i.i46, label %if.end.i.i49, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i49:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i47 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i47, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %prev1.i.i.i48 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i48 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i48, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i49, %while.body.list_del.exit_crit_edge
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @afs_put_wb_key(ptr noundef %add.ptr28) #9
  %34 = ptrtoint ptr %graveyard to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %graveyard, align 4
  %cmp.i.not = icmp eq ptr %35, %graveyard
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %if.end21.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %graveyard) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_wb_key(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_launder_page(ptr noundef %subpage) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.iov_iter, align 8
  %bv = alloca [1 x %struct.bio_vec], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %subpage, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !281

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %subpage to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %mapping.i = getelementptr inbounds %struct.anon.148, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mapping.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter) #9
  %9 = call ptr @memset(ptr %iter, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bv) #9
  %10 = ptrtoint ptr %bv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %bv, align 4, !annotation !280
  %11 = getelementptr inbounds %struct.bio_vec, ptr %bv, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !280
  %13 = getelementptr inbounds %struct.bio_vec, ptr %bv, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4, !annotation !280
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %15 = load i32, ptr @afs_debug, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %_compound_head.exit.do.end10_crit_edge, label %do.end, !prof !281

_compound_head.exit.do.end10_crit_edge:           ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end:                                           ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  %16 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i49 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i49 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 101
  %call7 = tail call fastcc i32 @folio_index(ptr noundef %4)
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %comm, ptr noundef nonnull @.str.59, i32 noundef %call7) #12
  br label %do.end10

do.end10:                                         ; preds = %do.end, %_compound_head.exit.do.end10_crit_edge
  %private.i = getelementptr inbounds %struct.anon.148, ptr %4, i32 0, i32 4
  %20 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %private.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %call12 = tail call zeroext i1 @folio_clear_dirty_for_io(ptr noundef %4) #9
  br i1 %call12, label %if.then13, label %do.end10.if.end28_crit_edge

do.end10.if.end28_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then13:                                        ; preds = %do.end10
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.not.i.i.i.i = icmp eq i32 %24, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !283

if.then.i.i.i.i:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.65) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i.i:                              ; preds = %if.then13
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %4, align 4
  %27 = and i32 %26, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_size.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.119, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %30 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.end.i.i.i ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %31 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private.exit, label %if.then.i.i, !prof !281

if.then.i.i:                                      ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.63) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_private.exit:                          ; preds = %folio_size.exit
  %shl.i = shl i32 4096, %retval.0.i.i.i
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %4, align 4
  %36 = and i32 %35, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i.not = icmp eq i32 %36, 0
  br i1 %tobool.i.not, label %folio_test_private.exit.if.end19_crit_edge, label %if.then16

folio_test_private.exit.if.end19_crit_edge:       ; preds = %folio_test_private.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then16:                                        ; preds = %folio_test_private.exit
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp.i.not.i.i.i.i.i.i = icmp eq i32 %38, -1
  br i1 %cmp.i.not.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i, !prof !283

if.then.i.i.i.i.i.i:                              ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.65) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i.i.i.i:                          ; preds = %if.then16
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %4, align 4
  %41 = and i32 %40, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i.i.i.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i.afs_folio_dirty_from.exit_crit_edge, label %if.end.i.i.i.i.i

PageHead.exit.i.i.i.i.i.afs_folio_dirty_from.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_folio_dirty_from.exit

if.end.i.i.i.i.i:                                 ; preds = %PageHead.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i.i.i = getelementptr inbounds %struct.anon.119, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %compound_order.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %compound_order.i.i.i.i.i, align 1
  %conv.i.i.i.i.i = zext i8 %44 to i32
  %phi.bo.i.i = add nsw i32 %conv.i.i.i.i.i, -3
  br label %afs_folio_dirty_from.exit

afs_folio_dirty_from.exit:                        ; preds = %if.end.i.i.i.i.i, %PageHead.exit.i.i.i.i.i.afs_folio_dirty_from.exit_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ %phi.bo.i.i, %if.end.i.i.i.i.i ], [ -3, %PageHead.exit.i.i.i.i.i.afs_folio_dirty_from.exit_crit_edge ]
  %and.i50 = and i32 %22, 32767
  %45 = tail call i32 @llvm.smax.i32(i32 %retval.0.i.i.i.i.i, i32 0) #9
  %shl.i51 = shl i32 %and.i50, %45
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %cmp.i.not.i.i.i.i.i.i52 = icmp eq i32 %47, -1
  br i1 %cmp.i.not.i.i.i.i.i.i52, label %if.then.i.i.i.i.i.i53, label %PageHead.exit.i.i.i.i.i55, !prof !283

if.then.i.i.i.i.i.i53:                            ; preds = %afs_folio_dirty_from.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.65) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i.i.i.i55:                        ; preds = %afs_folio_dirty_from.exit
  %48 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %4, align 4
  %50 = and i32 %49, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i.i.i.i54 = icmp eq i32 %50, 0
  br i1 %tobool.not.i.i.i.i.i54, label %PageHead.exit.i.i.i.i.i55.afs_folio_dirty_to.exit_crit_edge, label %if.end.i.i.i.i.i59

PageHead.exit.i.i.i.i.i55.afs_folio_dirty_to.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_folio_dirty_to.exit

if.end.i.i.i.i.i59:                               ; preds = %PageHead.exit.i.i.i.i.i55
  call void @__sanitizer_cov_trace_pc() #11
  %51 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i.i.i56 = getelementptr inbounds %struct.anon.119, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %compound_order.i.i.i.i.i56 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %compound_order.i.i.i.i.i56, align 1
  %conv.i.i.i.i.i57 = zext i8 %53 to i32
  %phi.bo.i.i58 = add nsw i32 %conv.i.i.i.i.i57, -3
  br label %afs_folio_dirty_to.exit

afs_folio_dirty_to.exit:                          ; preds = %if.end.i.i.i.i.i59, %PageHead.exit.i.i.i.i.i55.afs_folio_dirty_to.exit_crit_edge
  %retval.0.i.i.i.i.i60 = phi i32 [ %phi.bo.i.i58, %if.end.i.i.i.i.i59 ], [ -3, %PageHead.exit.i.i.i.i.i55.afs_folio_dirty_to.exit_crit_edge ]
  %shr.i = lshr i32 %22, 16
  %and.i61 = and i32 %shr.i, 32767
  %add.i = add nuw nsw i32 %and.i61, 1
  %54 = tail call i32 @llvm.smax.i32(i32 %retval.0.i.i.i.i.i60, i32 0) #9
  %shl.i62 = shl i32 %add.i, %54
  br label %if.end19

if.end19:                                         ; preds = %afs_folio_dirty_to.exit, %folio_test_private.exit.if.end19_crit_edge
  %f.0 = phi i32 [ %shl.i51, %afs_folio_dirty_to.exit ], [ 0, %folio_test_private.exit.if.end19_crit_edge ]
  %t.0 = phi i32 [ %shl.i62, %afs_folio_dirty_to.exit ], [ %shl.i, %folio_test_private.exit.if.end19_crit_edge ]
  %55 = ptrtoint ptr %bv to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %4, ptr %bv, align 4
  %56 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %f.0, ptr %13, align 4
  %sub = sub i32 %t.0, %f.0
  %57 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub, ptr %11, align 4
  call void @iov_iter_bvec(ptr noundef nonnull %iter, i32 noundef 1, ptr noundef nonnull %bv, i32 noundef 1, i32 noundef %sub) #9
  %58 = load ptr, ptr @afs_launder_page.___tp_str, align 4
  call fastcc void @trace_afs_folio_dirty(ptr noundef %8, ptr noundef %58, ptr noundef %4)
  %index.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1, i32 0, i32 2
  %59 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %60 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %conv = zext i32 %f.0 to i64
  %add = add nuw nsw i64 %shl.i.i, %conv
  %call27 = call fastcc i32 @afs_store_data(ptr noundef %8, ptr noundef nonnull %iter, i64 noundef %add, i1 noundef zeroext true)
  br label %if.end28

if.end28:                                         ; preds = %if.end19, %do.end10.if.end28_crit_edge
  %ret.0 = phi i32 [ %call27, %if.end19 ], [ 0, %do.end10.if.end28_crit_edge ]
  %61 = load ptr, ptr @afs_launder_page.___tp_str.61, align 4
  call fastcc void @trace_afs_folio_dirty(ptr noundef %8, ptr noundef %61, ptr noundef %4)
  call fastcc void @folio_detach_private(ptr noundef %4)
  call void @folio_wait_private_2(ptr noundef %4) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bv) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_clear_dirty_for_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @afs_store_data(ptr noundef %vnode, ptr noundef %iter, i64 noundef %pos, i1 noundef zeroext %laundering) unnamed_addr #0 align 64 {
entry:
  %wbk = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %laundering to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wbk) #9
  %0 = ptrtoint ptr %wbk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %wbk, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %1 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %count.i, align 8
  %conv = zext i32 %2 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %3 = load i32, ptr @afs_debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.end, !prof !281

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 1
  %8 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %volume, align 8
  %name = getelementptr inbounds %struct.afs_volume, ptr %9, i32 0, i32 17
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2
  %10 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %fid, align 8
  %vnode7 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %vnode7 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %vnode7, align 8
  %unique = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %unique, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef %comm, ptr noundef nonnull @.str.133, ptr noundef %name, i64 noundef %11, i64 noundef %13, i32 noundef %15, i64 noundef %conv, i64 noundef %pos) #12
  br label %do.end11

do.end11:                                         ; preds = %do.end, %entry.do.end11_crit_edge
  call fastcc void @afs_get_writeback_key(ptr noundef %vnode, ptr noundef nonnull %wbk)
  %16 = ptrtoint ptr %wbk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wbk, align 4
  %key = getelementptr inbounds %struct.afs_wb_key, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %key, align 4
  %volume38 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 1
  %20 = ptrtoint ptr %volume38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %volume38, align 8
  %call39 = tail call ptr @afs_alloc_operation(ptr noundef %19, ptr noundef %21) #9
  %cmp.i = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then41, label %if.end42

if.then41:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @afs_put_wb_key(ptr noundef %17) #9
  br label %cleanup

if.end42:                                         ; preds = %do.end11
  %call43 = tail call fastcc i64 @i_size_read(ptr noundef %vnode)
  %file.i = getelementptr inbounds %struct.afs_operation, ptr %call39, i32 0, i32 5
  %22 = ptrtoint ptr %file.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %vnode, ptr %file.i, align 8
  %need_io_lock.i = getelementptr inbounds %struct.afs_operation, ptr %call39, i32 0, i32 5, i32 0, i32 6
  %23 = ptrtoint ptr %need_io_lock.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %need_io_lock.i, align 1
  %dv_delta = getelementptr inbounds %struct.afs_operation, ptr %call39, i32 0, i32 5, i32 0, i32 5
  %24 = ptrtoint ptr %dv_delta to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %dv_delta, align 4
  %bf.set = or i8 %bf.load.i, 66
  store i8 %bf.set, ptr %need_io_lock.i, align 1
  %25 = getelementptr inbounds %struct.afs_operation, ptr %call39, i32 0, i32 17
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %iter, ptr %25, align 8
  %pos46 = getelementptr inbounds %struct.afs_operation, ptr %call39, i32 0, i32 17, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %pos46 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %pos, ptr %pos46, align 8
  %size47 = getelementptr inbounds %struct.afs_operation, ptr %call39, i32 0, i32 17, i32 0, i32 0, i32 2
  %28 = ptrtoint ptr %size47 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv, ptr %size47, align 8
  %add = add i64 %conv, %pos
  %29 = tail call i64 @llvm.smax.i64(i64 %add, i64 %call43)
  %i_size50 = getelementptr inbounds %struct.afs_operation, ptr %call39, i32 0, i32 17, i32 0, i32 0, i32 7
  %30 = ptrtoint ptr %i_size50 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %i_size50, align 8
  %laundering52 = getelementptr inbounds %struct.afs_operation, ptr %call39, i32 0, i32 17, i32 0, i32 0, i32 8
  %31 = ptrtoint ptr %laundering52 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool, ptr %laundering52, align 8
  %mtime = getelementptr inbounds %struct.afs_operation, ptr %call39, i32 0, i32 10
  %i_mtime = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 16
  %32 = call ptr @memcpy(ptr %mtime, ptr %i_mtime, i32 16)
  %flags = getelementptr inbounds %struct.afs_operation, ptr %call39, i32 0, i32 25
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 8
  %or = or i32 %34, 64
  store i32 %or, ptr %flags, align 8
  %ops = getelementptr inbounds %struct.afs_operation, ptr %call39, i32 0, i32 3
  %35 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @afs_store_data_operation, ptr %ops, align 4
  %error = getelementptr inbounds %struct.afs_operation, ptr %call39, i32 0, i32 13
  %key83 = getelementptr inbounds %struct.afs_operation, ptr %call39, i32 0, i32 1
  br label %try_next_key

try_next_key:                                     ; preds = %key_get.exit, %if.end42
  %call55 = tail call zeroext i1 @afs_begin_vnode_operation(ptr noundef %call39) #9
  tail call void @afs_wait_for_operation(ptr noundef %call39) #9
  %36 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %error, align 2
  %conv56 = sext i16 %37 to i32
  %38 = zext i32 %conv56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %conv56, label %sw.epilog [
    i32 -13, label %try_next_key.do.body57_crit_edge
    i32 -1, label %try_next_key.do.body57_crit_edge156
    i32 -126, label %try_next_key.do.body57_crit_edge157
    i32 -127, label %try_next_key.do.body57_crit_edge158
    i32 -129, label %try_next_key.do.body57_crit_edge159
    i32 -128, label %try_next_key.do.body57_crit_edge160
  ]

try_next_key.do.body57_crit_edge160:              ; preds = %try_next_key
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body57

try_next_key.do.body57_crit_edge159:              ; preds = %try_next_key
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body57

try_next_key.do.body57_crit_edge158:              ; preds = %try_next_key
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body57

try_next_key.do.body57_crit_edge157:              ; preds = %try_next_key
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body57

try_next_key.do.body57_crit_edge156:              ; preds = %try_next_key
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body57

try_next_key.do.body57_crit_edge:                 ; preds = %try_next_key
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body57

do.body57:                                        ; preds = %try_next_key.do.body57_crit_edge, %try_next_key.do.body57_crit_edge156, %try_next_key.do.body57_crit_edge157, %try_next_key.do.body57_crit_edge158, %try_next_key.do.body57_crit_edge159, %try_next_key.do.body57_crit_edge160
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %39 = load i32, ptr @afs_debug, align 4
  %and58 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %do.body57.do.end78_crit_edge, label %do.end69, !prof !281

do.body57.do.end78_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end78

do.end69:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #11
  %40 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i154 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i154 to ptr
  %task72 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task72 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task72, align 8
  %comm73 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 101
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef %comm73) #12
  br label %do.end78

do.end78:                                         ; preds = %do.end69, %do.body57.do.end78_crit_edge
  call fastcc void @afs_get_writeback_key(ptr noundef %vnode, ptr noundef nonnull %wbk)
  %44 = ptrtoint ptr %key83 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %key83, align 4
  tail call void @key_put(ptr noundef %45) #9
  %46 = ptrtoint ptr %wbk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wbk, align 4
  %key84 = getelementptr inbounds %struct.afs_wb_key, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %key84 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %key84, align 4
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %do.end78.key_get.exit_crit_edge, label %cond.true.i

do.end78.key_get.exit_crit_edge:                  ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_get.exit

cond.true.i:                                      ; preds = %do.end78
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %49, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull %49, i32 1, i32 3, i32 1) #9
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %49, ptr nonnull %49, i32 1, ptr nonnull elementtype(i32) %49) #9, !srcloc !324
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !283

cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %cond.true.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %51 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %.not.i.i.i.i.i = icmp sgt i32 %51, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.key_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !281

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.key_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %49, i32 noundef %.sink.i.i.i.i.i) #9
  br label %key_get.exit

key_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.key_get.exit_crit_edge, %do.end78.key_get.exit_crit_edge
  %52 = ptrtoint ptr %key83 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %key83, align 4
  br label %try_next_key

sw.epilog:                                        ; preds = %try_next_key
  %53 = ptrtoint ptr %wbk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wbk, align 4
  tail call void @afs_put_wb_key(ptr noundef %54) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %55 = load i32, ptr @afs_debug, align 4
  %and89 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %sw.epilog.do.end111_crit_edge, label %do.end100, !prof !281

sw.epilog.do.end111_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end111

do.end100:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %56 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i155 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i155 to ptr
  %task103 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task103 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task103, align 8
  %comm104 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 101
  %60 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %error, align 2
  %conv107 = sext i16 %61 to i32
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %comm104, ptr noundef nonnull @.str.133, i32 noundef %conv107) #12
  br label %do.end111

do.end111:                                        ; preds = %do.end100, %sw.epilog.do.end111_crit_edge
  %call112 = tail call i32 @afs_put_operation(ptr noundef %call39) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end111, %if.then41
  %retval.0 = phi i32 [ -12, %if.then41 ], [ %call112, %do.end111 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wbk) #9
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @folio_detach_private(ptr noundef %folio) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %private.i = getelementptr inbounds %struct.anon.148, ptr %folio, i32 0, i32 4
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private.exit, label %if.then.i.i, !prof !281

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.63) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_private.exit:                          ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %folio_test_private.exit.cleanup_crit_edge, label %if.end

folio_test_private.exit.cleanup_crit_edge:        ; preds = %folio_test_private.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %folio_test_private.exit
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %0, align 4
  %and.i.i.i1 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1)
  %tobool.not.i.i2 = icmp eq i32 %and.i.i.i1, 0
  br i1 %tobool.not.i.i2, label %folio_clear_private.exit, label %if.then.i.i3, !prof !281

if.then.i.i3:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.63) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_clear_private.exit:                         ; preds = %if.end
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %folio) #9
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %private.i, align 4
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %9 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !283

if.then.i.i.i:                                    ; preds = %folio_clear_private.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.70) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !288
  unreachable

do.end5.i.i.i:                                    ; preds = %folio_clear_private.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !289
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !290
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@folio_detach_private, %if.then.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !292

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %folio, i32 noundef -1, i32 noundef %conv.i.i.i.i) #9
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i, label %folio_put_testzero.exit.i.cleanup_crit_edge

folio_put_testzero.exit.i.cleanup_crit_edge:      ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %folio) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %folio_put_testzero.exit.i.cleanup_crit_edge, %folio_test_private.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_file_index(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_folio_dirty(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__folio_lock_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_wait_private_2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__folio_start_writeback(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_extend_writeback(ptr noundef %mapping, ptr noundef %vnode, ptr nocapture noundef %_count, i64 noundef %start, i64 noundef %max_len, i1 noundef zeroext %new_content, i1 noundef zeroext %caching, ptr nocapture noundef %_len) unnamed_addr #0 align 64 {
entry:
  %pvec = alloca %struct.pagevec, align 4
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pvec) #9
  %0 = call ptr @memset(ptr %pvec, i32 255, i32 64)
  %1 = ptrtoint ptr %_len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %_len, align 4
  %conv = zext i32 %2 to i64
  %add = add i64 %conv, %start
  %div = sdiv i64 %add, 4096
  %conv2 = trunc i64 %div to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #9
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %5 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4
  %6 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %7 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %8 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %i_pages = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 1
  %9 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %i_pages, ptr %xas, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv2, ptr %3, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %4, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 3 to ptr), ptr %6, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %7, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %8, align 4
  %15 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %pvec, align 4
  %percpu_pvec_drained.i = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 1
  %16 = ptrtoint ptr %percpu_pvec_drained.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %percpu_pvec_drained.i, align 1
  br label %do.body

do.body:                                          ; preds = %pagevec_release.exit.do.body_crit_edge, %entry
  %filler.0 = phi i32 [ 0, %entry ], [ %filler.3274, %pagevec_release.exit.do.body_crit_edge ]
  %len.0 = phi i64 [ %conv, %entry ], [ %len.3275, %pagevec_release.exit.do.body_crit_edge ]
  %index.0 = phi i32 [ %conv2, %entry ], [ %index.3277, %pagevec_release.exit.do.body_crit_edge ]
  %stop.0.off0 = phi i1 [ true, %entry ], [ false, %pagevec_release.exit.do.body_crit_edge ]
  %17 = call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !325
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %do.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.body.rcu_read_lock.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.body
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.89, i32 noundef 696, ptr noundef nonnull @.str.90) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.body.rcu_read_lock.exit_crit_edge
  %call = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef -1) #9
  %tobool.not359 = icmp eq ptr %call, null
  br i1 %tobool.not359, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %folio.0363 = phi ptr [ %call67, %for.inc.for.body_crit_edge ], [ %call, %rcu_read_lock.exit.for.body_crit_edge ]
  %index.1362 = phi i32 [ %index.2, %for.inc.for.body_crit_edge ], [ %index.0, %rcu_read_lock.exit.for.body_crit_edge ]
  %len.1361 = phi i64 [ %len.2, %for.inc.for.body_crit_edge ], [ %len.0, %rcu_read_lock.exit.for.body_crit_edge ]
  %filler.1360 = phi i32 [ %filler.2, %for.inc.for.body_crit_edge ], [ %filler.0, %rcu_read_lock.exit.for.body_crit_edge ]
  %magicptr.i = ptrtoint ptr %folio.0363 to i32
  %21 = zext i32 %magicptr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %magicptr.i, label %if.end [
    i32 1030, label %for.body.for.inc_crit_edge
    i32 1026, label %for.body.for.inc.sink.split_crit_edge
  ]

for.body.for.inc.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %and.i = and i32 %magicptr.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i167.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i167.not, label %if.end6, label %if.end.if.end70_crit_edge

if.end.if.end70_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.end6:                                          ; preds = %if.end
  %22 = getelementptr inbounds %struct.page, ptr %folio.0363, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i.i.i.i168 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i168)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i168, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !281

if.then.i.i.i.i:                                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef nonnull %folio.0363, ptr noundef nonnull @.str.63) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %if.end6
  %25 = ptrtoint ptr %folio.0363 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %folio.0363, align 4
  %27 = and i32 %26, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.if.end.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %22, align 4
  %and.i.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_swapcache.exit.i, label %if.then.i.i.i, !prof !281

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef nonnull %folio.0363, ptr noundef nonnull @.str.63) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_swapcache.exit.i:                      ; preds = %land.rhs.i.i
  %30 = ptrtoint ptr %folio.0363 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %folio.0363, align 4
  %32 = and i32 %31, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.i = icmp eq i32 %32, 0
  br i1 %tobool.i.not.i, label %folio_test_swapcache.exit.i.if.end.i_crit_edge, label %if.then.i169, !prof !281

folio_test_swapcache.exit.i.if.end.i_crit_edge:   ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i169:                                     ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = call i32 @__page_file_index(ptr noundef nonnull %folio.0363) #9
  br label %folio_index.exit

if.end.i:                                         ; preds = %folio_test_swapcache.exit.i.if.end.i_crit_edge, %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge
  %index.i = getelementptr inbounds %struct.anon.148, ptr %folio.0363, i32 0, i32 3
  %33 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %index.i, align 4
  br label %folio_index.exit

folio_index.exit:                                 ; preds = %if.end.i, %if.then.i169
  %retval.0.i170 = phi i32 [ %call2.i, %if.then.i169 ], [ %34, %if.end.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i170, i32 %index.1362)
  %cmp.not = icmp eq i32 %retval.0.i170, %index.1362
  br i1 %cmp.not, label %if.end10, label %folio_index.exit.if.end70_crit_edge

folio_index.exit.if.end70_crit_edge:              ; preds = %folio_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.end10:                                         ; preds = %folio_index.exit
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %folio.0363, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !326
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %35 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 0, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !327
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.end10.atomic_add_unless.exit.i.i.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.end10.atomic_add_unless.exit.i.i.i.i_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_add_unless.exit.i.i.i.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !328
  br label %atomic_add_unless.exit.i.i.i.i

atomic_add_unless.exit.i.i.i.i:                   ; preds = %do.end11.i.i.i.i.i.i.i, %if.end10.atomic_add_unless.exit.i.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_unless, i32 0, i32 1), ptr blockaddress(@afs_extend_writeback, %if.then.i.i.i.i171)) #9
          to label %folio_try_get_rcu.exit [label %if.then.i.i.i.i171], !srcloc !292

if.then.i.i.i.i171:                               ; preds = %atomic_add_unless.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  call void @__page_ref_mod_unless(ptr noundef nonnull %folio.0363, i32 noundef 1, i32 noundef %conv.i.i.i.i) #9
  br label %folio_try_get_rcu.exit

folio_try_get_rcu.exit:                           ; preds = %if.then.i.i.i.i171, %atomic_add_unless.exit.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.end13, label %folio_try_get_rcu.exit.for.inc.sink.split_crit_edge

folio_try_get_rcu.exit.for.inc.sink.split_crit_edge: ; preds = %folio_try_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.end13:                                         ; preds = %folio_try_get_rcu.exit
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %6, align 4
  %tobool.not.i173 = icmp eq ptr %37, null
  br i1 %tobool.not.i173, label %if.then.i175, label %if.end.i176

if.then.i175:                                     ; preds = %if.end13
  %38 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xas, align 4
  %xa_head.i.i = getelementptr inbounds %struct.xarray, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %xa_head.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.anon.3, ptr %39, i32 0, i32 1
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i174 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i174, label %lor.lhs.false.i.i, label %if.then.i175.xas_reload.exit_crit_edge

if.then.i175.xas_reload.exit_crit_edge:           ; preds = %if.then.i175
  call void @__sanitizer_cov_trace_pc() #11
  br label %xas_reload.exit

lor.lhs.false.i.i:                                ; preds = %if.then.i175
  %call2.i.i = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.xas_reload.exit_crit_edge

lor.lhs.false.i.i.xas_reload.exit_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xas_reload.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call4.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.xas_reload.exit_crit_edge, label %land.lhs.true6.i.i

land.lhs.true.i.i.xas_reload.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xas_reload.exit

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %.b12.i.i = load i1, ptr @xa_head.__warned, align 1
  br i1 %.b12.i.i, label %land.lhs.true6.i.i.xas_reload.exit_crit_edge, label %land.lhs.true6.i.i.cleanup.sink.split.i_crit_edge

land.lhs.true6.i.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

land.lhs.true6.i.i.xas_reload.exit_crit_edge:     ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xas_reload.exit

if.end.i176:                                      ; preds = %if.end13
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %5, align 2
  %44 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %xas, align 4
  %conv.i = zext i8 %43 to i32
  %arrayidx.i.i = getelementptr %struct.xa_node, ptr %37, i32 0, i32 7, i32 %conv.i
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %dep_map.i10.i = getelementptr inbounds %struct.anon.3, ptr %45, i32 0, i32 1
  %call.i.i11.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i10.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call.i.i11.i, 0
  br i1 %tobool.not.i12.i, label %lor.lhs.false.i15.i, label %if.end.i176.xas_reload.exit_crit_edge

if.end.i176.xas_reload.exit_crit_edge:            ; preds = %if.end.i176
  call void @__sanitizer_cov_trace_pc() #11
  br label %xas_reload.exit

lor.lhs.false.i15.i:                              ; preds = %if.end.i176
  %call4.i13.i = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i13.i)
  %tobool5.not.i14.i = icmp eq i32 %call4.i13.i, 0
  br i1 %tobool5.not.i14.i, label %land.lhs.true.i16.i, label %lor.lhs.false.i15.i.xas_reload.exit_crit_edge

lor.lhs.false.i15.i.xas_reload.exit_crit_edge:    ; preds = %lor.lhs.false.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xas_reload.exit

land.lhs.true.i16.i:                              ; preds = %lor.lhs.false.i15.i
  %call6.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i16.i.xas_reload.exit_crit_edge, label %land.lhs.true8.i.i

land.lhs.true.i16.i.xas_reload.exit_crit_edge:    ; preds = %land.lhs.true.i16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xas_reload.exit

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i16.i
  %.b13.i.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true8.i.i.xas_reload.exit_crit_edge, label %land.lhs.true8.i.i.cleanup.sink.split.i_crit_edge

land.lhs.true8.i.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

land.lhs.true8.i.i.xas_reload.exit_crit_edge:     ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xas_reload.exit

cleanup.sink.split.i:                             ; preds = %land.lhs.true8.i.i.cleanup.sink.split.i_crit_edge, %land.lhs.true6.i.i.cleanup.sink.split.i_crit_edge
  %xa_entry.__warned.sink.i = phi ptr [ @xa_head.__warned, %land.lhs.true6.i.i.cleanup.sink.split.i_crit_edge ], [ @xa_entry.__warned, %land.lhs.true8.i.i.cleanup.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 1167, %land.lhs.true6.i.i.cleanup.sink.split.i_crit_edge ], [ 1183, %land.lhs.true8.i.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi ptr [ %41, %land.lhs.true6.i.i.cleanup.sink.split.i_crit_edge ], [ %47, %land.lhs.true8.i.i.cleanup.sink.split.i_crit_edge ]
  %48 = ptrtoint ptr %xa_entry.__warned.sink.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i1 true, ptr %xa_entry.__warned.sink.i, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.91, i32 noundef %.sink.i, ptr noundef nonnull @.str.67) #9
  br label %xas_reload.exit

xas_reload.exit:                                  ; preds = %cleanup.sink.split.i, %land.lhs.true8.i.i.xas_reload.exit_crit_edge, %land.lhs.true.i16.i.xas_reload.exit_crit_edge, %lor.lhs.false.i15.i.xas_reload.exit_crit_edge, %if.end.i176.xas_reload.exit_crit_edge, %land.lhs.true6.i.i.xas_reload.exit_crit_edge, %land.lhs.true.i.i.xas_reload.exit_crit_edge, %lor.lhs.false.i.i.xas_reload.exit_crit_edge, %if.then.i175.xas_reload.exit_crit_edge
  %retval.0.i177 = phi ptr [ %41, %if.then.i175.xas_reload.exit_crit_edge ], [ %41, %lor.lhs.false.i.i.xas_reload.exit_crit_edge ], [ %41, %land.lhs.true.i.i.xas_reload.exit_crit_edge ], [ %41, %land.lhs.true6.i.i.xas_reload.exit_crit_edge ], [ %47, %if.end.i176.xas_reload.exit_crit_edge ], [ %47, %lor.lhs.false.i15.i.xas_reload.exit_crit_edge ], [ %47, %land.lhs.true.i16.i.xas_reload.exit_crit_edge ], [ %47, %land.lhs.true8.i.i.xas_reload.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  %cmp15.not = icmp eq ptr %folio.0363, %retval.0.i177
  br i1 %cmp15.not, label %if.end20, label %if.then19, !prof !281

if.then19:                                        ; preds = %xas_reload.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @folio_put(ptr noundef nonnull %folio.0363)
  br label %if.end70

if.end20:                                         ; preds = %xas_reload.exit
  %49 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %22, align 4
  %and.i.i.i178 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i178)
  %tobool.not.i.i179 = icmp eq i32 %and.i.i.i178, 0
  br i1 %tobool.not.i.i179, label %folio_flags.exit.i, label %if.then.i.i180, !prof !281

if.then.i.i180:                                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef nonnull %folio.0363, ptr noundef nonnull @.str.63) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_flags.exit.i:                               ; preds = %if.end20
  %call.i.i.i181 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %folio.0363, i32 noundef 4) #9
  %51 = ptrtoint ptr %folio.0363 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %folio.0363, align 4
  %and.i.i4.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i)
  %tobool.not.i.i.i182 = icmp eq i32 %and.i.i4.i, 0
  br i1 %tobool.not.i.i.i182, label %folio_trylock.exit, label %folio_flags.exit.i.if.then22_crit_edge

folio_flags.exit.i.if.then22_crit_edge:           ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

folio_trylock.exit:                               ; preds = %folio_flags.exit.i
  call void @llvm.prefetch.p0(ptr nonnull %folio.0363, i32 1, i32 3, i32 1) #9
  %53 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %folio.0363, ptr nonnull %folio.0363, i32 1, ptr nonnull elementtype(i32) %folio.0363) #9, !srcloc !286
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !287
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.i, label %if.end23, label %folio_trylock.exit.if.then22_crit_edge

folio_trylock.exit.if.then22_crit_edge:           ; preds = %folio_trylock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

if.then22:                                        ; preds = %folio_trylock.exit.if.then22_crit_edge, %folio_flags.exit.i.if.then22_crit_edge
  %call.i.i.i.i.i.i184 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %54 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i.i.i = icmp eq i32 %55, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i185, label %do.end5.i.i.i, !prof !283

if.then.i.i.i185:                                 ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef nonnull %folio.0363, ptr noundef nonnull @.str.70) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !288
  unreachable

do.end5.i.i.i:                                    ; preds = %if.then22
  %call.i.i.i10.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !289
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %56 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !290
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %56, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i186 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_extend_writeback, %if.then.i.i.i.i188)) #9
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i188], !srcloc !292

if.then.i.i.i.i188:                               ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i187 = zext i1 %cmp.i.i.i.i.i.i186 to i32
  call void @__page_ref_mod_and_test(ptr noundef nonnull %folio.0363, i32 noundef -1, i32 noundef %conv.i.i.i.i187) #9
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i188, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i186, label %if.then.i189, label %folio_put_testzero.exit.i.if.end70_crit_edge

folio_put_testzero.exit.i.if.end70_crit_edge:     ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then.i189:                                     ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef nonnull %folio.0363) #9
  br label %if.end70

if.end23:                                         ; preds = %folio_trylock.exit
  %57 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %22, align 4
  %and.i.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_dirty.exit, label %if.then.i.i, !prof !281

if.then.i.i:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef nonnull %folio.0363, ptr noundef nonnull @.str.63) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_dirty.exit:                            ; preds = %if.end23
  %59 = ptrtoint ptr %folio.0363 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %folio.0363, align 4
  %61 = and i32 %60, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.i.not = icmp eq i32 %61, 0
  br i1 %tobool.i.not, label %folio_test_dirty.exit.if.then30_crit_edge, label %lor.lhs.false

folio_test_dirty.exit.if.then30_crit_edge:        ; preds = %folio_test_dirty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

lor.lhs.false:                                    ; preds = %folio_test_dirty.exit
  %62 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %22, align 4
  %and.i.i.i159 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i159)
  %tobool.not.i.i160 = icmp eq i32 %and.i.i.i159, 0
  br i1 %tobool.not.i.i160, label %folio_test_writeback.exit, label %if.then.i.i161, !prof !281

if.then.i.i161:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef nonnull %folio.0363, ptr noundef nonnull @.str.63) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_writeback.exit:                        ; preds = %lor.lhs.false
  %64 = ptrtoint ptr %folio.0363 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %folio.0363, align 4
  %66 = and i32 %65, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.i162.not = icmp eq i32 %66, 0
  br i1 %tobool.i162.not, label %lor.lhs.false27, label %folio_test_writeback.exit.if.then30_crit_edge

folio_test_writeback.exit.if.then30_crit_edge:    ; preds = %folio_test_writeback.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

lor.lhs.false27:                                  ; preds = %folio_test_writeback.exit
  %67 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %22, align 4
  %and.i.i.i163 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i163)
  %tobool.not.i.i164 = icmp eq i32 %and.i.i.i163, 0
  br i1 %tobool.not.i.i164, label %folio_test_private_2.exit, label %if.then.i.i165, !prof !281

if.then.i.i165:                                   ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef nonnull %folio.0363, ptr noundef nonnull @.str.63) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_private_2.exit:                        ; preds = %lor.lhs.false27
  %69 = ptrtoint ptr %folio.0363 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %folio.0363, align 4
  %71 = and i32 %70, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.i166.not = icmp eq i32 %71, 0
  br i1 %tobool.i166.not, label %if.end31, label %folio_test_private_2.exit.if.then30_crit_edge

folio_test_private_2.exit.if.then30_crit_edge:    ; preds = %folio_test_private_2.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

if.then30:                                        ; preds = %folio_test_private_2.exit.if.then30_crit_edge, %folio_test_writeback.exit.if.then30_crit_edge, %folio_test_dirty.exit.if.then30_crit_edge
  call void @folio_unlock(ptr noundef nonnull %folio.0363) #9
  %call.i.i.i.i.i.i192 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %72 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.i.i.i193 = icmp eq i32 %73, 0
  br i1 %cmp.i.i.i193, label %if.then.i.i.i194, label %do.end5.i.i.i198, !prof !283

if.then.i.i.i194:                                 ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef nonnull %folio.0363, ptr noundef nonnull @.str.70) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !288
  unreachable

do.end5.i.i.i198:                                 ; preds = %if.then30
  %call.i.i.i10.i.i.i195 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !289
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %74 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !290
  %asmresult.i.i.i.i.i.i.i.i.i196 = extractvalue { i32, i32 } %74, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i196)
  %cmp.i.i.i.i.i.i197 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i196, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_extend_writeback, %if.then.i.i.i.i200)) #9
          to label %folio_put_testzero.exit.i201 [label %if.then.i.i.i.i200], !srcloc !292

if.then.i.i.i.i200:                               ; preds = %do.end5.i.i.i198
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i199 = zext i1 %cmp.i.i.i.i.i.i197 to i32
  call void @__page_ref_mod_and_test(ptr noundef nonnull %folio.0363, i32 noundef -1, i32 noundef %conv.i.i.i.i199) #9
  br label %folio_put_testzero.exit.i201

folio_put_testzero.exit.i201:                     ; preds = %if.then.i.i.i.i200, %do.end5.i.i.i198
  br i1 %cmp.i.i.i.i.i.i197, label %if.then.i202, label %folio_put_testzero.exit.i201.if.end70_crit_edge

folio_put_testzero.exit.i201.if.end70_crit_edge:  ; preds = %folio_put_testzero.exit.i201
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then.i202:                                     ; preds = %folio_put_testzero.exit.i201
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef nonnull %folio.0363) #9
  br label %if.end70

if.end31:                                         ; preds = %folio_test_private_2.exit
  %75 = ptrtoint ptr %folio.0363 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %folio.0363, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %76)
  %cmp.i.not.i.i.i.i = icmp eq i32 %76, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i205, label %PageHead.exit.i.i.i, !prof !283

if.then.i.i.i.i205:                               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef nonnull %folio.0363, ptr noundef nonnull @.str.65) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i.i:                              ; preds = %if.end31
  %77 = ptrtoint ptr %folio.0363 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %folio.0363, align 4
  %79 = and i32 %78, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i.i.i206 = icmp eq i32 %79, 0
  br i1 %tobool.not.i.i.i206, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i207

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_size.exit

if.end.i.i.i207:                                  ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %80 = getelementptr %struct.page, ptr %folio.0363, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.119, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %82 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i207, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i208 = phi i32 [ %conv.i.i.i, %if.end.i.i.i207 ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i.i208
  %private.i = getelementptr inbounds %struct.anon.148, ptr %folio.0363, i32 0, i32 4
  %83 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %private.i, align 4
  %85 = ptrtoint ptr %84 to i32
  %86 = ptrtoint ptr %folio.0363 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %folio.0363, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %87)
  %cmp.i.not.i.i.i.i.i.i = icmp eq i32 %87, -1
  br i1 %cmp.i.not.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i, !prof !283

if.then.i.i.i.i.i.i:                              ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef nonnull %folio.0363, ptr noundef nonnull @.str.65) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i.i.i.i:                          ; preds = %folio_size.exit
  %88 = ptrtoint ptr %folio.0363 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %folio.0363, align 4
  %90 = and i32 %89, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i.i.i.i.i = icmp eq i32 %90, 0
  br i1 %tobool.not.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i.afs_folio_dirty_from.exit_crit_edge, label %if.end.i.i.i.i.i

PageHead.exit.i.i.i.i.i.afs_folio_dirty_from.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_folio_dirty_from.exit

if.end.i.i.i.i.i:                                 ; preds = %PageHead.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %91 = getelementptr %struct.page, ptr %folio.0363, i32 1, i32 1
  %compound_order.i.i.i.i.i = getelementptr inbounds %struct.anon.119, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %compound_order.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %compound_order.i.i.i.i.i, align 1
  %conv.i.i.i.i.i = zext i8 %93 to i32
  %phi.bo.i.i = add nsw i32 %conv.i.i.i.i.i, -3
  br label %afs_folio_dirty_from.exit

afs_folio_dirty_from.exit:                        ; preds = %if.end.i.i.i.i.i, %PageHead.exit.i.i.i.i.i.afs_folio_dirty_from.exit_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ %phi.bo.i.i, %if.end.i.i.i.i.i ], [ -3, %PageHead.exit.i.i.i.i.i.afs_folio_dirty_from.exit_crit_edge ]
  %and.i209 = and i32 %85, 32767
  %94 = call i32 @llvm.smax.i32(i32 %retval.0.i.i.i.i.i, i32 0) #9
  %shl.i210 = shl i32 %and.i209, %94
  %95 = ptrtoint ptr %folio.0363 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %folio.0363, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %96)
  %cmp.i.not.i.i.i.i.i.i211 = icmp eq i32 %96, -1
  br i1 %cmp.i.not.i.i.i.i.i.i211, label %if.then.i.i.i.i.i.i212, label %PageHead.exit.i.i.i.i.i214, !prof !283

if.then.i.i.i.i.i.i212:                           ; preds = %afs_folio_dirty_from.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef nonnull %folio.0363, ptr noundef nonnull @.str.65) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i.i.i.i214:                       ; preds = %afs_folio_dirty_from.exit
  %97 = ptrtoint ptr %folio.0363 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %folio.0363, align 4
  %99 = and i32 %98, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i.i.i.i.i213 = icmp eq i32 %99, 0
  br i1 %tobool.not.i.i.i.i.i213, label %PageHead.exit.i.i.i.i.i214.afs_folio_dirty_to.exit_crit_edge, label %if.end.i.i.i.i.i218

PageHead.exit.i.i.i.i.i214.afs_folio_dirty_to.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i.i214
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_folio_dirty_to.exit

if.end.i.i.i.i.i218:                              ; preds = %PageHead.exit.i.i.i.i.i214
  call void @__sanitizer_cov_trace_pc() #11
  %100 = getelementptr %struct.page, ptr %folio.0363, i32 1, i32 1
  %compound_order.i.i.i.i.i215 = getelementptr inbounds %struct.anon.119, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %compound_order.i.i.i.i.i215 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %compound_order.i.i.i.i.i215, align 1
  %conv.i.i.i.i.i216 = zext i8 %102 to i32
  %phi.bo.i.i217 = add nsw i32 %conv.i.i.i.i.i216, -3
  br label %afs_folio_dirty_to.exit

afs_folio_dirty_to.exit:                          ; preds = %if.end.i.i.i.i.i218, %PageHead.exit.i.i.i.i.i214.afs_folio_dirty_to.exit_crit_edge
  %retval.0.i.i.i.i.i219 = phi i32 [ %phi.bo.i.i217, %if.end.i.i.i.i.i218 ], [ -3, %PageHead.exit.i.i.i.i.i214.afs_folio_dirty_to.exit_crit_edge ]
  %shr.i = lshr i32 %85, 16
  %and.i220 = and i32 %shr.i, 32767
  %add.i = add nuw nsw i32 %and.i220, 1
  %103 = call i32 @llvm.smax.i32(i32 %retval.0.i.i.i.i.i219, i32 0) #9
  %shl.i221 = shl i32 %add.i, %103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i210)
  %cmp36.not = icmp eq i32 %shl.i210, 0
  %brmerge = or i1 %cmp36.not, %new_content
  br i1 %brmerge, label %if.end40, label %if.then39

if.then39:                                        ; preds = %afs_folio_dirty_to.exit
  call void @folio_unlock(ptr noundef nonnull %folio.0363) #9
  %call.i.i.i.i.i.i223 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %104 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp.i.i.i224 = icmp eq i32 %105, 0
  br i1 %cmp.i.i.i224, label %if.then.i.i.i225, label %do.end5.i.i.i229, !prof !283

if.then.i.i.i225:                                 ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef nonnull %folio.0363, ptr noundef nonnull @.str.70) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !288
  unreachable

do.end5.i.i.i229:                                 ; preds = %if.then39
  %call.i.i.i10.i.i.i226 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !289
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %106 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !290
  %asmresult.i.i.i.i.i.i.i.i.i227 = extractvalue { i32, i32 } %106, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i227)
  %cmp.i.i.i.i.i.i228 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i227, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_extend_writeback, %if.then.i.i.i.i231)) #9
          to label %folio_put_testzero.exit.i232 [label %if.then.i.i.i.i231], !srcloc !292

if.then.i.i.i.i231:                               ; preds = %do.end5.i.i.i229
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i230 = zext i1 %cmp.i.i.i.i.i.i228 to i32
  call void @__page_ref_mod_and_test(ptr noundef nonnull %folio.0363, i32 noundef -1, i32 noundef %conv.i.i.i.i230) #9
  br label %folio_put_testzero.exit.i232

folio_put_testzero.exit.i232:                     ; preds = %if.then.i.i.i.i231, %do.end5.i.i.i229
  br i1 %cmp.i.i.i.i.i.i228, label %if.then.i233, label %folio_put_testzero.exit.i232.if.end70_crit_edge

folio_put_testzero.exit.i232.if.end70_crit_edge:  ; preds = %folio_put_testzero.exit.i232
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then.i233:                                     ; preds = %folio_put_testzero.exit.i232
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef nonnull %folio.0363) #9
  br label %if.end70

if.end40:                                         ; preds = %afs_folio_dirty_to.exit
  %add41 = add i32 %shl.i221, %filler.1360
  %conv42 = zext i32 %add41 to i64
  %add43 = add i64 %len.1361, %conv42
  %sub = sub i32 %shl.i, %shl.i221
  call void @__sanitizer_cov_trace_cmp8(i64 %add43, i64 %max_len)
  %cmp44.not = icmp slt i64 %add43, %max_len
  br i1 %cmp44.not, label %lor.lhs.false46, label %if.end40.if.end57_crit_edge

if.end40.if.end57_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

lor.lhs.false46:                                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %_count to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp47 = icmp sgt i32 %108, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl.i221)
  %cmp50 = icmp eq i32 %shl.i, %shl.i221
  %brmerge158 = or i1 %cmp50, %new_content
  %or.cond = select i1 %cmp47, i1 %brmerge158, i1 false
  %spec.select = select i1 %or.cond, i1 false, i1 true
  %spec.select806 = select i1 %or.cond, i8 0, i8 1
  br label %if.end57

if.end57:                                         ; preds = %lor.lhs.false46, %if.end40.if.end57_crit_edge
  %extract.t = phi i1 [ true, %if.end40.if.end57_crit_edge ], [ %spec.select, %lor.lhs.false46 ]
  %stop.2 = phi i8 [ 1, %if.end40.if.end57_crit_edge ], [ %spec.select806, %lor.lhs.false46 ]
  %109 = ptrtoint ptr %folio.0363 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %folio.0363, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %110)
  %cmp.i.not.i.i.i = icmp eq i32 %110, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i236, label %PageHead.exit.i.i, !prof !283

if.then.i.i.i236:                                 ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef nonnull %folio.0363, ptr noundef nonnull @.str.65) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i:                                ; preds = %if.end57
  %111 = ptrtoint ptr %folio.0363 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %folio.0363, align 4
  %113 = and i32 %112, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.not.i.i237 = icmp eq i32 %113, 0
  br i1 %tobool.not.i.i237, label %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge, label %if.end.i.i

PageHead.exit.i.i.folio_nr_pages.exit_crit_edge:  ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_nr_pages.exit

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %compound_nr.i.i = getelementptr %struct.page, ptr %folio.0363, i32 1, i32 1, i32 0, i32 2
  %114 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %compound_nr.i.i, align 4
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %if.end.i.i, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge
  %retval.0.i.i = phi i32 [ %115, %if.end.i.i ], [ 1, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge ]
  %add59 = add i32 %retval.0.i.i, %index.1362
  %116 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %pvec, align 4
  %inc.i = add i8 %117, 1
  store i8 %inc.i, ptr %pvec, align 4
  %idxprom.i = zext i8 %117 to i32
  %arrayidx.i = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %idxprom.i
  %118 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %folio.0363, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %inc.i)
  %tobool61.not = icmp eq i8 %inc.i, 15
  %brmerge635 = or i1 %tobool61.not, %extract.t
  br i1 %brmerge635, label %folio_nr_pages.exit.for.end_crit_edge, label %folio_nr_pages.exit.for.inc_crit_edge

folio_nr_pages.exit.for.inc_crit_edge:            ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

folio_nr_pages.exit.for.end_crit_edge:            ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.sink.split:                               ; preds = %folio_try_get_rcu.exit.for.inc.sink.split_crit_edge, %for.body.for.inc.sink.split_crit_edge
  %119 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr inttoptr (i32 3 to ptr), ptr %6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %folio_nr_pages.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %filler.2 = phi i32 [ %filler.1360, %for.body.for.inc_crit_edge ], [ %filler.1360, %for.inc.sink.split ], [ %sub, %folio_nr_pages.exit.for.inc_crit_edge ]
  %len.2 = phi i64 [ %len.1361, %for.body.for.inc_crit_edge ], [ %len.1361, %for.inc.sink.split ], [ %add43, %folio_nr_pages.exit.for.inc_crit_edge ]
  %index.2 = phi i32 [ %index.1362, %for.body.for.inc_crit_edge ], [ %index.1362, %for.inc.sink.split ], [ %add59, %folio_nr_pages.exit.for.inc_crit_edge ]
  %stop.3 = phi i8 [ 1, %for.body.for.inc_crit_edge ], [ 1, %for.inc.sink.split ], [ %stop.2, %folio_nr_pages.exit.for.inc_crit_edge ]
  %call67 = call fastcc ptr @xas_next_entry(ptr noundef nonnull %xas, i32 noundef -1)
  %tobool.not = icmp eq ptr %call67, null
  br i1 %tobool.not, label %for.cond.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %stop.3)
  %extract.t156.le.not = icmp eq i8 %stop.3, 0
  br i1 %extract.t156.le.not, label %for.cond.for.end_crit_edge.if.then69_crit_edge, label %for.cond.for.end_crit_edge.if.end70_crit_edge

for.cond.for.end_crit_edge.if.end70_crit_edge:    ; preds = %for.cond.for.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

for.cond.for.end_crit_edge.if.then69_crit_edge:   ; preds = %for.cond.for.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then69

for.end:                                          ; preds = %folio_nr_pages.exit.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %filler.3 = phi i32 [ %filler.0, %rcu_read_lock.exit.for.end_crit_edge ], [ %sub, %folio_nr_pages.exit.for.end_crit_edge ]
  %len.3 = phi i64 [ %len.0, %rcu_read_lock.exit.for.end_crit_edge ], [ %add43, %folio_nr_pages.exit.for.end_crit_edge ]
  %index.3 = phi i32 [ %index.0, %rcu_read_lock.exit.for.end_crit_edge ], [ %add59, %folio_nr_pages.exit.for.end_crit_edge ]
  %stop.4.off0 = phi i1 [ %stop.0.off0, %rcu_read_lock.exit.for.end_crit_edge ], [ %extract.t, %folio_nr_pages.exit.for.end_crit_edge ]
  br i1 %stop.4.off0, label %for.end.if.end70_crit_edge, label %for.end.if.then69_crit_edge

for.end.if.then69_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then69

for.end.if.end70_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then69:                                        ; preds = %for.end.if.then69_crit_edge, %for.cond.for.end_crit_edge.if.then69_crit_edge
  %index.3464 = phi i32 [ %index.2, %for.cond.for.end_crit_edge.if.then69_crit_edge ], [ %index.3, %for.end.if.then69_crit_edge ]
  %len.3463 = phi i64 [ %len.2, %for.cond.for.end_crit_edge.if.then69_crit_edge ], [ %len.3, %for.end.if.then69_crit_edge ]
  %filler.3462 = phi i32 [ %filler.2, %for.cond.for.end_crit_edge.if.then69_crit_edge ], [ %filler.3, %for.end.if.then69_crit_edge ]
  call void @xas_pause(ptr noundef nonnull %xas) #9
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %for.end.if.end70_crit_edge, %for.cond.for.end_crit_edge.if.end70_crit_edge, %if.then.i233, %folio_put_testzero.exit.i232.if.end70_crit_edge, %if.then.i202, %folio_put_testzero.exit.i201.if.end70_crit_edge, %if.then.i189, %folio_put_testzero.exit.i.if.end70_crit_edge, %if.then19, %folio_index.exit.if.end70_crit_edge, %if.end.if.end70_crit_edge
  %stop.4.off0278 = phi i1 [ false, %if.then69 ], [ true, %for.end.if.end70_crit_edge ], [ true, %if.then19 ], [ true, %folio_put_testzero.exit.i.if.end70_crit_edge ], [ true, %if.then.i189 ], [ true, %folio_put_testzero.exit.i201.if.end70_crit_edge ], [ true, %if.then.i202 ], [ true, %folio_put_testzero.exit.i232.if.end70_crit_edge ], [ true, %if.then.i233 ], [ true, %for.cond.for.end_crit_edge.if.end70_crit_edge ], [ true, %if.end.if.end70_crit_edge ], [ true, %folio_index.exit.if.end70_crit_edge ]
  %index.3277 = phi i32 [ %index.3464, %if.then69 ], [ %index.3, %for.end.if.end70_crit_edge ], [ %index.1362, %if.then19 ], [ %index.1362, %folio_put_testzero.exit.i.if.end70_crit_edge ], [ %index.1362, %if.then.i189 ], [ %index.1362, %folio_put_testzero.exit.i201.if.end70_crit_edge ], [ %index.1362, %if.then.i202 ], [ %index.1362, %folio_put_testzero.exit.i232.if.end70_crit_edge ], [ %index.1362, %if.then.i233 ], [ %index.2, %for.cond.for.end_crit_edge.if.end70_crit_edge ], [ %index.1362, %if.end.if.end70_crit_edge ], [ %index.1362, %folio_index.exit.if.end70_crit_edge ]
  %len.3275 = phi i64 [ %len.3463, %if.then69 ], [ %len.3, %for.end.if.end70_crit_edge ], [ %len.1361, %if.then19 ], [ %len.1361, %folio_put_testzero.exit.i.if.end70_crit_edge ], [ %len.1361, %if.then.i189 ], [ %len.1361, %folio_put_testzero.exit.i201.if.end70_crit_edge ], [ %len.1361, %if.then.i202 ], [ %len.1361, %folio_put_testzero.exit.i232.if.end70_crit_edge ], [ %len.1361, %if.then.i233 ], [ %len.2, %for.cond.for.end_crit_edge.if.end70_crit_edge ], [ %len.1361, %if.end.if.end70_crit_edge ], [ %len.1361, %folio_index.exit.if.end70_crit_edge ]
  %filler.3274 = phi i32 [ %filler.3462, %if.then69 ], [ %filler.3, %for.end.if.end70_crit_edge ], [ %filler.1360, %if.then19 ], [ %filler.1360, %folio_put_testzero.exit.i.if.end70_crit_edge ], [ %filler.1360, %if.then.i189 ], [ %filler.1360, %folio_put_testzero.exit.i201.if.end70_crit_edge ], [ %filler.1360, %if.then.i202 ], [ %filler.1360, %folio_put_testzero.exit.i232.if.end70_crit_edge ], [ %filler.1360, %if.then.i233 ], [ %filler.2, %for.cond.for.end_crit_edge.if.end70_crit_edge ], [ %filler.1360, %if.end.if.end70_crit_edge ], [ %filler.1360, %folio_index.exit.if.end70_crit_edge ]
  %call.i238 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i238, label %if.end70.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i241

if.end70.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i241:                               ; preds = %if.end70
  %call1.i239 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i239)
  %tobool.not.i240 = icmp eq i32 %call1.i239, 0
  br i1 %tobool.not.i240, label %land.lhs.true.i241.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i243

land.lhs.true.i241.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i241
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i243:                              ; preds = %land.lhs.true.i241
  %.b4.i242 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i242, label %land.lhs.true2.i243.rcu_read_unlock.exit_crit_edge, label %if.then.i244

land.lhs.true2.i243.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i243
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i244:                                     ; preds = %land.lhs.true2.i243
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.89, i32 noundef 724, ptr noundef nonnull @.str.92) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i244, %land.lhs.true2.i243.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i241.rcu_read_unlock.exit_crit_edge, %if.end70.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !329
  %120 = call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i.i.i245 = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i.i.i.i245 to ptr
  %preempt_count.i.i.i.i246 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %preempt_count.i.i.i.i246 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %preempt_count.i.i.i.i246, align 4
  %sub.i.i.i = add i32 %123, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i246, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %124 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %pvec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool72.not = icmp eq i8 %125, 0
  br i1 %tobool72.not, label %rcu_read_unlock.exit.do.end108_crit_edge, label %rcu_read_unlock.exit.for.body79_crit_edge

rcu_read_unlock.exit.for.body79_crit_edge:        ; preds = %rcu_read_unlock.exit
  br label %for.body79

rcu_read_unlock.exit.do.end108_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end108

for.body79:                                       ; preds = %folio_nr_pages.exit263.for.body79_crit_edge, %rcu_read_unlock.exit.for.body79_crit_edge
  %i.0376 = phi i32 [ %inc, %folio_nr_pages.exit263.for.body79_crit_edge ], [ 0, %rcu_read_unlock.exit.for.body79_crit_edge ]
  %arrayidx = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %i.0376
  %126 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx, align 4
  %128 = getelementptr inbounds %struct.page, ptr %127, i32 0, i32 1
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %128, align 4
  %and.i249 = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i249)
  %tobool.not.i250 = icmp eq i32 %and.i249, 0
  br i1 %tobool.not.i250, label %if.end.i252, label %if.then.i251, !prof !281

if.then.i251:                                     ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %130, -1
  br label %_compound_head.exit

if.end.i252:                                      ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #11
  %131 = ptrtoint ptr %127 to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i252, %if.then.i251
  %retval.0.i253 = phi i32 [ %sub.i, %if.then.i251 ], [ %131, %if.end.i252 ]
  %132 = inttoptr i32 %retval.0.i253 to ptr
  %133 = load ptr, ptr @afs_extend_writeback.___tp_str, align 4
  call fastcc void @trace_afs_folio_dirty(ptr noundef %vnode, ptr noundef %133, ptr noundef %132)
  %call81 = call zeroext i1 @folio_clear_dirty_for_io(ptr noundef %132) #9
  br i1 %call81, label %if.end87, label %do.body83

do.body83:                                        ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/write.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 529, 0\0A.popsection", ""() #9, !srcloc !330
  unreachable

if.end87:                                         ; preds = %_compound_head.exit
  %call88 = call zeroext i1 @__folio_start_writeback(ptr noundef %132, i1 noundef zeroext false) #9
  br i1 %call88, label %do.body90, label %if.end96

do.body90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/write.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 531, 0\0A.popsection", ""() #9, !srcloc !331
  unreachable

if.end96:                                         ; preds = %if.end87
  br i1 %caching, label %if.then.i254, label %if.end96.afs_folio_start_fscache.exit_crit_edge

if.end96.afs_folio_start_fscache.exit_crit_edge:  ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_folio_start_fscache.exit

if.then.i254:                                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @folio_start_fscache(ptr noundef %132) #9
  br label %afs_folio_start_fscache.exit

afs_folio_start_fscache.exit:                     ; preds = %if.then.i254, %if.end96.afs_folio_start_fscache.exit_crit_edge
  %134 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %135)
  %cmp.i.not.i.i.i256 = icmp eq i32 %135, -1
  br i1 %cmp.i.not.i.i.i256, label %if.then.i.i.i257, label %PageHead.exit.i.i259, !prof !283

if.then.i.i.i257:                                 ; preds = %afs_folio_start_fscache.exit
  call void @__sanitizer_cov_trace_pc() #11
  %136 = inttoptr i32 %retval.0.i253 to ptr
  call void @dump_page(ptr noundef %136, ptr noundef nonnull @.str.65) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i259:                             ; preds = %afs_folio_start_fscache.exit
  %137 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %132, align 4
  %139 = and i32 %138, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool.not.i.i258 = icmp eq i32 %139, 0
  br i1 %tobool.not.i.i258, label %PageHead.exit.i.i259.folio_nr_pages.exit263_crit_edge, label %if.end.i.i261

PageHead.exit.i.i259.folio_nr_pages.exit263_crit_edge: ; preds = %PageHead.exit.i.i259
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_nr_pages.exit263

if.end.i.i261:                                    ; preds = %PageHead.exit.i.i259
  call void @__sanitizer_cov_trace_pc() #11
  %compound_nr.i.i260 = getelementptr %struct.page, ptr %132, i32 1, i32 1, i32 0, i32 2
  %140 = ptrtoint ptr %compound_nr.i.i260 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %compound_nr.i.i260, align 4
  br label %folio_nr_pages.exit263

folio_nr_pages.exit263:                           ; preds = %if.end.i.i261, %PageHead.exit.i.i259.folio_nr_pages.exit263_crit_edge
  %retval.0.i.i262 = phi i32 [ %141, %if.end.i.i261 ], [ 1, %PageHead.exit.i.i259.folio_nr_pages.exit263_crit_edge ]
  %142 = ptrtoint ptr %_count to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %_count, align 4
  %sub99 = sub i32 %143, %retval.0.i.i262
  store i32 %sub99, ptr %_count, align 4
  call void @folio_unlock(ptr noundef %132) #9
  %inc = add nuw nsw i32 %i.0376, 1
  %144 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %144)
  %.pr = load i8, ptr %pvec, align 4
  %conv.i248 = zext i8 %.pr to i32
  %cmp77 = icmp ult i32 %inc, %conv.i248
  br i1 %cmp77, label %folio_nr_pages.exit263.for.body79_crit_edge, label %for.end101

folio_nr_pages.exit263.for.body79_crit_edge:      ; preds = %folio_nr_pages.exit263
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body79

for.end101:                                       ; preds = %folio_nr_pages.exit263
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool.not.i264 = icmp eq i8 %.pr, 0
  br i1 %tobool.not.i264, label %for.end101.pagevec_release.exit_crit_edge, label %if.then.i265

for.end101.pagevec_release.exit_crit_edge:        ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %pagevec_release.exit

if.then.i265:                                     ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #11
  call void @__pagevec_release(ptr noundef nonnull %pvec) #9
  br label %pagevec_release.exit

pagevec_release.exit:                             ; preds = %if.then.i265, %for.end101.pagevec_release.exit_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 539, i32 noundef 0) #9
  %call.i267 = call i32 @__cond_resched() #9
  br i1 %stop.4.off0278, label %pagevec_release.exit.do.end108_crit_edge, label %pagevec_release.exit.do.body_crit_edge

pagevec_release.exit.do.body_crit_edge:           ; preds = %pagevec_release.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

pagevec_release.exit.do.end108_crit_edge:         ; preds = %pagevec_release.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end108

do.end108:                                        ; preds = %pagevec_release.exit.do.end108_crit_edge, %rcu_read_unlock.exit.do.end108_crit_edge
  %conv109 = trunc i64 %len.3275 to i32
  %145 = ptrtoint ptr %_len to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %conv109, ptr %_len, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pvec) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_xarray(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_pages_written_back(ptr noundef %vnode, i64 noundef %start, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %vnode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #9
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %5 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %6 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %i_pages = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %i_pages, ptr %xas, align 4
  %div = sdiv i64 %start, 4096
  %conv = trunc i64 %div to i32
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 3 to ptr), ptr %4, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %5, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %13 = load i32, ptr @afs_debug, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !281

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %14 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2
  %18 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %fid, align 8
  %vnode5 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %vnode5 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %vnode5, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %comm, ptr noundef nonnull @.str.94, i64 noundef %19, i64 noundef %21, i32 noundef %len, i64 noundef %start) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %22 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !325
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %do.end8.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end8.rcu_read_lock.exit_crit_edge:             ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end8
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.89, i32 noundef 696, ptr noundef nonnull @.str.90) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end8.rcu_read_lock.exit_crit_edge
  %conv9 = zext i32 %len to i64
  %add = add i64 %start, -1
  %sub = add i64 %add, %conv9
  %div10 = sdiv i64 %sub, 4096
  %conv11 = trunc i64 %div10 to i32
  %call12 = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef %conv11) #9
  %tobool13.not122 = icmp eq ptr %call12, null
  br i1 %tobool13.not122, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end56.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %folio.0123 = phi ptr [ %call59, %if.end56.for.body_crit_edge ], [ %call12, %rcu_read_lock.exit.for.body_crit_edge ]
  %26 = getelementptr inbounds %struct.page, ptr %folio.0123, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_writeback.exit, label %if.then.i.i, !prof !281

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef nonnull %folio.0123, ptr noundef nonnull @.str.63) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_writeback.exit:                        ; preds = %for.body
  %29 = ptrtoint ptr %folio.0123 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %folio.0123, align 4
  %31 = and i32 %30, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.not = icmp eq i32 %31, 0
  br i1 %tobool.i.not, label %do.end18, label %folio_test_writeback.exit.if.end56_crit_edge

folio_test_writeback.exit.if.end56_crit_edge:     ; preds = %folio_test_writeback.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.end18:                                         ; preds = %folio_test_writeback.exit
  %32 = call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i104 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i104 to ptr
  %task21 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task21, align 8
  %comm22 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 101
  %36 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %26, align 4
  %and.i.i.i.i.i105 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i105)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i105, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !281

if.then.i.i.i.i:                                  ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef nonnull %folio.0123, ptr noundef nonnull @.str.63) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %do.end18
  %38 = ptrtoint ptr %folio.0123 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %folio.0123, align 4
  %40 = and i32 %39, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.i.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.if.end.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %41 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %26, align 4
  %and.i.i.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_swapcache.exit.i, label %if.then.i.i.i, !prof !281

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef nonnull %folio.0123, ptr noundef nonnull @.str.63) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_swapcache.exit.i:                      ; preds = %land.rhs.i.i
  %43 = ptrtoint ptr %folio.0123 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %folio.0123, align 4
  %45 = and i32 %44, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i.not.i = icmp eq i32 %45, 0
  br i1 %tobool.i.not.i, label %folio_test_swapcache.exit.i.if.end.i_crit_edge, label %if.then.i106, !prof !281

folio_test_swapcache.exit.i.if.end.i_crit_edge:   ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i106:                                     ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = call i32 @__page_file_index(ptr noundef nonnull %folio.0123) #9
  br label %folio_index.exit

if.end.i:                                         ; preds = %folio_test_swapcache.exit.i.if.end.i_crit_edge, %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge
  %index.i = getelementptr inbounds %struct.anon.148, ptr %folio.0123, i32 0, i32 3
  %46 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index.i, align 4
  br label %folio_index.exit

folio_index.exit:                                 ; preds = %if.end.i, %if.then.i106
  %retval.0.i = phi i32 [ %call2.i, %if.then.i106 ], [ %47, %if.end.i ]
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %comm22, i32 noundef %len, i64 noundef %start, i32 noundef %retval.0.i, i32 noundef %conv11) #12
  %48 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %26, align 4
  %and.i.i.i99 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i99)
  %tobool.not.i.i100 = icmp eq i32 %and.i.i.i99, 0
  br i1 %tobool.not.i.i100, label %folio_test_writeback.exit103, label %if.then.i.i101, !prof !281

if.then.i.i101:                                   ; preds = %folio_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef nonnull %folio.0123, ptr noundef nonnull @.str.63) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_writeback.exit103:                     ; preds = %folio_index.exit
  %50 = ptrtoint ptr %folio.0123 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %folio.0123, align 4
  %52 = and i32 %51, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.i102.not = icmp eq i32 %52, 0
  br i1 %tobool.i102.not, label %do.end39, label %folio_test_writeback.exit103.if.end56_crit_edge, !prof !283

folio_test_writeback.exit103.if.end56_crit_edge:  ; preds = %folio_test_writeback.exit103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.end39:                                         ; preds = %folio_test_writeback.exit103
  call void @__sanitizer_cov_trace_pc() #11
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/write.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 276, 0\0A.popsection", ""() #9, !srcloc !332
  unreachable

if.end56:                                         ; preds = %folio_test_writeback.exit103.if.end56_crit_edge, %folio_test_writeback.exit.if.end56_crit_edge
  %53 = load ptr, ptr @afs_pages_written_back.___tp_str, align 4
  call fastcc void @trace_afs_folio_dirty(ptr noundef %vnode, ptr noundef %53, ptr noundef nonnull %folio.0123)
  call fastcc void @folio_detach_private(ptr noundef nonnull %folio.0123)
  call void @folio_end_writeback(ptr noundef nonnull %folio.0123) #9
  %call59 = call fastcc ptr @xas_next_entry(ptr noundef nonnull %xas, i32 noundef %conv11)
  %tobool13.not = icmp eq ptr %call59, null
  br i1 %tobool13.not, label %if.end56.for.end_crit_edge, label %if.end56.for.body_crit_edge

if.end56.for.body_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end56.for.end_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end56.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i107 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i107, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i110

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i110:                               ; preds = %for.end
  %call1.i108 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i108)
  %tobool.not.i109 = icmp eq i32 %call1.i108, 0
  br i1 %tobool.not.i109, label %land.lhs.true.i110.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i112

land.lhs.true.i110.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i110
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i112:                              ; preds = %land.lhs.true.i110
  %.b4.i111 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i111, label %land.lhs.true2.i112.rcu_read_unlock.exit_crit_edge, label %if.then.i113

land.lhs.true2.i112.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i113:                                     ; preds = %land.lhs.true2.i112
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.89, i32 noundef 724, ptr noundef nonnull @.str.92) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i113, %land.lhs.true2.i112.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i110.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !329
  %54 = call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i.i.i114 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i114 to ptr
  %preempt_count.i.i.i.i115 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i115, align 4
  %sub.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i115, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @afs_prune_wb_keys(ptr noundef %vnode)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %58 = load i32, ptr @afs_debug, align 4
  %and61 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %rcu_read_unlock.exit.do.end81_crit_edge, label %do.end72, !prof !281

rcu_read_unlock.exit.do.end81_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end81

do.end72:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %59 = call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i116 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i116 to ptr
  %task75 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task75 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task75, align 8
  %comm76 = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 101
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %comm76, ptr noundef nonnull @.str.94) #12
  br label %do.end81

do.end81:                                         ; preds = %do.end72, %rcu_read_unlock.exit.do.end81_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_redirty_pages(ptr noundef %wbc, ptr noundef %mapping, i64 noundef %start, i64 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i64 %start, 4096
  %conv = trunc i64 %div to i32
  %add = add i64 %start, -1
  %sub = add i64 %add, %len
  %div1 = sdiv i64 %sub, 4096
  %conv2 = trunc i64 %div1 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body12.preheader_crit_edge, label %do.end, !prof !281

entry.do.body12.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %fid, align 8
  %vnode8 = getelementptr inbounds %struct.afs_vnode, ptr %2, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %vnode8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %vnode8, align 8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %comm, ptr noundef nonnull @.str.107, i64 noundef %8, i64 noundef %10, i64 noundef %len, i64 noundef %start) #12
  br label %do.body12.preheader

do.body12.preheader:                              ; preds = %do.end, %entry.do.body12.preheader_crit_edge
  br label %do.body12

do.body12:                                        ; preds = %do.cond43.do.body12_crit_edge, %do.body12.preheader
  %index.0 = phi i32 [ %next.0, %do.cond43.do.body12_crit_edge ], [ %conv, %do.body12.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %11 = load i32, ptr @afs_debug, align 4
  %and14 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body12.do.end34_crit_edge, label %do.end25, !prof !281

do.body12.do.end34_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

do.end25:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %12 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i82 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i82 to ptr
  %task28 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task28, align 8
  %comm29 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %comm29, i64 noundef %len, i64 noundef %start) #12
  br label %do.end34

do.end34:                                         ; preds = %do.end25, %do.body12.do.end34_crit_edge
  %call.i = tail call ptr @__filemap_get_folio(ptr noundef %mapping, i32 noundef %index.0, i32 noundef 0, i32 noundef 0) #9
  %tobool36.not = icmp eq ptr %call.i, null
  br i1 %tobool36.not, label %do.end34.do.cond43_crit_edge, label %if.end39

do.end34.do.cond43_crit_edge:                     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond43

if.end39:                                         ; preds = %do.end34
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i.not.i.i.i = icmp eq i32 %17, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !283

if.then.i.i.i:                                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.65) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i:                                ; preds = %if.end39
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %call.i, align 4
  %20 = and i32 %19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge, label %if.end.i.i

PageHead.exit.i.i.folio_nr_pages.exit_crit_edge:  ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_nr_pages.exit

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %compound_nr.i.i = getelementptr %struct.page, ptr %call.i, i32 1, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %compound_nr.i.i, align 4
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %if.end.i.i, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge
  %retval.0.i.i = phi i32 [ %22, %if.end.i.i ], [ 1, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge ]
  %call42 = tail call zeroext i1 @folio_redirty_for_writepage(ptr noundef %wbc, ptr noundef nonnull %call.i) #9
  tail call void @folio_end_writeback(ptr noundef nonnull %call.i) #9
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %23 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i.i = icmp eq i32 %24, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i83, label %do.end5.i.i.i, !prof !283

if.then.i.i.i83:                                  ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.70) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !288
  unreachable

do.end5.i.i.i:                                    ; preds = %folio_nr_pages.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !289
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !290
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_redirty_pages, %if.then.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !292

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef nonnull %call.i, i32 noundef -1, i32 noundef %conv.i.i.i.i) #9
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i, label %folio_put_testzero.exit.i.do.cond43_crit_edge

folio_put_testzero.exit.i.do.cond43_crit_edge:    ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond43

if.then.i:                                        ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef nonnull %call.i) #9
  br label %do.cond43

do.cond43:                                        ; preds = %if.then.i, %folio_put_testzero.exit.i.do.cond43_crit_edge, %do.end34.do.cond43_crit_edge
  %call40.pn = phi i32 [ 1, %do.end34.do.cond43_crit_edge ], [ %retval.0.i.i, %folio_put_testzero.exit.i.do.cond43_crit_edge ], [ %retval.0.i.i, %if.then.i ]
  %next.0 = add i32 %call40.pn, %index.0
  %cmp.not = icmp ugt i32 %next.0, %conv2
  br i1 %cmp.not, label %do.body46, label %do.cond43.do.body12_crit_edge

do.cond43.do.body12_crit_edge:                    ; preds = %do.cond43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12

do.body46:                                        ; preds = %do.cond43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %26 = load i32, ptr @afs_debug, align 4
  %and47 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.body46.do.end67_crit_edge, label %do.end58, !prof !281

do.body46.do.end67_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

do.end58:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  %27 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i84 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i84 to ptr
  %task61 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task61, align 8
  %comm62 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 101
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %comm62, ptr noundef nonnull @.str.107) #12
  br label %do.end67

do.end67:                                         ; preds = %do.end58, %do.body46.do.end67_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_file_error(ptr noundef %vnode, i32 noundef %error) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_file_error, i32 0, i32 1), ptr blockaddress(@trace_afs_file_error, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !292

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !270) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !281

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  %call42 = tail call i32 @__traceiter_afs_file_error(ptr noundef null, ptr noundef %vnode, i32 noundef %error, i32 noundef 8) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  %13 = tail call i32 @llvm.read_register.i32(metadata !270) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !270) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !281

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !295
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_file_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_file_error, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_afs_file_error.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_afs_file_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 1217, ptr noundef nonnull @.str.67) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !296
  %31 = tail call i32 @llvm.read_register.i32(metadata !270) #9
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_kill_pages(ptr noundef %mapping, i64 noundef %start, i64 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i64 %start, 4096
  %conv = trunc i64 %div to i32
  %add = add i64 %start, -1
  %sub = add i64 %add, %len
  %div1 = sdiv i64 %sub, 4096
  %conv2 = trunc i64 %div1 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body12.preheader_crit_edge, label %do.end, !prof !281

entry.do.body12.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %fid, align 8
  %vnode8 = getelementptr inbounds %struct.afs_vnode, ptr %2, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %vnode8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %vnode8, align 8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %comm, ptr noundef nonnull @.str.113, i64 noundef %8, i64 noundef %10, i64 noundef %len, i64 noundef %start) #12
  br label %do.body12.preheader

do.body12.preheader:                              ; preds = %do.end, %entry.do.body12.preheader_crit_edge
  br label %do.body12

do.body12:                                        ; preds = %do.cond42.do.body12_crit_edge, %do.body12.preheader
  %index.0 = phi i32 [ %next.0, %do.cond42.do.body12_crit_edge ], [ %conv, %do.body12.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %11 = load i32, ptr @afs_debug, align 4
  %and14 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body12.do.end34_crit_edge, label %do.end25, !prof !281

do.body12.do.end34_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

do.end25:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %12 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i84 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i84 to ptr
  %task28 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task28, align 8
  %comm29 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %comm29, i32 noundef %index.0, i32 noundef %conv2) #12
  br label %do.end34

do.end34:                                         ; preds = %do.end25, %do.body12.do.end34_crit_edge
  %call.i = tail call ptr @__filemap_get_folio(ptr noundef %mapping, i32 noundef %index.0, i32 noundef 0, i32 noundef 0) #9
  %tobool36.not = icmp eq ptr %call.i, null
  br i1 %tobool36.not, label %if.then37, label %if.end39

if.then37:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  %add38 = add i32 %index.0, 1
  br label %do.cond42

if.end39:                                         ; preds = %do.end34
  %index.i = getelementptr inbounds %struct.anon.148, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.i.not.i.i.i.i = icmp eq i32 %19, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !283

if.then.i.i.i.i:                                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.65) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !284
  unreachable

PageHead.exit.i.i.i:                              ; preds = %if.end39
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %call.i, align 4
  %22 = and i32 %21, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.folio_next_index.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_next_index.exit_crit_edge: ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_next_index.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %compound_nr.i.i.i = getelementptr %struct.page, ptr %call.i, i32 1, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %compound_nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %compound_nr.i.i.i, align 4
  br label %folio_next_index.exit

folio_next_index.exit:                            ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_next_index.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %24, %if.end.i.i.i ], [ 1, %PageHead.exit.i.i.i.folio_next_index.exit_crit_edge ]
  %add.i = add i32 %retval.0.i.i.i, %17
  %25 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_clear_uptodate.exit, label %if.then.i.i, !prof !281

if.then.i.i:                                      ; preds = %folio_next_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.63) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_clear_uptodate.exit:                        ; preds = %folio_next_index.exit
  tail call void @_clear_bit(i32 noundef 2, ptr noundef nonnull %call.i) #9
  tail call void @folio_end_writeback(ptr noundef nonnull %call.i) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.69, i32 noundef 777) #9
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %25, align 4
  %and.i.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i85 = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i85, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !281

if.then.i.i.i:                                    ; preds = %folio_clear_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.63) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_flags.exit.i.i:                             ; preds = %folio_clear_uptodate.exit
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #9
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %call.i, align 4
  %and.i.i4.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #9
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 1, ptr nonnull elementtype(i32) %call.i) #9, !srcloc !286
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !287
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.folio_lock.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i.folio_lock.exit_crit_edge:   ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_lock.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef nonnull %call.i) #9
  br label %folio_lock.exit

folio_lock.exit:                                  ; preds = %if.then.i, %folio_trylock.exit.i.folio_lock.exit_crit_edge
  %call41 = tail call i32 @generic_error_remove_page(ptr noundef %mapping, ptr noundef nonnull %call.i) #9
  tail call void @folio_unlock(ptr noundef nonnull %call.i) #9
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %33 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i.i = icmp eq i32 %34, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i86, label %do.end5.i.i.i, !prof !283

if.then.i.i.i86:                                  ; preds = %folio_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.70) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !288
  unreachable

do.end5.i.i.i:                                    ; preds = %folio_lock.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !289
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !290
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_kill_pages, %if.then.i.i.i.i87)) #9
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i87], !srcloc !292

if.then.i.i.i.i87:                                ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef nonnull %call.i, i32 noundef -1, i32 noundef %conv.i.i.i.i) #9
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i87, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i88, label %folio_put_testzero.exit.i.do.cond42_crit_edge

folio_put_testzero.exit.i.do.cond42_crit_edge:    ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond42

if.then.i88:                                      ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef nonnull %call.i) #9
  br label %do.cond42

do.cond42:                                        ; preds = %if.then.i88, %folio_put_testzero.exit.i.do.cond42_crit_edge, %if.then37
  %next.0 = phi i32 [ %add38, %if.then37 ], [ %add.i, %folio_put_testzero.exit.i.do.cond42_crit_edge ], [ %add.i, %if.then.i88 ]
  %cmp.not = icmp ugt i32 %next.0, %conv2
  br i1 %cmp.not, label %do.body45, label %do.cond42.do.body12_crit_edge

do.cond42.do.body12_crit_edge:                    ; preds = %do.cond42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12

do.body45:                                        ; preds = %do.cond42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %36 = load i32, ptr @afs_debug, align 4
  %and46 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.body45.do.end66_crit_edge, label %do.end57, !prof !281

do.body45.do.end66_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end66

do.end57:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  %37 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i89 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i89 to ptr
  %task60 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task60, align 8
  %comm61 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 101
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %comm61, ptr noundef nonnull @.str.113) #12
  br label %do.end66

do.end66:                                         ; preds = %do.end57, %do.body45.do.end66_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @folio_start_fscache(ptr noundef %folio) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private_2.exit, label %if.then.i.i, !prof !281

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.63) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_test_private_2.exit:                        ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %do.end5, label %if.then, !prof !281

if.then:                                          ; preds = %folio_test_private_2.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.87) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/netfs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 41, 0\0A.popsection", ""() #9, !srcloc !335
  unreachable

do.end5:                                          ; preds = %folio_test_private_2.exit
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %_refcount.i.i.i, align 4
  %add.i = add i32 %7, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 128
  br i1 %cmp.i, label %if.then.i, label %do.end5.i, !prof !283

if.then.i:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.72) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !309
  unreachable

do.end5.i:                                        ; preds = %do.end5
  %call.i.i.i.i9.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i, ptr %_refcount.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i) #9, !srcloc !307
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@folio_start_fscache, %if.then.i.i.i)) #9
          to label %folio_get.exit [label %if.then.i.i.i], !srcloc !292

if.then.i.i.i:                                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %folio, i32 noundef 1) #9
  br label %folio_get.exit

folio_get.exit:                                   ; preds = %if.then.i.i.i, %do.end5.i
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %0, align 4
  %and.i.i.i9 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i9)
  %tobool.not.i.i10 = icmp eq i32 %and.i.i.i9, 0
  br i1 %tobool.not.i.i10, label %folio_set_private_2.exit, label %if.then.i.i11, !prof !281

if.then.i.i11:                                    ; preds = %folio_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.63) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !282
  unreachable

folio_set_private_2.exit:                         ; preds = %folio_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 14, ptr noundef %folio) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xas_next_entry(ptr noundef %xas, i32 noundef %max) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %xa_node = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %0 = ptrtoint ptr %xa_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xa_node, align 4
  %2 = ptrtoint ptr %1 to i32
  %and.i = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %tobool1.not.i = icmp eq ptr %1, null
  %spec.select.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %spec.select.i, label %entry.cleanup.sink.split_crit_edge, label %lor.lhs.false, !prof !283

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.lhs.false.cleanup.sink.split_crit_edge, !prof !281

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

lor.rhs:                                          ; preds = %lor.lhs.false
  %xa_offset = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4
  %5 = ptrtoint ptr %xa_offset to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %xa_offset, align 2
  %conv2 = zext i8 %6 to i32
  %xa_index = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %7 = ptrtoint ptr %xa_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xa_index, align 4
  %and = and i32 %8, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv2)
  %cmp.not = icmp eq i32 %and, %conv2
  br i1 %cmp.not, label %lor.rhs.do.body_crit_edge, label %lor.rhs.cleanup.sink.split_crit_edge, !prof !281

lor.rhs.cleanup.sink.split_crit_edge:             ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

lor.rhs.do.body_crit_edge:                        ; preds = %lor.rhs
  br label %do.body

do.body:                                          ; preds = %if.end44.do.body_crit_edge, %lor.rhs.do.body_crit_edge
  %9 = ptrtoint ptr %xa_index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xa_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %max)
  %cmp8.not = icmp ult i32 %10, %max
  br i1 %cmp8.not, label %if.end18, label %do.body.cleanup.sink.split_crit_edge, !prof !281

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end18:                                         ; preds = %do.body
  %11 = ptrtoint ptr %xa_offset to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %xa_offset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %12)
  %cmp21 = icmp eq i8 %12, 63
  br i1 %cmp21, label %if.end18.cleanup.sink.split_crit_edge, label %if.end31, !prof !283

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end31:                                         ; preds = %if.end18
  %conv20 = zext i8 %12 to i32
  %13 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xas, align 4
  %add = add nuw nsw i32 %conv20, 1
  %arrayidx.i = getelementptr %struct.xa_node, ptr %1, i32 0, i32 7, i32 %add
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arrayidx.i, align 4
  %dep_map.i = getelementptr inbounds %struct.anon.3, ptr %14, i32 0, i32 1
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i73 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i73, label %lor.lhs.false.i, label %if.end31.xa_entry.exit_crit_edge

if.end31.xa_entry.exit_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %xa_entry.exit

lor.lhs.false.i:                                  ; preds = %if.end31
  %call4.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.xa_entry.exit_crit_edge

lor.lhs.false.i.xa_entry.exit_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xa_entry.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call6.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.xa_entry.exit_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.xa_entry.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xa_entry.exit

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %.b13.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i, label %land.lhs.true8.i.xa_entry.exit_crit_edge, label %if.then.i

land.lhs.true8.i.xa_entry.exit_crit_edge:         ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xa_entry.exit

if.then.i:                                        ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @xa_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.91, i32 noundef 1183, ptr noundef nonnull @.str.67) #9
  br label %xa_entry.exit

xa_entry.exit:                                    ; preds = %if.then.i, %land.lhs.true8.i.xa_entry.exit_crit_edge, %land.lhs.true.i.xa_entry.exit_crit_edge, %lor.lhs.false.i.xa_entry.exit_crit_edge, %if.end31.xa_entry.exit_crit_edge
  %17 = ptrtoint ptr %16 to i32
  %and.i74 = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i74)
  %cmp.i = icmp eq i32 %and.i74, 2
  br i1 %cmp.i, label %xa_entry.exit.cleanup.sink.split_crit_edge, label %if.end44, !prof !283

xa_entry.exit.cleanup.sink.split_crit_edge:       ; preds = %xa_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end44:                                         ; preds = %xa_entry.exit
  %18 = ptrtoint ptr %xa_offset to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %xa_offset, align 2
  %inc = add i8 %19, 1
  store i8 %inc, ptr %xa_offset, align 2
  %20 = ptrtoint ptr %xa_index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xa_index, align 4
  %inc47 = add i32 %21, 1
  store i32 %inc47, ptr %xa_index, align 4
  %tobool48.not = icmp eq ptr %16, null
  br i1 %tobool48.not, label %if.end44.do.body_crit_edge, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end44.do.body_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

cleanup.sink.split:                               ; preds = %xa_entry.exit.cleanup.sink.split_crit_edge, %if.end18.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge, %lor.rhs.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %call43 = tail call ptr @xas_find(ptr noundef %xas, i32 noundef %max) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end44.cleanup_crit_edge
  %retval.0 = phi ptr [ %call43, %cleanup.sink.split ], [ %16, %if.end44.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_unless(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_write_to_cache_done(ptr noundef %priv, i32 noundef %transferred_or_error, i1 noundef zeroext %was_async) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %transferred_or_error)
  %cmp = icmp ugt i32 %transferred_or_error, -4096
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge, !prof !283

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -105, i32 %transferred_or_error)
  %cmp2.not = icmp eq i32 %transferred_or_error, -105
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @afs_invalidate_cache(ptr noundef %priv)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_write_to_cache(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_invalidate_cache(ptr noundef %vnode) unnamed_addr #4 align 64 {
entry:
  %aux = alloca %struct.afs_vnode_cache_aux, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %aux) #9
  %data_version.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %data_version.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data_version.i, align 8
  %2 = ptrtoint ptr %aux to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %aux, align 8
  %cache.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 5
  %3 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cache.i, align 8
  %call1 = tail call fastcc i64 @i_size_read(ptr noundef %vnode)
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.fscache_invalidate.exit_crit_edge, label %land.lhs.true.i

entry.fscache_invalidate.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fscache_invalidate.exit

land.lhs.true.i:                                  ; preds = %entry
  %flags1.i = getelementptr inbounds %struct.fscache_cookie, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags1.i, align 4
  %7 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %if.then.i, label %land.lhs.true.i.fscache_invalidate.exit_crit_edge

land.lhs.true.i.fscache_invalidate.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fscache_invalidate.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__fscache_invalidate(ptr noundef nonnull %4, ptr noundef nonnull %aux, i64 noundef %call1, i32 noundef 0) #9
  br label %fscache_invalidate.exit

fscache_invalidate.exit:                          ; preds = %if.then.i, %land.lhs.true.i.fscache_invalidate.exit_crit_edge, %entry.fscache_invalidate.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %aux) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_invalidate(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_clear_page_bits(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_end_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_redirty_for_writepage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__filemap_get_folio(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_file_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_error_remove_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_get_pages_range_tag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_wait_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_wait_private_2_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_get_writeback_key(ptr noundef %vnode, ptr nocapture noundef %_wbk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wb_lock = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %wb_lock) #9
  %0 = ptrtoint ptr %_wbk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_wbk, align 4
  %tobool.not = icmp eq ptr %1, null
  %vnode_link = getelementptr inbounds %struct.afs_wb_key, ptr %1, i32 0, i32 2
  %wb_keys = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 14
  %p.0.in = select i1 %tobool.not, ptr %wb_keys, ptr %vnode_link
  %2 = ptrtoint ptr %p.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %p.18 = load ptr, ptr %p.0.in, align 4
  %cmp.not9 = icmp eq ptr %p.18, %wb_keys
  br i1 %cmp.not9, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end42.while.body_crit_edge, %entry.while.body_crit_edge
  %p.111 = phi ptr [ %p.1, %if.end42.while.body_crit_edge ], [ %p.18, %entry.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %3 = load i32, ptr @afs_debug, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %while.body.do.end13_crit_edge, label %do.end, !prof !281

while.body.do.end13_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

do.end:                                           ; preds = %while.body
  %4 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %key = getelementptr i8, ptr %p.111, i32 -4
  %8 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %key, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.end.key_serial.exit_crit_edge, label %cond.true.i

do.end.key_serial.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_serial.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %serial.i = getelementptr inbounds %struct.key, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %do.end.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %11, %cond.true.i ], [ 0, %do.end.key_serial.exit_crit_edge ]
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %comm, i32 noundef %cond.i) #12
  br label %do.end13

do.end13:                                         ; preds = %key_serial.exit, %while.body.do.end13_crit_edge
  %key14 = getelementptr i8, ptr %p.111, i32 -4
  %12 = ptrtoint ptr %key14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %key14, align 4
  %call15 = tail call i32 @key_validate(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end42

if.then17:                                        ; preds = %do.end13
  %key14.le = getelementptr i8, ptr %p.111, i32 -4
  %add.ptr.le = getelementptr i8, ptr %p.111, i32 -8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.le, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %add.ptr.le, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.le, ptr %add.ptr.le, i32 1, ptr elementtype(i32) %add.ptr.le) #9, !srcloc !324
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then17.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !283

if.then17.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then17
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !281

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then17.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then17.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr.le, i32 noundef %.sink.i.i.i) #9
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %16 = load i32, ptr @afs_debug, align 4
  %and19 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %refcount_inc.exit.while.end_crit_edge, label %do.end30, !prof !281

refcount_inc.exit.while.end_crit_edge:            ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end30:                                         ; preds = %refcount_inc.exit
  %17 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i1 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i1 to ptr
  %task33 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task33, align 8
  %comm34 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 101
  %21 = ptrtoint ptr %key14.le to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %key14.le, align 4
  %tobool.not.i2 = icmp eq ptr %22, null
  br i1 %tobool.not.i2, label %do.end30.key_serial.exit6_crit_edge, label %cond.true.i4

do.end30.key_serial.exit6_crit_edge:              ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_serial.exit6

cond.true.i4:                                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  %serial.i3 = getelementptr inbounds %struct.key, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %serial.i3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %serial.i3, align 4
  br label %key_serial.exit6

key_serial.exit6:                                 ; preds = %cond.true.i4, %do.end30.key_serial.exit6_crit_edge
  %cond.i5 = phi i32 [ %24, %cond.true.i4 ], [ 0, %do.end30.key_serial.exit6_crit_edge ]
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %comm34, i32 noundef %cond.i5) #12
  br label %while.end

if.end42:                                         ; preds = %do.end13
  %25 = ptrtoint ptr %p.111 to i32
  call void @__asan_load4_noabort(i32 %25)
  %p.1 = load ptr, ptr %p.111, align 4
  %cmp.not = icmp eq ptr %p.1, %wb_keys
  br i1 %cmp.not, label %if.end42.while.end_crit_edge, label %if.end42.while.body_crit_edge

if.end42.while.body_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end42.while.end_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end42.while.end_crit_edge, %key_serial.exit6, %refcount_inc.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %wbk.1 = phi ptr [ %add.ptr.le, %key_serial.exit6 ], [ %add.ptr.le, %refcount_inc.exit.while.end_crit_edge ], [ null, %entry.while.end_crit_edge ], [ null, %if.end42.while.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %wb_lock) #9
  %26 = ptrtoint ptr %_wbk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_wbk, align 4
  %tobool48.not = icmp eq ptr %27, null
  br i1 %tobool48.not, label %while.end.if.end50_crit_edge, label %if.then49

while.end.if.end50_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then49:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @afs_put_wb_key(ptr noundef nonnull %27) #9
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %while.end.if.end50_crit_edge
  %28 = ptrtoint ptr %_wbk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %wbk.1, ptr %_wbk, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_alloc_operation(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @afs_begin_vnode_operation(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_wait_for_operation(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_put_operation(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_validate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fs_store_data(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @yfs_fs_store_data(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_store_data_success(ptr noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 8
  %ctime = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 11
  %mtime_client = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 2, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %ctime, ptr %mtime_client, i32 16)
  tail call void @afs_vnode_commit_status(ptr noundef %op, ptr noundef %file) #9
  %error = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %3 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %error, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp = icmp eq i16 %4, 0
  br i1 %cmp, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then:                                          ; preds = %entry
  %laundering = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 8
  %5 = ptrtoint ptr %laundering to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %laundering, align 8, !range !336
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then7, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %pos = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %pos, align 8
  %size = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %size, align 8
  %conv8 = trunc i64 %10 to i32
  tail call fastcc void @afs_pages_written_back(ptr noundef %1, i64 noundef %8, i32 noundef %conv8)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %call = tail call fastcc ptr @afs_v2net(ptr noundef %1)
  %n_stores = getelementptr inbounds %struct.afs_net, ptr %call, i32 0, i32 43
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_stores, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %n_stores, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_stores, ptr %n_stores, i32 1, ptr elementtype(i32) %n_stores) #9, !srcloc !307
  %size9 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %size9 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %size9, align 8
  %conv10 = trunc i64 %13 to i32
  %call11 = tail call fastcc ptr @afs_v2net(ptr noundef %1)
  %n_store_bytes = getelementptr inbounds %struct.afs_net, ptr %call11, i32 0, i32 44
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_store_bytes, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %n_store_bytes, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_store_bytes, ptr %n_store_bytes, i32 %conv10, ptr elementtype(i32) %n_store_bytes) #9, !srcloc !307
  br label %if.end12

if.end12:                                         ; preds = %if.end, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_vnode_commit_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @afs_v2net(ptr nocapture noundef readonly %vnode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %7 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !325
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i.i.i.i, label %entry.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

entry.rcu_read_lock.exit.i.i.i.i_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %entry
  %call1.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true2.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b4.i.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i.i, label %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.89, i32 noundef 696, ptr noundef nonnull @.str.90) #9
  br label %rcu_read_lock.exit.i.i.i.i

rcu_read_lock.exit.i.i.i.i:                       ; preds = %if.then.i.i.i.i.i, %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i.i.i_crit_edge
  %gen.i.i.i.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 43
  %11 = ptrtoint ptr %gen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %gen.i.i.i.i, align 128
  %call.i.i.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %rcu_read_lock.exit.i.i.i.i.do.end7.i.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.i.do.end7.i.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %rcu_read_lock.exit.i.i.i.i
  %call2.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %land.lhs.true.i.i.i.i.do.end7.i.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i

land.lhs.true.i.i.i.i.do.end7.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i.i.i.i

land.lhs.true4.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b9.i.i.i.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i.i.i.i, label %land.lhs.true4.i.i.i.i.do.end7.i.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true4.i.i.i.i.do.end7.i.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.147, i32 noundef 45, ptr noundef nonnull @.str.67) #9
  br label %do.end7.i.i.i.i

do.end7.i.i.i.i:                                  ; preds = %if.then.i.i.i.i, %land.lhs.true4.i.i.i.i.do.end7.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.do.end7.i.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.i.do.end7.i.i.i.i_crit_edge
  %arrayidx.i.i.i.i = getelementptr [0 x ptr], ptr %12, i32 0, i32 %6
  %13 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i10.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i10.i.i.i.i, label %do.end7.i.i.i.i.afs_i2net.exit_crit_edge, label %land.lhs.true.i13.i.i.i.i

do.end7.i.i.i.i.afs_i2net.exit_crit_edge:         ; preds = %do.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_i2net.exit

land.lhs.true.i13.i.i.i.i:                        ; preds = %do.end7.i.i.i.i
  %call1.i11.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i.i.i)
  %tobool.not.i12.i.i.i.i = icmp eq i32 %call1.i11.i.i.i.i, 0
  br i1 %tobool.not.i12.i.i.i.i, label %land.lhs.true.i13.i.i.i.i.afs_i2net.exit_crit_edge, label %land.lhs.true2.i15.i.i.i.i

land.lhs.true.i13.i.i.i.i.afs_i2net.exit_crit_edge: ; preds = %land.lhs.true.i13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_i2net.exit

land.lhs.true2.i15.i.i.i.i:                       ; preds = %land.lhs.true.i13.i.i.i.i
  %.b4.i14.i.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i.i.i, label %land.lhs.true2.i15.i.i.i.i.afs_i2net.exit_crit_edge, label %if.then.i16.i.i.i.i

land.lhs.true2.i15.i.i.i.i.afs_i2net.exit_crit_edge: ; preds = %land.lhs.true2.i15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_i2net.exit

if.then.i16.i.i.i.i:                              ; preds = %land.lhs.true2.i15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.89, i32 noundef 724, ptr noundef nonnull @.str.92) #9
  br label %afs_i2net.exit

afs_i2net.exit:                                   ; preds = %if.then.i16.i.i.i.i, %land.lhs.true2.i15.i.i.i.i.afs_i2net.exit_crit_edge, %land.lhs.true.i13.i.i.i.i.afs_i2net.exit_crit_edge, %do.end7.i.i.i.i.afs_i2net.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !329
  %15 = tail call i32 @llvm.read_register.i32(metadata !270) #9
  %and.i.i.i.i.i17.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i17.i.i.i.i to ptr
  %preempt_count.i.i.i.i18.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i18.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret ptr %14
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !65, !66, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !96, !97, !99, !100, !101, !102, !104, !105, !107, !108, !110, !112, !114, !116, !117, !118, !119, !121, !122, !124, !126, !128, !129, !131, !133, !134, !135, !136, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !156, !158, !159, !161, !162, !163, !165, !166, !168, !170, !171, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !187, !188, !190, !191, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !220, !221, !222, !223, !225, !226, !227, !229, !230, !232, !233, !234, !236, !238, !239, !240, !242, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !258, !259, !260, !261, !263, !264, !265, !267, !269}
!llvm.named.register.sp = !{!270}
!llvm.module.flags = !{!271, !272, !273, !274, !275, !276, !277, !278}
!llvm.ident = !{!279}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/afs/write.c", i32 55, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @afs_write_begin._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @afs_write_begin._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/afs/write.c", i32 79, i32 3}
!8 = !{ptr @afs_write_begin._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @afs_write_begin._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @afs_write_begin._entry.6, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @afs_write_begin._entry_ptr.8, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !7, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @afs_write_begin._entry.9, !7, !"_entry", i1 false, i1 false}
!15 = !{ptr @afs_write_begin._entry_ptr.11, !7, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.13, !7, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @afs_write_begin._entry.12, !7, !"_entry", i1 false, i1 false}
!18 = !{ptr @afs_write_begin._entry_ptr.14, !7, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.15, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/afs/write.c", i32 82, i32 33}
!21 = !{ptr @afs_write_begin.___tp_str, !20, !"___tp_str", i1 false, i1 false}
!22 = !{ptr @.str.17, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/afs/write.c", i32 95, i32 2}
!24 = !{ptr @afs_write_begin._entry.16, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @afs_write_begin._entry_ptr.18, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.20, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/afs/write.c", i32 102, i32 2}
!28 = !{ptr @afs_write_begin._entry.19, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @afs_write_begin._entry_ptr.21, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.23, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/afs/write.c", i32 114, i32 2}
!32 = !{ptr @afs_write_begin._entry.22, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @afs_write_begin._entry_ptr.24, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.25, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/afs/write.c", i32 132, i32 2}
!36 = !{ptr @.str.26, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @afs_write_end._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @afs_write_end._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.27, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/afs/write.c", i32 169, i32 32}
!41 = !{ptr @afs_write_end.___tp_str, !40, !"___tp_str", i1 false, i1 false}
!42 = !{ptr @.str.29, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/afs/write.c", i32 173, i32 32}
!44 = !{ptr @afs_write_end.___tp_str.28, !43, !"___tp_str", i1 false, i1 false}
!45 = !{ptr @.str.31, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/afs/write.c", i32 177, i32 3}
!47 = !{ptr @afs_write_end._entry.30, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @afs_write_end._entry_ptr.32, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.33, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/afs/write.c", i32 678, i32 2}
!51 = !{ptr @.str.34, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @afs_writepage._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @afs_writepage._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.36, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/afs/write.c", i32 688, i32 3}
!56 = !{ptr @afs_writepage._entry.35, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @afs_writepage._entry_ptr.37, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @afs_writepage._entry.38, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../fs/afs/write.c", i32 692, i32 2}
!60 = !{ptr @afs_writepage._entry_ptr.39, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.40, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/afs/write.c", i32 798, i32 2}
!63 = !{ptr @.str.41, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @afs_writepages._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @afs_writepages._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @afs_writepages._entry.42, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../fs/afs/write.c", i32 832, i32 2}
!68 = !{ptr @afs_writepages._entry_ptr.43, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.44, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/afs/write.c", i32 846, i32 2}
!71 = !{ptr @.str.45, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @afs_file_write._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @afs_file_write._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.47, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/afs/write.c", i32 850, i32 3}
!76 = !{ptr @afs_file_write._entry.46, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @afs_file_write._entry_ptr.48, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @afs_file_write._entry.49, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../fs/afs/write.c", i32 864, i32 2}
!80 = !{ptr @afs_file_write._entry_ptr.50, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.51, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/afs/write.c", i32 879, i32 2}
!83 = !{ptr @.str.52, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @afs_fsync._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @afs_fsync._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.53, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/afs/write.c", i32 904, i32 2}
!88 = !{ptr @.str.54, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @afs_page_mkwrite._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @afs_page_mkwrite._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.55, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/afs/write.c", i32 938, i32 32}
!93 = !{ptr @afs_page_mkwrite.___tp_str, !92, !"___tp_str", i1 false, i1 false}
!94 = !{ptr @.str.57, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/afs/write.c", i32 941, i32 32}
!96 = !{ptr @afs_page_mkwrite.___tp_str.56, !95, !"___tp_str", i1 false, i1 false}
!97 = !{ptr @.str.58, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/afs/write.c", i32 992, i32 2}
!99 = !{ptr @.str.59, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @afs_launder_page._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @afs_launder_page._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.60, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/afs/write.c", i32 1008, i32 32}
!104 = !{ptr @afs_launder_page.___tp_str, !103, !"___tp_str", i1 false, i1 false}
!105 = !{ptr @.str.62, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/afs/write.c", i32 1012, i32 31}
!107 = !{ptr @afs_launder_page.___tp_str.61, !106, !"___tp_str", i1 false, i1 false}
!108 = !{ptr @.str.63, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!110 = distinct !{null, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!112 = !{ptr @.str.65, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!114 = distinct !{null, !115, !"__already_done", i1 false, i1 false}
!115 = !{!"../include/trace/events/afs.h", i32 1019, i32 1}
!116 = !{ptr @.str.66, !115, !"<string literal>", i1 false, i1 false}
!117 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!118 = !{ptr @.str.67, !115, !"<string literal>", i1 false, i1 false}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!121 = !{ptr @.str.68, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.69, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../include/linux/pagemap.h", i32 797, i32 2}
!124 = !{ptr @.str.70, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../include/linux/mm.h", i32 717, i32 2}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!128 = !{ptr @.str.71, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.72, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!131 = !{ptr @.str.73, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/afs/write.c", i32 564, i32 2}
!133 = !{ptr @.str.74, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @afs_write_back_from_locked_folio._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @afs_write_back_from_locked_folio._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.75, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/afs/write.c", i32 580, i32 31}
!138 = !{ptr @afs_write_back_from_locked_folio.___tp_str, !137, !"___tp_str", i1 false, i1 false}
!139 = !{ptr @.str.77, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/afs/write.c", i32 607, i32 3}
!141 = !{ptr @afs_write_back_from_locked_folio._entry.76, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @afs_write_back_from_locked_folio._entry_ptr.78, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.80, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/afs/write.c", i32 617, i32 3}
!145 = !{ptr @afs_write_back_from_locked_folio._entry.79, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @afs_write_back_from_locked_folio._entry_ptr.81, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.83, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/afs/write.c", i32 633, i32 3}
!149 = !{ptr @afs_write_back_from_locked_folio._entry.82, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @afs_write_back_from_locked_folio._entry_ptr.84, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @afs_write_back_from_locked_folio._entry.85, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../fs/afs/write.c", i32 664, i32 2}
!153 = !{ptr @afs_write_back_from_locked_folio._entry_ptr.86, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.87, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../include/linux/netfs.h", i32 41, i32 2}
!156 = !{ptr @.str.88, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/afs/write.c", i32 526, i32 33}
!158 = !{ptr @afs_extend_writeback.___tp_str, !157, !"___tp_str", i1 false, i1 false}
!159 = distinct !{null, !160, !"__warned", i1 false, i1 false}
!160 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!161 = !{ptr @.str.89, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.90, !160, !"<string literal>", i1 false, i1 false}
!163 = distinct !{null, !164, !"__warned", i1 false, i1 false}
!164 = !{!"../include/linux/xarray.h", i32 1166, i32 9}
!165 = !{ptr @.str.91, !164, !"<string literal>", i1 false, i1 false}
!166 = distinct !{null, !167, !"__warned", i1 false, i1 false}
!167 = !{!"../include/linux/xarray.h", i32 1182, i32 9}
!168 = distinct !{null, !169, !"__warned", i1 false, i1 false}
!169 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!170 = !{ptr @.str.92, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.93, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/afs/write.c", i32 266, i32 2}
!173 = !{ptr @.str.94, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @afs_pages_written_back._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @afs_pages_written_back._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.96, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/afs/write.c", i32 274, i32 4}
!178 = !{ptr @afs_pages_written_back._entry.95, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @afs_pages_written_back._entry_ptr.97, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @afs_pages_written_back._entry.98, !181, !"_entry", i1 false, i1 false}
!181 = !{!"../fs/afs/write.c", i32 276, i32 4}
!182 = !{ptr @afs_pages_written_back._entry_ptr.99, !181, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @afs_pages_written_back._entry.100, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @afs_pages_written_back._entry_ptr.101, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.102, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../fs/afs/write.c", i32 279, i32 32}
!187 = !{ptr @afs_pages_written_back.___tp_str, !186, !"___tp_str", i1 false, i1 false}
!188 = !{ptr @.str.104, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/afs/write.c", i32 287, i32 2}
!190 = !{ptr @afs_pages_written_back._entry.103, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @afs_pages_written_back._entry_ptr.105, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.106, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/afs/write.c", i32 234, i32 2}
!194 = !{ptr @.str.107, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @afs_redirty_pages._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @afs_redirty_pages._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.109, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/afs/write.c", i32 238, i32 3}
!199 = !{ptr @afs_redirty_pages._entry.108, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @afs_redirty_pages._entry_ptr.110, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @afs_redirty_pages._entry.111, !202, !"_entry", i1 false, i1 false}
!202 = !{!"../fs/afs/write.c", i32 252, i32 2}
!203 = !{ptr @afs_redirty_pages._entry_ptr.112, !202, !"_entry_ptr", i1 false, i1 false}
!204 = distinct !{null, !205, !"__already_done", i1 false, i1 false}
!205 = !{!"../include/trace/events/afs.h", i32 1196, i32 1}
!206 = distinct !{null, !205, !"__warned", i1 false, i1 false}
!207 = !{ptr @.str.113, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/afs/write.c", i32 196, i32 2}
!209 = !{ptr @afs_kill_pages._entry, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @afs_kill_pages._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.115, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/afs/write.c", i32 200, i32 3}
!213 = !{ptr @afs_kill_pages._entry.114, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @afs_kill_pages._entry_ptr.116, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @afs_kill_pages._entry.117, !216, !"_entry", i1 false, i1 false}
!216 = !{!"../fs/afs/write.c", i32 219, i32 2}
!217 = !{ptr @afs_kill_pages._entry_ptr.118, !216, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.119, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../fs/afs/write.c", i32 708, i32 2}
!220 = !{ptr @.str.120, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @afs_writepages_region._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @afs_writepages_region._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.122, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/afs/write.c", i32 721, i32 3}
!225 = !{ptr @afs_writepages_region._entry.121, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @afs_writepages_region._entry_ptr.123, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @afs_writepages_region._entry.124, !228, !"_entry", i1 false, i1 false}
!228 = !{!"../fs/afs/write.c", i32 774, i32 4}
!229 = !{ptr @afs_writepages_region._entry_ptr.125, !228, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.127, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../fs/afs/write.c", i32 784, i32 2}
!232 = !{ptr @afs_writepages_region._entry.126, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @afs_writepages_region._entry_ptr.128, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.129, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!236 = distinct !{null, !237, !"__warned", i1 false, i1 false}
!237 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!238 = !{ptr @.str.130, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.131, !237, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.132, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../fs/afs/write.c", i32 362, i32 2}
!242 = !{ptr @.str.133, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @afs_store_data._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @afs_store_data._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.135, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../fs/afs/write.c", i32 371, i32 3}
!247 = !{ptr @afs_store_data._entry.134, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @afs_store_data._entry_ptr.136, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.138, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../fs/afs/write.c", i32 406, i32 3}
!251 = !{ptr @afs_store_data._entry.137, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @afs_store_data._entry_ptr.139, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @afs_store_data._entry.140, !254, !"_entry", i1 false, i1 false}
!254 = !{!"../fs/afs/write.c", i32 418, i32 2}
!255 = !{ptr @afs_store_data._entry_ptr.141, !254, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.142, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../fs/afs/write.c", i32 310, i32 3}
!258 = !{ptr @.str.143, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @afs_get_writeback_key._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @afs_get_writeback_key._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.145, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../fs/afs/write.c", i32 314, i32 4}
!263 = !{ptr @afs_get_writeback_key._entry.144, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @afs_get_writeback_key._entry_ptr.146, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @afs_store_data_operation, !266, !"afs_store_data_operation", i1 false, i1 false}
!266 = !{!"../fs/afs/write.c", i32 345, i32 39}
!267 = distinct !{null, !268, !"__warned", i1 false, i1 false}
!268 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!269 = !{ptr @.str.147, !268, !"<string literal>", i1 false, i1 false}
!270 = !{!"sp"}
!271 = !{i32 1, !"wchar_size", i32 2}
!272 = !{i32 1, !"min_enum_size", i32 4}
!273 = !{i32 8, !"branch-target-enforcement", i32 0}
!274 = !{i32 8, !"sign-return-address", i32 0}
!275 = !{i32 8, !"sign-return-address-all", i32 0}
!276 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!277 = !{i32 7, !"uwtable", i32 1}
!278 = !{i32 7, !"frame-pointer", i32 2}
!279 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!280 = !{!"auto-init"}
!281 = !{!"branch_weights", i32 2000, i32 1}
!282 = !{i64 2150596767, i64 2150597258, i64 2150596804, i64 2150596860, i64 2150596894, i64 2150596918, i64 2150596959, i64 2150596980, i64 2150597008, i64 2150597042}
!283 = !{!"branch_weights", i32 1, i32 2000}
!284 = !{i64 2151359492, i64 2151359983, i64 2151359529, i64 2151359585, i64 2151359619, i64 2151359643, i64 2151359684, i64 2151359705, i64 2151359733, i64 2151359767}
!285 = !{i64 2157808449, i64 2157808927, i64 2157808486, i64 2157808542, i64 2157808576, i64 2157808600, i64 2157808641, i64 2157808662, i64 2157808690, i64 2157808724}
!286 = !{i64 2148254345, i64 2148254377, i64 2148254406, i64 2148254440, i64 2148254471, i64 2148254494}
!287 = !{i64 2148343426}
!288 = !{i64 2153639090, i64 2153639573, i64 2153639127, i64 2153639183, i64 2153639217, i64 2153639241, i64 2153639282, i64 2153639303, i64 2153639331, i64 2153639365}
!289 = !{i64 2148333939}
!290 = !{i64 2148248672, i64 2148248704, i64 2148248733, i64 2148248767, i64 2148248798, i64 2148248821}
!291 = !{i64 2148334168}
!292 = !{i64 2148727302, i64 2148727307, i64 2148727320, i64 2148727364, i64 2148727398, i64 2148727419}
!293 = !{i64 2157453815}
!294 = !{i64 2157454046}
!295 = !{i64 2149509027}
!296 = !{i64 2149510063}
!297 = !{i64 2151346659}
!298 = !{i64 2151347730}
!299 = !{i64 2150117162}
!300 = !{i64 2152532784}
!301 = !{i64 2150009089}
!302 = !{i64 2150014023}
!303 = !{i64 2150035741}
!304 = !{i64 2150040635}
!305 = !{i64 2150117487}
!306 = !{i64 2152544646}
!307 = !{i64 2148245487, i64 2148245513, i64 2148245542, i64 2148245576, i64 2148245607, i64 2148245630}
!308 = !{i64 2154818729}
!309 = !{i64 2153659002, i64 2153659486, i64 2153659039, i64 2153659095, i64 2153659129, i64 2153659153, i64 2153659194, i64 2153659215, i64 2153659243, i64 2153659277}
!310 = !{i64 637968, i64 638029}
!311 = !{i64 640700}
!312 = !{i64 640985}
!313 = !{i64 2152530853}
!314 = !{i64 2152530695}
!315 = !{i64 2152531023}
!316 = !{i64 2150116837}
!317 = !{i64 2157863892, i64 2157864371, i64 2157863929, i64 2157863985, i64 2157864019, i64 2157864043, i64 2157864084, i64 2157864105, i64 2157864133, i64 2157864167}
!318 = !{i64 2157893000, i64 2157893479, i64 2157893037, i64 2157893093, i64 2157893127, i64 2157893151, i64 2157893192, i64 2157893213, i64 2157893241, i64 2157893275}
!319 = !{i64 2152371164}
!320 = !{i64 2152380014}
!321 = !{i64 2152389968}
!322 = !{i64 2152399463}
!323 = !{i64 2152408940}
!324 = !{i64 2148247017, i64 2148247049, i64 2148247078, i64 2148247112, i64 2148247143, i64 2148247166}
!325 = !{i64 2149500468}
!326 = !{i64 2148244906}
!327 = !{i64 729729, i64 729754, i64 729776, i64 729792, i64 729804, i64 729824, i64 729848, i64 729864, i64 729876}
!328 = !{i64 2148245094}
!329 = !{i64 2149500734}
!330 = !{i64 2157858610, i64 2157859089, i64 2157858647, i64 2157858703, i64 2157858737, i64 2157858761, i64 2157858802, i64 2157858823, i64 2157858851, i64 2157858885}
!331 = !{i64 2157860117, i64 2157860596, i64 2157860154, i64 2157860210, i64 2157860244, i64 2157860268, i64 2157860309, i64 2157860330, i64 2157860358, i64 2157860392}
!332 = !{i64 2157839672, i64 2157840151, i64 2157839709, i64 2157839765, i64 2157839799, i64 2157839823, i64 2157839864, i64 2157839885, i64 2157839913, i64 2157839947}
!333 = !{i64 2157562795}
!334 = !{i64 2157563024}
!335 = !{i64 2154659249, i64 2154659734, i64 2154659286, i64 2154659342, i64 2154659376, i64 2154659400, i64 2154659441, i64 2154659462, i64 2154659490, i64 2154659524}
!336 = !{i8 0, i8 2}
