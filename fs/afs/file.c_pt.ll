; ModuleID = '/llk/IR_all_yes/fs/afs/file.c_pt.bc'
source_filename = "../fs/afs/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.afs_operation_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netfs_read_request_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.127 }
%struct.atomic_t = type { i32 }
%union.anon.127 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.110 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
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
%struct.afs_volume = type { %union.anon.149, %struct.atomic_t, i64, ptr, %struct.rb_node, %struct.hlist_node, ptr, i32, ptr, ptr, %struct.rwlock_t, i32, i32, %struct.rwlock_t, i8, i8, i8, [65 x i8] }
%union.anon.149 = type { i64 }
%struct.afs_vnode_cache_aux = type { i64 }
%struct.afs_file = type { ptr, ptr }
%struct.afs_wb_key = type { %struct.refcount_struct, ptr, %struct.list_head }
%struct.page = type { i32, %union.anon.2, %union.anon.125, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.125 = type { %struct.atomic_t }
%struct.anon.148 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.anon.6 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.fscache_cookie = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, %struct.hlist_bl_node, %struct.list_head, %struct.list_head, %struct.work_struct, i64, i32, i32, i8, i8, i8, i8, i32, %union.anon.169, %union.anon.170 }
%struct.hlist_bl_node = type { ptr, ptr }
%union.anon.169 = type { ptr, [12 x i8] }
%union.anon.170 = type { ptr, [4 x i8] }
%struct.afs_read = type { i64, i64, i64, i64, ptr, ptr, ptr, i64, %struct.refcount_struct, i32, i32, i32, ptr, ptr, ptr, %struct.iov_iter }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.27, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.28, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.29, %union.anon.33, ptr }
%union.anon.27 = type { %struct.rb_node }
%union.anon.28 = type { i64 }
%union.anon.29 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.30, ptr, ptr, ptr }
%union.anon.30 = type { i32 }
%union.anon.33 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.afs_operation = type { ptr, ptr, ptr, ptr, ptr, [2 x %struct.afs_vnode_param], ptr, %struct.afs_volsync, ptr, ptr, %struct.timespec64, %struct.timespec64, i16, i16, i32, i32, i32, %union.anon.157, %struct.afs_addr_cursor, ptr, ptr, ptr, i32, i16, i16, i32 }
%struct.afs_vnode_param = type { ptr, %struct.afs_fid, %struct.afs_status_cb, i64, i32, i8, i8 }
%struct.afs_status_cb = type { %struct.afs_file_status, %struct.afs_callback, i8, i8, i8 }
%struct.afs_callback = type { i64 }
%struct.afs_volsync = type { i64 }
%union.anon.157 = type { %struct.anon.166 }
%struct.anon.166 = type { %struct.afs_volume_status, ptr }
%struct.afs_volume_status = type { i64, i64, i8, i8, i8, i8, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.afs_addr_cursor = type { ptr, i32, i8, i8, i16, i16, i32 }
%struct.netfs_read_request = type { %struct.work_struct, ptr, ptr, %struct.netfs_cache_resources, %struct.list_head, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i64, i64, i32, %struct.refcount_struct, i32, ptr }
%struct.netfs_cache_resources = type { ptr, ptr, ptr, i32, i32 }
%struct.netfs_read_subrequest = type { ptr, %struct.list_head, i64, i32, i32, %struct.refcount_struct, i16, i16, i8, i32 }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
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
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.90, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
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
%struct.afs_net = type { ptr, %struct.afs_uuid, i8, ptr, ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.rb_root, ptr, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.rw_semaphore, %struct.mutex, %struct.mutex, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.seqlock_t, %struct.work_struct, %struct.timer_list, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.afs_uuid = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.afs_cell = type { %union.anon.150, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.hlist_node, i64, i64, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i16, i32, i32, %struct.rb_root, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.seqlock_t, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.rwlock_t, ptr, i8, ptr }
%union.anon.150 = type { %struct.rb_node }

@afs_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @afs_file_read_iter, ptr @afs_file_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @afs_file_mmap, i32 0, ptr @afs_open, ptr null, ptr @afs_release, ptr @afs_fsync, ptr null, ptr @afs_lock, ptr null, ptr null, ptr null, ptr @afs_flock, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@afs_file_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr @afs_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @afs_setattr, ptr @afs_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@afs_file_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @afs_writepage, ptr @afs_readpage, ptr @afs_writepages, ptr @afs_set_page_dirty, ptr null, ptr @afs_readahead, ptr @afs_write_begin, ptr @afs_write_end, ptr null, ptr @afs_invalidatepage, ptr @afs_releasepage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @afs_launder_page, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_symlink_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr @afs_symlink_readpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @afs_invalidatepage, ptr @afs_releasepage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s] ==> %s({%llx:%llu},)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"afs_open\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/afs/file.c\00", [18 x i8] zeroinitializer }, align 32
@afs_open._entry_ptr = internal global ptr @afs_open._entry, section ".printk_index", align 4
@afs_open._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] <== %s() = 0\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_open._entry_ptr.5 = internal global ptr @afs_open._entry.3, section ".printk_index", align 4
@afs_open._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_open._entry_ptr.8 = internal global ptr @afs_open._entry.6, section ".printk_index", align 4
@afs_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"afs_release\00", [20 x i8] zeroinitializer }, align 32
@afs_release._entry_ptr = internal global ptr @afs_release._entry, section ".printk_index", align 4
@afs_release._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.9, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_release._entry_ptr.11 = internal global ptr @afs_release._entry.10, section ".printk_index", align 4
@afs_fetch_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%-6.6s] ==> %s(%s{%llx:%llu.%u},%x,,,)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"afs_fetch_data\00", [17 x i8] zeroinitializer }, align 32
@afs_fetch_data._entry_ptr = internal global ptr @afs_fetch_data._entry, section ".printk_index", align 4
@afs_fetch_data_operation = internal constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr @afs_fs_fetch_data, ptr @yfs_fs_fetch_data, ptr @afs_fetch_data_success, ptr @afs_check_for_remote_deletion, ptr @afs_fetch_data_notify, ptr null, ptr @afs_fetch_data_put }, [36 x i8] zeroinitializer }, align 32
@afs_req_ops = dso_local constant { %struct.netfs_read_request_ops, [56 x i8] } { %struct.netfs_read_request_ops { ptr @afs_is_cache_enabled, ptr @afs_init_rreq, ptr @afs_begin_cache_operation, ptr null, ptr null, ptr @afs_req_issue_op, ptr null, ptr @afs_check_write_begin, ptr null, ptr @afs_priv_cleanup }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@afs_fetch_data_success._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s] ==> %s(op=%08x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"afs_fetch_data_success\00", [41 x i8] zeroinitializer }, align 32
@afs_fetch_data_success._entry_ptr = internal global ptr @afs_fetch_data_success._entry, section ".printk_index", align 4
@afs_net_id = external dso_local local_unnamed_addr global i32, align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@afs_invalidatepage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] ==> %s({%lu},%u,%u)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"afs_invalidatepage\00", [45 x i8] zeroinitializer }, align 32
@afs_invalidatepage._entry_ptr = internal global ptr @afs_invalidatepage._entry, section ".printk_index", align 4
@afs_invalidatepage._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_invalidatepage._entry_ptr.28 = internal global ptr @afs_invalidatepage._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@afs_invalidate_dirty.___tp_str = internal global ptr @.str.30, section "__tracepoint_str", align 4
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"trunc\00", [26 x i8] zeroinitializer }, align 32
@afs_invalidate_dirty.___tp_str.31 = internal global ptr @.str.32, section "__tracepoint_str", align 4
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"undirty\00", [24 x i8] zeroinitializer }, align 32
@afs_invalidate_dirty.___tp_str.33 = internal global ptr @.str.34, section "__tracepoint_str", align 4
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inval\00", [26 x i8] zeroinitializer }, align 32
@__tracepoint_afs_folio_dirty = external dso_local global %struct.tracepoint, align 4
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/afs.h\00", [37 x i8] zeroinitializer }, align 32
@trace_afs_folio_dirty.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@afs_releasepage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[%-6.6s] ==> %s({{%llx:%llu}[%lu],%lx},%x)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"afs_releasepage\00", [16 x i8] zeroinitializer }, align 32
@afs_releasepage._entry_ptr = internal global ptr @afs_releasepage._entry, section ".printk_index", align 4
@afs_releasepage.___tp_str = internal global ptr @.str.40, section "__tracepoint_str", align 4
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rel\00", [28 x i8] zeroinitializer }, align 32
@afs_releasepage._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.39, ptr @.str.2, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] <== %s() = T\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_releasepage._entry_ptr.43 = internal global ptr @afs_releasepage._entry.41, section ".printk_index", align 4
@afs_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @afs_vm_open, ptr @afs_vm_close, ptr null, ptr null, ptr null, ptr @filemap_fault, ptr null, ptr @afs_vm_map_pages, ptr null, ptr @afs_page_mkwrite, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294966784, i64 4294967284, i64 4294967292]
@___asan_gen_.44 = private unnamed_addr constant [20 x i8] c"afs_file_operations\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 34, i32 30 }
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"afs_file_aops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 54, i32 39 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"afs_symlink_aops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 67, i32 39 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 135, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 166, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 174, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 189, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 209, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 292, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [25 x i8] c"afs_fetch_data_operation\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 276, i32 39 }
@___asan_gen_.98 = private unnamed_addr constant [12 x i8] c"afs_req_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 399, i32 37 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 263, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 45, i32 7 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 695, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 723, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 698, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 260, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 493, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 501, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 414, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 472, i32 31 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 476, i32 31 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 479, i32 31 }
@___asan_gen_.159 = private unnamed_addr constant [30 x i8] c"../include/trace/events/afs.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1019, i32 1 }
@___asan_gen_.162 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 108, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 717, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 513, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 529, i32 32 }
@___asan_gen_.179 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 534, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [11 x i8] c"afs_vm_ops\00", align 1
@___asan_gen_.186 = private constant [17 x i8] c"../fs/afs/file.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 73, i32 42 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @afs_fetch_data._entry, ptr @afs_fetch_data._entry_ptr, ptr @afs_fetch_data_success._entry, ptr @afs_fetch_data_success._entry_ptr, ptr @afs_invalidate_dirty.___tp_str, ptr @afs_invalidate_dirty.___tp_str.31, ptr @afs_invalidate_dirty.___tp_str.33, ptr @afs_invalidatepage._entry, ptr @afs_invalidatepage._entry.26, ptr @afs_invalidatepage._entry_ptr, ptr @afs_invalidatepage._entry_ptr.28, ptr @afs_open._entry, ptr @afs_open._entry.3, ptr @afs_open._entry.6, ptr @afs_open._entry_ptr, ptr @afs_open._entry_ptr.5, ptr @afs_open._entry_ptr.8, ptr @afs_release._entry, ptr @afs_release._entry.10, ptr @afs_release._entry_ptr, ptr @afs_release._entry_ptr.11, ptr @afs_releasepage.___tp_str, ptr @afs_releasepage._entry, ptr @afs_releasepage._entry.41, ptr @afs_releasepage._entry_ptr, ptr @afs_releasepage._entry_ptr.43, ptr @afs_file_operations, ptr @afs_file_aops, ptr @afs_symlink_aops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @afs_fetch_data_operation, ptr @afs_req_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @afs_vm_ops], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_file_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_symlink_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_open._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_open._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_release._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fetch_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fetch_data_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_req_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fetch_data_success._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_invalidatepage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_invalidatepage._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_releasepage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_releasepage._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_file_read_iter(ptr noundef %iocb, ptr noundef %iter) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call3 = tail call i32 @afs_validate(ptr noundef %3, ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 @generic_file_read_iter(ptr noundef %iocb, ptr noundef %iter) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_file_write(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_file_mmap(ptr noundef %file, ptr noundef %vma) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  tail call fastcc void @afs_add_open_mmap(ptr noundef %1)
  %call2 = tail call i32 @generic_file_mmap(ptr noundef %file, ptr noundef %vma) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %2 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @afs_vm_ops, ptr %vm_ops, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @afs_drop_open_mmap(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_open(ptr noundef %inode, ptr nocapture noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !113

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = tail call i32 @llvm.read_register.i32(metadata !103) #11
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
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, i64 noundef %6, i64 noundef %8) #14
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 1
  %9 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %volume, align 8
  %cell = getelementptr inbounds %struct.afs_volume, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cell, align 8
  %call10 = tail call ptr @afs_request_key(ptr noundef %12) #11
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %call10 to i32
  br label %do.body61

if.end14:                                         ; preds = %do.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 8) #15
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %if.end14.error_key_crit_edge, label %if.end18

if.end14.error_key_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_key

if.end18:                                         ; preds = %if.end14
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call10, ptr %call7.i.i, align 8
  %call20 = tail call i32 @afs_validate(ptr noundef %inode, ptr noundef %call10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %if.end18.error_af_crit_edge, label %if.end22

if.end18.error_af_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_af

if.end22:                                         ; preds = %if.end18
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %16 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f_mode, align 8
  %and23 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end30_crit_edge, label %if.then25

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then25:                                        ; preds = %if.end22
  %call26 = tail call i32 @afs_cache_wb_key(ptr noundef %inode, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then25.error_af_crit_edge, label %if.then25.if.end30_crit_edge

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then25.error_af_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_af

if.end30:                                         ; preds = %if.then25.if.end30_crit_edge, %if.end22.if.end30_crit_edge
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %18 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %f_flags, align 4
  %and31 = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end34_crit_edge, label %if.then33

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags) #11
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end30.if.end34_crit_edge
  %cache.i = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 5
  %20 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cache.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end34.fscache_use_cookie.exit_crit_edge, label %if.then.i

if.end34.fscache_use_cookie.exit_crit_edge:       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %fscache_use_cookie.exit

if.then.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f_mode, align 8
  %and37 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38 = icmp ne i32 %and37, 0
  tail call void @__fscache_use_cookie(ptr noundef nonnull %21, i1 noundef zeroext %tobool38) #11
  br label %fscache_use_cookie.exit

fscache_use_cookie.exit:                          ; preds = %if.then.i, %if.end34.fscache_use_cookie.exit_crit_edge
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %24 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %25 = load i32, ptr @afs_debug, align 4
  %and40 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %fscache_use_cookie.exit.cleanup_crit_edge, label %do.end51, !prof !113

fscache_use_cookie.exit.cleanup_crit_edge:        ; preds = %fscache_use_cookie.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end51:                                         ; preds = %fscache_use_cookie.exit
  call void @__sanitizer_cov_trace_pc() #13
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i106 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i106 to ptr
  %task54 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task54 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task54, align 8
  %comm55 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 101
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm55, ptr noundef nonnull @.str.1) #14
  br label %cleanup

error_af:                                         ; preds = %if.then25.error_af_crit_edge, %if.end18.error_af_crit_edge
  %ret.0 = phi i32 [ %call20, %if.end18.error_af_crit_edge ], [ %call26, %if.then25.error_af_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %error_key

error_key:                                        ; preds = %error_af, %if.end14.error_key_crit_edge
  %ret.1 = phi i32 [ %ret.0, %error_af ], [ -12, %if.end14.error_key_crit_edge ]
  tail call void @key_put(ptr noundef %call10) #11
  br label %do.body61

do.body61:                                        ; preds = %error_key, %if.then12
  %ret.2 = phi i32 [ %13, %if.then12 ], [ %ret.1, %error_key ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %30 = load i32, ptr @afs_debug, align 4
  %and62 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %do.body61.cleanup_crit_edge, label %do.end73, !prof !113

do.body61.cleanup_crit_edge:                      ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end73:                                         ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #13
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i107 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i107 to ptr
  %task76 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task76 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task76, align 8
  %comm77 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 101
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm77, ptr noundef nonnull @.str.1, i32 noundef %ret.2) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end73, %do.body61.cleanup_crit_edge, %do.end51, %fscache_use_cookie.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end51 ], [ 0, %fscache_use_cookie.exit.cleanup_crit_edge ], [ %ret.2, %do.end73 ], [ %ret.2, %do.body61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_release(ptr noundef %inode, ptr noundef %file) #1 align 64 {
entry:
  %aux = alloca %struct.afs_vnode_cache_aux, align 8
  %i_size = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %aux) #11
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %aux, align 8, !annotation !114
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i_size) #11
  %3 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %i_size, align 8, !annotation !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %4 = load i32, ptr @afs_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !113

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = tail call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2
  %9 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %fid, align 8
  %vnode6 = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %vnode6 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %vnode6, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.9, i64 noundef %10, i64 noundef %12) #14
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %13 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f_mode, align 8
  %and10 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.end9.if.end14_crit_edge, label %if.then12

do.end9.if.end14_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = tail call i32 @vfs_fsync(ptr noundef %file, i32 noundef 0) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end9.if.end14_crit_edge
  %ret.0 = phi i32 [ %call13, %if.then12 ], [ 0, %do.end9.if.end14_crit_edge ]
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %private_data, align 4
  %wb = getelementptr inbounds %struct.afs_file, ptr %2, i32 0, i32 1
  %16 = ptrtoint ptr %wb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wb, align 4
  %tobool16.not = icmp eq ptr %17, null
  br i1 %tobool16.not, label %if.end14.if.end19_crit_edge, label %land.lhs.true.i

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true.i:                                  ; preds = %if.end14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %17, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr nonnull %17, i32 1, i32 3, i32 1) #11
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %17, ptr nonnull %17, i32 1, ptr nonnull elementtype(i32) %17) #11, !srcloc !116
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end19_crit_edge, label %if.then10.i.i.i.i, !prof !113

if.end5.i.i.i.i.if.end19_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %17, i32 noundef 3) #11
  br label %if.end19

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !117
  %key.i = getelementptr inbounds %struct.afs_wb_key, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %key.i, align 4
  tail call void @key_put(ptr noundef %20) #11
  tail call void @kfree(ptr noundef nonnull %17) #11
  br label %if.end19

if.end19:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end19_crit_edge, %if.end14.if.end19_crit_edge
  %21 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %f_mode, align 8
  %and21 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end19
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.then23
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !118
  %and.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %24 = tail call ptr @llvm.returnaddress(i32 0) #11
  %25 = ptrtoint ptr %24 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %25) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %25) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = tail call ptr @llvm.returnaddress(i32 0) #11
  %27 = ptrtoint ptr %26 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %27) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %27) #11
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !119
  %and.i.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !120

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #11, !srcloc !121
  %29 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !123
  %31 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i64 = and i32 %32, 1
  %tobool.not.i65 = icmp eq i32 %and.i64, 0
  br i1 %tobool.not.i65, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %30, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %32, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  %33 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !125
  %35 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %36, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %37 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %34, ptr %i_size, align 8
  %data_version.i = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %data_version.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %data_version.i, align 8
  %40 = ptrtoint ptr %aux to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %aux, align 8
  %cache.i = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 5
  %41 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cache.i, align 8
  %tobool.not.i66 = icmp eq ptr %42, null
  br i1 %tobool.not.i66, label %i_size_read.exit.if.end27_crit_edge, label %if.then.i67

i_size_read.exit.if.end27_crit_edge:              ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then.i67:                                      ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @__fscache_unuse_cookie(ptr noundef nonnull %42, ptr noundef nonnull %aux, ptr noundef nonnull %i_size) #11
  br label %if.end27

if.else:                                          ; preds = %if.end19
  %cache.i68 = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 5
  %43 = ptrtoint ptr %cache.i68 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cache.i68, align 8
  %tobool.not.i69 = icmp eq ptr %44, null
  br i1 %tobool.not.i69, label %if.else.if.end27_crit_edge, label %if.then.i70

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then.i70:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__fscache_unuse_cookie(ptr noundef nonnull %44, ptr noundef null, ptr noundef null) #11
  br label %if.end27

if.end27:                                         ; preds = %if.then.i70, %if.else.if.end27_crit_edge, %if.then.i67, %i_size_read.exit.if.end27_crit_edge
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %2, align 4
  call void @key_put(ptr noundef %46) #11
  call void @kfree(ptr noundef %2) #11
  call void @afs_prune_wb_keys(ptr noundef %inode) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %47 = load i32, ptr @afs_debug, align 4
  %and29 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.do.end49_crit_edge, label %do.end40, !prof !113

if.end27.do.end49_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49

do.end40:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %48 = call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i72 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i72 to ptr
  %task43 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task43 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task43, align 8
  %comm44 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 101
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm44, ptr noundef nonnull @.str.9, i32 noundef %ret.0) #14
  br label %do.end49

do.end49:                                         ; preds = %do.end40, %if.end27.do.end49_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i_size) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %aux) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_lock(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_flock(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_permission(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_setattr(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_writepage(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_readpage(ptr noundef %file, ptr noundef %page) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !113

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %call1 = tail call i32 @netfs_readpage(ptr noundef %file, ptr noundef %4, ptr noundef nonnull @afs_req_ops, ptr noundef null) #11
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_writepages(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_set_page_dirty(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_readahead(ptr noundef %ractl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @netfs_readahead(ptr noundef %ractl, ptr noundef nonnull @afs_req_ops, ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_write_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_invalidatepage(ptr noundef %page, i32 noundef %offset, i32 noundef %length) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i65, !prof !113

if.then.i65:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i65
  %retval.0.i = phi i32 [ %sub.i, %if.then.i65 ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %5 = load i32, ptr @afs_debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %_compound_head.exit.do.body9_crit_edge, label %do.end, !prof !113

_compound_head.exit.do.body9_crit_edge:           ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9

do.end:                                           ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  %6 = tail call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i66 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i66 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %call5 = tail call fastcc i32 @folio_index(ptr noundef %4)
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %comm, ptr noundef nonnull @.str.25, i32 noundef %call5, i32 noundef %offset, i32 noundef %length) #14
  br label %do.body9

do.body9:                                         ; preds = %do.end, %_compound_head.exit.do.body9_crit_edge
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !113

if.then.i.i:                                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %11, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %12, %if.end.i.i ]
  %13 = inttoptr i32 %retval.0.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.not.i = icmp eq i32 %15, -1
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !120

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !113

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i18.i = add i32 %17, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %18, %if.end.i20.i ]
  %19 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.29) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #11, !srcloc !126
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !113

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i25.i = add i32 %17, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %20, %if.end.i27.i ]
  %21 = inttoptr i32 %retval.0.i28.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and1.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool11.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool11.not, label %do.body21, label %do.end29, !prof !120

do.body21:                                        ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 495, 0\0A.popsection", ""() #11, !srcloc !127
  unreachable

do.end29:                                         ; preds = %PageLocked.exit
  %24 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i.not.i62 = icmp eq i32 %25, -1
  br i1 %cmp.i.not.i62, label %if.then.i63, label %PagePrivate.exit, !prof !120

if.then.i63:                                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.21) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #11, !srcloc !128
  unreachable

PagePrivate.exit:                                 ; preds = %do.end29
  %26 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %page, align 4
  %28 = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool31.not = icmp eq i32 %28, 0
  br i1 %tobool31.not, label %PagePrivate.exit.if.end33_crit_edge, label %if.then32

PagePrivate.exit.if.end33_crit_edge:              ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then32:                                        ; preds = %PagePrivate.exit
  %mapping.i.i = getelementptr inbounds %struct.anon.148, ptr %4, i32 0, i32 2
  %29 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mapping.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %add.i = add i32 %length, %offset
  %private.i.i = getelementptr inbounds %struct.anon.148, ptr %4, i32 0, i32 4
  %33 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %private.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp.i = icmp eq i32 %offset, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then32.if.end.i68_crit_edge

if.then32.if.end.i68_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i68

land.lhs.true.i:                                  ; preds = %if.then32
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %37, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %PageHead.exit.i.i.i.i, !prof !120

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.21) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !129
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %land.lhs.true.i
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %4, align 4
  %40 = and i32 %39, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i.i.i, label %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge, label %if.end.i.i.i.i

PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_size.exit.i

if.end.i.i.i.i:                                   ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %41 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i.i = getelementptr inbounds %struct.anon.6, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %compound_order.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %compound_order.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %43 to i32
  br label %folio_size.exit.i

folio_size.exit.i:                                ; preds = %if.end.i.i.i.i, %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %conv.i.i.i.i, %if.end.i.i.i.i ], [ 0, %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge ]
  %shl.i.i = shl i32 4096, %retval.0.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %length)
  %cmp4.i = icmp eq i32 %shl.i.i, %length
  br i1 %cmp4.i, label %folio_size.exit.i.full_invalidate.i_crit_edge, label %folio_size.exit.i.if.end.i68_crit_edge

folio_size.exit.i.if.end.i68_crit_edge:           ; preds = %folio_size.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i68

folio_size.exit.i.full_invalidate.i_crit_edge:    ; preds = %folio_size.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %full_invalidate.i

if.end.i68:                                       ; preds = %folio_size.exit.i.if.end.i68_crit_edge, %if.then32.if.end.i68_crit_edge
  %and.i.i67 = and i32 %35, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i67)
  %tobool.i.not.i = icmp eq i32 %and.i.i67, 0
  br i1 %tobool.i.not.i, label %if.end7.i, label %if.end.i68.if.end33_crit_edge

if.end.i68.if.end33_crit_edge:                    ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.end7.i:                                        ; preds = %if.end.i68
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp.i.not.i.i.i.i.i.i.i = icmp eq i32 %45, -1
  br i1 %cmp.i.not.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i.i, !prof !120

if.then.i.i.i.i.i.i.i:                            ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.21) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !129
  unreachable

PageHead.exit.i.i.i.i.i.i:                        ; preds = %if.end7.i
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %4, align 4
  %48 = and i32 %47, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i.i.afs_folio_dirty_from.exit.i_crit_edge, label %if.end.i.i.i.i.i.i

PageHead.exit.i.i.i.i.i.i.afs_folio_dirty_from.exit.i_crit_edge: ; preds = %PageHead.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %afs_folio_dirty_from.exit.i

if.end.i.i.i.i.i.i:                               ; preds = %PageHead.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %49 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i.i.i.i = getelementptr inbounds %struct.anon.6, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %compound_order.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %compound_order.i.i.i.i.i.i, align 1
  %conv.i.i.i.i.i.i = zext i8 %51 to i32
  %phi.bo.i.i.i = add nsw i32 %conv.i.i.i.i.i.i, -3
  br label %afs_folio_dirty_from.exit.i

afs_folio_dirty_from.exit.i:                      ; preds = %if.end.i.i.i.i.i.i, %PageHead.exit.i.i.i.i.i.i.afs_folio_dirty_from.exit.i_crit_edge
  %retval.0.i.i.i.i.i.i = phi i32 [ %phi.bo.i.i.i, %if.end.i.i.i.i.i.i ], [ -3, %PageHead.exit.i.i.i.i.i.i.afs_folio_dirty_from.exit.i_crit_edge ]
  %and.i77.i = and i32 %35, 32767
  %52 = tail call i32 @llvm.smax.i32(i32 %retval.0.i.i.i.i.i.i, i32 0) #11
  %shl.i78.i = shl i32 %and.i77.i, %52
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp.i.not.i.i.i.i.i.i79.i = icmp eq i32 %54, -1
  br i1 %cmp.i.not.i.i.i.i.i.i79.i, label %if.then.i.i.i.i.i.i80.i, label %PageHead.exit.i.i.i.i.i82.i, !prof !120

if.then.i.i.i.i.i.i80.i:                          ; preds = %afs_folio_dirty_from.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.21) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !129
  unreachable

PageHead.exit.i.i.i.i.i82.i:                      ; preds = %afs_folio_dirty_from.exit.i
  %55 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %4, align 4
  %57 = and i32 %56, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i.i.i.i81.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i.i.i.i.i81.i, label %PageHead.exit.i.i.i.i.i82.i.afs_folio_dirty_to.exit.i_crit_edge, label %if.end.i.i.i.i.i86.i

PageHead.exit.i.i.i.i.i82.i.afs_folio_dirty_to.exit.i_crit_edge: ; preds = %PageHead.exit.i.i.i.i.i82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %afs_folio_dirty_to.exit.i

if.end.i.i.i.i.i86.i:                             ; preds = %PageHead.exit.i.i.i.i.i82.i
  call void @__sanitizer_cov_trace_pc() #13
  %58 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i.i.i83.i = getelementptr inbounds %struct.anon.6, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %compound_order.i.i.i.i.i83.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %compound_order.i.i.i.i.i83.i, align 1
  %conv.i.i.i.i.i84.i = zext i8 %60 to i32
  %phi.bo.i.i85.i = add nsw i32 %conv.i.i.i.i.i84.i, -3
  br label %afs_folio_dirty_to.exit.i

afs_folio_dirty_to.exit.i:                        ; preds = %if.end.i.i.i.i.i86.i, %PageHead.exit.i.i.i.i.i82.i.afs_folio_dirty_to.exit.i_crit_edge
  %retval.0.i.i.i.i.i87.i = phi i32 [ %phi.bo.i.i85.i, %if.end.i.i.i.i.i86.i ], [ -3, %PageHead.exit.i.i.i.i.i82.i.afs_folio_dirty_to.exit.i_crit_edge ]
  %shr.i.i69 = lshr i32 %35, 16
  %and.i88.i = and i32 %shr.i.i69, 32767
  %add.i.i = add nuw nsw i32 %and.i88.i, 1
  %61 = tail call i32 @llvm.smax.i32(i32 %retval.0.i.i.i.i.i87.i, i32 0) #11
  %shl.i89.i = shl i32 %add.i.i, %61
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i89.i, i32 %offset)
  %cmp10.not.i = icmp ugt i32 %shl.i89.i, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i78.i, i32 %add.i)
  %cmp11.not.i = icmp ult i32 %shl.i78.i, %add.i
  %or.cond.i = select i1 %cmp10.not.i, i1 %cmp11.not.i, i1 false
  br i1 %or.cond.i, label %if.end13.i, label %afs_folio_dirty_to.exit.i.if.end33_crit_edge

afs_folio_dirty_to.exit.i.if.end33_crit_edge:     ; preds = %afs_folio_dirty_to.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.end13.i:                                       ; preds = %afs_folio_dirty_to.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i78.i, i32 %offset)
  %cmp14.i = icmp ult i32 %shl.i78.i, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i89.i, i32 %add.i)
  %cmp16.i = icmp ugt i32 %shl.i89.i, %add.i
  %or.cond75.i = select i1 %cmp14.i, i1 %cmp16.i, i1 false
  br i1 %or.cond75.i, label %if.end13.i.if.end33_crit_edge, label %if.end18.i

if.end13.i.if.end33_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.end18.i:                                       ; preds = %if.end13.i
  %or.cond76.i = select i1 %cmp14.i, i1 true, i1 %cmp16.i
  br i1 %or.cond76.i, label %if.end23.i, label %if.end18.i.undirty.i_crit_edge

if.end18.i.undirty.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %undirty.i

if.end23.i:                                       ; preds = %if.end18.i
  %offset.call9.i = select i1 %cmp14.i, i32 %offset, i32 %shl.i89.i
  %call8.add.i = select i1 %cmp14.i, i32 %shl.i78.i, i32 %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.add.i, i32 %offset.call9.i)
  %cmp27.i = icmp eq i32 %call8.add.i, %offset.call9.i
  br i1 %cmp27.i, label %if.end23.i.undirty.i_crit_edge, label %if.end29.i

if.end23.i.undirty.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %undirty.i

if.end29.i:                                       ; preds = %if.end23.i
  %62 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %cmp.i.not.i.i.i.i.i.i90.i = icmp eq i32 %63, -1
  br i1 %cmp.i.not.i.i.i.i.i.i90.i, label %if.then.i.i.i.i.i.i91.i, label %PageHead.exit.i.i.i.i.i93.i, !prof !120

if.then.i.i.i.i.i.i91.i:                          ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.21) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !129
  unreachable

PageHead.exit.i.i.i.i.i93.i:                      ; preds = %if.end29.i
  %64 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %4, align 4
  %66 = and i32 %65, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i.i.i.i.i92.i = icmp eq i32 %66, 0
  br i1 %tobool.not.i.i.i.i.i92.i, label %PageHead.exit.i.i.i.i.i93.i.afs_folio_dirty.exit.i_crit_edge, label %if.end.i.i.i.i.i97.i

PageHead.exit.i.i.i.i.i93.i.afs_folio_dirty.exit.i_crit_edge: ; preds = %PageHead.exit.i.i.i.i.i93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %afs_folio_dirty.exit.i

if.end.i.i.i.i.i97.i:                             ; preds = %PageHead.exit.i.i.i.i.i93.i
  call void @__sanitizer_cov_trace_pc() #13
  %67 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i.i.i94.i = getelementptr inbounds %struct.anon.6, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %compound_order.i.i.i.i.i94.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %compound_order.i.i.i.i.i94.i, align 1
  %conv.i.i.i.i.i95.i = zext i8 %69 to i32
  %phi.bo.i.i96.i = add nsw i32 %conv.i.i.i.i.i95.i, -3
  br label %afs_folio_dirty.exit.i

afs_folio_dirty.exit.i:                           ; preds = %if.end.i.i.i.i.i97.i, %PageHead.exit.i.i.i.i.i93.i.afs_folio_dirty.exit.i_crit_edge
  %retval.0.i.i.i.i.i98.i = phi i32 [ %phi.bo.i.i96.i, %if.end.i.i.i.i.i97.i ], [ -3, %PageHead.exit.i.i.i.i.i93.i.afs_folio_dirty.exit.i_crit_edge ]
  %70 = tail call i32 @llvm.smax.i32(i32 %retval.0.i.i.i.i.i98.i, i32 0) #11
  %shr.i99.i = lshr i32 %call8.add.i, %70
  %sub.i.i70 = add i32 %offset.call9.i, -1
  %shr1.i.i = lshr i32 %sub.i.i70, %70
  %shl.i100.i = shl i32 %shr1.i.i, 16
  %or.i.i = or i32 %shl.i100.i, %shr.i99.i
  %71 = inttoptr i32 %or.i.i to ptr
  %72 = ptrtoint ptr %private.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %private.i.i, align 4
  %73 = load ptr, ptr @afs_invalidate_dirty.___tp_str, align 4
  tail call fastcc void @trace_afs_folio_dirty(ptr noundef %32, ptr noundef %73, ptr noundef %4) #11
  br label %if.end33

undirty.i:                                        ; preds = %if.end23.i.undirty.i_crit_edge, %if.end18.i.undirty.i_crit_edge
  %74 = load ptr, ptr @afs_invalidate_dirty.___tp_str.31, align 4
  tail call fastcc void @trace_afs_folio_dirty(ptr noundef %32, ptr noundef %74, ptr noundef %4) #11
  %call33.i = tail call zeroext i1 @folio_clear_dirty_for_io(ptr noundef %4) #11
  br label %full_invalidate.i

full_invalidate.i:                                ; preds = %undirty.i, %folio_size.exit.i.full_invalidate.i_crit_edge
  %75 = load ptr, ptr @afs_invalidate_dirty.___tp_str.33, align 4
  tail call fastcc void @trace_afs_folio_dirty(ptr noundef %32, ptr noundef %75, ptr noundef %4) #11
  tail call fastcc void @folio_detach_private(ptr noundef %4) #11
  br label %if.end33

if.end33:                                         ; preds = %full_invalidate.i, %afs_folio_dirty.exit.i, %if.end13.i.if.end33_crit_edge, %afs_folio_dirty_to.exit.i.if.end33_crit_edge, %if.end.i68.if.end33_crit_edge, %PagePrivate.exit.if.end33_crit_edge
  tail call void @folio_wait_private_2(ptr noundef %4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %76 = load i32, ptr @afs_debug, align 4
  %and35 = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end33.do.end55_crit_edge, label %do.end46, !prof !113

if.end33.do.end55_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55

do.end46:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %77 = tail call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i71 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i71 to ptr
  %task49 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task49 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task49, align 8
  %comm50 = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 101
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %comm50, ptr noundef nonnull @.str.25) #14
  br label %do.end55

do.end55:                                         ; preds = %do.end46, %if.end33.do.end55_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_releasepage(ptr noundef %page, i32 noundef %gfp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !113

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %page to i32
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %9 = load i32, ptr @afs_debug, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %_compound_head.exit.do.end12_crit_edge, label %do.end, !prof !113

_compound_head.exit.do.end12_crit_edge:           ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12

do.end:                                           ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  %10 = tail call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i66 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i66 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %8, i32 0, i32 2
  %14 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %fid, align 8
  %vnode8 = getelementptr inbounds %struct.afs_vnode, ptr %8, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %vnode8 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %vnode8, align 8
  %call9 = tail call fastcc i32 @folio_index(ptr noundef %4)
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %4, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %comm, ptr noundef nonnull @.str.39, i64 noundef %15, i64 noundef %17, i32 noundef %call9, i32 noundef %19, i32 noundef %gfp) #14
  br label %do.end12

do.end12:                                         ; preds = %do.end, %_compound_head.exit.do.end12_crit_edge
  %20 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private_2.exit, label %if.then.i.i, !prof !113

if.then.i.i:                                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.22) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !130
  unreachable

folio_test_private_2.exit:                        ; preds = %do.end12
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %4, align 4
  %25 = and i32 %24, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not = icmp eq i32 %25, 0
  br i1 %tobool.i.not, label %folio_test_private_2.exit.if.end21_crit_edge, label %if.then14

folio_test_private_2.exit.if.end21_crit_edge:     ; preds = %folio_test_private_2.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then14:                                        ; preds = %folio_test_private_2.exit
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i, align 4
  %and.i67 = and i32 %31, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67)
  %tobool16.not = icmp ne i32 %and.i67, 0
  %and17 = and i32 %gfp, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %or.cond = or i1 %tobool18.not, %tobool16.not
  br i1 %or.cond, label %if.then14.cleanup_crit_edge, label %if.end20

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @folio_wait_private_2(ptr noundef %4) #11
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %folio_test_private_2.exit.if.end21_crit_edge
  %cache.i = getelementptr inbounds %struct.afs_vnode, ptr %8, i32 0, i32 5
  %32 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cache.i, align 8
  %tobool.not.i68 = icmp eq ptr %33, null
  br i1 %tobool.not.i68, label %if.end21.fscache_note_page_release.exit_crit_edge, label %land.lhs.true.i

if.end21.fscache_note_page_release.exit_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %fscache_note_page_release.exit

land.lhs.true.i:                                  ; preds = %if.end21
  %flags.i69 = getelementptr inbounds %struct.fscache_cookie, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %flags.i69 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i69, align 4
  %36 = and i32 %35, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool1.not.i = icmp eq i32 %36, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.fscache_note_page_release.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.fscache_note_page_release.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fscache_note_page_release.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %37 = ptrtoint ptr %flags.i69 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %flags.i69, align 4
  %39 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool5.not.i = icmp eq i32 %39, 0
  br i1 %tobool5.not.i, label %land.lhs.true2.i.fscache_note_page_release.exit_crit_edge, label %if.then.i70

land.lhs.true2.i.fscache_note_page_release.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fscache_note_page_release.exit

if.then.i70:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i69) #11
  br label %fscache_note_page_release.exit

fscache_note_page_release.exit:                   ; preds = %if.then.i70, %land.lhs.true2.i.fscache_note_page_release.exit_crit_edge, %land.lhs.true.i.fscache_note_page_release.exit_crit_edge, %if.end21.fscache_note_page_release.exit_crit_edge
  %40 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %20, align 4
  %and.i.i.i62 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i62)
  %tobool.not.i.i63 = icmp eq i32 %and.i.i.i62, 0
  br i1 %tobool.not.i.i63, label %folio_test_private.exit, label %if.then.i.i64, !prof !113

if.then.i.i64:                                    ; preds = %fscache_note_page_release.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.22) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !130
  unreachable

folio_test_private.exit:                          ; preds = %fscache_note_page_release.exit
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %4, align 4
  %44 = and i32 %43, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i65.not = icmp eq i32 %44, 0
  br i1 %tobool.i65.not, label %folio_test_private.exit.do.body28_crit_edge, label %if.then24

folio_test_private.exit.do.body28_crit_edge:      ; preds = %folio_test_private.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body28

if.then24:                                        ; preds = %folio_test_private.exit
  call void @__sanitizer_cov_trace_pc() #13
  %45 = load ptr, ptr @afs_releasepage.___tp_str, align 4
  tail call fastcc void @trace_afs_folio_dirty(ptr noundef %8, ptr noundef %45, ptr noundef %4)
  tail call fastcc void @folio_detach_private(ptr noundef %4)
  br label %do.body28

do.body28:                                        ; preds = %if.then24, %folio_test_private.exit.do.body28_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %46 = load i32, ptr @afs_debug, align 4
  %and29 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body28.cleanup_crit_edge, label %do.end40, !prof !113

do.body28.cleanup_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end40:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  %47 = tail call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i72 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i72 to ptr
  %task43 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task43 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task43, align 8
  %comm44 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 101
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %comm44, ptr noundef nonnull @.str.39) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %do.body28.cleanup_crit_edge, %if.then14.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then14.cleanup_crit_edge ], [ 1, %do.end40 ], [ 1, %do.body28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_launder_page(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_symlink_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !113

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %6, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %7, %if.end.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3392, i32 noundef 112) #15
  %tobool.not.i35 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i35, label %_compound_head.exit.cleanup_crit_edge, label %if.end

_compound_head.exit.cleanup_crit_edge:            ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %_compound_head.exit
  %usage.i = getelementptr inbounds %struct.afs_read, ptr %call7.i.i.i, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #11
  %9 = ptrtoint ptr %usage.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %usage.i, align 8
  %10 = inttoptr i32 %retval.0.i to ptr
  %index.i.i = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %12 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %shl.i.i, ptr %call7.i.i.i, align 8
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.not.i.i.i.i = icmp eq i32 %15, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !120

if.then.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.21) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !129
  unreachable

PageHead.exit.i.i.i:                              ; preds = %if.end
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %10, align 4
  %18 = and i32 %17, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i38 = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i38, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_size.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = getelementptr %struct.page, ptr %10, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.6, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %21 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.end.i.i.i ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i.i
  %conv = zext i32 %shl.i to i64
  %len = getelementptr inbounds %struct.afs_read, ptr %call7.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv, ptr %len, align 8
  %vnode5 = getelementptr inbounds %struct.afs_read, ptr %call7.i.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %vnode5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %3, ptr %vnode5, align 4
  %def_iter = getelementptr inbounds %struct.afs_read, ptr %call7.i.i.i, i32 0, i32 15
  %iter = getelementptr inbounds %struct.afs_read, ptr %call7.i.i.i, i32 0, i32 14
  %24 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %def_iter, ptr %iter, align 8
  %25 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mapping, align 4
  %i_pages = getelementptr inbounds %struct.address_space, ptr %26, i32 0, i32 1
  tail call void @iov_iter_xarray(ptr noundef %def_iter, i32 noundef 0, ptr noundef %i_pages, i64 noundef %shl.i.i, i32 noundef %shl.i) #11
  %27 = ptrtoint ptr %vnode5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vnode5, align 4
  %call12 = tail call i32 @afs_fetch_data(ptr noundef %28, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp eq i32 %call12, 0
  br i1 %cmp, label %if.then14, label %folio_size.exit.if.end15_crit_edge

folio_size.exit.if.end15_crit_edge:               ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then14:                                        ; preds = %folio_size.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !131
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %4, align 4
  %and.i.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !113

if.then.i.i.i:                                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.22) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !130
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #11
  br label %if.end15

if.end15:                                         ; preds = %SetPageUptodate.exit, %folio_size.exit.if.end15_crit_edge
  tail call void @unlock_page(ptr noundef %page) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %_compound_head.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end15 ], [ -12, %_compound_head.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_put_wb_key(ptr noundef %wbk) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %wbk, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %wbk, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr nonnull %wbk, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %wbk, ptr nonnull %wbk, i32 1, ptr nonnull elementtype(i32) %wbk) #11, !srcloc !116
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !113

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %wbk, i32 noundef 3) #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !117
  %key = getelementptr inbounds %struct.afs_wb_key, ptr %wbk, i32 0, i32 1
  %1 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %key, align 4
  tail call void @key_put(ptr noundef %2) #11
  tail call void @kfree(ptr noundef nonnull %wbk) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_cache_wb_key(ptr noundef %vnode, ptr nocapture noundef %af) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #11
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 2, ptr %call7.i.i, align 8
  %2 = ptrtoint ptr %af to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %af, align 4
  %key1 = getelementptr inbounds %struct.afs_wb_key, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %key1, align 4
  %wb_lock = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %wb_lock) #11
  %wb_keys = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 14
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %wb_keys, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %5 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %wb_keys
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %key3 = getelementptr i8, ptr %.pn, i32 -4
  %6 = ptrtoint ptr %key3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %key3, align 4
  %8 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %key1, align 4
  %cmp5 = icmp eq ptr %7, %9
  br i1 %cmp5, label %found, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %key1, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %for.end.key_get.exit_crit_edge, label %cond.true.i

for.end.key_get.exit_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %key_get.exit

cond.true.i:                                      ; preds = %for.end
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %11, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull %11, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #11, !srcloc !132
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !120

cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %cond.true.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.key_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !113

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.key_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %key_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef %.sink.i.i.i.i.i) #11
  br label %key_get.exit

key_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.key_get.exit_crit_edge, %for.end.key_get.exit_crit_edge
  %vnode_link15 = getelementptr inbounds %struct.afs_wb_key, ptr %call7.i.i, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 14, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %vnode_link15, ptr noundef %15, ptr noundef %wb_keys) #11
  br i1 %call.i.i, label %if.end.i.i, label %key_get.exit.list_add_tail.exit_crit_edge

key_get.exit.list_add_tail.exit_crit_edge:        ; preds = %key_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %key_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %vnode_link15, ptr %prev.i, align 4
  %17 = ptrtoint ptr %vnode_link15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %wb_keys, ptr %vnode_link15, align 8
  %prev3.i.i = getelementptr inbounds %struct.afs_wb_key, ptr %call7.i.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %vnode_link15, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %key_get.exit.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %wb_lock) #11
  %wb = getelementptr inbounds %struct.afs_file, ptr %af, i32 0, i32 1
  %20 = ptrtoint ptr %wb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %wb, align 4
  br label %cleanup

found:                                            ; preds = %for.body
  %p.0.le = getelementptr i8, ptr %.pn, i32 -8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %p.0.le, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %p.0.le, i32 1, i32 3, i32 1) #11
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %p.0.le, ptr %p.0.le, i32 1, ptr elementtype(i32) %p.0.le) #11, !srcloc !132
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %found.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !120

found.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %found
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %22 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !113

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %found.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %found.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %p.0.le, i32 noundef %.sink.i.i.i) #11
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %wb_lock) #11
  %wb20 = getelementptr inbounds %struct.afs_file, ptr %af, i32 0, i32 1
  %23 = ptrtoint ptr %wb20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %p.0.le, ptr %wb20, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %refcount_inc.exit, %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %refcount_inc.exit ], [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_request_key(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_validate(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_prune_wb_keys(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_alloc_read(i32 noundef %gfp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp, 256
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !113

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 112) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.if.end_crit_edge, label %if.then

kzalloc.exit.if.end_crit_edge:                    ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %usage = getelementptr inbounds %struct.afs_read, ptr %call7.i.i, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #11
  %2 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %usage, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %kzalloc.exit.if.end_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_put_read(ptr noundef %req) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %usage = getelementptr inbounds %struct.afs_read, ptr %req, i32 0, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #11, !srcloc !116
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end3_crit_edge, label %if.then10.i.i.i, !prof !113

if.end5.i.i.i.if.end3_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef 3) #11
  br label %if.end3

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !117
  %cleanup = getelementptr inbounds %struct.afs_read, ptr %req, i32 0, i32 13
  %1 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cleanup, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %2(ptr noundef %req) #11
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %key = getelementptr inbounds %struct.afs_read, ptr %req, i32 0, i32 4
  %3 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %key, align 8
  tail call void @key_put(ptr noundef %4) #11
  tail call void @kfree(ptr noundef %req) #11
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then10.i.i.i, %if.end5.i.i.i.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_fetch_data(ptr noundef %vnode, ptr noundef %req) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.end, !prof !113

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

do.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !103) #11
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
  %key = getelementptr inbounds %struct.afs_read, ptr %req, i32 0, i32 4
  %13 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %key, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.end.key_serial.exit_crit_edge, label %cond.true.i

do.end.key_serial.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %key_serial.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %serial.i = getelementptr inbounds %struct.key, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %do.end.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %16, %cond.true.i ], [ 0, %do.end.key_serial.exit_crit_edge ]
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm, ptr noundef nonnull @.str.13, ptr noundef %name, i64 noundef %8, i64 noundef %10, i32 noundef %12, i32 noundef %cond.i) #14
  br label %do.end11

do.end11:                                         ; preds = %key_serial.exit, %entry.do.end11_crit_edge
  %key12 = getelementptr inbounds %struct.afs_read, ptr %req, i32 0, i32 4
  %17 = ptrtoint ptr %key12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %key12, align 8
  %volume13 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 1
  %19 = ptrtoint ptr %volume13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %volume13, align 8
  %call14 = tail call ptr @afs_alloc_operation(ptr noundef %18, ptr noundef %20) #11
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end23

if.then16:                                        ; preds = %do.end11
  %subreq = getelementptr inbounds %struct.afs_read, ptr %req, i32 0, i32 6
  %21 = ptrtoint ptr %subreq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %subreq, align 8
  %tobool17.not = icmp eq ptr %22, null
  %.pre = ptrtoint ptr %call14 to i32
  br i1 %tobool17.not, label %if.then16.cleanup_crit_edge, label %if.then18

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netfs_subreq_terminated(ptr noundef nonnull %22, i32 noundef %.pre, i1 noundef zeroext false) #11
  br label %cleanup

if.end23:                                         ; preds = %do.end11
  %file.i = getelementptr inbounds %struct.afs_operation, ptr %call14, i32 0, i32 5
  %23 = ptrtoint ptr %file.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %vnode, ptr %file.i, align 8
  %need_io_lock.i = getelementptr inbounds %struct.afs_operation, ptr %call14, i32 0, i32 5, i32 0, i32 6
  %24 = ptrtoint ptr %need_io_lock.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %need_io_lock.i, align 1
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %need_io_lock.i, align 1
  %usage.i = getelementptr inbounds %struct.afs_read, ptr %req, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #11
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #11, !srcloc !132
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end23.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !120

if.end23.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end23
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %26 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.afs_get_read.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !113

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.afs_get_read.exit_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %afs_get_read.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end23.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end23.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #11
  br label %afs_get_read.exit

afs_get_read.exit:                                ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.afs_get_read.exit_crit_edge
  %27 = getelementptr inbounds %struct.afs_operation, ptr %call14, i32 0, i32 17
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %req, ptr %27, align 8
  %ops = getelementptr inbounds %struct.afs_operation, ptr %call14, i32 0, i32 3
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @afs_fetch_data_operation, ptr %ops, align 4
  %call26 = tail call i32 @afs_do_sync_operation(ptr noundef %call14) #11
  br label %cleanup

cleanup:                                          ; preds = %afs_get_read.exit, %if.then18, %if.then16.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %afs_get_read.exit ], [ %.pre, %if.then18 ], [ %.pre, %if.then16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_alloc_operation(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netfs_subreq_terminated(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_do_sync_operation(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @afs_is_cache_enabled(ptr nocapture noundef readonly %inode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cache.i = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 5
  %0 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.fscache_cookie, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %cache_priv = getelementptr inbounds %struct.fscache_cookie, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %cache_priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cache_priv, align 4
  %tobool4 = icmp ne ptr %6, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %7 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %tobool4, %land.rhs ]
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_init_rreq(ptr nocapture noundef writeonly %rreq, ptr nocapture noundef readonly %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.key_get.exit_crit_edge, label %cond.true.i

entry.key_get.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %key_get.exit

cond.true.i:                                      ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #11, !srcloc !132
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !120

cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %cond.true.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.key_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !113

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.key_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %key_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef %.sink.i.i.i.i.i) #11
  br label %key_get.exit

key_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.key_get.exit_crit_edge, %entry.key_get.exit_crit_edge
  %netfs_priv = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 5
  %6 = ptrtoint ptr %netfs_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %netfs_priv, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_begin_cache_operation(ptr noundef %rreq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %inode = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 1
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 4
  %cache_resources = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 3
  %cache.i = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.fscache_begin_read_operation.exit_crit_edge, label %land.lhs.true.i

entry.fscache_begin_read_operation.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %fscache_begin_read_operation.exit

land.lhs.true.i:                                  ; preds = %entry
  %flags.i = getelementptr inbounds %struct.fscache_cookie, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not.i = icmp eq i32 %6, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.fscache_begin_read_operation.exit_crit_edge

land.lhs.true.i.fscache_begin_read_operation.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fscache_begin_read_operation.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i32 @__fscache_begin_read_operation(ptr noundef %cache_resources, ptr noundef nonnull %3) #11
  br label %fscache_begin_read_operation.exit

fscache_begin_read_operation.exit:                ; preds = %if.then.i, %land.lhs.true.i.fscache_begin_read_operation.exit_crit_edge, %entry.fscache_begin_read_operation.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.then.i ], [ -105, %land.lhs.true.i.fscache_begin_read_operation.exit_crit_edge ], [ -105, %entry.fscache_begin_read_operation.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_req_issue_op(ptr noundef %subreq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %subreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subreq, align 8
  %inode = getelementptr inbounds %struct.netfs_read_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3392, i32 noundef 112) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netfs_subreq_terminated(ptr noundef %subreq, i32 noundef -12, i1 noundef zeroext false) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %usage.i = getelementptr inbounds %struct.afs_read, ptr %call7.i.i.i, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #11
  %5 = ptrtoint ptr %usage.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %usage.i, align 8
  %subreq2 = getelementptr inbounds %struct.afs_read, ptr %call7.i.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %subreq2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %subreq, ptr %subreq2, align 8
  %start = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 2
  %7 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %start, align 8
  %transferred = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 4
  %9 = ptrtoint ptr %transferred to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %transferred, align 4
  %conv = zext i32 %10 to i64
  %add = add i64 %8, %conv
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add, ptr %call7.i.i.i, align 8
  %len = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 3
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 8
  %sub = sub i32 %13, %10
  %conv4 = zext i32 %sub to i64
  %len5 = getelementptr inbounds %struct.afs_read, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %len5 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv4, ptr %len5, align 8
  %15 = ptrtoint ptr %subreq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %subreq, align 8
  %netfs_priv = getelementptr inbounds %struct.netfs_read_request, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %netfs_priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netfs_priv, align 8
  %tobool.not.i38 = icmp eq ptr %18, null
  br i1 %tobool.not.i38, label %if.end.key_get.exit_crit_edge, label %cond.true.i

if.end.key_get.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %key_get.exit

cond.true.i:                                      ; preds = %if.end
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %18, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull %18, i32 1, i32 3, i32 1) #11
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %18, ptr nonnull %18, i32 1, ptr nonnull elementtype(i32) %18) #11, !srcloc !132
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !120

cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %cond.true.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %20 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.key_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !113

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.key_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %key_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %18, i32 noundef %.sink.i.i.i.i.i) #11
  br label %key_get.exit

key_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.key_get.exit_crit_edge, %if.end.key_get.exit_crit_edge
  %key = getelementptr inbounds %struct.afs_read, ptr %call7.i.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %key, align 8
  %vnode8 = getelementptr inbounds %struct.afs_read, ptr %call7.i.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %vnode8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %3, ptr %vnode8, align 4
  %def_iter = getelementptr inbounds %struct.afs_read, ptr %call7.i.i.i, i32 0, i32 15
  %iter = getelementptr inbounds %struct.afs_read, ptr %call7.i.i.i, i32 0, i32 14
  %23 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %def_iter, ptr %iter, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %24 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_mapping, align 8
  %i_pages = getelementptr inbounds %struct.address_space, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %call7.i.i.i, align 8
  %28 = ptrtoint ptr %len5 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %len5, align 8
  %conv13 = trunc i64 %29 to i32
  tail call void @iov_iter_xarray(ptr noundef %def_iter, i32 noundef 0, ptr noundef %i_pages, i64 noundef %27, i32 noundef %conv13) #11
  %30 = ptrtoint ptr %vnode8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vnode8, align 4
  %call15 = tail call i32 @afs_fetch_data(ptr noundef %31, ptr noundef nonnull %call7.i.i.i)
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #11
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #11, !srcloc !116
  %asmresult.i.i.i.i.i.i.i40 = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i40)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i40, 1
  br i1 %cmp.i.i.i.i, label %if.then.i42, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %key_get.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i40)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i40, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !113

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #11
  br label %cleanup

if.then.i42:                                      ; preds = %key_get.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !117
  %cleanup.i = getelementptr inbounds %struct.afs_read, ptr %call7.i.i.i, i32 0, i32 13
  %33 = ptrtoint ptr %cleanup.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cleanup.i, align 4
  %tobool.not.i41 = icmp eq ptr %34, null
  br i1 %tobool.not.i41, label %if.then.i42.if.end.i_crit_edge, label %if.then1.i

if.then.i42.if.end.i_crit_edge:                   ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %34(ptr noundef nonnull %call7.i.i.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i42.if.end.i_crit_edge
  %35 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %key, align 8
  tail call void @key_put(ptr noundef %36) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @afs_check_write_begin(ptr nocapture noundef readonly %file, i64 noundef %pos, i32 noundef %len, ptr nocapture noundef readnone %folio, ptr nocapture noundef readnone %_fsdata) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool.not, i32 0, i32 -116
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_priv_cleanup(ptr nocapture noundef readnone %mapping, ptr noundef %netfs_priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @key_put(ptr noundef %netfs_priv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_write_inode(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %wbc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cache.i = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 5
  %0 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache.i, align 8
  %unpinned_fscache_wb.i = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5
  %2 = ptrtoint ptr %unpinned_fscache_wb.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %unpinned_fscache_wb.i, align 4
  %3 = and i16 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  %tobool.not.i.i = icmp eq ptr %1, null
  %or.cond.i = or i1 %tobool.not.i.i, %tobool.not.i
  br i1 %or.cond.i, label %entry.fscache_unpin_writeback.exit_crit_edge, label %if.then.i.i

entry.fscache_unpin_writeback.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %fscache_unpin_writeback.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__fscache_unuse_cookie(ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #11
  br label %fscache_unpin_writeback.exit

fscache_unpin_writeback.exit:                     ; preds = %if.then.i.i, %entry.fscache_unpin_writeback.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_use_cookie(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_unuse_cookie(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fs_fetch_data(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @yfs_fs_fetch_data(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_fetch_data_success(ptr noundef %op) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !113

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = tail call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 14
  %7 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_id, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %comm, ptr noundef nonnull @.str.15, i32 noundef %8) #14
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  tail call void @afs_vnode_commit_status(ptr noundef %op, ptr noundef %file) #11
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_net_id to i32))
  %15 = load i32, ptr @afs_net_id, align 4
  %16 = tail call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i.i.i.i.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !133
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i.i.i.i.i, label %do.end7.rcu_read_lock.exit.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i.i

do.end7.rcu_read_lock.exit.i.i.i.i.i_crit_edge:   ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i:                        ; preds = %do.end7
  %call1.i.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.i:                       ; preds = %land.lhs.true.i.i.i.i.i.i
  %.b4.i.i.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i.i.i, label %land.lhs.true2.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %land.lhs.true2.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #11
  br label %rcu_read_lock.exit.i.i.i.i.i

rcu_read_lock.exit.i.i.i.i.i:                     ; preds = %if.then.i.i.i.i.i.i, %land.lhs.true2.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge, %do.end7.rcu_read_lock.exit.i.i.i.i.i_crit_edge
  %gen.i.i.i.i.i = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 43
  %20 = ptrtoint ptr %gen.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %gen.i.i.i.i.i, align 128
  %call.i.i.i.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %rcu_read_lock.exit.i.i.i.i.i.do.end7.i.i.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.i.i.do.end7.i.i.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %rcu_read_lock.exit.i.i.i.i.i
  %call2.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i.i)
  %tobool3.not.i.i.i.i.i = icmp eq i32 %call2.i.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.do.end7.i.i.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i.i

land.lhs.true.i.i.i.i.i.do.end7.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i.i.i.i.i

land.lhs.true4.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b9.i.i.i.i.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i.i.i.i.i, label %land.lhs.true4.i.i.i.i.i.do.end7.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true4.i.i.i.i.i.do.end7.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 45, ptr noundef nonnull @.str.17) #11
  br label %do.end7.i.i.i.i.i

do.end7.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i.i, %land.lhs.true4.i.i.i.i.i.do.end7.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.do.end7.i.i.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.i.i.do.end7.i.i.i.i.i_crit_edge
  %arrayidx.i.i.i.i.i = getelementptr [0 x ptr], ptr %21, i32 0, i32 %15
  %22 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %call.i10.i.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i10.i.i.i.i.i, label %do.end7.i.i.i.i.i.afs_v2net.exit_crit_edge, label %land.lhs.true.i13.i.i.i.i.i

do.end7.i.i.i.i.i.afs_v2net.exit_crit_edge:       ; preds = %do.end7.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %afs_v2net.exit

land.lhs.true.i13.i.i.i.i.i:                      ; preds = %do.end7.i.i.i.i.i
  %call1.i11.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i.i.i.i)
  %tobool.not.i12.i.i.i.i.i = icmp eq i32 %call1.i11.i.i.i.i.i, 0
  br i1 %tobool.not.i12.i.i.i.i.i, label %land.lhs.true.i13.i.i.i.i.i.afs_v2net.exit_crit_edge, label %land.lhs.true2.i15.i.i.i.i.i

land.lhs.true.i13.i.i.i.i.i.afs_v2net.exit_crit_edge: ; preds = %land.lhs.true.i13.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %afs_v2net.exit

land.lhs.true2.i15.i.i.i.i.i:                     ; preds = %land.lhs.true.i13.i.i.i.i.i
  %.b4.i14.i.i.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i.i.i.i, label %land.lhs.true2.i15.i.i.i.i.i.afs_v2net.exit_crit_edge, label %if.then.i16.i.i.i.i.i

land.lhs.true2.i15.i.i.i.i.i.afs_v2net.exit_crit_edge: ; preds = %land.lhs.true2.i15.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %afs_v2net.exit

if.then.i16.i.i.i.i.i:                            ; preds = %land.lhs.true2.i15.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #11
  br label %afs_v2net.exit

afs_v2net.exit:                                   ; preds = %if.then.i16.i.i.i.i.i, %land.lhs.true2.i15.i.i.i.i.i.afs_v2net.exit_crit_edge, %land.lhs.true.i13.i.i.i.i.i.afs_v2net.exit_crit_edge, %do.end7.i.i.i.i.i.afs_v2net.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !134
  %24 = tail call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i.i.i.i.i17.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i17.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i18.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i18.i.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %n_fetches = getelementptr inbounds %struct.afs_net, ptr %23, i32 0, i32 46
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_fetches, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %n_fetches, i32 1, i32 3, i32 1) #11
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_fetches, ptr %n_fetches, i32 1, ptr elementtype(i32) %n_fetches) #11, !srcloc !135
  %29 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %actual_len = getelementptr inbounds %struct.afs_read, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %actual_len to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %actual_len, align 8
  %conv = trunc i64 %33 to i32
  %34 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %op, align 8
  %n_fetch_bytes = getelementptr inbounds %struct.afs_net, ptr %35, i32 0, i32 45
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_fetch_bytes, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %n_fetch_bytes, i32 1, i32 3, i32 1) #11
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_fetch_bytes, ptr %n_fetch_bytes, i32 %conv, ptr elementtype(i32) %n_fetch_bytes) #11, !srcloc !135
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %29, align 8
  %subreq2.i = getelementptr inbounds %struct.afs_read, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %subreq2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %subreq2.i, align 8
  %error3.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %41 = ptrtoint ptr %error3.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %error3.i, align 2
  %conv.i = sext i16 %42 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -103, i16 %42)
  %cmp.i = icmp eq i16 %42, -103
  br i1 %cmp.i, label %if.then.i, label %afs_v2net.exit.if.end.i_crit_edge

afs_v2net.exit.if.end.i_crit_edge:                ; preds = %afs_v2net.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %afs_v2net.exit
  call void @__sanitizer_cov_trace_pc() #13
  %abort_code.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18, i32 6
  %43 = ptrtoint ptr %abort_code.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %abort_code.i, align 8
  %call.i = tail call i32 @afs_abort_to_error(i32 noundef %44) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %afs_v2net.exit.if.end.i_crit_edge
  %error.0.i = phi i32 [ %call.i, %if.then.i ], [ %conv.i, %afs_v2net.exit.if.end.i_crit_edge ]
  %error5.i = getelementptr inbounds %struct.afs_read, ptr %38, i32 0, i32 11
  %45 = ptrtoint ptr %error5.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %error.0.i, ptr %error5.i, align 4
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  %flags.i = getelementptr inbounds %struct.netfs_read_subrequest, ptr %40, i32 0, i32 9
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i, align 4
  %or.i.i = or i32 %47, 2
  store i32 %or.i.i, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0.i)
  %tobool7.not.i = icmp eq i32 %error.0.i, 0
  br i1 %tobool7.not.i, label %cond.false.i, label %if.then6.i.cond.end.i_crit_edge

if.then6.i.cond.end.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  %actual_len.i = getelementptr inbounds %struct.afs_read, ptr %38, i32 0, i32 2
  %48 = ptrtoint ptr %actual_len.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %actual_len.i, align 8
  %extract.t29.i = trunc i64 %49 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then6.i.cond.end.i_crit_edge
  %cond.off0.i = phi i32 [ %extract.t29.i, %cond.false.i ], [ %error.0.i, %if.then6.i.cond.end.i_crit_edge ]
  tail call void @netfs_subreq_terminated(ptr noundef nonnull %40, i32 noundef %cond.off0.i, i1 noundef zeroext false) #11
  %50 = ptrtoint ptr %subreq2.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %subreq2.i, align 8
  br label %afs_fetch_data_notify.exit

if.else.i:                                        ; preds = %if.end.i
  %done.i = getelementptr inbounds %struct.afs_read, ptr %38, i32 0, i32 12
  %51 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %done.i, align 8
  %tobool11.not.i = icmp eq ptr %52, null
  br i1 %tobool11.not.i, label %if.else.i.afs_fetch_data_notify.exit_crit_edge, label %if.then12.i

if.else.i.afs_fetch_data_notify.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %afs_fetch_data_notify.exit

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %52(ptr noundef %38) #11
  br label %afs_fetch_data_notify.exit

afs_fetch_data_notify.exit:                       ; preds = %if.then12.i, %if.else.i.afs_fetch_data_notify.exit_crit_edge, %cond.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_check_for_remote_deletion(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_fetch_data_notify(ptr nocapture noundef readonly %op) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %subreq2 = getelementptr inbounds %struct.afs_read, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %subreq2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %subreq2, align 8
  %error3 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %5 = ptrtoint ptr %error3 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %error3, align 2
  %conv = sext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -103, i16 %6)
  %cmp = icmp eq i16 %6, -103
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %abort_code = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18, i32 6
  %7 = ptrtoint ptr %abort_code to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %abort_code, align 8
  %call = tail call i32 @afs_abort_to_error(i32 noundef %8) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %error.0 = phi i32 [ %call, %if.then ], [ %conv, %entry.if.end_crit_edge ]
  %error5 = getelementptr inbounds %struct.afs_read, ptr %2, i32 0, i32 11
  %9 = ptrtoint ptr %error5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %error.0, ptr %error5, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.netfs_read_subrequest, ptr %4, i32 0, i32 9
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %or.i = or i32 %11, 2
  store i32 %or.i, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool7.not = icmp eq i32 %error.0, 0
  br i1 %tobool7.not, label %cond.false, label %if.then6.cond.end_crit_edge

if.then6.cond.end_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %actual_len = getelementptr inbounds %struct.afs_read, ptr %2, i32 0, i32 2
  %12 = ptrtoint ptr %actual_len to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %actual_len, align 8
  %extract.t29 = trunc i64 %13 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then6.cond.end_crit_edge
  %cond.off0 = phi i32 [ %extract.t29, %cond.false ], [ %error.0, %if.then6.cond.end_crit_edge ]
  tail call void @netfs_subreq_terminated(ptr noundef nonnull %4, i32 noundef %cond.off0, i1 noundef zeroext false) #11
  %14 = ptrtoint ptr %subreq2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %subreq2, align 8
  br label %if.end15

if.else:                                          ; preds = %if.end
  %done = getelementptr inbounds %struct.afs_read, ptr %2, i32 0, i32 12
  %15 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %done, align 8
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %if.else.if.end15_crit_edge, label %if.then12

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %16(ptr noundef %2) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.else.if.end15_crit_edge, %cond.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_fetch_data_put(ptr nocapture noundef readonly %op) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %error = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %error, align 2
  %conv = sext i16 %1 to i32
  %2 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %error1 = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %error1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %error1, align 4
  %6 = load ptr, ptr %2, align 8
  %usage.i = getelementptr inbounds %struct.afs_read, ptr %6, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #11, !srcloc !116
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.afs_put_read.exit_crit_edge, label %if.then10.i.i.i.i, !prof !113

if.end5.i.i.i.i.afs_put_read.exit_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %afs_put_read.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #11
  br label %afs_put_read.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !117
  %cleanup.i = getelementptr inbounds %struct.afs_read, ptr %6, i32 0, i32 13
  %8 = ptrtoint ptr %cleanup.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cleanup.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then1.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %9(ptr noundef %6) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i.if.end.i_crit_edge
  %key.i = getelementptr inbounds %struct.afs_read, ptr %6, i32 0, i32 4
  %10 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %key.i, align 8
  tail call void @key_put(ptr noundef %11) #11
  tail call void @kfree(ptr noundef %6) #11
  br label %afs_put_read.exit

afs_put_read.exit:                                ; preds = %if.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.afs_put_read.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_vnode_commit_status(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_abort_to_error(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_xarray(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fscache_begin_read_operation(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netfs_readpage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netfs_readahead(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @folio_index(ptr noundef %folio) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_swapbacked.exit.i, label %if.then.i.i.i, !prof !113

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.22) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !130
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs.i:                                       ; preds = %folio_test_swapbacked.exit.i
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_swapcache.exit, label %if.then.i.i, !prof !113

if.then.i.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.22) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !130
  unreachable

folio_test_swapcache.exit:                        ; preds = %land.rhs.i
  %8 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %folio, align 4
  %10 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %folio_test_swapcache.exit.if.end_crit_edge, label %if.then, !prof !113

folio_test_swapcache.exit.if.end_crit_edge:       ; preds = %folio_test_swapcache.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %folio_test_swapcache.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @__page_file_index(ptr noundef %folio) #11
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_file_index(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_folio_dirty(ptr noundef %vnode, ptr noundef %where, ptr noundef %folio) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_folio_dirty, i32 0, i32 1), ptr blockaddress(@trace_afs_folio_dirty, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !136

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !113

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !137
  %call42 = tail call i32 @__traceiter_afs_folio_dirty(ptr noundef null, ptr noundef %vnode, ptr noundef %where, ptr noundef %folio) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !138
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !113

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !139
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_folio_dirty, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_folio_dirty, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_afs_folio_dirty.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_afs_folio_dirty.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 1048, ptr noundef nonnull @.str.17) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #11
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
declare dso_local zeroext i1 @folio_clear_dirty_for_io(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @folio_detach_private(ptr noundef %folio) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %private.i = getelementptr inbounds %struct.anon.148, ptr %folio, i32 0, i32 4
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private.exit, label %if.then.i.i, !prof !113

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.22) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !130
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %folio_test_private.exit
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %0, align 4
  %and.i.i.i1 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1)
  %tobool.not.i.i2 = icmp eq i32 %and.i.i.i1, 0
  br i1 %tobool.not.i.i2, label %folio_clear_private.exit, label %if.then.i.i3, !prof !113

if.then.i.i3:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.22) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !130
  unreachable

folio_clear_private.exit:                         ; preds = %if.end
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %folio) #11
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %private.i, align 4
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #11
  %9 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !120

if.then.i.i.i:                                    ; preds = %folio_clear_private.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.37) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !141
  unreachable

do.end5.i.i.i:                                    ; preds = %folio_clear_private.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #11
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #11, !srcloc !143
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@folio_detach_private, %if.then.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !136

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %folio, i32 noundef -1, i32 noundef %conv.i.i.i.i) #11
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i, label %folio_put_testzero.exit.i.cleanup_crit_edge

folio_put_testzero.exit.i.cleanup_crit_edge:      ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %folio) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %folio_put_testzero.exit.i.cleanup_crit_edge, %folio_test_private.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_folio_dirty(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_wait_private_2(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_add_open_mmap(ptr noundef %vnode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cb_nr_mmap = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cb_nr_mmap, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %cb_nr_mmap, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cb_nr_mmap, ptr %cb_nr_mmap, i32 1, ptr elementtype(i32) %cb_nr_mmap) #11, !srcloc !146
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then:                                          ; preds = %entry
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 1
  %1 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %volume, align 8
  %cell = getelementptr inbounds %struct.afs_volume, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cell, align 8
  %fs_open_mmaps_lock = getelementptr inbounds %struct.afs_cell, ptr %4, i32 0, i32 22
  tail call void @down_write(ptr noundef %fs_open_mmaps_lock) #11
  %cb_mmap_link = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 22
  %5 = ptrtoint ptr %cb_mmap_link to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %cb_mmap_link, align 4
  %cmp.i.not = icmp eq ptr %6, %cb_mmap_link
  br i1 %cmp.i.not, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %if.then
  %7 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %volume, align 8
  %cell5 = getelementptr inbounds %struct.afs_volume, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cell5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cell5, align 8
  %fs_open_mmaps = getelementptr inbounds %struct.afs_cell, ptr %10, i32 0, i32 23
  %prev.i = getelementptr inbounds %struct.afs_cell, ptr %10, i32 0, i32 23, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i15 = tail call zeroext i1 @__list_add_valid(ptr noundef %cb_mmap_link, ptr noundef %12, ptr noundef %fs_open_mmaps) #11
  br i1 %call.i.i15, label %if.end.i.i, label %if.then2.if.end_crit_edge

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cb_mmap_link, ptr %prev.i, align 4
  %14 = ptrtoint ptr %cb_mmap_link to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %fs_open_mmaps, ptr %cb_mmap_link, align 4
  %prev3.i.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 22, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %cb_mmap_link, ptr %12, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then2.if.end_crit_edge, %if.then.if.end_crit_edge
  %17 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %volume, align 8
  %cell7 = getelementptr inbounds %struct.afs_volume, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cell7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cell7, align 8
  %fs_open_mmaps_lock8 = getelementptr inbounds %struct.afs_cell, ptr %20, i32 0, i32 22
  tail call void @up_write(ptr noundef %fs_open_mmaps_lock8) #11
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_mmap(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_drop_open_mmap(ptr noundef %vnode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cb_nr_mmap = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cb_nr_mmap, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @llvm.prefetch.p0(ptr %cb_nr_mmap, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cb_nr_mmap, ptr %cb_nr_mmap, i32 1, ptr elementtype(i32) %cb_nr_mmap) #11, !srcloc !143
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 1
  %1 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %volume, align 8
  %cell = getelementptr inbounds %struct.afs_volume, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cell, align 8
  %fs_open_mmaps_lock = getelementptr inbounds %struct.afs_cell, ptr %4, i32 0, i32 22
  tail call void @down_write(ptr noundef %fs_open_mmaps_lock) #11
  %call.i.i14 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cb_nr_mmap, i32 noundef 4) #11
  %5 = ptrtoint ptr %cb_nr_mmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %cb_nr_mmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %cb_mmap_link = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 22
  %call.i.i15 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cb_mmap_link) #11
  br i1 %call.i.i15, label %if.end.i.i, label %if.then3.list_del_init.exit_crit_edge

if.then3.list_del_init.exit_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 22, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %cb_mmap_link to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cb_mmap_link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then3.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %cb_mmap_link to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %cb_mmap_link, ptr %cb_mmap_link, align 4
  %prev.i3.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 22, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cb_mmap_link, ptr %prev.i3.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %list_del_init.exit, %if.end.if.end4_crit_edge
  %15 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %volume, align 8
  %cell6 = getelementptr inbounds %struct.afs_volume, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cell6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cell6, align 8
  %fs_open_mmaps_lock7 = getelementptr inbounds %struct.afs_cell, ptr %18, i32 0, i32 22
  tail call void @up_write(ptr noundef %fs_open_mmaps_lock7) #11
  %cb_work = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 21
  %call8 = tail call zeroext i1 @flush_work(ptr noundef %cb_work) #11
  br label %return

return:                                           ; preds = %if.end4, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_vm_open(ptr nocapture noundef readonly %vma) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  tail call fastcc void @afs_add_open_mmap(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_vm_close(ptr nocapture noundef readonly %vma) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  tail call fastcc void @afs_drop_open_mmap(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fault(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_vm_map_pages(ptr noundef %vmf, i32 noundef %start_pgoff, i32 noundef %end_pgoff) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call4 = tail call i32 @afs_validate(ptr noundef %5, ptr noundef %9) #11
  %10 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4, label %sw.default [
    i32 0, label %sw.bb
    i32 -12, label %entry.cleanup_crit_edge
    i32 -4, label %entry.sw.bb7_crit_edge
    i32 -512, label %entry.sw.bb7_crit_edge12
  ]

entry.sw.bb7_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 @filemap_map_pages(ptr noundef %vmf, i32 noundef %start_pgoff, i32 noundef %end_pgoff) #11
  br label %cleanup

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge12
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb7, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.default ], [ 1024, %sw.bb7 ], [ %call5, %sw.bb ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_page_mkwrite(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_map_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !73, !74, !76, !77, !79, !80, !82, !83, !84, !86, !87, !89, !91, !92, !93, !94, !96, !97, !99, !100, !101}
!llvm.named.register.sp = !{!103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @afs_file_operations, !1, !"afs_file_operations", i1 false, i1 false}
!1 = !{!"../fs/afs/file.c", i32 34, i32 30}
!2 = !{ptr @afs_file_inode_operations, !3, !"afs_file_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/afs/file.c", i32 48, i32 31}
!4 = !{ptr @afs_file_aops, !5, !"afs_file_aops", i1 false, i1 false}
!5 = !{!"../fs/afs/file.c", i32 54, i32 39}
!6 = !{ptr @afs_symlink_aops, !7, !"afs_symlink_aops", i1 false, i1 false}
!7 = !{!"../fs/afs/file.c", i32 67, i32 39}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/afs/file.c", i32 135, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @afs_open._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @afs_open._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/afs/file.c", i32 166, i32 2}
!16 = !{ptr @afs_open._entry.3, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @afs_open._entry_ptr.5, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/afs/file.c", i32 174, i32 2}
!20 = !{ptr @afs_open._entry.6, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @afs_open._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/afs/file.c", i32 189, i32 2}
!24 = !{ptr @afs_release._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @afs_release._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @afs_release._entry.10, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../fs/afs/file.c", i32 209, i32 2}
!28 = !{ptr @afs_release._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/afs/file.c", i32 292, i32 2}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @afs_fetch_data._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @afs_fetch_data._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @afs_req_ops, !35, !"afs_req_ops", i1 false, i1 false}
!35 = !{!"../fs/afs/file.c", i32 399, i32 37}
!36 = !{ptr @afs_fetch_data_operation, !37, !"afs_fetch_data_operation", i1 false, i1 false}
!37 = !{!"../fs/afs/file.c", i32 276, i32 39}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/afs/file.c", i32 263, i32 2}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @afs_fetch_data_success._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @afs_fetch_data_success._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!58 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/afs/file.c", i32 493, i32 2}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @afs_invalidatepage._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @afs_invalidatepage._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/afs/file.c", i32 501, i32 2}
!67 = !{ptr @afs_invalidatepage._entry.26, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @afs_invalidatepage._entry_ptr.28, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/afs/file.c", i32 472, i32 31}
!73 = !{ptr @afs_invalidate_dirty.___tp_str, !72, !"___tp_str", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/afs/file.c", i32 476, i32 31}
!76 = !{ptr @afs_invalidate_dirty.___tp_str.31, !75, !"___tp_str", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/afs/file.c", i32 479, i32 31}
!79 = !{ptr @afs_invalidate_dirty.___tp_str.33, !78, !"___tp_str", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../include/trace/events/afs.h", i32 1019, i32 1}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!86 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/mm.h", i32 717, i32 2}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/afs/file.c", i32 513, i32 2}
!91 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @afs_releasepage._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @afs_releasepage._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/afs/file.c", i32 529, i32 32}
!96 = !{ptr @afs_releasepage.___tp_str, !95, !"___tp_str", i1 false, i1 false}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/afs/file.c", i32 534, i32 2}
!99 = !{ptr @afs_releasepage._entry.41, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @afs_releasepage._entry_ptr.43, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @afs_vm_ops, !102, !"afs_vm_ops", i1 false, i1 false}
!102 = !{!"../fs/afs/file.c", i32 73, i32 42}
!103 = !{!"sp"}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{!"auto-init"}
!115 = !{i64 2148312700}
!116 = !{i64 2148227164, i64 2148227196, i64 2148227225, i64 2148227259, i64 2148227290, i64 2148227313}
!117 = !{i64 2149319148}
!118 = !{i64 615650, i64 615711}
!119 = !{i64 618382}
!120 = !{!"branch_weights", i32 1, i32 2000}
!121 = !{i64 618667}
!122 = !{i64 2152716603}
!123 = !{i64 2152716445}
!124 = !{i64 2152716773}
!125 = !{i64 2149985305}
!126 = !{i64 2150186928, i64 2150187419, i64 2150186965, i64 2150187021, i64 2150187055, i64 2150187079, i64 2150187120, i64 2150187141, i64 2150187169, i64 2150187203}
!127 = !{i64 2157838329, i64 2157838807, i64 2157838366, i64 2157838422, i64 2157838456, i64 2157838480, i64 2157838521, i64 2157838542, i64 2157838570, i64 2157838604}
!128 = !{i64 2150638201, i64 2150638692, i64 2150638238, i64 2150638294, i64 2150638328, i64 2150638352, i64 2150638393, i64 2150638414, i64 2150638442, i64 2150638476}
!129 = !{i64 2150942220, i64 2150942711, i64 2150942257, i64 2150942313, i64 2150942347, i64 2150942371, i64 2150942412, i64 2150942433, i64 2150942461, i64 2150942495}
!130 = !{i64 2150175434, i64 2150175925, i64 2150175471, i64 2150175527, i64 2150175561, i64 2150175585, i64 2150175626, i64 2150175647, i64 2150175675, i64 2150175709}
!131 = !{i64 2150930458}
!132 = !{i64 2148224699, i64 2148224731, i64 2148224760, i64 2148224794, i64 2148224825, i64 2148224848}
!133 = !{i64 2149369638}
!134 = !{i64 2149369904}
!135 = !{i64 2148223169, i64 2148223195, i64 2148223224, i64 2148223258, i64 2148223289, i64 2148223312}
!136 = !{i64 2148704984, i64 2148704989, i64 2148705002, i64 2148705046, i64 2148705080, i64 2148705101}
!137 = !{i64 2157470375}
!138 = !{i64 2157470606}
!139 = !{i64 2149378197}
!140 = !{i64 2149379233}
!141 = !{i64 2153369126, i64 2153369609, i64 2153369163, i64 2153369219, i64 2153369253, i64 2153369277, i64 2153369318, i64 2153369339, i64 2153369367, i64 2153369401}
!142 = !{i64 2148311621}
!143 = !{i64 2148226354, i64 2148226386, i64 2148226415, i64 2148226449, i64 2148226480, i64 2148226503}
!144 = !{i64 2148311850}
!145 = !{i64 2148308580}
!146 = !{i64 2148223889, i64 2148223921, i64 2148223950, i64 2148223984, i64 2148224015, i64 2148224038}
!147 = !{i64 2148308809}
