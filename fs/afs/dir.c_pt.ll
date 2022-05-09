; ModuleID = '/llk/IR_all_yes/fs/afs/dir.c_pt.bc'
source_filename = "../fs/afs/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.127 }
%struct.atomic_t = type { i32 }
%union.anon.127 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.afs_operation_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.128, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.129, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.130, ptr, %struct.address_space, %struct.list_head, %union.anon.131, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.128 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.129 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.130 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.131 = type { ptr }
%struct.afs_vnode = type { %struct.inode, ptr, %struct.afs_fid, %struct.afs_file_status, i64, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, ptr, i64, i16, %struct.work_struct, %struct.list_head, ptr, %struct.atomic_t, i32, i32, i32, i32, %struct.seqlock_t, i64 }
%struct.afs_fid = type { i64, i64, i32, i32 }
%struct.afs_file_status = type { i64, i64, %struct.timespec64, %struct.timespec64, i64, i64, i64, i32, i32, i16, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.119, %struct.list_head, %struct.list_head, %union.anon.120 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.119 = type { %struct.list_head }
%union.anon.120 = type { %struct.hlist_node }
%struct.afs_volume = type { %union.anon.152, %struct.atomic_t, i64, ptr, %struct.rb_node, %struct.hlist_node, ptr, i32, ptr, ptr, %struct.rwlock_t, i32, i32, %struct.rwlock_t, i8, i8, i8, [65 x i8] }
%union.anon.152 = type { i64 }
%struct.afs_net = type { ptr, %struct.afs_uuid, i8, ptr, ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.rb_root, ptr, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.rw_semaphore, %struct.mutex, %struct.mutex, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.seqlock_t, %struct.work_struct, %struct.timer_list, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.afs_uuid = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.hlist_head = type { ptr }
%struct.afs_lookup_cookie = type { %struct.dir_context, %struct.qstr, i8, i8, i16, [50 x %struct.afs_fid] }
%struct.dir_context = type { ptr, i64 }
%struct.afs_server_list = type { [3 x i64], %struct.refcount_struct, i8, i8, i16, i32, %struct.rwlock_t, [0 x %struct.afs_server_entry] }
%struct.afs_server_entry = type { ptr }
%struct.afs_server = type { %struct.callback_head, %union.anon.150, ptr, ptr, %struct.rb_node, ptr, ptr, %struct.list_head, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.work_struct, ptr, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, %struct.rwlock_t, i32, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.154 }
%union.anon.150 = type { %struct.afs_uuid }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.154 = type { i32, i32, i16, i8 }
%struct.afs_operation = type { ptr, ptr, ptr, ptr, ptr, [2 x %struct.afs_vnode_param], ptr, %struct.afs_volsync, ptr, ptr, %struct.timespec64, %struct.timespec64, i16, i16, i32, i32, i32, %union.anon.161, %struct.afs_addr_cursor, ptr, ptr, ptr, i32, i16, i16, i32 }
%struct.afs_vnode_param = type { ptr, %struct.afs_fid, %struct.afs_status_cb, i64, i32, i8, i8 }
%struct.afs_status_cb = type { %struct.afs_file_status, %struct.afs_callback, i8, i8, i8 }
%struct.afs_callback = type { i64 }
%struct.afs_volsync = type { i64 }
%union.anon.161 = type { %struct.anon.170 }
%struct.anon.170 = type { %struct.afs_volume_status, ptr }
%struct.afs_volume_status = type { i64, i64, i8, i8, i8, i8, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.afs_addr_cursor = type { ptr, i32, i8, i8, i16, i16, i32 }
%struct.anon.163 = type { i32, i16, ptr }
%struct.anon.165 = type { ptr, ptr, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.125, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.125 = type { %struct.atomic_t }
%struct.anon.148 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.anon.6 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.afs_lookup_one_cookie = type { %struct.dir_context, %struct.qstr, i8, %struct.afs_fid }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.afs_super_info = type { ptr, ptr, ptr, i8, i8 }
%struct.afs_read = type { i64, i64, i64, i64, ptr, ptr, ptr, i64, %struct.refcount_struct, i32, i32, i32, ptr, ptr, ptr, %struct.iov_iter }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%struct.afs_xdr_dir_hdr = type { i16, i16, i8, [8 x i8], [19 x i8] }
%union.afs_xdr_dirent = type { %struct.anon.172, [20 x i8] }
%struct.anon.172 = type { i8, [1 x i8], i16, i32, i32, [0 x i8] }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.173, [64 x ptr], %union.anon.174 }
%union.anon.173 = type { %struct.list_head }
%union.anon.174 = type { [3 x [2 x i32]] }
%struct.anon = type { [16 x i8], %struct.lockdep_map }
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
%struct.afs_sysnames = type { [16 x ptr], %struct.refcount_struct, i16, [1 x i8] }

@afs_dir_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @afs_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @afs_dir_open, ptr null, ptr @afs_release, ptr null, ptr null, ptr @afs_lock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@afs_dir_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @afs_lookup, ptr null, ptr @afs_permission, ptr null, ptr null, ptr @afs_create, ptr @afs_link, ptr @afs_unlink, ptr @afs_symlink, ptr @afs_mkdir, ptr @afs_rmdir, ptr null, ptr @afs_rename, ptr @afs_setattr, ptr @afs_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@afs_dir_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr null, ptr null, ptr @afs_dir_set_page_dirty, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @afs_dir_invalidatepage, ptr @afs_dir_releasepage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_fs_dentry_operations = dso_local local_unnamed_addr constant %struct.dentry_operations { ptr @afs_d_revalidate, ptr null, ptr null, ptr null, ptr @afs_d_delete, ptr null, ptr @afs_d_release, ptr null, ptr @afs_d_iput, ptr null, ptr @afs_d_automount, ptr null, ptr null, [76 x i8] undef }, align 128
@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_d_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%-6.6s] ==> %s(%pd)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"afs_d_release\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fs/afs/dir.c\00", [19 x i8] zeroinitializer }, align 32
@afs_d_release._entry_ptr = internal global ptr @afs_d_release._entry, section ".printk_index", align 4
@afs_dir_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] ==> %s({%lu})\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"afs_dir_open\00", [19 x i8] zeroinitializer }, align 32
@afs_dir_open._entry_ptr = internal global ptr @afs_dir_open._entry, section ".printk_index", align 4
@afs_dir_iterate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] ==> %s({%lu},%u,,)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"afs_dir_iterate\00", [16 x i8] zeroinitializer }, align 32
@afs_dir_iterate._entry_ptr = internal global ptr @afs_dir_iterate._entry, section ".printk_index", align 4
@afs_dir_iterate._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() = -ESTALE\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_dir_iterate._entry_ptr.9 = internal global ptr @afs_dir_iterate._entry.7, section ".printk_index", align 4
@afs_dir_iterate._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_dir_iterate._entry_ptr.12 = internal global ptr @afs_dir_iterate._entry.10, section ".printk_index", align 4
@afs_read_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"afs_read_dir\00", [19 x i8] zeroinitializer }, align 32
@afs_read_dir._entry_ptr = internal global ptr @afs_read_dir._entry, section ".printk_index", align 4
@afs_read_dir._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] ==> %s(%llu)\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_read_dir._entry_ptr.17 = internal global ptr @afs_read_dir._entry.15, section ".printk_index", align 4
@afs_read_dir._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.14, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_read_dir._entry_ptr.19 = internal global ptr @afs_read_dir._entry.18, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@afs_dir_read_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\013\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"afs_dir_read_cleanup\00", [43 x i8] zeroinitializer }, align 32
@afs_dir_read_cleanup._entry_ptr = internal global ptr @afs_dir_read_cleanup._entry, section ".printk_index", align 4
@afs_dir_read_cleanup._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013AFS: Assertion failed\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_dir_read_cleanup._entry_ptr.24 = internal global ptr @afs_dir_read_cleanup._entry.22, section ".printk_index", align 4
@afs_dir_read_cleanup._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%lu == %lu is false\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_dir_read_cleanup._entry_ptr.27 = internal global ptr @afs_dir_read_cleanup._entry.25, section ".printk_index", align 4
@afs_dir_read_cleanup._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0130x%lx == 0x%lx is false\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_dir_read_cleanup._entry_ptr.30 = internal global ptr @afs_dir_read_cleanup._entry.28, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@xa_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/xarray.h\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_afs_file_error = external dso_local global %struct.tracepoint, align 4
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/afs.h\00", [37 x i8] zeroinitializer }, align 32
@trace_afs_file_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@afs_net_id = external dso_local local_unnamed_addr global i32, align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_afs_reload_dir = external dso_local global %struct.tracepoint, align 4
@trace_afs_reload_dir.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@afs_dir_check_folio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"kAFS: %s(%lx): [%llx] bad magic %zx/%zx is %04hx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_dir_check_folio\00", [44 x i8] zeroinitializer }, align 32
@afs_dir_check_folio._entry_ptr = internal global ptr @afs_dir_check_folio._entry, section ".printk_index", align 4
@__tracepoint_afs_dir_check_failed = external dso_local global %struct.tracepoint, align 4
@trace_afs_dir_check_failed.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@afs_dir_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014DIR %llx:%llx f=%llx l=%llx al=%llx\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"afs_dir_dump\00", [19 x i8] zeroinitializer }, align 32
@afs_dir_dump._entry_ptr = internal global ptr @afs_dir_dump._entry, section ".printk_index", align 4
@afs_dir_dump._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014DIR %llx %x %zx %zx\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_dir_dump._entry_ptr.50 = internal global ptr @afs_dir_dump._entry.48, section ".printk_index", align 4
@afs_dir_dump._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\014[%02lx] %32phN\0A\00", [46 x i8] zeroinitializer }, align 32
@afs_dir_dump._entry_ptr.53 = internal global ptr @afs_dir_dump._entry.51, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@afs_dir_iterate_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s] ==> %s(%llx,%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"afs_dir_iterate_block\00", [42 x i8] zeroinitializer }, align 32
@afs_dir_iterate_block._entry_ptr = internal global ptr @afs_dir_iterate_block._entry, section ".printk_index", align 4
@afs_dir_iterate_block._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%-6.6s]     ENT[%zu.%u]: unused\0A\00", [62 x i8] zeroinitializer }, align 32
@afs_dir_iterate_block._entry_ptr.58 = internal global ptr @afs_dir_iterate_block._entry.56, section ".printk_index", align 4
@afs_dir_iterate_block._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%-6.6s]     ENT[%zu]: name too long (len %u/%zu)\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_dir_iterate_block._entry_ptr.61 = internal global ptr @afs_dir_iterate_block._entry.59, section ".printk_index", align 4
@afs_dir_iterate_block._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[%-6.6s]     ENT[%zu.%u]: %s %zu \22%s\22\0A\00", [57 x i8] zeroinitializer }, align 32
@afs_dir_iterate_block._entry_ptr.64 = internal global ptr @afs_dir_iterate_block._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"skip\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fill\00", [27 x i8] zeroinitializer }, align 32
@afs_dir_iterate_block._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.55, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"[%-6.6s]     ENT[%zu.%u]: %u extends beyond end dir block (len %zu)\0A\00", [59 x i8] zeroinitializer }, align 32
@afs_dir_iterate_block._entry_ptr.69 = internal global ptr @afs_dir_iterate_block._entry.67, section ".printk_index", align 4
@afs_dir_iterate_block._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.55, ptr @.str.2, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%-6.6s]     ENT[%zu.u]: %u unmarked extension (%u/%u)\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_dir_iterate_block._entry_ptr.72 = internal global ptr @afs_dir_iterate_block._entry.70, section ".printk_index", align 4
@afs_dir_iterate_block._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.55, ptr @.str.2, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] <== %s() = 0 [full]\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_dir_iterate_block._entry_ptr.75 = internal global ptr @afs_dir_iterate_block._entry.73, section ".printk_index", align 4
@afs_dir_iterate_block._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.55, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] <== %s() = 1 [more]\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_dir_iterate_block._entry_ptr.78 = internal global ptr @afs_dir_iterate_block._entry.76, section ".printk_index", align 4
@afs_lookup_filldir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%-6.6s] ==> %s({%s,%u},%s,%u,,%llu,%u)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"afs_lookup_filldir\00", [45 x i8] zeroinitializer }, align 32
@afs_lookup_filldir._entry_ptr = internal global ptr @afs_lookup_filldir._entry, section ".printk_index", align 4
@afs_lookup_filldir._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.80, ptr @.str.2, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_lookup_filldir._entry_ptr.82 = internal global ptr @afs_lookup_filldir._entry.81, section ".printk_index", align 4
@afs_lookup_one_filldir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.83, ptr @.str.2, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"afs_lookup_one_filldir\00", [41 x i8] zeroinitializer }, align 32
@afs_lookup_one_filldir._entry_ptr = internal global ptr @afs_lookup_one_filldir._entry, section ".printk_index", align 4
@afs_lookup_one_filldir._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s] <== %s() = 0 [no]\0A\00", [36 x i8] zeroinitializer }, align 32
@afs_lookup_one_filldir._entry_ptr.86 = internal global ptr @afs_lookup_one_filldir._entry.84, section ".printk_index", align 4
@afs_lookup_one_filldir._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s] <== %s() = -1 [found]\0A\00", [32 x i8] zeroinitializer }, align 32
@afs_lookup_one_filldir._entry_ptr.89 = internal global ptr @afs_lookup_one_filldir._entry.87, section ".printk_index", align 4
@afs_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[%-6.6s] ==> %s({%llx:%llu},%p{%pd},)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"afs_lookup\00", [21 x i8] zeroinitializer }, align 32
@afs_lookup._entry_ptr = internal global ptr @afs_lookup._entry, section ".printk_index", align 4
@afs_lookup._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.91, ptr @.str.2, i32 983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_lookup._entry_ptr.93 = internal global ptr @afs_lookup._entry.92, section ".printk_index", align 4
@afs_lookup._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.91, ptr @.str.2, i32 983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_lookup._entry_ptr.95 = internal global ptr @afs_lookup._entry.94, section ".printk_index", align 4
@afs_lookup._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.91, ptr @.str.2, i32 983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_lookup._entry_ptr.97 = internal global ptr @afs_lookup._entry.96, section ".printk_index", align 4
@afs_lookup._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.91, ptr @.str.2, i32 983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_lookup._entry_ptr.99 = internal global ptr @afs_lookup._entry.98, section ".printk_index", align 4
@afs_lookup._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.91, ptr @.str.2, i32 986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%-6.6s] <== %s() = -ENAMETOOLONG\0A\00", [61 x i8] zeroinitializer }, align 32
@afs_lookup._entry_ptr.102 = internal global ptr @afs_lookup._entry.100, section ".printk_index", align 4
@afs_lookup._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.91, ptr @.str.2, i32 991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_lookup._entry_ptr.104 = internal global ptr @afs_lookup._entry.103, section ".printk_index", align 4
@afs_lookup._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.91, ptr @.str.2, i32 997, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s] <== %s() = %ld [key]\0A\00", [33 x i8] zeroinitializer }, align 32
@afs_lookup._entry_ptr.107 = internal global ptr @afs_lookup._entry.105, section ".printk_index", align 4
@afs_lookup._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.91, ptr @.str.2, i32 1004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] <== %s() = %d [val]\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_lookup._entry_ptr.110 = internal global ptr @afs_lookup._entry.108, section ".printk_index", align 4
@afs_lookup._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.91, ptr @.str.2, i32 1024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s]     splice %p\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_lookup._entry_ptr.113 = internal global ptr @afs_lookup._entry.111, section ".printk_index", align 4
@afs_lookup._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.91, ptr @.str.2, i32 1032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_lookup._entry_ptr.116 = internal global ptr @afs_lookup._entry.114, section ".printk_index", align 4
@afs_lookup_atsys._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.117, ptr @.str.2, i32 923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_lookup_atsys\00", [47 x i8] zeroinitializer }, align 32
@afs_lookup_atsys._entry_ptr = internal global ptr @afs_lookup_atsys._entry, section ".printk_index", align 4
@afs_do_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.2, i32 793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] ==> %s({%lu},%p{%pd},)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"afs_do_lookup\00", [18 x i8] zeroinitializer }, align 32
@afs_do_lookup._entry_ptr = internal global ptr @afs_do_lookup._entry, section ".printk_index", align 4
@afs_do_lookup._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.2, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s]     nr_files %u\0A\00", [38 x i8] zeroinitializer }, align 32
@afs_do_lookup._entry_ptr.122 = internal global ptr @afs_do_lookup._entry.120, section ".printk_index", align 4
@afs_inline_bulk_status_operation = internal constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr @afs_fs_inline_bulk_status, ptr @yfs_fs_inline_bulk_status, ptr @afs_do_lookup_success, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@afs_lookup_fetch_status_operation = internal constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr @afs_fs_fetch_status, ptr @yfs_fs_fetch_status, ptr @afs_do_lookup_success, ptr @afs_check_for_remote_deletion, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@afs_do_lookup._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.119, ptr @.str.2, i32 907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_do_lookup._entry_ptr.124 = internal global ptr @afs_do_lookup._entry.123, section ".printk_index", align 4
@afs_server_supports_ibulk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@afs_do_lookup_success._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.125, ptr @.str.2, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"afs_do_lookup_success\00", [42 x i8] zeroinitializer }, align 32
@afs_do_lookup_success._entry_ptr = internal global ptr @afs_do_lookup_success._entry, section ".printk_index", align 4
@afs_do_lookup_success._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.2, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%-6.6s]     do [%u]\0A\00", [42 x i8] zeroinitializer }, align 32
@afs_do_lookup_success._entry_ptr.128 = internal global ptr @afs_do_lookup_success._entry.126, section ".printk_index", align 4
@afs_do_lookup_success._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.125, ptr @.str.2, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%-6.6s]     - abort %d %llx:%llx.%x\0A\00", [58 x i8] zeroinitializer }, align 32
@afs_do_lookup_success._entry_ptr.131 = internal global ptr @afs_do_lookup_success._entry.129, section ".printk_index", align 4
@afs_do_lookup_success._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.125, ptr @.str.2, i32 729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_do_lookup_success._entry_ptr.133 = internal global ptr @afs_do_lookup_success._entry.132, section ".printk_index", align 4
@__tracepoint_afs_lookup = external dso_local global %struct.tracepoint, align 4
@trace_afs_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@afs_d_revalidate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.2, i32 1099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%-6.6s] ==> %s({v={%llx:%llu} n=%pd fl=%lx},)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_d_revalidate\00", [47 x i8] zeroinitializer }, align 32
@afs_d_revalidate._entry_ptr = internal global ptr @afs_d_revalidate._entry, section ".printk_index", align 4
@afs_d_revalidate._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.2, i32 1101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] ==> %s({neg n=%pd})\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_d_revalidate._entry_ptr.138 = internal global ptr @afs_d_revalidate._entry.136, section ".printk_index", align 4
@afs_d_revalidate._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.135, ptr @.str.2, i32 1116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%-6.6s]     %pd: parent dir deleted\0A\00", [58 x i8] zeroinitializer }, align 32
@afs_d_revalidate._entry_ptr.141 = internal global ptr @afs_d_revalidate._entry.139, section ".printk_index", align 4
@afs_d_revalidate._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.135, ptr @.str.2, i32 1134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s]     dir modified\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_d_revalidate._entry_ptr.144 = internal global ptr @afs_d_revalidate._entry.142, section ".printk_index", align 4
@afs_d_revalidate._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.135, ptr @.str.2, i32 1147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"kAFS: afs_d_revalidate: %pd2 has bad inode\0A\00", [52 x i8] zeroinitializer }, align 32
@afs_d_revalidate._entry_ptr.147 = internal global ptr @afs_d_revalidate._entry.145, section ".printk_index", align 4
@afs_d_revalidate._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.135, ptr @.str.2, i32 1158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[%-6.6s]     %pd: dirent changed [%llu != %llu]\0A\00", [47 x i8] zeroinitializer }, align 32
@afs_d_revalidate._entry_ptr.150 = internal global ptr @afs_d_revalidate._entry.148, section ".printk_index", align 4
@afs_d_revalidate._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.135, ptr @.str.2, i32 1169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%-6.6s]     %pd: file deleted (uq %u -> %u I:%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_d_revalidate._entry_ptr.153 = internal global ptr @afs_d_revalidate._entry.151, section ".printk_index", align 4
@afs_d_revalidate._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.135, ptr @.str.2, i32 1176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%-6.6s]     %pd: dirent not found\0A\00", [60 x i8] zeroinitializer }, align 32
@afs_d_revalidate._entry_ptr.156 = internal global ptr @afs_d_revalidate._entry.154, section ".printk_index", align 4
@afs_d_revalidate._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.135, ptr @.str.2, i32 1183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[%-6.6s]     failed to iterate dir %pd: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@afs_d_revalidate._entry_ptr.159 = internal global ptr @afs_d_revalidate._entry.157, section ".printk_index", align 4
@afs_d_revalidate._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.135, ptr @.str.2, i32 1192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s] <== %s() = 1 [valid]\0A\00", [33 x i8] zeroinitializer }, align 32
@afs_d_revalidate._entry_ptr.162 = internal global ptr @afs_d_revalidate._entry.160, section ".printk_index", align 4
@afs_d_revalidate._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.135, ptr @.str.2, i32 1196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%-6.6s]     dropping dentry %pd2\0A\00", [61 x i8] zeroinitializer }, align 32
@afs_d_revalidate._entry_ptr.165 = internal global ptr @afs_d_revalidate._entry.163, section ".printk_index", align 4
@afs_d_revalidate._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.135, ptr @.str.2, i32 1200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() = 0 [bad]\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_d_revalidate._entry_ptr.168 = internal global ptr @afs_d_revalidate._entry.166, section ".printk_index", align 4
@afs_d_revalidate_rcu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.2, i32 1046, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s] ==> %s(%p)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"afs_d_revalidate_rcu\00", [43 x i8] zeroinitializer }, align 32
@afs_d_revalidate_rcu._entry_ptr = internal global ptr @afs_d_revalidate_rcu._entry, section ".printk_index", align 4
@afs_do_lookup_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.171, ptr @.str.2, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"afs_do_lookup_one\00", [46 x i8] zeroinitializer }, align 32
@afs_do_lookup_one._entry_ptr = internal global ptr @afs_do_lookup_one._entry, section ".printk_index", align 4
@afs_do_lookup_one._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.171, ptr @.str.2, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s] <== %s() = %d [iter]\0A\00", [33 x i8] zeroinitializer }, align 32
@afs_do_lookup_one._entry_ptr.174 = internal global ptr @afs_do_lookup_one._entry.172, section ".printk_index", align 4
@afs_do_lookup_one._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.171, ptr @.str.2, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%-6.6s] <== %s() = -ENOENT [not found]\0A\00", [55 x i8] zeroinitializer }, align 32
@afs_do_lookup_one._entry_ptr.177 = internal global ptr @afs_do_lookup_one._entry.175, section ".printk_index", align 4
@afs_do_lookup_one._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.171, ptr @.str.2, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[%-6.6s] <== %s() = 0 { vn=%llu u=%u }\0A\00", [56 x i8] zeroinitializer }, align 32
@afs_do_lookup_one._entry_ptr.180 = internal global ptr @afs_do_lookup_one._entry.178, section ".printk_index", align 4
@afs_d_delete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.181, ptr @.str.2, i32 1212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"afs_d_delete\00", [19 x i8] zeroinitializer }, align 32
@afs_d_delete._entry_ptr = internal global ptr @afs_d_delete._entry, section ".printk_index", align 4
@afs_d_delete._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.181, ptr @.str.2, i32 1222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] <== %s() = 0 [keep]\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_d_delete._entry_ptr.184 = internal global ptr @afs_d_delete._entry.182, section ".printk_index", align 4
@afs_d_delete._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.181, ptr @.str.2, i32 1226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() = 1 [zap]\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_d_delete._entry_ptr.187 = internal global ptr @afs_d_delete._entry.185, section ".printk_index", align 4
@afs_mkdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.189, ptr @.str.2, i32 1340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[%-6.6s] ==> %s({%llx:%llu},{%pd},%ho)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"afs_mkdir\00", [22 x i8] zeroinitializer }, align 32
@afs_mkdir._entry_ptr = internal global ptr @afs_mkdir._entry, section ".printk_index", align 4
@afs_mkdir_operation = internal constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr @afs_fs_make_dir, ptr @yfs_fs_make_dir, ptr @afs_create_success, ptr @afs_check_for_remote_deletion, ptr null, ptr @afs_create_edit_dir, ptr @afs_create_put }, [36 x i8] zeroinitializer }, align 32
@afs_create_success._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.191, ptr @.str.2, i32 1290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s] ==> %s(op=%08x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"afs_create_success\00", [45 x i8] zeroinitializer }, align 32
@afs_create_success._entry_ptr = internal global ptr @afs_create_success._entry, section ".printk_index", align 4
@afs_vnode_new_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.192, ptr @.str.2, i32 1268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_vnode_new_inode\00", [44 x i8] zeroinitializer }, align 32
@afs_vnode_new_inode._entry_ptr = internal global ptr @afs_vnode_new_inode._entry, section ".printk_index", align 4
@afs_vnode_new_inode._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.192, ptr @.str.2, i32 1270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_vnode_new_inode._entry_ptr.194 = internal global ptr @afs_vnode_new_inode._entry.193, section ".printk_index", align 4
@afs_vnode_new_inode._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.192, ptr @.str.2, i32 1270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_vnode_new_inode._entry_ptr.196 = internal global ptr @afs_vnode_new_inode._entry.195, section ".printk_index", align 4
@afs_vnode_new_inode._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.192, ptr @.str.2, i32 1270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_vnode_new_inode._entry_ptr.198 = internal global ptr @afs_vnode_new_inode._entry.197, section ".printk_index", align 4
@afs_vnode_new_inode._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.192, ptr @.str.2, i32 1270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_vnode_new_inode._entry_ptr.200 = internal global ptr @afs_vnode_new_inode._entry.199, section ".printk_index", align 4
@afs_create_edit_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.201, ptr @.str.2, i32 1303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_create_edit_dir\00", [44 x i8] zeroinitializer }, align 32
@afs_create_edit_dir._entry_ptr = internal global ptr @afs_create_edit_dir._entry, section ".printk_index", align 4
@afs_create_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.202, ptr @.str.2, i32 1315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"afs_create_put\00", [17 x i8] zeroinitializer }, align 32
@afs_create_put._entry_ptr = internal global ptr @afs_create_put._entry, section ".printk_index", align 4
@afs_rmdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.204, ptr @.str.2, i32 1424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%-6.6s] ==> %s({%llx:%llu},{%pd})\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"afs_rmdir\00", [22 x i8] zeroinitializer }, align 32
@afs_rmdir._entry_ptr = internal global ptr @afs_rmdir._entry, section ".printk_index", align 4
@afs_rmdir_operation = internal constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr @afs_fs_remove_dir, ptr @yfs_fs_remove_dir, ptr @afs_rmdir_success, ptr @afs_check_for_remote_deletion, ptr null, ptr @afs_rmdir_edit_dir, ptr @afs_rmdir_put }, [36 x i8] zeroinitializer }, align 32
@afs_rmdir_success._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.205, ptr @.str.2, i32 1376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"afs_rmdir_success\00", [46 x i8] zeroinitializer }, align 32
@afs_rmdir_success._entry_ptr = internal global ptr @afs_rmdir_success._entry, section ".printk_index", align 4
@afs_rmdir_edit_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.206, ptr @.str.2, i32 1387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"afs_rmdir_edit_dir\00", [45 x i8] zeroinitializer }, align 32
@afs_rmdir_edit_dir._entry_ptr = internal global ptr @afs_rmdir_edit_dir._entry, section ".printk_index", align 4
@afs_rmdir_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.207, ptr @.str.2, i32 1400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"afs_rmdir_put\00", [18 x i8] zeroinitializer }, align 32
@afs_rmdir_put._entry_ptr = internal global ptr @afs_rmdir_put._entry, section ".printk_index", align 4
@afs_unlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.208, ptr @.str.2, i32 1558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"afs_unlink\00", [21 x i8] zeroinitializer }, align 32
@afs_unlink._entry_ptr = internal global ptr @afs_unlink._entry, section ".printk_index", align 4
@afs_unlink_operation = internal constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr @afs_fs_remove_file, ptr @yfs_fs_remove_file, ptr @afs_unlink_success, ptr @afs_check_for_remote_deletion, ptr null, ptr @afs_unlink_edit_dir, ptr @afs_unlink_put }, [36 x i8] zeroinitializer }, align 32
@afs_fetch_status_operation = external dso_local constant %struct.afs_operation_ops, align 4
@afs_unlink_success._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.209, ptr @.str.2, i32 1508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"afs_unlink_success\00", [45 x i8] zeroinitializer }, align 32
@afs_unlink_success._entry_ptr = internal global ptr @afs_unlink_success._entry, section ".printk_index", align 4
@afs_dir_remove_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.211, ptr @.str.2, i32 1496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s]     AFS_VNODE_DELETED\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_dir_remove_link\00", [44 x i8] zeroinitializer }, align 32
@afs_dir_remove_link._entry_ptr = internal global ptr @afs_dir_remove_link._entry, section ".printk_index", align 4
@afs_dir_remove_link._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.211, ptr @.str.2, i32 1503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s]     nlink %d [val %d]\0A\00", [32 x i8] zeroinitializer }, align 32
@afs_dir_remove_link._entry_ptr.214 = internal global ptr @afs_dir_remove_link._entry.212, section ".printk_index", align 4
@afs_unlink_edit_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.215, ptr @.str.2, i32 1522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_unlink_edit_dir\00", [44 x i8] zeroinitializer }, align 32
@afs_unlink_edit_dir._entry_ptr = internal global ptr @afs_unlink_edit_dir._entry, section ".printk_index", align 4
@afs_unlink_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.216, ptr @.str.2, i32 1533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"afs_unlink_put\00", [17 x i8] zeroinitializer }, align 32
@afs_unlink_put._entry_ptr = internal global ptr @afs_unlink_put._entry, section ".printk_index", align 4
@afs_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.217, ptr @.str.2, i32 1639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"afs_create\00", [21 x i8] zeroinitializer }, align 32
@afs_create._entry_ptr = internal global ptr @afs_create._entry, section ".printk_index", align 4
@afs_create_operation = internal constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr @afs_fs_create_file, ptr @yfs_fs_create_file, ptr @afs_create_success, ptr @afs_check_for_remote_deletion, ptr null, ptr @afs_create_edit_dir, ptr @afs_create_put }, [36 x i8] zeroinitializer }, align 32
@afs_create._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.217, ptr @.str.2, i32 1663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_create._entry_ptr.219 = internal global ptr @afs_create._entry.218, section ".printk_index", align 4
@afs_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.221, ptr @.str.2, i32 1713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%-6.6s] ==> %s({%llx:%llu},{%llx:%llu},{%pd})\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"afs_link\00", [23 x i8] zeroinitializer }, align 32
@afs_link._entry_ptr = internal global ptr @afs_link._entry, section ".printk_index", align 4
@afs_link_operation = internal constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr @afs_fs_link, ptr @yfs_fs_link, ptr @afs_link_success, ptr @afs_check_for_remote_deletion, ptr null, ptr @afs_create_edit_dir, ptr @afs_link_put }, [36 x i8] zeroinitializer }, align 32
@afs_link._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.221, ptr @.str.2, i32 1745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_link._entry_ptr.223 = internal global ptr @afs_link._entry.222, section ".printk_index", align 4
@afs_link_success._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.224, ptr @.str.2, i32 1672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_link_success\00", [47 x i8] zeroinitializer }, align 32
@afs_link_success._entry_ptr = internal global ptr @afs_link_success._entry, section ".printk_index", align 4
@afs_link_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.225, ptr @.str.2, i32 1685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"afs_link_put\00", [19 x i8] zeroinitializer }, align 32
@afs_link_put._entry_ptr = internal global ptr @afs_link_put._entry, section ".printk_index", align 4
@afs_symlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.227, ptr @.str.2, i32 1770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[%-6.6s] ==> %s({%llx:%llu},{%pd},%s)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"afs_symlink\00", [20 x i8] zeroinitializer }, align 32
@afs_symlink._entry_ptr = internal global ptr @afs_symlink._entry, section ".printk_index", align 4
@afs_symlink_operation = internal constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr @afs_fs_symlink, ptr @yfs_fs_symlink, ptr @afs_create_success, ptr @afs_check_for_remote_deletion, ptr null, ptr @afs_create_edit_dir, ptr @afs_create_put }, [36 x i8] zeroinitializer }, align 32
@afs_symlink._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.227, ptr @.str.2, i32 1797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_symlink._entry_ptr.229 = internal global ptr @afs_symlink._entry.228, section ".printk_index", align 4
@afs_rename._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.231, ptr @.str.2, i32 1921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[%-6.6s] ==> %s({%llx:%llu},{%llx:%llu},{%llx:%llu},{%pd})\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"afs_rename\00", [21 x i8] zeroinitializer }, align 32
@afs_rename._entry_ptr = internal global ptr @afs_rename._entry, section ".printk_index", align 4
@afs_rename_operation = internal constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr @afs_fs_rename, ptr @yfs_fs_rename, ptr @afs_rename_success, ptr null, ptr null, ptr @afs_rename_edit_dir, ptr @afs_rename_put }, [36 x i8] zeroinitializer }, align 32
@afs_rename_success._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.232, ptr @.str.2, i32 1803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"afs_rename_success\00", [45 x i8] zeroinitializer }, align 32
@afs_rename_success._entry_ptr = internal global ptr @afs_rename_success._entry, section ".printk_index", align 4
@afs_rename_edit_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.233, ptr @.str.2, i32 1825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_rename_edit_dir\00", [44 x i8] zeroinitializer }, align 32
@afs_rename_edit_dir._entry_ptr = internal global ptr @afs_rename_edit_dir._entry, section ".printk_index", align 4
@afs_rename_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.234, ptr @.str.2, i32 1879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"afs_rename_put\00", [17 x i8] zeroinitializer }, align 32
@afs_rename_put._entry_ptr = internal global ptr @afs_rename_put._entry, section ".printk_index", align 4
@afs_dir_releasepage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.236, ptr @.str.2, i32 2009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%-6.6s] ==> %s({{%llx:%llu}[%lu]})\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_dir_releasepage\00", [44 x i8] zeroinitializer }, align 32
@afs_dir_releasepage._entry_ptr = internal global ptr @afs_dir_releasepage._entry, section ".printk_index", align 4
@afs_dir_invalidatepage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.238, ptr @.str.2, i32 2028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] ==> %s({%lu},%u,%u)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"afs_dir_invalidatepage\00", [41 x i8] zeroinitializer }, align 32
@afs_dir_invalidatepage._entry_ptr = internal global ptr @afs_dir_invalidatepage._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1026, i64 1030]
@__sancov_gen_cov_switch_values.239 = internal global [4 x i64] [i64 2, i64 32, i64 1026, i64 1030]
@__sancov_gen_cov_switch_values.240 = internal global [4 x i64] [i64 2, i64 32, i64 1026, i64 1030]
@__sancov_gen_cov_switch_values.241 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.242 = private unnamed_addr constant [24 x i8] c"afs_dir_file_operations\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 53, i32 30 }
@___asan_gen_.245 = private unnamed_addr constant [13 x i8] c"afs_dir_aops\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 75, i32 39 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1245, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 252, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 498, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 501, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 547, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 277, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 300, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 386, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 125, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 695, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 260, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 717, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1182, i32 9 }
@___asan_gen_.354 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 723, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant [30 x i8] c"../include/trace/events/afs.h\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1196, i32 1 }
@___asan_gen_.360 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 108, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 45, i32 7 }
@___asan_gen_.366 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1160, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 698, i32 1 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 154, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 192, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 195, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 208, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 403, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 415, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 430, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 436, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 444, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 456, i32 5 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 474, i32 4 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 481, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 642, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 666, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 573, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 583, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 591, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 980, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 983, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 986, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 991, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 997, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1004, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1024, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1032, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 923, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 793, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 840, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant [33 x i8] c"afs_inline_bulk_status_operation\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 732, i32 39 }
@___asan_gen_.566 = private unnamed_addr constant [34 x i8] c"afs_lookup_fetch_status_operation\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 738, i32 39 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 907, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 682, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 707, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 723, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 729, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1097, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1101, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1116, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1134, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1146, i32 4 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1156, i32 4 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1166, i32 4 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1176, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1182, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1192, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1196, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1200, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1046, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 611, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 616, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 621, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 626, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1212, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1222, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1226, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1339, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant [20 x i8] c"afs_mkdir_operation\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1321, i32 39 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1290, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1268, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1270, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1303, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1315, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1423, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant [20 x i8] c"afs_rmdir_operation\00", align 1
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1405, i32 39 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1376, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1387, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1400, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1557, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant [21 x i8] c"afs_unlink_operation\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1538, i32 39 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1508, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1496, i32 4 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1503, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1522, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1533, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1638, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant [21 x i8] c"afs_create_operation\00", align 1
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1619, i32 39 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1663, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1710, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant [19 x i8] c"afs_link_operation\00", align 1
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1690, i32 39 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1745, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1672, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1685, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1768, i32 2 }
@___asan_gen_.890 = private unnamed_addr constant [22 x i8] c"afs_symlink_operation\00", align 1
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1749, i32 39 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1797, i32 2 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1917, i32 2 }
@___asan_gen_.905 = private unnamed_addr constant [21 x i8] c"afs_rename_operation\00", align 1
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1887, i32 39 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1803, i32 2 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1825, i32 2 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 1879, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 2009, i32 2 }
@___asan_gen_.935 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.941 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.942 = private constant [16 x i8] c"../fs/afs/dir.c\00", align 1
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 2028, i32 2 }
@llvm.compiler.used = appending global [335 x ptr] [ptr @afs_create._entry, ptr @afs_create._entry.218, ptr @afs_create._entry_ptr, ptr @afs_create._entry_ptr.219, ptr @afs_create_edit_dir._entry, ptr @afs_create_edit_dir._entry_ptr, ptr @afs_create_put._entry, ptr @afs_create_put._entry_ptr, ptr @afs_create_success._entry, ptr @afs_create_success._entry_ptr, ptr @afs_d_delete._entry, ptr @afs_d_delete._entry.182, ptr @afs_d_delete._entry.185, ptr @afs_d_delete._entry_ptr, ptr @afs_d_delete._entry_ptr.184, ptr @afs_d_delete._entry_ptr.187, ptr @afs_d_release._entry, ptr @afs_d_release._entry_ptr, ptr @afs_d_revalidate._entry, ptr @afs_d_revalidate._entry.136, ptr @afs_d_revalidate._entry.139, ptr @afs_d_revalidate._entry.142, ptr @afs_d_revalidate._entry.145, ptr @afs_d_revalidate._entry.148, ptr @afs_d_revalidate._entry.151, ptr @afs_d_revalidate._entry.154, ptr @afs_d_revalidate._entry.157, ptr @afs_d_revalidate._entry.160, ptr @afs_d_revalidate._entry.163, ptr @afs_d_revalidate._entry.166, ptr @afs_d_revalidate._entry_ptr, ptr @afs_d_revalidate._entry_ptr.138, ptr @afs_d_revalidate._entry_ptr.141, ptr @afs_d_revalidate._entry_ptr.144, ptr @afs_d_revalidate._entry_ptr.147, ptr @afs_d_revalidate._entry_ptr.150, ptr @afs_d_revalidate._entry_ptr.153, ptr @afs_d_revalidate._entry_ptr.156, ptr @afs_d_revalidate._entry_ptr.159, ptr @afs_d_revalidate._entry_ptr.162, ptr @afs_d_revalidate._entry_ptr.165, ptr @afs_d_revalidate._entry_ptr.168, ptr @afs_d_revalidate_rcu._entry, ptr @afs_d_revalidate_rcu._entry_ptr, ptr @afs_dir_check_folio._entry, ptr @afs_dir_check_folio._entry_ptr, ptr @afs_dir_dump._entry, ptr @afs_dir_dump._entry.48, ptr @afs_dir_dump._entry.51, ptr @afs_dir_dump._entry_ptr, ptr @afs_dir_dump._entry_ptr.50, ptr @afs_dir_dump._entry_ptr.53, ptr @afs_dir_invalidatepage._entry, ptr @afs_dir_invalidatepage._entry_ptr, ptr @afs_dir_iterate._entry, ptr @afs_dir_iterate._entry.10, ptr @afs_dir_iterate._entry.7, ptr @afs_dir_iterate._entry_ptr, ptr @afs_dir_iterate._entry_ptr.12, ptr @afs_dir_iterate._entry_ptr.9, ptr @afs_dir_iterate_block._entry, ptr @afs_dir_iterate_block._entry.56, ptr @afs_dir_iterate_block._entry.59, ptr @afs_dir_iterate_block._entry.62, ptr @afs_dir_iterate_block._entry.67, ptr @afs_dir_iterate_block._entry.70, ptr @afs_dir_iterate_block._entry.73, ptr @afs_dir_iterate_block._entry.76, ptr @afs_dir_iterate_block._entry_ptr, ptr @afs_dir_iterate_block._entry_ptr.58, ptr @afs_dir_iterate_block._entry_ptr.61, ptr @afs_dir_iterate_block._entry_ptr.64, ptr @afs_dir_iterate_block._entry_ptr.69, ptr @afs_dir_iterate_block._entry_ptr.72, ptr @afs_dir_iterate_block._entry_ptr.75, ptr @afs_dir_iterate_block._entry_ptr.78, ptr @afs_dir_open._entry, ptr @afs_dir_open._entry_ptr, ptr @afs_dir_read_cleanup._entry, ptr @afs_dir_read_cleanup._entry.22, ptr @afs_dir_read_cleanup._entry.25, ptr @afs_dir_read_cleanup._entry.28, ptr @afs_dir_read_cleanup._entry_ptr, ptr @afs_dir_read_cleanup._entry_ptr.24, ptr @afs_dir_read_cleanup._entry_ptr.27, ptr @afs_dir_read_cleanup._entry_ptr.30, ptr @afs_dir_releasepage._entry, ptr @afs_dir_releasepage._entry_ptr, ptr @afs_dir_remove_link._entry, ptr @afs_dir_remove_link._entry.212, ptr @afs_dir_remove_link._entry_ptr, ptr @afs_dir_remove_link._entry_ptr.214, ptr @afs_do_lookup._entry, ptr @afs_do_lookup._entry.120, ptr @afs_do_lookup._entry.123, ptr @afs_do_lookup._entry_ptr, ptr @afs_do_lookup._entry_ptr.122, ptr @afs_do_lookup._entry_ptr.124, ptr @afs_do_lookup_one._entry, ptr @afs_do_lookup_one._entry.172, ptr @afs_do_lookup_one._entry.175, ptr @afs_do_lookup_one._entry.178, ptr @afs_do_lookup_one._entry_ptr, ptr @afs_do_lookup_one._entry_ptr.174, ptr @afs_do_lookup_one._entry_ptr.177, ptr @afs_do_lookup_one._entry_ptr.180, ptr @afs_do_lookup_success._entry, ptr @afs_do_lookup_success._entry.126, ptr @afs_do_lookup_success._entry.129, ptr @afs_do_lookup_success._entry.132, ptr @afs_do_lookup_success._entry_ptr, ptr @afs_do_lookup_success._entry_ptr.128, ptr @afs_do_lookup_success._entry_ptr.131, ptr @afs_do_lookup_success._entry_ptr.133, ptr @afs_link._entry, ptr @afs_link._entry.222, ptr @afs_link._entry_ptr, ptr @afs_link._entry_ptr.223, ptr @afs_link_put._entry, ptr @afs_link_put._entry_ptr, ptr @afs_link_success._entry, ptr @afs_link_success._entry_ptr, ptr @afs_lookup._entry, ptr @afs_lookup._entry.100, ptr @afs_lookup._entry.103, ptr @afs_lookup._entry.105, ptr @afs_lookup._entry.108, ptr @afs_lookup._entry.111, ptr @afs_lookup._entry.114, ptr @afs_lookup._entry.92, ptr @afs_lookup._entry.94, ptr @afs_lookup._entry.96, ptr @afs_lookup._entry.98, ptr @afs_lookup._entry_ptr, ptr @afs_lookup._entry_ptr.102, ptr @afs_lookup._entry_ptr.104, ptr @afs_lookup._entry_ptr.107, ptr @afs_lookup._entry_ptr.110, ptr @afs_lookup._entry_ptr.113, ptr @afs_lookup._entry_ptr.116, ptr @afs_lookup._entry_ptr.93, ptr @afs_lookup._entry_ptr.95, ptr @afs_lookup._entry_ptr.97, ptr @afs_lookup._entry_ptr.99, ptr @afs_lookup_atsys._entry, ptr @afs_lookup_atsys._entry_ptr, ptr @afs_lookup_filldir._entry, ptr @afs_lookup_filldir._entry.81, ptr @afs_lookup_filldir._entry_ptr, ptr @afs_lookup_filldir._entry_ptr.82, ptr @afs_lookup_one_filldir._entry, ptr @afs_lookup_one_filldir._entry.84, ptr @afs_lookup_one_filldir._entry.87, ptr @afs_lookup_one_filldir._entry_ptr, ptr @afs_lookup_one_filldir._entry_ptr.86, ptr @afs_lookup_one_filldir._entry_ptr.89, ptr @afs_mkdir._entry, ptr @afs_mkdir._entry_ptr, ptr @afs_read_dir._entry, ptr @afs_read_dir._entry.15, ptr @afs_read_dir._entry.18, ptr @afs_read_dir._entry_ptr, ptr @afs_read_dir._entry_ptr.17, ptr @afs_read_dir._entry_ptr.19, ptr @afs_rename._entry, ptr @afs_rename._entry_ptr, ptr @afs_rename_edit_dir._entry, ptr @afs_rename_edit_dir._entry_ptr, ptr @afs_rename_put._entry, ptr @afs_rename_put._entry_ptr, ptr @afs_rename_success._entry, ptr @afs_rename_success._entry_ptr, ptr @afs_rmdir._entry, ptr @afs_rmdir._entry_ptr, ptr @afs_rmdir_edit_dir._entry, ptr @afs_rmdir_edit_dir._entry_ptr, ptr @afs_rmdir_put._entry, ptr @afs_rmdir_put._entry_ptr, ptr @afs_rmdir_success._entry, ptr @afs_rmdir_success._entry_ptr, ptr @afs_symlink._entry, ptr @afs_symlink._entry.228, ptr @afs_symlink._entry_ptr, ptr @afs_symlink._entry_ptr.229, ptr @afs_unlink._entry, ptr @afs_unlink._entry_ptr, ptr @afs_unlink_edit_dir._entry, ptr @afs_unlink_edit_dir._entry_ptr, ptr @afs_unlink_put._entry, ptr @afs_unlink_put._entry_ptr, ptr @afs_unlink_success._entry, ptr @afs_unlink_success._entry_ptr, ptr @afs_vnode_new_inode._entry, ptr @afs_vnode_new_inode._entry.193, ptr @afs_vnode_new_inode._entry.195, ptr @afs_vnode_new_inode._entry.197, ptr @afs_vnode_new_inode._entry.199, ptr @afs_vnode_new_inode._entry_ptr, ptr @afs_vnode_new_inode._entry_ptr.194, ptr @afs_vnode_new_inode._entry_ptr.196, ptr @afs_vnode_new_inode._entry_ptr.198, ptr @afs_vnode_new_inode._entry_ptr.200, ptr @afs_dir_file_operations, ptr @afs_dir_aops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.101, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @afs_inline_bulk_status_operation, ptr @afs_lookup_fetch_status_operation, ptr @.str.125, ptr @.str.127, ptr @.str.130, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.149, ptr @.str.152, ptr @.str.155, ptr @.str.158, ptr @.str.161, ptr @.str.164, ptr @.str.167, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.173, ptr @.str.176, ptr @.str.179, ptr @.str.181, ptr @.str.183, ptr @.str.186, ptr @.str.188, ptr @.str.189, ptr @afs_mkdir_operation, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @afs_rmdir_operation, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @afs_unlink_operation, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.213, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @afs_create_operation, ptr @.str.220, ptr @.str.221, ptr @afs_link_operation, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @afs_symlink_operation, ptr @.str.230, ptr @.str.231, ptr @afs_rename_operation, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238], section "llvm.metadata"
@0 = internal global [234 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_d_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_iterate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_iterate._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_iterate._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_read_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_read_dir._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_read_dir._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_read_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_read_cleanup._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_read_cleanup._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_read_cleanup._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_check_folio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_dump._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_dump._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_iterate_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_iterate_block._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_iterate_block._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_iterate_block._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_iterate_block._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_iterate_block._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_iterate_block._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_iterate_block._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup_filldir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup_filldir._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup_one_filldir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup_one_filldir._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup_one_filldir._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup_atsys._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_lookup._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_inline_bulk_status_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup_fetch_status_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_lookup._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_lookup_success._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_lookup_success._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_lookup_success._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_lookup_success._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_d_revalidate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_d_revalidate._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_d_revalidate._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_d_revalidate._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_d_revalidate._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_d_revalidate._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_d_revalidate._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_d_revalidate._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_d_revalidate._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_d_revalidate._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_d_revalidate._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_d_revalidate._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_d_revalidate_rcu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_lookup_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_lookup_one._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_lookup_one._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_lookup_one._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_d_delete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_d_delete._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_d_delete._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_mkdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_mkdir_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_create_success._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vnode_new_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vnode_new_inode._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vnode_new_inode._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vnode_new_inode._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vnode_new_inode._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_create_edit_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_create_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_rmdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_rmdir_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_rmdir_success._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_rmdir_edit_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_rmdir_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_unlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_unlink_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_unlink_success._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_remove_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_remove_link._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_unlink_edit_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_unlink_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_create_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_create._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_link_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_link._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_link_success._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_link_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_symlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_symlink_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_symlink._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_rename._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_rename_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_rename_success._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_rename_edit_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_rename_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_releasepage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dir_invalidatepage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) #1 align 64 {
entry:
  %dir_version = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dir_version) #15
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = call fastcc i32 @afs_dir_iterate(ptr noundef %1, ptr noundef %ctx, ptr noundef %5, ptr noundef nonnull %dir_version)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dir_version) #15
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_dir_open(ptr noundef %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !482

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ino, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.4, i32 noundef %6) #18
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 13
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not = icmp eq i32 %9, 0
  br i1 %tobool12.not, label %if.end14, label %do.end9.return_crit_edge

do.end9.return_crit_edge:                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end14:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  %call15 = tail call i32 @afs_open(ptr noundef %inode, ptr noundef %file) #15
  br label %return

return:                                           ; preds = %if.end14, %do.end9.return_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end14 ], [ -2, %do.end9.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_release(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_lock(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @afs_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #1 align 64 {
entry:
  %data_version.i = alloca i64, align 8
  %fid = alloca %struct.afs_fid, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fid) #15
  %0 = call ptr @memset(ptr %fid, i32 0, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %1 = load i32, ptr @afs_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body10_crit_edge, label %do.end, !prof !482

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %fid5 = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 2
  %6 = ptrtoint ptr %fid5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %fid5, align 8
  %vnode = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %vnode, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %comm, ptr noundef nonnull @.str.91, i64 noundef %7, i64 noundef %9, ptr noundef %dentry, ptr noundef %dentry) #18
  br label %do.body10

do.body10:                                        ; preds = %do.end, %entry.do.body10_crit_edge
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  %cmp.not = icmp eq ptr %11, null
  br i1 %cmp.not, label %do.end51, label %do.end23, !prof !482

do.end23:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #17
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #18
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #18
  %12 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i, align 8
  %14 = ptrtoint ptr %13 to i32
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %14, i32 noundef 0) #18
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %17 = ptrtoint ptr %16 to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %17, i32 noundef 0) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 983, 0\0A.popsection", ""() #15, !srcloc !483
  unreachable

do.end51:                                         ; preds = %do.body10
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %18 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %19)
  %cmp52 = icmp ugt i32 %19, 255
  br i1 %cmp52, label %do.body54, label %if.end77

do.body54:                                        ; preds = %do.end51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %20 = load i32, ptr @afs_debug, align 4
  %and55 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.body54.cleanup_crit_edge, label %do.end66, !prof !482

do.body54.cleanup_crit_edge:                      ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end66:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #17
  %21 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i319 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i319 to ptr
  %task69 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task69 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task69, align 8
  %comm70 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 101
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %comm70, ptr noundef nonnull @.str.91) #18
  br label %cleanup

if.end77:                                         ; preds = %do.end51
  %flags78 = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 13
  %25 = ptrtoint ptr %flags78 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags78, align 4
  %27 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool80.not = icmp eq i32 %27, 0
  br i1 %tobool80.not, label %if.end105, label %do.body82

do.body82:                                        ; preds = %if.end77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %28 = load i32, ptr @afs_debug, align 4
  %and83 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %do.body82.cleanup_crit_edge, label %do.end94, !prof !482

do.body82.cleanup_crit_edge:                      ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end94:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #17
  %29 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i320 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i320 to ptr
  %task97 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task97 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task97, align 8
  %comm98 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 101
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %comm98, ptr noundef nonnull @.str.91) #18
  br label %cleanup

if.end105:                                        ; preds = %if.end77
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 1
  %33 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %volume, align 8
  %cell = getelementptr inbounds %struct.afs_volume, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cell, align 8
  %call106 = tail call ptr @afs_request_key(ptr noundef %36) #15
  %cmp.i = icmp ugt ptr %call106, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body109, label %if.end133

do.body109:                                       ; preds = %if.end105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %37 = load i32, ptr @afs_debug, align 4
  %and110 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %do.body109.cleanup_crit_edge, label %do.end121, !prof !482

do.body109.cleanup_crit_edge:                     ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end121:                                        ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #17
  %38 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i321 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i321 to ptr
  %task124 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task124 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task124, align 8
  %comm125 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 101
  %42 = ptrtoint ptr %call106 to i32
  %call128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %comm125, ptr noundef nonnull @.str.91, i32 noundef %42) #18
  br label %cleanup

if.end133:                                        ; preds = %if.end105
  %call134 = tail call i32 @afs_validate(ptr noundef %dir, ptr noundef %call106) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %cmp135 = icmp slt i32 %call134, 0
  br i1 %cmp135, label %if.then136, label %if.end160

if.then136:                                       ; preds = %if.end133
  tail call void @key_put(ptr noundef %call106) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %43 = load i32, ptr @afs_debug, align 4
  %and138 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.then136.do.end158_crit_edge, label %do.end149, !prof !482

if.then136.do.end158_crit_edge:                   ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end158

do.end149:                                        ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #17
  %44 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i322 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i322 to ptr
  %task152 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task152 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task152, align 8
  %comm153 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 101
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %comm153, ptr noundef nonnull @.str.91, i32 noundef %call134) #18
  br label %do.end158

do.end158:                                        ; preds = %do.end149, %if.then136.do.end158_crit_edge
  %48 = inttoptr i32 %call134 to ptr
  br label %cleanup

if.end160:                                        ; preds = %if.end133
  %49 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %50)
  %cmp163 = icmp ugt i32 %50, 3
  br i1 %cmp163, label %land.lhs.true, label %if.end160.if.end201_crit_edge

if.end160.if.end201_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end201

land.lhs.true:                                    ; preds = %if.end160
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name, align 8
  %sub = add i32 %50, -4
  %arrayidx = getelementptr i8, ptr %52, i32 %sub
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %54)
  %cmp167 = icmp eq i8 %54, 64
  br i1 %cmp167, label %land.lhs.true169, label %land.lhs.true.if.end201_crit_edge

land.lhs.true.if.end201_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end201

land.lhs.true169:                                 ; preds = %land.lhs.true
  %sub174 = add i32 %50, -3
  %arrayidx175 = getelementptr i8, ptr %52, i32 %sub174
  %55 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx175, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %56)
  %cmp177 = icmp eq i8 %56, 115
  br i1 %cmp177, label %land.lhs.true179, label %land.lhs.true169.if.end201_crit_edge

land.lhs.true169.if.end201_crit_edge:             ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end201

land.lhs.true179:                                 ; preds = %land.lhs.true169
  %sub184 = add i32 %50, -2
  %arrayidx185 = getelementptr i8, ptr %52, i32 %sub184
  %57 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx185, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 121, i8 %58)
  %cmp187 = icmp eq i8 %58, 121
  br i1 %cmp187, label %land.lhs.true189, label %land.lhs.true179.if.end201_crit_edge

land.lhs.true179.if.end201_crit_edge:             ; preds = %land.lhs.true179
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end201

land.lhs.true189:                                 ; preds = %land.lhs.true179
  %sub194 = add i32 %50, -1
  %arrayidx195 = getelementptr i8, ptr %52, i32 %sub194
  %59 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx195, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %60)
  %cmp197 = icmp eq i8 %60, 115
  br i1 %cmp197, label %if.then199, label %land.lhs.true189.if.end201_crit_edge

land.lhs.true189.if.end201_crit_edge:             ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end201

if.then199:                                       ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #17
  %call200 = tail call fastcc ptr @afs_lookup_atsys(ptr noundef %dir, ptr noundef %dentry, ptr noundef %call106)
  br label %cleanup

if.end201:                                        ; preds = %land.lhs.true189.if.end201_crit_edge, %land.lhs.true179.if.end201_crit_edge, %land.lhs.true169.if.end201_crit_edge, %land.lhs.true.if.end201_crit_edge, %if.end160.if.end201_crit_edge
  %call.i = tail call fastcc ptr @afs_i2net(ptr noundef %dir) #15
  %n_lookup = getelementptr inbounds %struct.afs_net, ptr %call.i, i32 0, i32 36
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_lookup, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %n_lookup, i32 1, i32 3, i32 1) #15
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_lookup, ptr %n_lookup, i32 1, ptr elementtype(i32) %n_lookup) #15, !srcloc !484
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data_version.i) #15
  %data_version1.i = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 3, i32 1
  %62 = ptrtoint ptr %data_version1.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load volatile i64, ptr %data_version1.i, align 8
  %64 = ptrtoint ptr %data_version.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %data_version.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %65 = load i32, ptr @afs_debug, align 4
  %and.i323 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i323)
  %tobool.not.i = icmp eq i32 %and.i323, 0
  br i1 %tobool.not.i, label %if.end201.do.end12.i_crit_edge, label %do.end7.i, !prof !482

if.end201.do.end12.i_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end12.i

do.end7.i:                                        ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #17
  %66 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 101
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %70 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %i_ino.i, align 8
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %comm.i, ptr noundef nonnull @.str.119, i32 noundef %71, ptr noundef %dentry, ptr noundef %dentry) #18
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end7.i, %if.end201.do.end12.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %72 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %72, i32 noundef 3520, i32 noundef 1240) #19
  %tobool14.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool14.not.i, label %if.end209.thread, label %for.cond.preheader.i

if.end209.thread:                                 ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_version.i) #15
  tail call void @key_put(ptr noundef %call106) #15
  br label %do.body215

for.cond.preheader.i:                             ; preds = %do.end12.i
  %fid.i = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 2
  %73 = ptrtoint ptr %fid.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %fid.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.0283.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.afs_lookup_cookie, ptr %call7.i.i.i, i32 0, i32 5, i32 %i.0283.i
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %arrayidx.i, align 8
  %inc.i = add nuw nsw i32 %i.0283.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %76 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @afs_lookup_filldir, ptr %call7.i.i.i, align 8
  %name.i = getelementptr inbounds %struct.afs_lookup_cookie, ptr %call7.i.i.i, i32 0, i32 1
  %77 = call ptr @memcpy(ptr %name.i, ptr %d_name, i32 16)
  %nr_fids.i = getelementptr inbounds %struct.afs_lookup_cookie, ptr %call7.i.i.i, i32 0, i32 4
  %78 = ptrtoint ptr %nr_fids.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 2, ptr %nr_fids.i, align 2
  %79 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %volume, align 8
  %flags.i.i = getelementptr inbounds %struct.afs_volume, ptr %80, i32 0, i32 7
  %81 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %flags.i.i, align 4
  %83 = and i32 %82, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i.i = icmp eq i32 %83, 0
  br i1 %tobool.not.i.i, label %for.end.i.if.end21.i_crit_edge, label %if.end.i.i

for.end.i.if.end21.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

if.end.i.i:                                       ; preds = %for.end.i
  %84 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i.i.i.i.i.i = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %87, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !485
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i.i324 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i.i324, label %if.end.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.rcu_read_lock.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 696, ptr noundef nonnull @.str.32) #15
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.i.i.rcu_read_lock.exit.i.i_crit_edge
  %servers.i.i = getelementptr inbounds %struct.afs_volume, ptr %80, i32 0, i32 9
  %88 = ptrtoint ptr %servers.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %servers.i.i, align 4
  %call3.i.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end12.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %.b37.i.i = load i1, ptr @afs_server_supports_ibulk.__warned, align 1
  br i1 %.b37.i.i, label %land.lhs.true7.i.i.do.end12.i.i_crit_edge, label %if.then9.i.i

land.lhs.true7.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end12.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @afs_server_supports_ibulk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 761, ptr noundef nonnull @.str.37) #15
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then9.i.i, %land.lhs.true7.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge
  %nr_servers.i.i = getelementptr inbounds %struct.afs_server_list, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %nr_servers.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %nr_servers.i.i, align 4
  %conv.i.i = zext i8 %91 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp49.not.i.i = icmp eq i8 %91, 0
  br i1 %cmp49.not.i.i, label %do.end12.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

do.end12.i.i.for.end.i.i_crit_edge:               ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %do.end12.i.i
  %cb_server.i.i = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 23
  %92 = ptrtoint ptr %cb_server.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cb_server.i.i, align 8
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.050.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.for.end.i.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.050.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.afs_server_list, ptr %89, i32 0, i32 7, i32 %i.050.i.i
  %94 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp17.i.i = icmp eq ptr %95, %93
  br i1 %cmp17.i.i, label %if.then19.i.i, label %for.cond.i.i

if.then19.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %flags20.i.i = getelementptr inbounds %struct.afs_server, ptr %93, i32 0, i32 14
  %96 = ptrtoint ptr %flags20.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %flags20.i.i, align 4
  %98 = and i32 %97, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool22.not.i.i = icmp eq i32 %98, 0
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.then19.i.i, %for.cond.i.i.for.end.i.i_crit_edge, %do.end12.i.i.for.end.i.i_crit_edge
  %ret.0.off0.i.i = phi i1 [ %tobool22.not.i.i, %if.then19.i.i ], [ true, %do.end12.i.i.for.end.i.i_crit_edge ], [ true, %for.cond.i.i.for.end.i.i_crit_edge ]
  %call.i40.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i40.i.i, label %for.end.i.i.afs_server_supports_ibulk.exit.i_crit_edge, label %land.lhs.true.i43.i.i

for.end.i.i.afs_server_supports_ibulk.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_server_supports_ibulk.exit.i

land.lhs.true.i43.i.i:                            ; preds = %for.end.i.i
  %call1.i41.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41.i.i)
  %tobool.not.i42.i.i = icmp eq i32 %call1.i41.i.i, 0
  br i1 %tobool.not.i42.i.i, label %land.lhs.true.i43.i.i.afs_server_supports_ibulk.exit.i_crit_edge, label %land.lhs.true2.i45.i.i

land.lhs.true.i43.i.i.afs_server_supports_ibulk.exit.i_crit_edge: ; preds = %land.lhs.true.i43.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_server_supports_ibulk.exit.i

land.lhs.true2.i45.i.i:                           ; preds = %land.lhs.true.i43.i.i
  %.b4.i44.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44.i.i, label %land.lhs.true2.i45.i.i.afs_server_supports_ibulk.exit.i_crit_edge, label %if.then.i46.i.i

land.lhs.true2.i45.i.i.afs_server_supports_ibulk.exit.i_crit_edge: ; preds = %land.lhs.true2.i45.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_server_supports_ibulk.exit.i

if.then.i46.i.i:                                  ; preds = %land.lhs.true2.i45.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 724, ptr noundef nonnull @.str.38) #15
  br label %afs_server_supports_ibulk.exit.i

afs_server_supports_ibulk.exit.i:                 ; preds = %if.then.i46.i.i, %land.lhs.true2.i45.i.i.afs_server_supports_ibulk.exit.i_crit_edge, %land.lhs.true.i43.i.i.afs_server_supports_ibulk.exit.i_crit_edge, %for.end.i.i.afs_server_supports_ibulk.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !486
  %99 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i.i.i.i47.i.i = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i.i.i47.i.i to ptr
  %preempt_count.i.i.i.i48.i.i = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %preempt_count.i.i.i.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %preempt_count.i.i.i.i48.i.i, align 4
  %sub.i.i.i.i.i = add i32 %102, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i48.i.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br i1 %ret.0.off0.i.i, label %afs_server_supports_ibulk.exit.i.if.end21.i_crit_edge, label %if.then20.i

afs_server_supports_ibulk.exit.i.if.end21.i_crit_edge: ; preds = %afs_server_supports_ibulk.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

if.then20.i:                                      ; preds = %afs_server_supports_ibulk.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %one_only.i = getelementptr inbounds %struct.afs_lookup_cookie, ptr %call7.i.i.i, i32 0, i32 3
  %103 = ptrtoint ptr %one_only.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %one_only.i, align 1
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %afs_server_supports_ibulk.exit.i.if.end21.i_crit_edge, %for.end.i.if.end21.i_crit_edge
  %call23.i = call fastcc i32 @afs_dir_iterate(ptr noundef %dir, ptr noundef nonnull %call7.i.i.i, ptr noundef %call106, ptr noundef nonnull %data_version.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %if.end21.i.out.i_crit_edge, label %if.end26.i

if.end21.i.out.i_crit_edge:                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end26.i:                                       ; preds = %if.end21.i
  %104 = ptrtoint ptr %data_version.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %data_version.i, align 8
  %conv.i = trunc i64 %105 to i32
  %106 = inttoptr i32 %conv.i to ptr
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %107 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %d_fsdata.i, align 4
  %found.i = getelementptr inbounds %struct.afs_lookup_cookie, ptr %call7.i.i.i, i32 0, i32 2
  %108 = ptrtoint ptr %found.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %found.i, align 8, !range !487
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool27.not.i = icmp eq i8 %109, 0
  br i1 %tobool27.not.i, label %if.end26.i.out.i_crit_edge, label %if.end29.i

if.end26.i.out.i_crit_edge:                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end29.i:                                       ; preds = %if.end26.i
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %110 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %i_sb.i, align 4
  %arrayidx31.i = getelementptr %struct.afs_lookup_cookie, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %vnode32.i = getelementptr %struct.afs_lookup_cookie, ptr %call7.i.i.i, i32 0, i32 5, i32 1, i32 1
  %112 = ptrtoint ptr %vnode32.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %vnode32.i, align 8
  %conv33.i = trunc i64 %113 to i32
  %call36.i = tail call ptr @ilookup5(ptr noundef %111, i32 noundef %conv33.i, ptr noundef nonnull @afs_ilookup5_test_by_fid, ptr noundef %arrayidx31.i) #15
  %tobool37.not.i = icmp eq ptr %call36.i, null
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end29.i.out.i_crit_edge

if.end29.i.out.i_crit_edge:                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end39.i:                                       ; preds = %if.end29.i
  %114 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %volume, align 8
  %call40.i = tail call ptr @afs_alloc_operation(ptr noundef null, ptr noundef %115) #15
  %cmp.i.i = icmp ugt ptr %call40.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then42.i, label %if.end44.i

if.then42.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #17
  %116 = ptrtoint ptr %call40.i to i32
  br label %out.i

if.end44.i:                                       ; preds = %if.end39.i
  %arrayidx.i270.i = getelementptr %struct.afs_operation, ptr %call40.i, i32 0, i32 5, i32 0
  %117 = ptrtoint ptr %arrayidx.i270.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %dir, ptr %arrayidx.i270.i, align 8
  %need_io_lock.i.i = getelementptr %struct.afs_operation, ptr %call40.i, i32 0, i32 5, i32 0, i32 6
  %118 = ptrtoint ptr %need_io_lock.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %bf.load.i.i = load i8, ptr %need_io_lock.i.i, align 1
  %bf.set.i.i = or i8 %bf.load.i.i, 64
  store i8 %bf.set.i.i, ptr %need_io_lock.i.i, align 1
  %fid1.i.i = getelementptr %struct.afs_operation, ptr %call40.i, i32 0, i32 5, i32 1, i32 1
  %119 = call ptr @memcpy(ptr %fid1.i.i, ptr %arrayidx31.i, i32 24)
  %120 = ptrtoint ptr %nr_fids.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %nr_fids.i, align 2
  %nr_files.i = getelementptr inbounds %struct.afs_operation, ptr %call40.i, i32 0, i32 12
  %122 = ptrtoint ptr %nr_files.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %nr_files.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %123 = load i32, ptr @afs_debug, align 4
  %and49.i = and i32 %123, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.end44.i.do.end71.i_crit_edge, label %do.end60.i, !prof !482

if.end44.i.do.end71.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end71.i

do.end60.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #17
  %124 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i271.i = and i32 %124, -16384
  %125 = inttoptr i32 %and.i271.i to ptr
  %task63.i = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %task63.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %task63.i, align 8
  %comm64.i = getelementptr inbounds %struct.task_struct, ptr %127, i32 0, i32 101
  %conv67.i = sext i16 %121 to i32
  %call68.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %comm64.i, i32 noundef %conv67.i) #18
  %128 = ptrtoint ptr %nr_files.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %.pr.i = load i16, ptr %nr_files.i, align 8
  br label %do.end71.i

do.end71.i:                                       ; preds = %do.end60.i, %if.end44.i.do.end71.i_crit_edge
  %129 = phi i16 [ %.pr.i, %do.end60.i ], [ %121, %if.end44.i.do.end71.i_crit_edge ]
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %call40.i, i32 0, i32 13
  %130 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 -12, ptr %error.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %129)
  %cmp74.i = icmp sgt i16 %129, 2
  br i1 %cmp74.i, label %kvcalloc.exit.i, label %do.end71.i.if.end116.i_crit_edge

do.end71.i.if.end116.i_crit_edge:                 ; preds = %do.end71.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end116.i

kvcalloc.exit.i:                                  ; preds = %do.end71.i
  %conv73282.i = zext i16 %129 to i32
  %131 = mul nuw nsw i32 %conv73282.i, 168
  %132 = add nsw i32 %131, -336
  %call.i.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %132, i32 noundef 3520, i32 noundef -1) #20
  %more_files.i = getelementptr inbounds %struct.afs_operation, ptr %call40.i, i32 0, i32 6
  %133 = ptrtoint ptr %more_files.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call.i.i.i.i, ptr %more_files.i, align 8
  %tobool81.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool81.not.i, label %out_opthread-pre-split.i, label %for.cond84.preheader.i

for.cond84.preheader.i:                           ; preds = %kvcalloc.exit.i
  %134 = ptrtoint ptr %nr_files.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %nr_files.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %135)
  %cmp87285.i = icmp sgt i16 %135, 2
  br i1 %cmp87285.i, label %for.cond84.preheader.i.for.body89.i_crit_edge, label %for.cond84.preheader.i.if.end116.i_crit_edge

for.cond84.preheader.i.if.end116.i_crit_edge:     ; preds = %for.cond84.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end116.i

for.cond84.preheader.i.for.body89.i_crit_edge:    ; preds = %for.cond84.preheader.i
  br label %for.body89.i

for.body89.i:                                     ; preds = %for.inc113.i.for.body89.i_crit_edge, %for.cond84.preheader.i.for.body89.i_crit_edge
  %i.1286.i = phi i32 [ %inc114.i, %for.inc113.i.for.body89.i_crit_edge ], [ 2, %for.cond84.preheader.i.for.body89.i_crit_edge ]
  %136 = ptrtoint ptr %more_files.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %more_files.i, align 8
  %sub91.i = add nsw i32 %i.1286.i, -2
  %fid93.i = getelementptr %struct.afs_vnode_param, ptr %137, i32 %sub91.i, i32 1
  %arrayidx95.i = getelementptr %struct.afs_lookup_cookie, ptr %call7.i.i.i, i32 0, i32 5, i32 %i.1286.i
  %138 = call ptr @memcpy(ptr %fid93.i, ptr %arrayidx95.i, i32 24)
  %139 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %i_sb.i, align 4
  %vnode98.i = getelementptr %struct.afs_vnode_param, ptr %137, i32 %sub91.i, i32 1, i32 1
  %141 = ptrtoint ptr %vnode98.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %vnode98.i, align 8
  %conv99.i = trunc i64 %142 to i32
  %call101.i = tail call ptr @ilookup5_nowait(ptr noundef %140, i32 noundef %conv99.i, ptr noundef nonnull @afs_ilookup5_test_by_fid, ptr noundef %fid93.i) #15
  %tobool.not.i272.i = icmp eq ptr %call101.i, null
  %cmp.i273.i = icmp ugt ptr %call101.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i272.i, %cmp.i273.i
  br i1 %spec.select.i.i, label %for.body89.i.for.inc113.i_crit_edge, label %if.then103.i

for.body89.i.for.inc113.i_crit_edge:              ; preds = %for.body89.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc113.i

if.then103.i:                                     ; preds = %for.body89.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx92.i = getelementptr %struct.afs_vnode_param, ptr %137, i32 %sub91.i
  %data_version106.i = getelementptr inbounds %struct.afs_vnode, ptr %call101.i, i32 0, i32 3, i32 1
  %143 = ptrtoint ptr %data_version106.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %data_version106.i, align 8
  %dv_before.i = getelementptr %struct.afs_vnode_param, ptr %137, i32 %sub91.i, i32 3
  %145 = ptrtoint ptr %dv_before.i to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %144, ptr %dv_before.i, align 8
  %cb_break.i.i = getelementptr inbounds %struct.afs_vnode, ptr %call101.i, i32 0, i32 28
  %146 = ptrtoint ptr %cb_break.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %cb_break.i.i, align 4
  %cb_v_break.i.i = getelementptr inbounds %struct.afs_vnode, ptr %call101.i, i32 0, i32 27
  %148 = ptrtoint ptr %cb_v_break.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %cb_v_break.i.i, align 8
  %add.i.i = add i32 %149, %147
  %cb_break_before.i = getelementptr %struct.afs_vnode_param, ptr %137, i32 %sub91.i, i32 4
  %150 = ptrtoint ptr %cb_break_before.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %add.i.i, ptr %cb_break_before.i, align 8
  %151 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call101.i, ptr %arrayidx92.i, align 8
  %put_vnode.i = getelementptr %struct.afs_vnode_param, ptr %137, i32 %sub91.i, i32 6
  %152 = ptrtoint ptr %put_vnode.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %bf.load.i = load i8, ptr %put_vnode.i, align 1
  %bf.set111.i = or i8 %bf.load.i, -124
  store i8 %bf.set111.i, ptr %put_vnode.i, align 1
  br label %for.inc113.i

for.inc113.i:                                     ; preds = %if.then103.i, %for.body89.i.for.inc113.i_crit_edge
  %inc114.i = add nuw nsw i32 %i.1286.i, 1
  %153 = ptrtoint ptr %nr_files.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %nr_files.i, align 8
  %conv86.i = sext i16 %154 to i32
  %cmp87.i = icmp slt i32 %inc114.i, %conv86.i
  br i1 %cmp87.i, label %for.inc113.i.for.body89.i_crit_edge, label %for.inc113.i.if.end116.i_crit_edge

for.inc113.i.if.end116.i_crit_edge:               ; preds = %for.inc113.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end116.i

for.inc113.i.for.body89.i_crit_edge:              ; preds = %for.inc113.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body89.i

if.end116.i:                                      ; preds = %for.inc113.i.if.end116.i_crit_edge, %for.cond84.preheader.i.if.end116.i_crit_edge, %do.end71.i.if.end116.i_crit_edge
  %155 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 -524, ptr %error.i, align 2
  %one_only118.i = getelementptr inbounds %struct.afs_lookup_cookie, ptr %call7.i.i.i, i32 0, i32 3
  %156 = ptrtoint ptr %one_only118.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %one_only118.i, align 1, !range !487
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool119.not.i = icmp eq i8 %157, 0
  br i1 %tobool119.not.i, label %if.end122.i, label %if.end116.i.if.then127.i_crit_edge

if.end116.i.if.then127.i_crit_edge:               ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then127.i

if.end122.i:                                      ; preds = %if.end116.i
  %ops.i = getelementptr inbounds %struct.afs_operation, ptr %call40.i, i32 0, i32 3
  %158 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @afs_inline_bulk_status_operation, ptr %ops.i, align 4
  %call121.i = tail call zeroext i1 @afs_begin_vnode_operation(ptr noundef %call40.i) #15
  tail call void @afs_wait_for_operation(ptr noundef %call40.i) #15
  %159 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %.pr279.i = load i16, ptr %error.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -524, i16 %.pr279.i)
  %cmp125.i = icmp eq i16 %.pr279.i, -524
  br i1 %cmp125.i, label %if.end122.i.if.then127.i_crit_edge, label %if.end122.i.if.end130.i_crit_edge

if.end122.i.if.end130.i_crit_edge:                ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end130.i

if.end122.i.if.then127.i_crit_edge:               ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then127.i

if.then127.i:                                     ; preds = %if.end122.i.if.then127.i_crit_edge, %if.end116.i.if.then127.i_crit_edge
  %160 = getelementptr inbounds %struct.afs_operation, ptr %call40.i, i32 0, i32 17
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 1, ptr %160, align 8
  %ops128.i = getelementptr inbounds %struct.afs_operation, ptr %call40.i, i32 0, i32 3
  %162 = ptrtoint ptr %ops128.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @afs_lookup_fetch_status_operation, ptr %ops128.i, align 4
  %call129.i = tail call zeroext i1 @afs_begin_vnode_operation(ptr noundef %call40.i) #15
  tail call void @afs_wait_for_operation(ptr noundef %call40.i) #15
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.then127.i, %if.end122.i.if.end130.i_crit_edge
  %163 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %error.i, align 2
  %conv132.i = sext i16 %164 to i32
  %165 = inttoptr i32 %conv132.i to ptr
  br label %out_op.i

out_opthread-pre-split.i:                         ; preds = %kvcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %166 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %.pr281.i = load i16, ptr %error.i, align 2
  br label %out_op.i

out_op.i:                                         ; preds = %out_opthread-pre-split.i, %if.end130.i
  %167 = phi i16 [ %.pr281.i, %out_opthread-pre-split.i ], [ %164, %if.end130.i ]
  %inode.0.i = phi ptr [ null, %out_opthread-pre-split.i ], [ %165, %if.end130.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %167)
  %cmp136.i = icmp eq i16 %167, 0
  br i1 %cmp136.i, label %if.then138.i, label %out_op.i.if.end144.i_crit_edge

out_op.i.if.end144.i_crit_edge:                   ; preds = %out_op.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end144.i

if.then138.i:                                     ; preds = %out_op.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx139.i = getelementptr %struct.afs_operation, ptr %call40.i, i32 0, i32 5, i32 1
  %168 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx139.i, align 8
  store ptr null, ptr %arrayidx139.i, align 8
  br label %if.end144.i

if.end144.i:                                      ; preds = %if.then138.i, %out_op.i.if.end144.i_crit_edge
  %inode.1.i = phi ptr [ %169, %if.then138.i ], [ %inode.0.i, %out_op.i.if.end144.i_crit_edge ]
  %have_status.i = getelementptr inbounds %struct.afs_operation, ptr %call40.i, i32 0, i32 5, i32 0, i32 2, i32 2
  %170 = ptrtoint ptr %have_status.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %have_status.i, align 8, !range !487
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool147.not.i = icmp eq i8 %171, 0
  %dv_before158.i = getelementptr inbounds %struct.afs_operation, ptr %call40.i, i32 0, i32 5, i32 0, i32 3
  %data_version153.i = getelementptr inbounds %struct.afs_operation, ptr %call40.i, i32 0, i32 5, i32 0, i32 2, i32 0, i32 1
  %dv_before158.sink.i = select i1 %tobool147.not.i, ptr %dv_before158.i, ptr %data_version153.i
  %172 = ptrtoint ptr %dv_before158.sink.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %dv_before158.sink.i, align 8
  %conv159.i = trunc i64 %173 to i32
  %storemerge.i = inttoptr i32 %conv159.i to ptr
  %174 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %storemerge.i, ptr %d_fsdata.i, align 4
  %call162.i = tail call i32 @afs_put_operation(ptr noundef %call40.i) #15
  br label %out.i

out.i:                                            ; preds = %if.end144.i, %if.then42.i, %if.end29.i.out.i_crit_edge, %if.end26.i.out.i_crit_edge, %if.end21.i.out.i_crit_edge
  %inode.2.i = phi ptr [ null, %if.end21.i.out.i_crit_edge ], [ %call36.i, %if.end29.i.out.i_crit_edge ], [ null, %if.then42.i ], [ %inode.1.i, %if.end144.i ], [ null, %if.end26.i.out.i_crit_edge ]
  %ret.0.i = phi i32 [ %call23.i, %if.end21.i.out.i_crit_edge ], [ -2, %if.end29.i.out.i_crit_edge ], [ %116, %if.then42.i ], [ %call162.i, %if.end144.i ], [ -2, %if.end26.i.out.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %175 = load i32, ptr @afs_debug, align 4
  %and164.i = and i32 %175, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164.i)
  %tobool165.not.i = icmp eq i32 %and164.i, 0
  br i1 %tobool165.not.i, label %out.i.afs_do_lookup.exit_crit_edge, label %do.end175.i, !prof !482

out.i.afs_do_lookup.exit_crit_edge:               ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_do_lookup.exit

do.end175.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #17
  %176 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i274.i = and i32 %176, -16384
  %177 = inttoptr i32 %and.i274.i to ptr
  %task178.i = getelementptr inbounds %struct.thread_info, ptr %177, i32 0, i32 2
  %178 = ptrtoint ptr %task178.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %task178.i, align 8
  %comm179.i = getelementptr inbounds %struct.task_struct, ptr %179, i32 0, i32 101
  %call181.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %comm179.i, ptr noundef nonnull @.str.119) #18
  br label %afs_do_lookup.exit

afs_do_lookup.exit:                               ; preds = %do.end175.i, %out.i.afs_do_lookup.exit_crit_edge
  %tobool185.not.i = icmp eq ptr %inode.2.i, null
  %180 = inttoptr i32 %ret.0.i to ptr
  %spec.select.i = select i1 %tobool185.not.i, ptr %180, ptr %inode.2.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_version.i) #15
  tail call void @key_put(ptr noundef %call106) #15
  %cmp205 = icmp eq ptr %spec.select.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp205, label %if.then207, label %afs_do_lookup.exit.if.end209_crit_edge

afs_do_lookup.exit.if.end209_crit_edge:           ; preds = %afs_do_lookup.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end209

if.then207:                                       ; preds = %afs_do_lookup.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call208 = tail call ptr @afs_try_auto_mntpt(ptr noundef %dentry, ptr noundef %dir) #15
  br label %if.end209

if.end209:                                        ; preds = %if.then207, %afs_do_lookup.exit.if.end209_crit_edge
  %inode.0 = phi ptr [ %call208, %if.then207 ], [ %spec.select.i, %afs_do_lookup.exit.if.end209_crit_edge ]
  %tobool.not.i325 = icmp eq ptr %inode.0, null
  %cmp.i326 = icmp ugt ptr %inode.0, inttoptr (i32 -4096 to ptr)
  %spec.select.i327 = or i1 %tobool.not.i325, %cmp.i326
  br i1 %spec.select.i327, label %if.end209.do.body215_crit_edge, label %if.then211

if.end209.do.body215_crit_edge:                   ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body215

if.then211:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #17
  %fid213 = getelementptr inbounds %struct.afs_vnode, ptr %inode.0, i32 0, i32 2
  %181 = call ptr @memcpy(ptr %fid, ptr %fid213, i32 24)
  br label %do.body215

do.body215:                                       ; preds = %if.then211, %if.end209.do.body215_crit_edge, %if.end209.thread
  %inode.0339 = phi ptr [ inttoptr (i32 -12 to ptr), %if.end209.thread ], [ %inode.0, %if.end209.do.body215_crit_edge ], [ %inode.0, %if.then211 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %182 = load i32, ptr @afs_debug, align 4
  %and216 = and i32 %182, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp eq i32 %and216, 0
  br i1 %tobool217.not, label %do.body215.do.end236_crit_edge, label %do.end227, !prof !482

do.body215.do.end236_crit_edge:                   ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end236

do.end227:                                        ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #17
  %183 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i328 = and i32 %183, -16384
  %184 = inttoptr i32 %and.i328 to ptr
  %task230 = getelementptr inbounds %struct.thread_info, ptr %184, i32 0, i32 2
  %185 = ptrtoint ptr %task230 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %task230, align 8
  %comm231 = getelementptr inbounds %struct.task_struct, ptr %186, i32 0, i32 101
  %187 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %d_inode.i, align 8
  %call233 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %comm231, ptr noundef %188) #18
  br label %do.end236

do.end236:                                        ; preds = %do.end227, %do.body215.do.end236_crit_edge
  %call237 = tail call ptr @d_splice_alias(ptr noundef %inode.0339, ptr noundef %dentry) #15
  %tobool.not.i329 = icmp eq ptr %call237, null
  %cmp.i330 = icmp ugt ptr %call237, inttoptr (i32 -4096 to ptr)
  %spec.select.i331 = or i1 %tobool.not.i329, %cmp.i330
  br i1 %spec.select.i331, label %do.end236.do.body244_crit_edge, label %if.then239

do.end236.do.body244_crit_edge:                   ; preds = %do.end236
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body244

if.then239:                                       ; preds = %do.end236
  call void @__sanitizer_cov_trace_pc() #17
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %189 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %d_fsdata, align 4
  %d_fsdata240 = getelementptr inbounds %struct.dentry, ptr %call237, i32 0, i32 11
  %191 = ptrtoint ptr %d_fsdata240 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %190, ptr %d_fsdata240, align 4
  %d_name241 = getelementptr inbounds %struct.dentry, ptr %call237, i32 0, i32 4
  br label %do.body244

do.body244:                                       ; preds = %if.then239, %do.end236.do.body244_crit_edge
  %d_name241.sink = phi ptr [ %d_name241, %if.then239 ], [ %d_name, %do.end236.do.body244_crit_edge ]
  call fastcc void @trace_afs_lookup(ptr noundef %dir, ptr noundef %d_name241.sink, ptr noundef nonnull %fid)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %192 = load i32, ptr @afs_debug, align 4
  %and245 = and i32 %192, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and245)
  %tobool246.not = icmp eq i32 %and245, 0
  br i1 %tobool246.not, label %do.body244.cleanup_crit_edge, label %do.end256, !prof !482

do.body244.cleanup_crit_edge:                     ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end256:                                        ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #17
  %193 = call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i332 = and i32 %193, -16384
  %194 = inttoptr i32 %and.i332 to ptr
  %task259 = getelementptr inbounds %struct.thread_info, ptr %194, i32 0, i32 2
  %195 = ptrtoint ptr %task259 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %task259, align 8
  %comm260 = getelementptr inbounds %struct.task_struct, ptr %196, i32 0, i32 101
  %call262 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %comm260, ptr noundef nonnull @.str.91) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end256, %do.body244.cleanup_crit_edge, %if.then199, %do.end158, %do.end121, %do.body109.cleanup_crit_edge, %do.end94, %do.body82.cleanup_crit_edge, %do.end66, %do.body54.cleanup_crit_edge
  %retval.0 = phi ptr [ %48, %do.end158 ], [ %call200, %if.then199 ], [ %call237, %do.end256 ], [ %call237, %do.body244.cleanup_crit_edge ], [ inttoptr (i32 -36 to ptr), %do.end66 ], [ inttoptr (i32 -36 to ptr), %do.body54.cleanup_crit_edge ], [ inttoptr (i32 -116 to ptr), %do.end94 ], [ inttoptr (i32 -116 to ptr), %do.body82.cleanup_crit_edge ], [ %call106, %do.end121 ], [ %call106, %do.body109.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fid) #15
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_permission(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !482

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
  %vnode = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %vnode, align 8
  %conv = zext i16 %mode to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef %comm, ptr noundef nonnull @.str.217, i64 noundef %6, i64 noundef %8, ptr noundef %dentry, i32 noundef %conv) #18
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %9 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %10)
  %cmp = icmp ugt i32 %10, 255
  br i1 %cmp, label %do.end8.error_crit_edge, label %if.end11

do.end8.error_crit_edge:                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end11:                                         ; preds = %do.end8
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 1
  %11 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %volume, align 8
  %call12 = tail call ptr @afs_alloc_operation(ptr noundef null, ptr noundef %12) #15
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %call12 to i32
  br label %error

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i = getelementptr %struct.afs_operation, ptr %call12, i32 0, i32 5, i32 0
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dir, ptr %arrayidx.i, align 8
  %need_io_lock.i = getelementptr %struct.afs_operation, ptr %call12, i32 0, i32 5, i32 0, i32 6
  %15 = ptrtoint ptr %need_io_lock.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %need_io_lock.i, align 1
  %dv_delta = getelementptr inbounds %struct.afs_operation, ptr %call12, i32 0, i32 5, i32 0, i32 5
  %16 = ptrtoint ptr %dv_delta to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %dv_delta, align 4
  %bf.set23 = or i8 %bf.load.i, 98
  store i8 %bf.set23, ptr %need_io_lock.i, align 1
  %dentry24 = getelementptr inbounds %struct.afs_operation, ptr %call12, i32 0, i32 8
  %17 = ptrtoint ptr %dentry24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dentry, ptr %dentry24, align 8
  %18 = or i16 %mode, -32768
  %19 = getelementptr inbounds %struct.afs_operation, ptr %call12, i32 0, i32 17
  %mode27 = getelementptr inbounds %struct.anon.163, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %mode27 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %18, ptr %mode27, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %19, align 8
  %ops = getelementptr inbounds %struct.afs_operation, ptr %call12, i32 0, i32 3
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @afs_create_operation, ptr %ops, align 4
  %call28 = tail call i32 @afs_do_sync_operation(ptr noundef %call12) #15
  br label %cleanup

error:                                            ; preds = %if.then14, %do.end8.error_crit_edge
  %ret.0 = phi i32 [ -36, %do.end8.error_crit_edge ], [ %13, %if.then14 ]
  tail call void @d_drop(ptr noundef %dentry) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %23 = load i32, ptr @afs_debug, align 4
  %and30 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %error.cleanup_crit_edge, label %do.end41, !prof !482

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end41:                                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #17
  %24 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i71 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i71 to ptr
  %task44 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task44, align 8
  %comm45 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 101
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %comm45, ptr noundef nonnull @.str.217, i32 noundef %ret.0) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %error.cleanup_crit_edge, %if.end16
  %retval.0 = phi i32 [ %call28, %if.end16 ], [ %ret.0, %do.end41 ], [ %ret.0, %error.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_link(ptr noundef %from, ptr noundef %dir, ptr noundef %dentry) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %from, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.end, !prof !482

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
  %vnode8 = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %vnode8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %vnode8, align 8
  %fid9 = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 2
  %11 = ptrtoint ptr %fid9 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %fid9, align 8
  %vnode12 = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %vnode12 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %vnode12, align 8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, ptr noundef %comm, ptr noundef nonnull @.str.221, i64 noundef %8, i64 noundef %10, i64 noundef %12, i64 noundef %14, ptr noundef %dentry) #18
  br label %do.end15

do.end15:                                         ; preds = %do.end, %entry.do.end15_crit_edge
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %15 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %16)
  %cmp = icmp ugt i32 %16, 255
  br i1 %cmp, label %do.end15.error_crit_edge, label %if.end17

do.end15.error_crit_edge:                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end17:                                         ; preds = %do.end15
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 1
  %17 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %volume, align 8
  %call18 = tail call ptr @afs_alloc_operation(ptr noundef null, ptr noundef %18) #15
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %call18 to i32
  br label %error

if.end22:                                         ; preds = %if.end17
  %key = getelementptr inbounds %struct.afs_operation, ptr %call18, i32 0, i32 1
  %20 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %key, align 4
  %call23 = tail call i32 @afs_validate(ptr noundef %1, ptr noundef %21) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %error_op, label %if.end26

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i = getelementptr %struct.afs_operation, ptr %call18, i32 0, i32 5, i32 0
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dir, ptr %arrayidx.i, align 8
  %need_io_lock.i = getelementptr %struct.afs_operation, ptr %call18, i32 0, i32 5, i32 0, i32 6
  %23 = ptrtoint ptr %need_io_lock.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %need_io_lock.i, align 1
  %arrayidx.i94 = getelementptr %struct.afs_operation, ptr %call18, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %1, ptr %arrayidx.i94, align 8
  %need_io_lock.i95 = getelementptr %struct.afs_operation, ptr %call18, i32 0, i32 5, i32 1, i32 6
  %25 = ptrtoint ptr %need_io_lock.i95 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i96 = load i8, ptr %need_io_lock.i95, align 1
  %dv_delta = getelementptr inbounds %struct.afs_operation, ptr %call18, i32 0, i32 5, i32 0, i32 5
  %26 = ptrtoint ptr %dv_delta to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %dv_delta, align 4
  %bf.set33 = or i8 %bf.load.i, 98
  store i8 %bf.set33, ptr %need_io_lock.i, align 1
  %bf.set39 = or i8 %bf.load.i96, 96
  store i8 %bf.set39, ptr %need_io_lock.i95, align 1
  %dentry40 = getelementptr inbounds %struct.afs_operation, ptr %call18, i32 0, i32 8
  %27 = ptrtoint ptr %dentry40 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dentry, ptr %dentry40, align 8
  %dentry_2 = getelementptr inbounds %struct.afs_operation, ptr %call18, i32 0, i32 9
  %28 = ptrtoint ptr %dentry_2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %from, ptr %dentry_2, align 4
  %ops = getelementptr inbounds %struct.afs_operation, ptr %call18, i32 0, i32 3
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @afs_link_operation, ptr %ops, align 4
  %30 = getelementptr inbounds %struct.afs_operation, ptr %call18, i32 0, i32 17
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %30, align 8
  %call41 = tail call i32 @afs_do_sync_operation(ptr noundef %call18) #15
  br label %cleanup

error_op:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %call42 = tail call i32 @afs_put_operation(ptr noundef %call18) #15
  br label %error

error:                                            ; preds = %error_op, %if.then20, %do.end15.error_crit_edge
  %ret.0 = phi i32 [ -36, %do.end15.error_crit_edge ], [ %19, %if.then20 ], [ %call23, %error_op ]
  tail call void @d_drop(ptr noundef %dentry) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %32 = load i32, ptr @afs_debug, align 4
  %and44 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %error.cleanup_crit_edge, label %do.end55, !prof !482

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end55:                                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #17
  %33 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i98 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i98 to ptr
  %task58 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task58 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task58, align 8
  %comm59 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 101
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %comm59, ptr noundef nonnull @.str.221, i32 noundef %ret.0) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %error.cleanup_crit_edge, %if.end26
  %retval.0 = phi i32 [ %call41, %if.end26 ], [ %ret.0, %do.end55 ], [ %ret.0, %error.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_unlink(ptr noundef %dir, ptr noundef %dentry) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.end, !prof !482

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 2
  %7 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %fid, align 8
  %vnode8 = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %vnode8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %vnode8, align 8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203, ptr noundef %comm, ptr noundef nonnull @.str.208, i64 noundef %8, i64 noundef %10, ptr noundef %dentry) #18
  br label %do.end11

do.end11:                                         ; preds = %do.end, %entry.do.end11_crit_edge
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %11 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %12)
  %cmp = icmp ugt i32 %12, 255
  br i1 %cmp, label %do.end11.cleanup_crit_edge, label %if.end13

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end13:                                         ; preds = %do.end11
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 1
  %13 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %volume, align 8
  %call14 = tail call ptr @afs_alloc_operation(ptr noundef null, ptr noundef %14) #15
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %arrayidx.i = getelementptr %struct.afs_operation, ptr %call14, i32 0, i32 5, i32 0
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dir, ptr %arrayidx.i, align 8
  %need_io_lock.i = getelementptr %struct.afs_operation, ptr %call14, i32 0, i32 5, i32 0, i32 6
  %17 = ptrtoint ptr %need_io_lock.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %need_io_lock.i, align 1
  %dv_delta = getelementptr inbounds %struct.afs_operation, ptr %call14, i32 0, i32 5, i32 0, i32 5
  %18 = ptrtoint ptr %dv_delta to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %dv_delta, align 4
  %bf.set25 = or i8 %bf.load.i, 98
  store i8 %bf.set25, ptr %need_io_lock.i, align 1
  %key = getelementptr inbounds %struct.afs_operation, ptr %call14, i32 0, i32 1
  %19 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %key, align 4
  %call26 = tail call i32 @afs_validate(ptr noundef %1, ptr noundef %20) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end18.error82_crit_edge, label %if.end29

if.end18.error82_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %error82

if.end29:                                         ; preds = %if.end18
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #15
  %count.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp31 = icmp ugt i32 %22, 1
  br i1 %cmp31, label %if.then33, label %if.end42

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #15
  %23 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_inode.i, align 8
  %call37 = tail call i32 @write_inode_now(ptr noundef %24, i32 noundef 0) #15
  %25 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %key, align 4
  %call39 = tail call i32 @afs_sillyrename(ptr noundef %dir, ptr noundef %1, ptr noundef %dentry, ptr noundef %26) #15
  br label %error82

if.end42:                                         ; preds = %if.end29
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.not, label %if.end42.if.end46_crit_edge, label %if.then45

if.end42.if.end46_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__d_drop(ptr noundef %dentry) #15
  %29 = getelementptr inbounds %struct.afs_operation, ptr %call14, i32 0, i32 17
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %29, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42.if.end46_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #15
  %arrayidx50 = getelementptr %struct.afs_operation, ptr %call14, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %1, ptr %arrayidx50, align 8
  %update_ctime54 = getelementptr %struct.afs_operation, ptr %call14, i32 0, i32 5, i32 1, i32 6
  %32 = ptrtoint ptr %update_ctime54 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load55 = load i8, ptr %update_ctime54, align 1
  %bf.set62 = or i8 %bf.load55, 40
  store i8 %bf.set62, ptr %update_ctime54, align 1
  %dentry63 = getelementptr inbounds %struct.afs_operation, ptr %call14, i32 0, i32 8
  %33 = ptrtoint ptr %dentry63 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dentry, ptr %dentry63, align 8
  %ops = getelementptr inbounds %struct.afs_operation, ptr %call14, i32 0, i32 3
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @afs_unlink_operation, ptr %ops, align 4
  %call64 = tail call zeroext i1 @afs_begin_vnode_operation(ptr noundef %call14) #15
  tail call void @afs_wait_for_operation(ptr noundef %call14) #15
  %error65 = getelementptr inbounds %struct.afs_operation, ptr %call14, i32 0, i32 13
  %35 = ptrtoint ptr %error65 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %error65, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp67 = icmp eq i16 %36, 0
  br i1 %cmp67, label %land.lhs.true, label %if.end46.if.end80_crit_edge

if.end46.if.end80_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80

land.lhs.true:                                    ; preds = %if.end46
  %flags = getelementptr inbounds %struct.afs_operation, ptr %call14, i32 0, i32 25
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 8
  %and69 = and i32 %38, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %land.lhs.true.if.end80_crit_edge, label %if.then71

land.lhs.true.if.end80_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80

if.then71:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %update_ctime54 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load75 = load i8, ptr %update_ctime54, align 1
  %bf.clear76 = and i8 %bf.load75, -33
  store i8 %bf.clear76, ptr %update_ctime54, align 1
  %40 = getelementptr inbounds %struct.afs_operation, ptr %call14, i32 0, i32 17
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %40, align 8
  %42 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @afs_fetch_status_operation, ptr %ops, align 4
  %call79 = tail call zeroext i1 @afs_begin_vnode_operation(ptr noundef %call14) #15
  tail call void @afs_wait_for_operation(ptr noundef %call14) #15
  br label %if.end80

if.end80:                                         ; preds = %if.then71, %land.lhs.true.if.end80_crit_edge, %if.end46.if.end80_crit_edge
  %call81 = tail call i32 @afs_put_operation(ptr noundef %call14) #15
  br label %cleanup

error82:                                          ; preds = %if.then33, %if.end18.error82_crit_edge
  %call39.sink = phi i32 [ %call39, %if.then33 ], [ %call26, %if.end18.error82_crit_edge ]
  %conv40 = trunc i32 %call39.sink to i16
  %error41 = getelementptr inbounds %struct.afs_operation, ptr %call14, i32 0, i32 13
  %43 = ptrtoint ptr %error41 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv40, ptr %error41, align 2
  %call83 = tail call i32 @afs_put_operation(ptr noundef %call14) #15
  br label %cleanup

cleanup:                                          ; preds = %error82, %if.end80, %if.then16, %do.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.then16 ], [ %call83, %error82 ], [ %call81, %if.end80 ], [ -36, %do.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef %content) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !482

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
  %vnode = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %vnode, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226, ptr noundef %comm, ptr noundef nonnull @.str.227, i64 noundef %6, i64 noundef %8, ptr noundef %dentry, ptr noundef %content) #18
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %9 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %10)
  %cmp = icmp ugt i32 %10, 255
  br i1 %cmp, label %do.end8.error_crit_edge, label %if.end10

do.end8.error_crit_edge:                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end10:                                         ; preds = %do.end8
  %call11 = tail call i32 @strlen(ptr noundef %content) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %call11)
  %cmp12 = icmp ugt i32 %call11, 1023
  br i1 %cmp12, label %if.end10.error_crit_edge, label %if.end14

if.end10.error_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end14:                                         ; preds = %if.end10
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 1
  %11 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %volume, align 8
  %call15 = tail call ptr @afs_alloc_operation(ptr noundef null, ptr noundef %12) #15
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %call15 to i32
  br label %error

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i = getelementptr %struct.afs_operation, ptr %call15, i32 0, i32 5, i32 0
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dir, ptr %arrayidx.i, align 8
  %need_io_lock.i = getelementptr %struct.afs_operation, ptr %call15, i32 0, i32 5, i32 0, i32 6
  %15 = ptrtoint ptr %need_io_lock.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %need_io_lock.i, align 1
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %need_io_lock.i, align 1
  %dv_delta = getelementptr inbounds %struct.afs_operation, ptr %call15, i32 0, i32 5, i32 0, i32 5
  %16 = ptrtoint ptr %dv_delta to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %dv_delta, align 4
  %dentry20 = getelementptr inbounds %struct.afs_operation, ptr %call15, i32 0, i32 8
  %17 = ptrtoint ptr %dentry20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dentry, ptr %dentry20, align 8
  %ops = getelementptr inbounds %struct.afs_operation, ptr %call15, i32 0, i32 3
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @afs_symlink_operation, ptr %ops, align 4
  %19 = getelementptr inbounds %struct.afs_operation, ptr %call15, i32 0, i32 17
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 9, ptr %19, align 8
  %symlink = getelementptr inbounds %struct.afs_operation, ptr %call15, i32 0, i32 17, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %symlink to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %content, ptr %symlink, align 8
  %call21 = tail call i32 @afs_do_sync_operation(ptr noundef %call15) #15
  br label %cleanup

error:                                            ; preds = %if.then17, %if.end10.error_crit_edge, %do.end8.error_crit_edge
  %ret.0 = phi i32 [ -36, %do.end8.error_crit_edge ], [ -22, %if.end10.error_crit_edge ], [ %13, %if.then17 ]
  tail call void @d_drop(ptr noundef %dentry) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %22 = load i32, ptr @afs_debug, align 4
  %and23 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %error.cleanup_crit_edge, label %do.end34, !prof !482

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end34:                                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #17
  %23 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i63 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i63 to ptr
  %task37 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task37, align 8
  %comm38 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 101
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %comm38, ptr noundef nonnull @.str.227, i32 noundef %ret.0) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %error.cleanup_crit_edge, %if.end19
  %retval.0 = phi i32 [ %call21, %if.end19 ], [ %ret.0, %do.end34 ], [ %ret.0, %error.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !482

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
  %vnode = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %vnode, align 8
  %conv = zext i16 %mode to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef %comm, ptr noundef nonnull @.str.189, i64 noundef %6, i64 noundef %8, ptr noundef %dentry, i32 noundef %conv) #18
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 1
  %9 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %volume, align 8
  %call9 = tail call ptr @afs_alloc_operation(ptr noundef null, ptr noundef %10) #15
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @d_drop(ptr noundef %dentry) #15
  %11 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i = getelementptr %struct.afs_operation, ptr %call9, i32 0, i32 5, i32 0
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dir, ptr %arrayidx.i, align 8
  %need_io_lock.i = getelementptr %struct.afs_operation, ptr %call9, i32 0, i32 5, i32 0, i32 6
  %13 = ptrtoint ptr %need_io_lock.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %need_io_lock.i, align 1
  %dv_delta = getelementptr inbounds %struct.afs_operation, ptr %call9, i32 0, i32 5, i32 0, i32 5
  %14 = ptrtoint ptr %dv_delta to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %dv_delta, align 4
  %bf.set20 = or i8 %bf.load.i, 98
  store i8 %bf.set20, ptr %need_io_lock.i, align 1
  %dentry21 = getelementptr inbounds %struct.afs_operation, ptr %call9, i32 0, i32 8
  %15 = ptrtoint ptr %dentry21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dentry, ptr %dentry21, align 8
  %16 = or i16 %mode, 16384
  %17 = getelementptr inbounds %struct.afs_operation, ptr %call9, i32 0, i32 17
  %mode24 = getelementptr inbounds %struct.anon.163, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %mode24 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %16, ptr %mode24, align 4
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %17, align 8
  %ops = getelementptr inbounds %struct.afs_operation, ptr %call9, i32 0, i32 3
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @afs_mkdir_operation, ptr %ops, align 4
  %call25 = tail call i32 @afs_do_sync_operation(ptr noundef %call9) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then11
  %retval.0 = phi i32 [ %11, %if.then11 ], [ %call25, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_rmdir(ptr noundef %dir, ptr noundef %dentry) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !482

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203, ptr noundef %comm, ptr noundef nonnull @.str.204, i64 noundef %6, i64 noundef %8, ptr noundef %dentry) #18
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 1
  %9 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %volume, align 8
  %call10 = tail call ptr @afs_alloc_operation(ptr noundef null, ptr noundef %10) #15
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end14:                                         ; preds = %do.end9
  %arrayidx.i = getelementptr %struct.afs_operation, ptr %call10, i32 0, i32 5, i32 0
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dir, ptr %arrayidx.i, align 8
  %need_io_lock.i = getelementptr %struct.afs_operation, ptr %call10, i32 0, i32 5, i32 0, i32 6
  %13 = ptrtoint ptr %need_io_lock.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %need_io_lock.i, align 1
  %dv_delta = getelementptr inbounds %struct.afs_operation, ptr %call10, i32 0, i32 5, i32 0, i32 5
  %14 = ptrtoint ptr %dv_delta to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %dv_delta, align 4
  %bf.set21 = or i8 %bf.load.i, 98
  store i8 %bf.set21, ptr %need_io_lock.i, align 1
  %dentry22 = getelementptr inbounds %struct.afs_operation, ptr %call10, i32 0, i32 8
  %15 = ptrtoint ptr %dentry22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dentry, ptr %dentry22, align 8
  %ops = getelementptr inbounds %struct.afs_operation, ptr %call10, i32 0, i32 3
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @afs_rmdir_operation, ptr %ops, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i, align 8
  %cmp.i67.not = icmp eq ptr %18, null
  br i1 %cmp.i67.not, label %if.end14.if.end40_crit_edge, label %if.then24

if.end14.if.end40_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then24:                                        ; preds = %if.end14
  %key = getelementptr inbounds %struct.afs_operation, ptr %call10, i32 0, i32 1
  %19 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %key, align 4
  %call27 = tail call i32 @afs_validate(ptr noundef nonnull %18, ptr noundef %20) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %if.then24.error_crit_edge, label %if.then32

if.then24.error_crit_edge:                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.then32:                                        ; preds = %if.then24
  %rmdir_lock = getelementptr inbounds %struct.afs_vnode, ptr %18, i32 0, i32 9
  %call33 = tail call i32 @down_write_killable(ptr noundef %rmdir_lock) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then32.error_crit_edge, label %if.end36

if.then32.error_crit_edge:                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end36:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx38 = getelementptr %struct.afs_operation, ptr %call10, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %arrayidx38, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.end36, %if.end14.if.end40_crit_edge
  %call41 = tail call i32 @afs_do_sync_operation(ptr noundef %call10) #15
  br label %cleanup

error:                                            ; preds = %if.then32.error_crit_edge, %if.then24.error_crit_edge
  %call42 = tail call i32 @afs_put_operation(ptr noundef %call10) #15
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end40, %if.then12
  %retval.0 = phi i32 [ %11, %if.then12 ], [ %call42, %error ], [ %call41, %if.end40 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not = icmp eq i32 %flags, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %old_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %old_dentry, align 8
  %and = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %4 = load i32, ptr @afs_debug, align 4
  %and7 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end3.do.end27_crit_edge, label %do.end, !prof !482

if.end3.do.end27_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end27

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %5 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %old_dir, i32 0, i32 2
  %9 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %fid, align 8
  %vnode15 = getelementptr inbounds %struct.afs_vnode, ptr %old_dir, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %vnode15 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %vnode15, align 8
  %fid16 = getelementptr inbounds %struct.afs_vnode, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %fid16 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %fid16, align 8
  %vnode19 = getelementptr inbounds %struct.afs_vnode, ptr %3, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %vnode19 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %vnode19, align 8
  %fid20 = getelementptr inbounds %struct.afs_vnode, ptr %new_dir, i32 0, i32 2
  %17 = ptrtoint ptr %fid20 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %fid20, align 8
  %vnode23 = getelementptr inbounds %struct.afs_vnode, ptr %new_dir, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %vnode23 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %vnode23, align 8
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, ptr noundef %comm, ptr noundef nonnull @.str.231, i64 noundef %10, i64 noundef %12, i64 noundef %14, i64 noundef %16, i64 noundef %18, i64 noundef %20, ptr noundef %new_dentry) #18
  br label %do.end27

do.end27:                                         ; preds = %do.end, %if.end3.do.end27_crit_edge
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %old_dir, i32 0, i32 1
  %21 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %volume, align 8
  %call28 = tail call ptr @afs_alloc_operation(ptr noundef null, ptr noundef %22) #15
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %if.end32

if.then30:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %call28 to i32
  br label %cleanup

if.end32:                                         ; preds = %do.end27
  %key = getelementptr inbounds %struct.afs_operation, ptr %call28, i32 0, i32 1
  %24 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %key, align 4
  %call33 = tail call i32 @afs_validate(ptr noundef %3, ptr noundef %25) #15
  %conv = trunc i32 %call33 to i16
  %error = getelementptr inbounds %struct.afs_operation, ptr %call28, i32 0, i32 13
  %26 = ptrtoint ptr %error to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv, ptr %error, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp = icmp slt i32 %call33, 0
  br i1 %cmp, label %if.end32.error95_crit_edge, label %if.end36

if.end32.error95_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %error95

if.end36:                                         ; preds = %if.end32
  %arrayidx.i = getelementptr %struct.afs_operation, ptr %call28, i32 0, i32 5, i32 0
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %old_dir, ptr %arrayidx.i, align 8
  %need_io_lock.i = getelementptr %struct.afs_operation, ptr %call28, i32 0, i32 5, i32 0, i32 6
  %28 = ptrtoint ptr %need_io_lock.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i = load i8, ptr %need_io_lock.i, align 1
  %arrayidx.i154 = getelementptr %struct.afs_operation, ptr %call28, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %arrayidx.i154 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %new_dir, ptr %arrayidx.i154, align 8
  %need_io_lock.i155 = getelementptr %struct.afs_operation, ptr %call28, i32 0, i32 5, i32 1, i32 6
  %30 = ptrtoint ptr %need_io_lock.i155 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i156 = load i8, ptr %need_io_lock.i155, align 1
  %dv_delta = getelementptr inbounds %struct.afs_operation, ptr %call28, i32 0, i32 5, i32 0, i32 5
  %31 = ptrtoint ptr %dv_delta to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %dv_delta, align 4
  %dv_delta39 = getelementptr %struct.afs_operation, ptr %call28, i32 0, i32 5, i32 1, i32 5
  %32 = ptrtoint ptr %dv_delta39 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %dv_delta39, align 4
  %bf.set52 = or i8 %bf.load.i, 98
  store i8 %bf.set52, ptr %need_io_lock.i, align 1
  %bf.set58 = or i8 %bf.load.i156, 98
  store i8 %bf.set58, ptr %need_io_lock.i155, align 1
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %call28, i32 0, i32 8
  %33 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %old_dentry, ptr %dentry, align 8
  %dentry_2 = getelementptr inbounds %struct.afs_operation, ptr %call28, i32 0, i32 9
  %34 = ptrtoint ptr %dentry_2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %new_dentry, ptr %dentry_2, align 4
  %35 = ptrtoint ptr %new_dentry to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %new_dentry, align 8
  %and.i.i.i = and i32 %36, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i.i, 0
  %37 = getelementptr inbounds %struct.afs_operation, ptr %call28, i32 0, i32 17
  %new_negative = getelementptr inbounds %struct.afs_operation, ptr %call28, i32 0, i32 17, i32 0, i32 0, i32 1
  %frombool = zext i1 %cmp.i.i to i8
  %38 = ptrtoint ptr %new_negative to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool, ptr %new_negative, align 8
  %ops = getelementptr inbounds %struct.afs_operation, ptr %call28, i32 0, i32 3
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @afs_rename_operation, ptr %ops, align 4
  %40 = ptrtoint ptr %new_dentry to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %new_dentry, align 8
  %and.i.i.i.i = and i32 %41, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %42 = and i32 %41, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %42)
  %43 = icmp eq i32 %42, 2097152
  %or.cond = or i1 %cmp.i.i.i, %43
  br i1 %or.cond, label %if.end36.if.end93_crit_edge, label %if.then63

if.end36.if.end93_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end93

if.then63:                                        ; preds = %if.end36
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %45, null
  br i1 %tobool.not.i.i.not, label %if.then63.if.end67_crit_edge, label %if.then66

if.then63.if.end67_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67

if.then66:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @d_drop(ptr noundef %new_dentry) #15
  %46 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %new_dentry, ptr %37, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.then63.if.end67_crit_edge
  %count.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 7, i32 0, i32 0, i32 1
  %47 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp69 = icmp ugt i32 %48, 2
  br i1 %cmp69, label %if.then71, label %if.end67.if.end93_crit_edge

if.end67.if.end93_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end93

if.then71:                                        ; preds = %if.end67
  %d_parent = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 3
  %49 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %d_parent, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4
  %call72 = tail call ptr @d_alloc(ptr noundef %50, ptr noundef %d_name) #15
  %tmp73 = getelementptr inbounds %struct.anon.165, ptr %37, i32 0, i32 1
  %51 = ptrtoint ptr %tmp73 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call72, ptr %tmp73, align 4
  %tobool75.not = icmp eq ptr %call72, null
  br i1 %tobool75.not, label %if.then71.error95.sink.split_crit_edge, label %if.end78

if.then71.error95.sink.split_crit_edge:           ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #17
  br label %error95.sink.split

if.end78:                                         ; preds = %if.then71
  %d_inode.i158 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %52 = ptrtoint ptr %d_inode.i158 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %d_inode.i158, align 8
  %54 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %key, align 4
  %call82 = tail call i32 @afs_sillyrename(ptr noundef %new_dir, ptr noundef %53, ptr noundef %new_dentry, ptr noundef %55) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end87, label %if.then84

if.then84:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #17
  %conv85 = trunc i32 %call82 to i16
  br label %error95.sink.split

if.end87:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #17
  %56 = ptrtoint ptr %tmp73 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tmp73, align 4
  %58 = ptrtoint ptr %dentry_2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %dentry_2, align 4
  %59 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %37, align 8
  %60 = ptrtoint ptr %new_negative to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %new_negative, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.end87, %if.end67.if.end93_crit_edge, %if.end36.if.end93_crit_edge
  tail call void @d_drop(ptr noundef %old_dentry) #15
  %call94 = tail call i32 @afs_do_sync_operation(ptr noundef %call28) #15
  br label %cleanup

error95.sink.split:                               ; preds = %if.then84, %if.then71.error95.sink.split_crit_edge
  %conv85.sink = phi i16 [ %conv85, %if.then84 ], [ -12, %if.then71.error95.sink.split_crit_edge ]
  %61 = ptrtoint ptr %error to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv85.sink, ptr %error, align 2
  br label %error95

error95:                                          ; preds = %error95.sink.split, %if.end32.error95_crit_edge
  %call96 = tail call i32 @afs_put_operation(ptr noundef %call28) #15
  br label %cleanup

cleanup:                                          ; preds = %error95, %if.end93, %if.then30, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %23, %if.then30 ], [ %call96, %error95 ], [ %call94, %if.end93 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_setattr(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_dir_set_page_dirty(ptr nocapture noundef readnone %page) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 50, 0\0A.popsection", ""() #15, !srcloc !488
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_dir_invalidatepage(ptr noundef %subpage, i32 noundef %offset, i32 noundef %length) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %subpage, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !482

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %9 = load i32, ptr @afs_debug, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %_compound_head.exit.do.body11_crit_edge, label %do.end, !prof !482

_compound_head.exit.do.body11_crit_edge:          ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body11

do.end:                                           ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i48 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i48 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %call7 = tail call fastcc i32 @folio_index(ptr noundef %4)
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.237, ptr noundef %comm, ptr noundef nonnull @.str.238, i32 noundef %call7, i32 noundef %offset, i32 noundef %length) #18
  br label %do.body11

do.body11:                                        ; preds = %do.end, %_compound_head.exit.do.body11_crit_edge
  %14 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_locked.exit, label %if.then.i.i, !prof !482

if.then.i.i:                                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.33) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

folio_test_locked.exit:                           ; preds = %do.body11
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %4, align 4
  %and1.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.body22, label %do.end30, !prof !490

do.body22:                                        ; preds = %folio_test_locked.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2030, 0\0A.popsection", ""() #15, !srcloc !491
  unreachable

do.end30:                                         ; preds = %folio_test_locked.exit
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %8, i32 0, i32 13
  %call31 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.end30.if.end35_crit_edge, label %if.then33

do.end30.if.end35_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.then33:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call fastcc ptr @afs_i2net(ptr noundef %8) #15
  %n_inval = getelementptr inbounds %struct.afs_net, ptr %call.i, i32 0, i32 38
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_inval, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %n_inval, i32 1, i32 3, i32 1) #15
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_inval, ptr %n_inval, i32 1, ptr elementtype(i32) %n_inval) #15, !srcloc !484
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %do.end30.if.end35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp = icmp eq i32 %offset, 0
  br i1 %cmp, label %land.lhs.true, label %if.end35.if.end40_crit_edge

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end35
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.not.i.i.i.i = icmp eq i32 %21, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !490

if.then.i.i.i.i:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.43) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !492
  unreachable

PageHead.exit.i.i.i:                              ; preds = %land.lhs.true
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %4, align 4
  %24 = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %folio_size.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %25 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.6, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %27 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.end.i.i.i ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %length)
  %cmp37 = icmp eq i32 %shl.i, %length
  br i1 %cmp37, label %if.then38, label %folio_size.exit.if.end40_crit_edge

folio_size.exit.if.end40_crit_edge:               ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then38:                                        ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @folio_detach_private(ptr noundef %4)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %folio_size.exit.if.end40_crit_edge, %if.end35.if.end40_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_dir_releasepage(ptr noundef %subpage, i32 noundef %gfp_flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %subpage, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !482

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %9 = load i32, ptr @afs_debug, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %_compound_head.exit.do.end11_crit_edge, label %do.end, !prof !482

_compound_head.exit.do.end11_crit_edge:           ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end11

do.end:                                           ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i23 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i23 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %8, i32 0, i32 2
  %14 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %fid, align 8
  %vnode = getelementptr inbounds %struct.afs_vnode, ptr %8, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %vnode, align 8
  %call8 = tail call fastcc i32 @folio_index(ptr noundef %4)
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef %comm, ptr noundef nonnull @.str.236, i64 noundef %15, i64 noundef %17, i32 noundef %call8) #18
  br label %do.end11

do.end11:                                         ; preds = %do.end, %_compound_head.exit.do.end11_crit_edge
  tail call fastcc void @folio_detach_private(ptr noundef %4)
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %8, i32 0, i32 13
  %call13 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end11.if.end17_crit_edge, label %if.then15

do.end11.if.end17_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then15:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call fastcc ptr @afs_i2net(ptr noundef %8) #15
  %n_relpg = getelementptr inbounds %struct.afs_net, ptr %call.i, i32 0, i32 39
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_relpg, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %n_relpg, i32 1, i32 3, i32 1) #15
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_relpg, ptr %n_relpg, i32 1, ptr elementtype(i32) %n_relpg) #15, !srcloc !484
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.end11.if.end17_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_d_revalidate(ptr noundef %dentry, i32 noundef %flags) #1 align 64 {
entry:
  %cookie.i = alloca %struct.afs_lookup_one_cookie, align 8
  %dir_version = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dir_version) #15
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.do.end9.i_crit_edge, label %do.end.i, !prof !482

if.then.do.end9.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef %comm.i, ptr noundef nonnull @.str.170, ptr noundef %dentry) #18
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %if.then.do.end9.i_crit_edge
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %5 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %d_parent.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %d_inode.i.i, align 8
  %tobool12.not.i = icmp eq ptr %8, null
  br i1 %tobool12.not.i, label %do.end9.i.cleanup_crit_edge, label %if.end14.i

do.end9.i.cleanup_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14.i:                                       ; preds = %do.end9.i
  %flags.i = getelementptr inbounds %struct.afs_vnode, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool17.not.i = icmp eq i32 %11, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end14.i.cleanup_crit_edge

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end19.i:                                       ; preds = %if.end14.i
  %call20.i = tail call zeroext i1 @afs_check_validity(ptr noundef nonnull %8) #15
  br i1 %call20.i, label %do.end25.i, label %if.end19.i.cleanup_crit_edge

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end25.i:                                       ; preds = %if.end19.i
  %data_version.i = getelementptr inbounds %struct.afs_vnode, ptr %8, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %data_version.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load volatile i64, ptr %data_version.i, align 8
  %conv.i = trunc i64 %13 to i32
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %14 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %d_fsdata.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %16, %conv.i
  br i1 %cmp.not.i, label %do.end25.i.if.end42.i_crit_edge, label %do.end35.i

do.end25.i.if.end42.i_crit_edge:                  ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i

do.end35.i:                                       ; preds = %do.end25.i
  %invalid_before.i = getelementptr inbounds %struct.afs_vnode, ptr %8, i32 0, i32 4
  %17 = ptrtoint ptr %invalid_before.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load volatile i64, ptr %invalid_before.i, align 8
  %conv37.i = trunc i64 %18 to i32
  %sub.i = sub i32 %16, %conv37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp38.i = icmp slt i32 %sub.i, 0
  br i1 %cmp38.i, label %do.end35.i.cleanup_crit_edge, label %do.end35.i.if.end42.i_crit_edge

do.end35.i.if.end42.i_crit_edge:                  ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i

do.end35.i.cleanup_crit_edge:                     ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end42.i:                                       ; preds = %do.end35.i.if.end42.i_crit_edge, %do.end25.i.if.end42.i_crit_edge
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %19 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %20, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %21 = load i32, ptr @afs_debug, align 4
  %and21 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %cmp.i.not, label %do.body20, label %if.then2

if.then2:                                         ; preds = %if.end
  br i1 %tobool22.not, label %if.then2.if.end42_crit_edge, label %do.end, !prof !482

if.then2.if.end42_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %22 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i359 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i359 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 101
  %fid12 = getelementptr inbounds %struct.afs_vnode, ptr %20, i32 0, i32 2
  %26 = ptrtoint ptr %fid12 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %fid12, align 8
  %vnode14 = getelementptr inbounds %struct.afs_vnode, ptr %20, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %vnode14 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %vnode14, align 8
  %flags15 = getelementptr inbounds %struct.afs_vnode, ptr %20, i32 0, i32 13
  %30 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags15, align 8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %comm, ptr noundef nonnull @.str.135, i64 noundef %27, i64 noundef %29, ptr noundef %dentry, i32 noundef %31) #18
  br label %if.end42

do.body20:                                        ; preds = %if.end
  br i1 %tobool22.not, label %do.body20.if.end42_crit_edge, label %do.end32, !prof !482

do.body20.if.end42_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

do.end32:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #17
  %32 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i360 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i360 to ptr
  %task35 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task35, align 8
  %comm36 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 101
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %comm36, ptr noundef nonnull @.str.135, ptr noundef %dentry) #18
  br label %if.end42

if.end42:                                         ; preds = %do.end32, %do.body20.if.end42_crit_edge, %do.end, %if.then2.if.end42_crit_edge
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %36 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 33
  %38 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i, align 16
  %volume = getelementptr inbounds %struct.afs_super_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %volume, align 4
  %cell = getelementptr inbounds %struct.afs_volume, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cell, align 8
  %call44 = tail call ptr @afs_request_key(ptr noundef %43) #15
  %cmp.i361 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i361, ptr null, ptr %call44
  %call48 = tail call ptr @dget_parent(ptr noundef %dentry) #15
  %d_inode.i362 = getelementptr inbounds %struct.dentry, ptr %call48, i32 0, i32 5
  %44 = ptrtoint ptr %d_inode.i362 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_inode.i362, align 8
  %call51 = tail call i32 @afs_validate(ptr noundef %45, ptr noundef %spec.select) #15
  %flags52 = getelementptr inbounds %struct.afs_vnode, ptr %45, i32 0, i32 13
  %46 = ptrtoint ptr %flags52 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags52, align 4
  %48 = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool54.not = icmp eq i32 %48, 0
  br i1 %tobool54.not, label %if.end78, label %do.body56

do.body56:                                        ; preds = %if.end42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %49 = load i32, ptr @afs_debug, align 4
  %and57 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body56.do.body261_crit_edge, label %do.end68, !prof !482

do.body56.do.body261_crit_edge:                   ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body261

do.end68:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #17
  %50 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i363 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i363 to ptr
  %task71 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task71 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task71, align 8
  %comm72 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 101
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %comm72, ptr noundef %dentry) #18
  br label %do.body261

if.end78:                                         ; preds = %if.end42
  %data_version = getelementptr inbounds %struct.afs_vnode, ptr %45, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %data_version to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %data_version, align 8
  %56 = ptrtoint ptr %dir_version to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %dir_version, align 8
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %57 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %d_fsdata, align 4
  %59 = ptrtoint ptr %58 to i32
  %conv = trunc i64 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %conv)
  %cmp = icmp eq i32 %59, %conv
  br i1 %cmp, label %if.end78.out_valid_noupdate_crit_edge, label %if.end81

if.end78.out_valid_noupdate_crit_edge:            ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_valid_noupdate

if.end81:                                         ; preds = %if.end78
  %invalid_before82 = getelementptr inbounds %struct.afs_vnode, ptr %45, i32 0, i32 4
  %60 = ptrtoint ptr %invalid_before82 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %invalid_before82, align 8
  %conv83 = trunc i64 %61 to i32
  %sub = sub i32 %59, %conv83
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp84 = icmp sgt i32 %sub, -1
  br i1 %cmp84, label %if.end81.out_valid_crit_edge, label %do.body88

if.end81.out_valid_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_valid

do.body88:                                        ; preds = %if.end81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %62 = load i32, ptr @afs_debug, align 4
  %and89 = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %do.body88.do.end109_crit_edge, label %do.end100, !prof !482

do.body88.do.end109_crit_edge:                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end109

do.end100:                                        ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #17
  %63 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i364 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i364 to ptr
  %task103 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task103 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task103, align 8
  %comm104 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 101
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %comm104) #18
  br label %do.end109

do.end109:                                        ; preds = %do.end100, %do.body88.do.end109_crit_edge
  %call.i = tail call fastcc ptr @afs_i2net(ptr noundef %45) #15
  %n_reval = getelementptr inbounds %struct.afs_net, ptr %call.i, i32 0, i32 37
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_reval, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %n_reval, i32 1, i32 3, i32 1) #15
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_reval, ptr %n_reval, i32 1, ptr elementtype(i32) %n_reval) #15, !srcloc !484
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 8
  %68 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i365 = getelementptr inbounds %struct.super_block, ptr %69, i32 0, i32 33
  %70 = ptrtoint ptr %s_fs_info.i365 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_fs_info.i365, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cookie.i) #15
  %72 = call ptr @memset(ptr %cookie.i, i32 255, i32 40)
  %73 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @afs_lookup_one_filldir, ptr %cookie.i, align 8
  %pos.i = getelementptr inbounds %struct.dir_context, ptr %cookie.i, i32 0, i32 1
  %74 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 0, ptr %pos.i, align 8
  %name.i = getelementptr inbounds %struct.afs_lookup_one_cookie, ptr %cookie.i, i32 0, i32 1
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %75 = call ptr @memcpy(ptr %name.i, ptr %d_name.i, i32 16)
  %found.i = getelementptr inbounds %struct.afs_lookup_one_cookie, ptr %cookie.i, i32 0, i32 2
  %76 = ptrtoint ptr %found.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %found.i, align 8
  %fid1.i = getelementptr inbounds %struct.afs_lookup_one_cookie, ptr %cookie.i, i32 0, i32 3
  %volume.i = getelementptr inbounds %struct.afs_super_info, ptr %71, i32 0, i32 2
  %77 = ptrtoint ptr %volume.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %volume.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %78, align 8
  %81 = ptrtoint ptr %fid1.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %fid1.i, align 8
  %vnode.i = getelementptr inbounds %struct.afs_lookup_one_cookie, ptr %cookie.i, i32 0, i32 3, i32 1
  %82 = call ptr @memset(ptr %vnode.i, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %83 = load i32, ptr @afs_debug, align 4
  %and.i366 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i366)
  %tobool.not.i367 = icmp eq i32 %and.i366, 0
  br i1 %tobool.not.i367, label %do.end109.do.end7.i_crit_edge, label %do.end.i371, !prof !482

do.end109.do.end7.i_crit_edge:                    ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7.i

do.end.i371:                                      ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #17
  %84 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i368 = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i368 to ptr
  %task.i369 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %task.i369 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %task.i369, align 8
  %comm.i370 = getelementptr inbounds %struct.task_struct, ptr %87, i32 0, i32 101
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 11
  %88 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %i_ino.i, align 8
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %comm.i370, ptr noundef nonnull @.str.171, i32 noundef %89, ptr noundef %dentry, ptr noundef %dentry) #18
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i371, %do.end109.do.end7.i_crit_edge
  %call9.i = call fastcc i32 @afs_dir_iterate(ptr noundef %45, ptr noundef nonnull %cookie.i, ptr noundef %spec.select, ptr noundef nonnull %dir_version) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i372 = icmp slt i32 %call9.i, 0
  br i1 %cmp.i372, label %do.body11.i, label %if.end33.i

do.body11.i:                                      ; preds = %do.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %90 = load i32, ptr @afs_debug, align 4
  %and12.i = and i32 %90, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %do.body11.i.afs_do_lookup_one.exit_crit_edge, label %do.end23.i, !prof !482

do.body11.i.afs_do_lookup_one.exit_crit_edge:     ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_do_lookup_one.exit

do.end23.i:                                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #17
  %91 = call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i95.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i95.i to ptr
  %task26.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %task26.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %task26.i, align 8
  %comm27.i = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 101
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef %comm27.i, ptr noundef nonnull @.str.171, i32 noundef %call9.i) #18
  br label %afs_do_lookup_one.exit

if.end33.i:                                       ; preds = %do.end7.i
  %95 = ptrtoint ptr %found.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %found.i, align 8, !range !487
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool35.not.i = icmp eq i8 %96, 0
  br i1 %tobool35.not.i, label %do.body37.i, label %if.end59.i

do.body37.i:                                      ; preds = %if.end33.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %97 = load i32, ptr @afs_debug, align 4
  %and38.i = and i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %do.body37.i.afs_do_lookup_one.exit.thread394_crit_edge, label %do.end49.i, !prof !482

do.body37.i.afs_do_lookup_one.exit.thread394_crit_edge: ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_do_lookup_one.exit.thread394

do.end49.i:                                       ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #17
  %98 = call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i96.i = and i32 %98, -16384
  %99 = inttoptr i32 %and.i96.i to ptr
  %task52.i = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %task52.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %task52.i, align 8
  %comm53.i = getelementptr inbounds %struct.task_struct, ptr %101, i32 0, i32 101
  %call55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef %comm53.i, ptr noundef nonnull @.str.171) #18
  br label %afs_do_lookup_one.exit.thread394

if.end59.i:                                       ; preds = %if.end33.i
  %102 = ptrtoint ptr %vnode.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %fid.sroa.4.0.copyload = load i64, ptr %vnode.i, align 8
  %fid.sroa.8.0.fid1.i.sroa_idx = getelementptr inbounds %struct.afs_lookup_one_cookie, ptr %cookie.i, i32 0, i32 3, i32 3
  %103 = ptrtoint ptr %fid.sroa.8.0.fid1.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %103)
  %fid.sroa.8.0.copyload = load i32, ptr %fid.sroa.8.0.fid1.i.sroa_idx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %104 = load i32, ptr @afs_debug, align 4
  %and62.i = and i32 %104, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %if.end59.i.afs_do_lookup_one.exit.thread_crit_edge, label %do.end73.i, !prof !482

if.end59.i.afs_do_lookup_one.exit.thread_crit_edge: ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_do_lookup_one.exit.thread

do.end73.i:                                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #17
  %105 = call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i97.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i97.i to ptr
  %task76.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %task76.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task76.i, align 8
  %comm77.i = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 101
  %call81.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef %comm77.i, ptr noundef nonnull @.str.171, i64 noundef %fid.sroa.4.0.copyload, i32 noundef %fid.sroa.8.0.copyload) #18
  br label %afs_do_lookup_one.exit.thread

afs_do_lookup_one.exit.thread:                    ; preds = %do.end73.i, %if.end59.i.afs_do_lookup_one.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cookie.i) #15
  %109 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %d_inode.i, align 8
  %cmp.i375 = icmp eq ptr %110, null
  br i1 %cmp.i375, label %afs_do_lookup_one.exit.thread.do.body261_crit_edge, label %if.end114

afs_do_lookup_one.exit.thread.do.body261_crit_edge: ; preds = %afs_do_lookup_one.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body261

afs_do_lookup_one.exit.thread394:                 ; preds = %do.end49.i, %do.body37.i.afs_do_lookup_one.exit.thread394_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cookie.i) #15
  br label %do.body190

afs_do_lookup_one.exit:                           ; preds = %do.end23.i, %do.body11.i.afs_do_lookup_one.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cookie.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call9.i)
  %cond = icmp eq i32 %call9.i, -2
  br i1 %cond, label %afs_do_lookup_one.exit.do.body190_crit_edge, label %do.body215

afs_do_lookup_one.exit.do.body190_crit_edge:      ; preds = %afs_do_lookup_one.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body190

if.end114:                                        ; preds = %afs_do_lookup_one.exit.thread
  %call116 = call zeroext i1 @is_bad_inode(ptr noundef nonnull %110) #15
  br i1 %call116, label %do.end120, label %if.end123

do.end120:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #17
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef %dentry) #18
  br label %do.body261

if.end123:                                        ; preds = %if.end114
  %vnode127 = getelementptr inbounds %struct.afs_vnode, ptr %110, i32 0, i32 2, i32 1
  %111 = ptrtoint ptr %vnode127 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %vnode127, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %fid.sroa.4.0.copyload, i64 %112)
  %cmp128.not = icmp eq i64 %fid.sroa.4.0.copyload, %112
  br i1 %cmp128.not, label %if.end156, label %do.body131

do.body131:                                       ; preds = %if.end123
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %113 = load i32, ptr @afs_debug, align 4
  %and132 = and i32 %113, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %do.body131.do.body261_crit_edge, label %do.end143, !prof !482

do.body131.do.body261_crit_edge:                  ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body261

do.end143:                                        ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #17
  %114 = call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i377 = and i32 %114, -16384
  %115 = inttoptr i32 %and.i377 to ptr
  %task146 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %task146 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %task146, align 8
  %comm147 = getelementptr inbounds %struct.task_struct, ptr %117, i32 0, i32 101
  %call152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %comm147, ptr noundef %dentry, i64 noundef %fid.sroa.4.0.copyload, i64 noundef %112) #18
  br label %do.body261

if.end156:                                        ; preds = %if.end123
  %unique158 = getelementptr inbounds %struct.afs_vnode, ptr %110, i32 0, i32 2, i32 3
  %118 = ptrtoint ptr %unique158 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %unique158, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %fid.sroa.8.0.copyload, i32 %119)
  %cmp159.not = icmp eq i32 %fid.sroa.8.0.copyload, %119
  br i1 %cmp159.not, label %if.end156.out_valid_crit_edge, label %do.body162

if.end156.out_valid_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_valid

do.body162:                                       ; preds = %if.end156
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %120 = load i32, ptr @afs_debug, align 4
  %and163 = and i32 %120, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %do.body162.do.body261_crit_edge, label %do.end174, !prof !482

do.body162.do.body261_crit_edge:                  ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body261

do.end174:                                        ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #17
  %121 = call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i378 = and i32 %121, -16384
  %122 = inttoptr i32 %and.i378 to ptr
  %task177 = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %task177 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %task177, align 8
  %comm178 = getelementptr inbounds %struct.task_struct, ptr %124, i32 0, i32 101
  %i_generation = getelementptr inbounds %struct.inode, ptr %110, i32 0, i32 49
  %125 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %i_generation, align 8
  %call184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %comm178, ptr noundef %dentry, i32 noundef %fid.sroa.8.0.copyload, i32 noundef %119, i32 noundef %126) #18
  br label %do.body261

do.body190:                                       ; preds = %afs_do_lookup_one.exit.do.body190_crit_edge, %afs_do_lookup_one.exit.thread394
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %127 = load i32, ptr @afs_debug, align 4
  %and191 = and i32 %127, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %do.body190.do.end211_crit_edge, label %do.end202, !prof !482

do.body190.do.end211_crit_edge:                   ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end211

do.end202:                                        ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #17
  %128 = call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i379 = and i32 %128, -16384
  %129 = inttoptr i32 %and.i379 to ptr
  %task205 = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %task205 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %task205, align 8
  %comm206 = getelementptr inbounds %struct.task_struct, ptr %131, i32 0, i32 101
  %call208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef %comm206, ptr noundef %dentry) #18
  br label %do.end211

do.end211:                                        ; preds = %do.end202, %do.body190.do.end211_crit_edge
  %132 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %d_inode.i, align 8
  %cmp.i381.not = icmp eq ptr %133, null
  br i1 %cmp.i381.not, label %do.end211.out_valid_crit_edge, label %do.end211.do.body261_crit_edge

do.end211.do.body261_crit_edge:                   ; preds = %do.end211
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body261

do.end211.out_valid_crit_edge:                    ; preds = %do.end211
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_valid

do.body215:                                       ; preds = %afs_do_lookup_one.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %134 = load i32, ptr @afs_debug, align 4
  %and216 = and i32 %134, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp eq i32 %and216, 0
  br i1 %tobool217.not, label %do.body215.do.body261_crit_edge, label %do.end227, !prof !482

do.body215.do.body261_crit_edge:                  ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body261

do.end227:                                        ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #17
  %135 = call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i382 = and i32 %135, -16384
  %136 = inttoptr i32 %and.i382 to ptr
  %task230 = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %task230 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %task230, align 8
  %comm231 = getelementptr inbounds %struct.task_struct, ptr %138, i32 0, i32 101
  %call233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef %comm231, ptr noundef %call48, i32 noundef %call9.i) #18
  br label %do.body261

out_valid:                                        ; preds = %do.end211.out_valid_crit_edge, %if.end156.out_valid_crit_edge, %if.end81.out_valid_crit_edge
  %139 = ptrtoint ptr %dir_version to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %dir_version, align 8
  %conv237 = trunc i64 %140 to i32
  %141 = inttoptr i32 %conv237 to ptr
  %142 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %141, ptr %d_fsdata, align 4
  br label %out_valid_noupdate

out_valid_noupdate:                               ; preds = %out_valid, %if.end78.out_valid_noupdate_crit_edge
  call void @dput(ptr noundef %call48) #15
  call void @key_put(ptr noundef %spec.select) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %143 = load i32, ptr @afs_debug, align 4
  %and240 = and i32 %143, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and240)
  %tobool241.not = icmp eq i32 %and240, 0
  br i1 %tobool241.not, label %out_valid_noupdate.cleanup_crit_edge, label %do.end251, !prof !482

out_valid_noupdate.cleanup_crit_edge:             ; preds = %out_valid_noupdate
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end251:                                        ; preds = %out_valid_noupdate
  call void @__sanitizer_cov_trace_pc() #17
  %144 = call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i383 = and i32 %144, -16384
  %145 = inttoptr i32 %and.i383 to ptr
  %task254 = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %task254 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %task254, align 8
  %comm255 = getelementptr inbounds %struct.task_struct, ptr %147, i32 0, i32 101
  %call257 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef %comm255, ptr noundef nonnull @.str.135) #18
  br label %cleanup

do.body261:                                       ; preds = %do.end227, %do.body215.do.body261_crit_edge, %do.end211.do.body261_crit_edge, %do.end174, %do.body162.do.body261_crit_edge, %do.end143, %do.body131.do.body261_crit_edge, %do.end120, %afs_do_lookup_one.exit.thread.do.body261_crit_edge, %do.end68, %do.body56.do.body261_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %148 = load i32, ptr @afs_debug, align 4
  %and262 = and i32 %148, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262)
  %tobool263.not = icmp eq i32 %and262, 0
  br i1 %tobool263.not, label %do.body261.do.end282_crit_edge, label %do.end273, !prof !482

do.body261.do.end282_crit_edge:                   ; preds = %do.body261
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end282

do.end273:                                        ; preds = %do.body261
  call void @__sanitizer_cov_trace_pc() #17
  %149 = call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i384 = and i32 %149, -16384
  %150 = inttoptr i32 %and.i384 to ptr
  %task276 = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %task276 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %task276, align 8
  %comm277 = getelementptr inbounds %struct.task_struct, ptr %152, i32 0, i32 101
  %call279 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef %comm277, ptr noundef %dentry) #18
  br label %do.end282

do.end282:                                        ; preds = %do.end273, %do.body261.do.end282_crit_edge
  call void @dput(ptr noundef %call48) #15
  call void @key_put(ptr noundef %spec.select) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %153 = load i32, ptr @afs_debug, align 4
  %and284 = and i32 %153, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and284)
  %tobool285.not = icmp eq i32 %and284, 0
  br i1 %tobool285.not, label %do.end282.cleanup_crit_edge, label %do.end295, !prof !482

do.end282.cleanup_crit_edge:                      ; preds = %do.end282
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end295:                                        ; preds = %do.end282
  call void @__sanitizer_cov_trace_pc() #17
  %154 = call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i385 = and i32 %154, -16384
  %155 = inttoptr i32 %and.i385 to ptr
  %task298 = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %task298 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %task298, align 8
  %comm299 = getelementptr inbounds %struct.task_struct, ptr %157, i32 0, i32 101
  %call301 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef %comm299, ptr noundef nonnull @.str.135) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end295, %do.end282.cleanup_crit_edge, %do.end251, %out_valid_noupdate.cleanup_crit_edge, %if.end42.i, %do.end35.i.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge, %if.end14.i.cleanup_crit_edge, %do.end9.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end251 ], [ 1, %out_valid_noupdate.cleanup_crit_edge ], [ 0, %do.end295 ], [ 0, %do.end282.cleanup_crit_edge ], [ 1, %if.end42.i ], [ -10, %do.end9.i.cleanup_crit_edge ], [ -10, %if.end14.i.cleanup_crit_edge ], [ -10, %if.end19.i.cleanup_crit_edge ], [ -10, %do.end35.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dir_version) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_d_delete(ptr noundef %dentry) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !482

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.181, ptr noundef %dentry) #18
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %5 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dentry, align 8
  %and6 = and i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end5.do.body42_crit_edge

do.end5.do.body42_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body42

if.end9:                                          ; preds = %do.end5
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %7 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %8, null
  br i1 %cmp.i.not, label %if.end9.do.body22_crit_edge, label %land.lhs.true

if.end9.do.body22_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body22

land.lhs.true:                                    ; preds = %if.end9
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not = icmp eq i32 %11, 0
  br i1 %tobool14.not, label %lor.lhs.false, label %land.lhs.true.do.body42_crit_edge

land.lhs.true.do.body42_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body42

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool19.not = icmp eq i32 %14, 0
  br i1 %tobool19.not, label %lor.lhs.false.do.body22_crit_edge, label %lor.lhs.false.do.body42_crit_edge

lor.lhs.false.do.body42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body42

lor.lhs.false.do.body22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body22

do.body22:                                        ; preds = %lor.lhs.false.do.body22_crit_edge, %if.end9.do.body22_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %15 = load i32, ptr @afs_debug, align 4
  %and23 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body22.return_crit_edge, label %do.body22.return.sink.split_crit_edge, !prof !482

do.body22.return.sink.split_crit_edge:            ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split

do.body22.return_crit_edge:                       ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.body42:                                        ; preds = %lor.lhs.false.do.body42_crit_edge, %land.lhs.true.do.body42_crit_edge, %do.end5.do.body42_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %16 = load i32, ptr @afs_debug, align 4
  %and43 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body42.return_crit_edge, label %do.body42.return.sink.split_crit_edge, !prof !482

do.body42.return.sink.split_crit_edge:            ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split

do.body42.return_crit_edge:                       ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

return.sink.split:                                ; preds = %do.body42.return.sink.split_crit_edge, %do.body22.return.sink.split_crit_edge
  %.str.186.sink = phi ptr [ @.str.183, %do.body22.return.sink.split_crit_edge ], [ @.str.186, %do.body42.return.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %do.body22.return.sink.split_crit_edge ], [ 1, %do.body42.return.sink.split_crit_edge ]
  %17 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i71 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i71 to ptr
  %task56 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task56 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task56, align 8
  %comm57 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 101
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.186.sink, ptr noundef %comm57, ptr noundef nonnull @.str.181) #18
  br label %return

return:                                           ; preds = %return.sink.split, %do.body42.return_crit_edge, %do.body22.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.body22.return_crit_edge ], [ 1, %do.body42.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_d_release(ptr noundef %dentry) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !482

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, ptr noundef %dentry) #18
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_d_iput(ptr noundef %dentry, ptr noundef %inode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dentry, align 8
  %and = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @afs_silly_iput(ptr noundef %dentry, ptr noundef %inode) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @iput(ptr noundef %inode) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_d_automount(ptr noundef) #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_check_for_remote_deletion(ptr nocapture noundef readonly %op) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %abort_code = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18, i32 6
  %0 = ptrtoint ptr %abort_code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %abort_code, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %1)
  %cond = icmp eq i32 %1, 102
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  %2 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file, align 8
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #15
  tail call void @afs_break_callback(ptr noundef %3, i32 noundef 3) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_break_callback(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_open(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @afs_dir_iterate(ptr noundef %dir, ptr noundef %ctx, ptr noundef %key, ptr nocapture noundef writeonly %_dir_version) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !482

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ino, align 8
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %pos, align 8
  %conv = trunc i64 %8 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %comm, ptr noundef nonnull @.str.6, i32 noundef %6, i32 noundef %conv) #18
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 13
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %if.end34, label %do.body12

do.body12:                                        ; preds = %do.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %12 = load i32, ptr @afs_debug, align 4
  %and13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.cleanup_crit_edge, label %do.end24, !prof !482

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end24:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #17
  %13 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i146 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i146 to ptr
  %task27 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task27, align 8
  %comm28 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 101
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %comm28, ptr noundef nonnull @.str.6) #18
  br label %cleanup

if.end34:                                         ; preds = %do.end7
  %call35 = tail call fastcc ptr @afs_read_dir(ptr noundef %dir, ptr noundef %key)
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %call35 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  %data_version = getelementptr inbounds %struct.afs_read, ptr %call35, i32 0, i32 7
  %18 = ptrtoint ptr %data_version to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %data_version, align 8
  %20 = ptrtoint ptr %_dir_version to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %_dir_version, align 8
  %pos40 = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %21 = ptrtoint ptr %pos40 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %pos40, align 8
  %add = add i64 %22, 31
  %and42 = and i64 %add, 4294967264
  store i64 %and42, ptr %pos40, align 8
  %actual_len = getelementptr inbounds %struct.afs_read, ptr %call35, i32 0, i32 2
  %23 = ptrtoint ptr %actual_len to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %actual_len, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and42, i64 %24)
  %cmp270 = icmp slt i64 %and42, %24
  br i1 %cmp270, label %while.body.lr.ph, label %if.end39.out_crit_edge

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

while.body.lr.ph:                                 ; preds = %if.end39
  %i_mapping = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 9
  br label %while.body

while.cond.loopexit:                              ; preds = %do.cond82
  %25 = ptrtoint ptr %pos40 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %pos40, align 8
  %27 = ptrtoint ptr %actual_len to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %actual_len, align 8
  %cmp = icmp slt i64 %26, %28
  br i1 %cmp, label %while.cond.loopexit.while.body_crit_edge, label %while.cond.loopexit.out_crit_edge

while.cond.loopexit.out_crit_edge:                ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %29 = phi i64 [ %and42, %while.body.lr.ph ], [ %26, %while.cond.loopexit.while.body_crit_edge ]
  %30 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_mapping, align 8
  %div = sdiv i64 %29, 4096
  %conv46 = trunc i64 %div to i32
  %call47 = tail call ptr @__filemap_get_folio(ptr noundef %31, i32 noundef %conv46, i32 noundef 1, i32 noundef 0) #15
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %if.then49, label %if.end51

if.then49:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @trace_afs_file_error(ptr noundef %dir, i32 noundef -5, i32 noundef 2) #15
  br label %out

if.end51:                                         ; preds = %while.body
  %32 = ptrtoint ptr %pos40 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %pos40, align 8
  %and53 = and i64 %33, 4294965248
  %34 = getelementptr inbounds %struct.page, ptr %call47, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %and.i.i.i.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.i.i, !prof !482

if.then.i.i.i.i.i:                                ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i.i.i = add i32 %36, -1
  br label %_compound_head.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %call47 to i32
  br label %_compound_head.exit.i.i.i.i

_compound_head.exit.i.i.i.i:                      ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %37, %if.end.i.i.i.i.i ]
  %38 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  %39 = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %and.i.i.i.i.i.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i, !prof !482

if.then.i.i.i.i.i.i.i:                            ; preds = %_compound_head.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %42 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  tail call void @dump_page(ptr noundef %42, ptr noundef nonnull @.str.33) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

folio_test_swapbacked.exit.i.i.i.i.i:             ; preds = %_compound_head.exit.i.i.i.i
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %38, align 4
  %45 = and i32 %44, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %45, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i.i.if.end.i.i.i_crit_edge, label %land.rhs.i.i.i.i.i

folio_test_swapbacked.exit.i.i.i.i.i.if.end.i.i.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

land.rhs.i.i.i.i.i:                               ; preds = %folio_test_swapbacked.exit.i.i.i.i.i
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %39, align 4
  %and.i.i.i.i.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %PageSwapCache.exit.i.i.i, label %if.then.i.i.i.i.i.i, !prof !482

if.then.i.i.i.i.i.i:                              ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %48 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  tail call void @dump_page(ptr noundef %48, ptr noundef nonnull @.str.33) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

PageSwapCache.exit.i.i.i:                         ; preds = %land.rhs.i.i.i.i.i
  %49 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %38, align 4
  %51 = and i32 %50, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.i.i.not.i.i.i = icmp eq i32 %51, 0
  br i1 %tobool.i.i.not.i.i.i, label %PageSwapCache.exit.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i, !prof !482

PageSwapCache.exit.i.i.i.if.end.i.i.i_crit_edge:  ; preds = %PageSwapCache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %PageSwapCache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i.i.i = tail call i32 @__page_file_index(ptr noundef nonnull %call47) #15
  br label %folio_file_pos.exit

if.end.i.i.i:                                     ; preds = %PageSwapCache.exit.i.i.i.if.end.i.i.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.i.i.if.end.i.i.i_crit_edge
  %index.i.i.i = getelementptr inbounds %struct.page, ptr %call47, i32 0, i32 1, i32 0, i32 2
  %52 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %index.i.i.i, align 4
  br label %folio_file_pos.exit

folio_file_pos.exit:                              ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %call2.i.i.i, %if.then.i.i.i ], [ %53, %if.end.i.i.i ]
  %conv.i.i = zext i32 %retval.0.i.i.i to i64
  %shl.i.i.neg = mul nuw i64 %conv.i.i, 4294963200
  %sub = add nuw i64 %shl.i.i.neg, %and53
  %conv55 = trunc i64 %sub to i32
  %54 = ptrtoint ptr %call47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %call47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp.i.not.i.i.i.i = icmp eq i32 %55, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !490

if.then.i.i.i.i:                                  ; preds = %folio_file_pos.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef nonnull %call47, ptr noundef nonnull @.str.43) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !492
  unreachable

PageHead.exit.i.i.i:                              ; preds = %folio_file_pos.exit
  %56 = ptrtoint ptr %call47 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %call47, align 4
  %58 = and i32 %57, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i.i.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i147

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %folio_size.exit

if.end.i.i.i147:                                  ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %59 = getelementptr %struct.page, ptr %call47, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.6, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %61 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i147, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i148 = phi i32 [ %conv.i.i.i, %if.end.i.i.i147 ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i.i148
  %conv57 = zext i32 %shl.i to i64
  %62 = ptrtoint ptr %actual_len to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %actual_len, align 8
  %64 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %34, align 4
  %and.i.i.i.i.i149 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i149)
  %tobool.not.i.i.i.i.i150 = icmp eq i32 %and.i.i.i.i.i149, 0
  br i1 %tobool.not.i.i.i.i.i150, label %if.end.i.i.i.i.i153, label %if.then.i.i.i.i.i152, !prof !482

if.then.i.i.i.i.i152:                             ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i.i.i151 = add i32 %65, -1
  br label %_compound_head.exit.i.i.i.i157

if.end.i.i.i.i.i153:                              ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  %66 = ptrtoint ptr %call47 to i32
  br label %_compound_head.exit.i.i.i.i157

_compound_head.exit.i.i.i.i157:                   ; preds = %if.end.i.i.i.i.i153, %if.then.i.i.i.i.i152
  %retval.0.i.i.i.i.i154 = phi i32 [ %sub.i.i.i.i.i151, %if.then.i.i.i.i.i152 ], [ %66, %if.end.i.i.i.i.i153 ]
  %67 = inttoptr i32 %retval.0.i.i.i.i.i154 to ptr
  %68 = getelementptr inbounds %struct.page, ptr %67, i32 0, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %68, align 4
  %and.i.i.i.i.i.i.i.i155 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i.i155)
  %tobool.not.i.i.i.i.i.i.i156 = icmp eq i32 %and.i.i.i.i.i.i.i.i155, 0
  br i1 %tobool.not.i.i.i.i.i.i.i156, label %folio_test_swapbacked.exit.i.i.i.i.i160, label %if.then.i.i.i.i.i.i.i158, !prof !482

if.then.i.i.i.i.i.i.i158:                         ; preds = %_compound_head.exit.i.i.i.i157
  call void @__sanitizer_cov_trace_pc() #17
  %71 = inttoptr i32 %retval.0.i.i.i.i.i154 to ptr
  tail call void @dump_page(ptr noundef %71, ptr noundef nonnull @.str.33) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

folio_test_swapbacked.exit.i.i.i.i.i160:          ; preds = %_compound_head.exit.i.i.i.i157
  %72 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %67, align 4
  %74 = and i32 %73, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.i.not.i.i.i.i.i159 = icmp eq i32 %74, 0
  br i1 %tobool.i.not.i.i.i.i.i159, label %folio_test_swapbacked.exit.i.i.i.i.i160.if.end.i.i.i170_crit_edge, label %land.rhs.i.i.i.i.i163

folio_test_swapbacked.exit.i.i.i.i.i160.if.end.i.i.i170_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i.i.i160
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i170

land.rhs.i.i.i.i.i163:                            ; preds = %folio_test_swapbacked.exit.i.i.i.i.i160
  %75 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %68, align 4
  %and.i.i.i.i.i.i.i161 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i161)
  %tobool.not.i.i.i.i.i.i162 = icmp eq i32 %and.i.i.i.i.i.i.i161, 0
  br i1 %tobool.not.i.i.i.i.i.i162, label %PageSwapCache.exit.i.i.i166, label %if.then.i.i.i.i.i.i164, !prof !482

if.then.i.i.i.i.i.i164:                           ; preds = %land.rhs.i.i.i.i.i163
  call void @__sanitizer_cov_trace_pc() #17
  %77 = inttoptr i32 %retval.0.i.i.i.i.i154 to ptr
  tail call void @dump_page(ptr noundef %77, ptr noundef nonnull @.str.33) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

PageSwapCache.exit.i.i.i166:                      ; preds = %land.rhs.i.i.i.i.i163
  %78 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %67, align 4
  %80 = and i32 %79, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.i.i.not.i.i.i165 = icmp eq i32 %80, 0
  br i1 %tobool.i.i.not.i.i.i165, label %PageSwapCache.exit.i.i.i166.if.end.i.i.i170_crit_edge, label %if.then.i.i.i168, !prof !482

PageSwapCache.exit.i.i.i166.if.end.i.i.i170_crit_edge: ; preds = %PageSwapCache.exit.i.i.i166
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i170

if.then.i.i.i168:                                 ; preds = %PageSwapCache.exit.i.i.i166
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i.i.i167 = tail call i32 @__page_file_index(ptr noundef nonnull %call47) #15
  br label %folio_file_pos.exit174

if.end.i.i.i170:                                  ; preds = %PageSwapCache.exit.i.i.i166.if.end.i.i.i170_crit_edge, %folio_test_swapbacked.exit.i.i.i.i.i160.if.end.i.i.i170_crit_edge
  %index.i.i.i169 = getelementptr inbounds %struct.page, ptr %call47, i32 0, i32 1, i32 0, i32 2
  %81 = ptrtoint ptr %index.i.i.i169 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %index.i.i.i169, align 4
  br label %folio_file_pos.exit174

folio_file_pos.exit174:                           ; preds = %if.end.i.i.i170, %if.then.i.i.i168
  %retval.0.i.i.i171 = phi i32 [ %call2.i.i.i167, %if.then.i.i.i168 ], [ %82, %if.end.i.i.i170 ]
  %conv.i.i172 = zext i32 %retval.0.i.i.i171 to i64
  %shl.i.i173.neg = mul nsw i64 %conv.i.i172, -4096
  %sub60 = add i64 %shl.i.i173.neg, %63
  call void @__sanitizer_cov_trace_cmp8(i64 %sub60, i64 %conv57)
  %cmp62 = icmp sgt i64 %sub60, %conv57
  %extract.t145 = trunc i64 %sub60 to i32
  %cond.off0 = select i1 %cmp62, i32 %shl.i, i32 %extract.t145
  %83 = ptrtoint ptr %call47 to i32
  %index.i.i.i195 = getelementptr inbounds %struct.page, ptr %call47, i32 0, i32 1, i32 0, i32 2
  br label %do.body65

do.body65:                                        ; preds = %do.cond82.do.body65_crit_edge, %folio_file_pos.exit174
  %offset.0 = phi i32 [ %conv55, %folio_file_pos.exit174 ], [ %add83, %do.cond82.do.body65_crit_edge ]
  %div3.i = lshr i32 %offset.0, 12
  %add.ptr.i = getelementptr %struct.page, ptr %call47, i32 %div3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %84 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %84, 512
  %call.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i, i32 noundef %or.i) #15
  %rem.i = and i32 %offset.0, 2048
  %add.ptr1.i = getelementptr i8, ptr %call.i, i32 %rem.i
  %85 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %34, align 4
  %and.i.i.i.i.i175 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i175)
  %tobool.not.i.i.i.i.i176 = icmp eq i32 %and.i.i.i.i.i175, 0
  br i1 %tobool.not.i.i.i.i.i176, label %do.body65._compound_head.exit.i.i.i.i183_crit_edge, label %if.then.i.i.i.i.i178, !prof !482

do.body65._compound_head.exit.i.i.i.i183_crit_edge: ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #17
  br label %_compound_head.exit.i.i.i.i183

if.then.i.i.i.i.i178:                             ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i.i.i177 = add i32 %86, -1
  br label %_compound_head.exit.i.i.i.i183

_compound_head.exit.i.i.i.i183:                   ; preds = %if.then.i.i.i.i.i178, %do.body65._compound_head.exit.i.i.i.i183_crit_edge
  %retval.0.i.i.i.i.i180 = phi i32 [ %sub.i.i.i.i.i177, %if.then.i.i.i.i.i178 ], [ %83, %do.body65._compound_head.exit.i.i.i.i183_crit_edge ]
  %87 = inttoptr i32 %retval.0.i.i.i.i.i180 to ptr
  %88 = getelementptr inbounds %struct.page, ptr %87, i32 0, i32 1
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %88, align 4
  %and.i.i.i.i.i.i.i.i181 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i.i181)
  %tobool.not.i.i.i.i.i.i.i182 = icmp eq i32 %and.i.i.i.i.i.i.i.i181, 0
  br i1 %tobool.not.i.i.i.i.i.i.i182, label %folio_test_swapbacked.exit.i.i.i.i.i186, label %if.then.i.i.i.i.i.i.i184, !prof !482

if.then.i.i.i.i.i.i.i184:                         ; preds = %_compound_head.exit.i.i.i.i183
  call void @__sanitizer_cov_trace_pc() #17
  %91 = inttoptr i32 %retval.0.i.i.i.i.i180 to ptr
  tail call void @dump_page(ptr noundef %91, ptr noundef nonnull @.str.33) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

folio_test_swapbacked.exit.i.i.i.i.i186:          ; preds = %_compound_head.exit.i.i.i.i183
  %92 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %87, align 4
  %94 = and i32 %93, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.i.not.i.i.i.i.i185 = icmp eq i32 %94, 0
  br i1 %tobool.i.not.i.i.i.i.i185, label %folio_test_swapbacked.exit.i.i.i.i.i186.if.end.i.i.i196_crit_edge, label %land.rhs.i.i.i.i.i189

folio_test_swapbacked.exit.i.i.i.i.i186.if.end.i.i.i196_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i.i.i186
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i196

land.rhs.i.i.i.i.i189:                            ; preds = %folio_test_swapbacked.exit.i.i.i.i.i186
  %95 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %88, align 4
  %and.i.i.i.i.i.i.i187 = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i187)
  %tobool.not.i.i.i.i.i.i188 = icmp eq i32 %and.i.i.i.i.i.i.i187, 0
  br i1 %tobool.not.i.i.i.i.i.i188, label %PageSwapCache.exit.i.i.i192, label %if.then.i.i.i.i.i.i190, !prof !482

if.then.i.i.i.i.i.i190:                           ; preds = %land.rhs.i.i.i.i.i189
  call void @__sanitizer_cov_trace_pc() #17
  %97 = inttoptr i32 %retval.0.i.i.i.i.i180 to ptr
  tail call void @dump_page(ptr noundef %97, ptr noundef nonnull @.str.33) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

PageSwapCache.exit.i.i.i192:                      ; preds = %land.rhs.i.i.i.i.i189
  %98 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %87, align 4
  %100 = and i32 %99, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.i.i.not.i.i.i191 = icmp eq i32 %100, 0
  br i1 %tobool.i.i.not.i.i.i191, label %PageSwapCache.exit.i.i.i192.if.end.i.i.i196_crit_edge, label %if.then.i.i.i194, !prof !482

PageSwapCache.exit.i.i.i192.if.end.i.i.i196_crit_edge: ; preds = %PageSwapCache.exit.i.i.i192
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i196

if.then.i.i.i194:                                 ; preds = %PageSwapCache.exit.i.i.i192
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i.i.i193 = tail call i32 @__page_file_index(ptr noundef nonnull %call47) #15
  br label %folio_file_pos.exit200

if.end.i.i.i196:                                  ; preds = %PageSwapCache.exit.i.i.i192.if.end.i.i.i196_crit_edge, %folio_test_swapbacked.exit.i.i.i.i.i186.if.end.i.i.i196_crit_edge
  %101 = ptrtoint ptr %index.i.i.i195 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %index.i.i.i195, align 4
  br label %folio_file_pos.exit200

folio_file_pos.exit200:                           ; preds = %if.end.i.i.i196, %if.then.i.i.i194
  %retval.0.i.i.i197 = phi i32 [ %call2.i.i.i193, %if.then.i.i.i194 ], [ %102, %if.end.i.i.i196 ]
  %shl.i.i199 = shl i32 %retval.0.i.i.i197, 12
  %conv70 = add i32 %shl.i.i199, %offset.0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %103 = load i32, ptr @afs_debug, align 4
  %and.i201 = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i201)
  %tobool.not.i = icmp eq i32 %and.i201, 0
  br i1 %tobool.not.i, label %folio_file_pos.exit200.do.end7.i_crit_edge, label %do.end.i, !prof !482

folio_file_pos.exit200.do.end7.i_crit_edge:       ; preds = %folio_file_pos.exit200
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7.i

do.end.i:                                         ; preds = %folio_file_pos.exit200
  call void @__sanitizer_cov_trace_pc() #17
  %104 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %107, i32 0, i32 101
  %108 = ptrtoint ptr %pos40 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %pos40, align 8
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %comm.i, ptr noundef nonnull @.str.55, i64 noundef %109, i32 noundef %conv70) #18
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %folio_file_pos.exit200.do.end7.i_crit_edge
  %110 = ptrtoint ptr %pos40 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %pos40, align 8
  %conv.i = zext i32 %conv70 to i64
  %sub.i = sub i64 %111, %conv.i
  %div.i = sdiv i64 %sub.i, 32
  %conv9.i = trunc i64 %div.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv70)
  %cmp.i202 = icmp eq i32 %conv70, 0
  %cond.i = select i1 %cmp.i202, i32 13, i32 1
  %div100313.i = lshr exact i32 %conv70, 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc221.i.for.body.i_crit_edge, %do.end7.i
  %offset.0336.i = phi i32 [ %cond.i, %do.end7.i ], [ %next.0.i, %for.inc221.i.for.body.i_crit_edge ]
  %div13308.i = lshr i32 %offset.0336.i, 3
  %arrayidx.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 %div13308.i
  %112 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx.i, align 1
  %conv14.i = zext i8 %113 to i32
  %rem.i203 = and i32 %offset.0336.i, 7
  %shl.i204 = shl nuw nsw i32 1, %rem.i203
  %and15.i = and i32 %shl.i204, %conv14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %do.body18.i, label %if.end48.i

do.body18.i:                                      ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %114 = load i32, ptr @afs_debug, align 4
  %and19.i = and i32 %114, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %do.body18.i.do.end40.i_crit_edge, label %do.end30.i, !prof !482

do.body18.i.do.end40.i_crit_edge:                 ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end40.i

do.end30.i:                                       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #17
  %115 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i315.i = and i32 %115, -16384
  %116 = inttoptr i32 %and.i315.i to ptr
  %task33.i = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %task33.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %task33.i, align 8
  %comm34.i = getelementptr inbounds %struct.task_struct, ptr %118, i32 0, i32 101
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %comm34.i, i32 noundef %div100313.i, i32 noundef %offset.0336.i) #18
  br label %do.end40.i

do.end40.i:                                       ; preds = %do.end30.i, %do.body18.i.do.end40.i_crit_edge
  %add.i = add nuw nsw i32 %offset.0336.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0336.i, i32 %conv9.i)
  %cmp41.not.i = icmp ult i32 %offset.0336.i, %conv9.i
  br i1 %cmp41.not.i, label %do.end40.i.for.inc221.i_crit_edge, label %do.end40.i.for.inc221.sink.split.i_crit_edge

do.end40.i.for.inc221.sink.split.i_crit_edge:     ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc221.sink.split.i

do.end40.i.for.inc221.i_crit_edge:                ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc221.i

if.end48.i:                                       ; preds = %for.body.i
  %arrayidx49.i = getelementptr [64 x %union.afs_xdr_dirent], ptr %add.ptr1.i, i32 0, i32 %offset.0336.i
  %name.i = getelementptr inbounds %struct.anon.172, ptr %arrayidx49.i, i32 0, i32 5
  %mul51.neg.i = mul nsw i32 %offset.0336.i, -32
  %sub52.i = add nsw i32 %mul51.neg.i, 2048
  %call53.i = tail call i32 @strnlen(ptr noundef %name.i, i32 noundef %sub52.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call53.i)
  %cmp54.i = icmp ugt i32 %call53.i, 255
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %119 = load i32, ptr @afs_debug, align 4
  %and58.i = and i32 %119, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %cmp54.i, label %do.body57.i, label %do.body82.i

do.body57.i:                                      ; preds = %if.end48.i
  br i1 %tobool59.not.i, label %do.body57.i.do.end79.i_crit_edge, label %do.end69.i, !prof !482

do.body57.i.do.end79.i_crit_edge:                 ; preds = %do.body57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end79.i

do.end69.i:                                       ; preds = %do.body57.i
  call void @__sanitizer_cov_trace_pc() #17
  %120 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i316.i = and i32 %120, -16384
  %121 = inttoptr i32 %and.i316.i to ptr
  %task72.i = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %task72.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %task72.i, align 8
  %comm73.i = getelementptr inbounds %struct.task_struct, ptr %123, i32 0, i32 101
  %call76.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %comm73.i, i32 noundef %div100313.i, i32 noundef %offset.0336.i, i32 noundef %call53.i) #18
  br label %do.end79.i

do.end79.i:                                       ; preds = %do.end69.i, %do.body57.i.do.end79.i_crit_edge
  tail call fastcc void @trace_afs_file_error(ptr noundef %dir, i32 noundef -5, i32 noundef 3) #15
  br label %afs_dir_iterate_block.exit.thread

do.body82.i:                                      ; preds = %if.end48.i
  br i1 %tobool59.not.i, label %do.body82.i.do.end109.i_crit_edge, label %do.end94.i, !prof !482

do.body82.i.do.end109.i_crit_edge:                ; preds = %do.body82.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end109.i

do.end94.i:                                       ; preds = %do.body82.i
  call void @__sanitizer_cov_trace_pc() #17
  %124 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i317.i = and i32 %124, -16384
  %125 = inttoptr i32 %and.i317.i to ptr
  %task97.i = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %task97.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %task97.i, align 8
  %comm98.i = getelementptr inbounds %struct.task_struct, ptr %127, i32 0, i32 101
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0336.i, i32 %conv9.i)
  %cmp101.i = icmp ult i32 %offset.0336.i, %conv9.i
  %cond103.i = select i1 %cmp101.i, ptr @.str.65, ptr @.str.66
  %call106.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %comm98.i, i32 noundef %div100313.i, i32 noundef %offset.0336.i, ptr noundef nonnull %cond103.i, i32 noundef %call53.i, ptr noundef %name.i) #18
  br label %do.end109.i

do.end109.i:                                      ; preds = %do.end94.i, %do.body82.i.do.end109.i_crit_edge
  %add.i.i = add nuw nsw i32 %call53.i, 16
  %div3.i.i = lshr i32 %add.i.i, 5
  %add1.i.i = add nuw nsw i32 %div3.i.i, 1
  %add111.i = add nuw nsw i32 %add1.i.i, %offset.0336.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add111.i)
  %cmp112.i = icmp ugt i32 %add111.i, 64
  br i1 %cmp112.i, label %do.body115.i, label %for.cond140.preheader.i

for.cond140.preheader.i:                          ; preds = %do.end109.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call53.i)
  %cmp141.not334.i = icmp ult i32 %call53.i, 16
  br i1 %cmp141.not334.i, label %for.cond140.preheader.i.for.end.i_crit_edge, label %for.body143.preheader.i

for.cond140.preheader.i.for.end.i_crit_edge:      ; preds = %for.cond140.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body143.preheader.i:                          ; preds = %for.cond140.preheader.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div3.i.i, i32 1) #15
  br label %for.body143.i

do.body115.i:                                     ; preds = %do.end109.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %128 = load i32, ptr @afs_debug, align 4
  %and116.i = and i32 %128, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i)
  %tobool117.not.i = icmp eq i32 %and116.i, 0
  br i1 %tobool117.not.i, label %do.body115.i.do.end137.i_crit_edge, label %do.end127.i, !prof !482

do.body115.i.do.end137.i_crit_edge:               ; preds = %do.body115.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end137.i

do.end127.i:                                      ; preds = %do.body115.i
  call void @__sanitizer_cov_trace_pc() #17
  %129 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i318.i = and i32 %129, -16384
  %130 = inttoptr i32 %and.i318.i to ptr
  %task130.i = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %task130.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %task130.i, align 8
  %comm131.i = getelementptr inbounds %struct.task_struct, ptr %132, i32 0, i32 101
  %call134.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %comm131.i, i32 noundef %div100313.i, i32 noundef %offset.0336.i, i32 noundef %add111.i, i32 noundef %call53.i) #18
  br label %do.end137.i

do.end137.i:                                      ; preds = %do.end127.i, %do.body115.i.do.end137.i_crit_edge
  tail call fastcc void @trace_afs_file_error(ptr noundef %dir, i32 noundef -5, i32 noundef 4) #15
  br label %afs_dir_iterate_block.exit.thread

for.body143.i:                                    ; preds = %for.inc.critedge.i.for.body143.i_crit_edge, %for.body143.preheader.i
  %tmp.0335.i = phi i32 [ %inc.i, %for.inc.critedge.i.for.body143.i_crit_edge ], [ 1, %for.body143.preheader.i ]
  %add144.i = add i32 %tmp.0335.i, %offset.0336.i
  %div146310.i = lshr i32 %add144.i, 3
  %arrayidx147.i = getelementptr %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i, i32 0, i32 3, i32 %div146310.i
  %133 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx147.i, align 1
  %conv148.i = zext i8 %134 to i32
  %rem149.i = and i32 %add144.i, 7
  %shl150.i = shl nuw nsw i32 1, %rem149.i
  %and151.i = and i32 %shl150.i, %conv148.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151.i)
  %tobool152.not.i = icmp eq i32 %and151.i, 0
  br i1 %tobool152.not.i, label %do.body154.i, label %for.inc.critedge.i

do.body154.i:                                     ; preds = %for.body143.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %135 = load i32, ptr @afs_debug, align 4
  %and155.i = and i32 %135, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155.i)
  %tobool156.not.i = icmp eq i32 %and155.i, 0
  br i1 %tobool156.not.i, label %do.body154.i.do.end176.i_crit_edge, label %do.end166.i, !prof !482

do.body154.i.do.end176.i_crit_edge:               ; preds = %do.body154.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end176.i

do.end166.i:                                      ; preds = %do.body154.i
  call void @__sanitizer_cov_trace_pc() #17
  %136 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i319.i = and i32 %136, -16384
  %137 = inttoptr i32 %and.i319.i to ptr
  %task169.i = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %task169.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %task169.i, align 8
  %comm170.i = getelementptr inbounds %struct.task_struct, ptr %139, i32 0, i32 101
  %call173.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %comm170.i, i32 noundef %div100313.i, i32 noundef %offset.0336.i, i32 noundef %tmp.0335.i, i32 noundef %add1.i.i) #18
  br label %do.end176.i

do.end176.i:                                      ; preds = %do.end166.i, %do.body154.i.do.end176.i_crit_edge
  tail call fastcc void @trace_afs_file_error(ptr noundef %dir, i32 noundef -5, i32 noundef 6) #15
  br label %afs_dir_iterate_block.exit.thread

for.inc.critedge.i:                               ; preds = %for.body143.i
  %inc.i = add nuw nsw i32 %tmp.0335.i, 1
  %exitcond.not.i = icmp eq i32 %tmp.0335.i, %umax.i
  br i1 %exitcond.not.i, label %for.inc.critedge.i.for.end.i_crit_edge, label %for.inc.critedge.i.for.body143.i_crit_edge

for.inc.critedge.i.for.body143.i_crit_edge:       ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body143.i

for.inc.critedge.i.for.end.i_crit_edge:           ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.critedge.i.for.end.i_crit_edge, %for.cond140.preheader.i.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0336.i, i32 %conv9.i)
  %cmp179.i = icmp ult i32 %offset.0336.i, %conv9.i
  br i1 %cmp179.i, label %for.end.i.for.inc221.i_crit_edge, label %if.end182.i

for.end.i.for.inc221.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc221.i

if.end182.i:                                      ; preds = %for.end.i
  %vnode.i = getelementptr inbounds %struct.anon.172, ptr %arrayidx49.i, i32 0, i32 3
  %140 = ptrtoint ptr %vnode.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %141 = load i32, ptr %vnode.i, align 1
  %conv185.i = zext i32 %141 to i64
  %142 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ctx, align 8
  %cmp186.i = icmp eq ptr %143, @afs_lookup_filldir
  %cmp189.i = icmp eq ptr %143, @afs_lookup_one_filldir
  %or.cond.i = or i1 %cmp186.i, %cmp189.i
  br i1 %or.cond.i, label %cond.true.i, label %if.end182.i.cond.end.i_crit_edge

if.end182.i.cond.end.i_crit_edge:                 ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #17
  %unique.i = getelementptr inbounds %struct.anon.172, ptr %arrayidx49.i, i32 0, i32 4
  %144 = ptrtoint ptr %unique.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %unique.i, align 1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end182.i.cond.end.i_crit_edge
  %cond191.i = phi i32 [ %145, %cond.true.i ], [ 0, %if.end182.i.cond.end.i_crit_edge ]
  %146 = ptrtoint ptr %pos40 to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %pos40, align 8
  %call.i.i = tail call i32 %143(ptr noundef %ctx, ptr noundef %name.i, i32 noundef %call53.i, i64 noundef %147, i64 noundef %conv185.i, i32 noundef %cond191.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %cond.end.i.for.inc221.sink.split.i_crit_edge, label %do.body194.i

cond.end.i.for.inc221.sink.split.i_crit_edge:     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc221.sink.split.i

do.body194.i:                                     ; preds = %cond.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %148 = load i32, ptr @afs_debug, align 4
  %and195.i = and i32 %148, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195.i)
  %tobool196.not.i = icmp eq i32 %and195.i, 0
  br i1 %tobool196.not.i, label %do.body194.i.afs_dir_iterate_block.exit.thread_crit_edge, label %do.end206.i, !prof !482

do.body194.i.afs_dir_iterate_block.exit.thread_crit_edge: ; preds = %do.body194.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_dir_iterate_block.exit.thread

do.end206.i:                                      ; preds = %do.body194.i
  call void @__sanitizer_cov_trace_pc() #17
  %149 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i320.i = and i32 %149, -16384
  %150 = inttoptr i32 %and.i320.i to ptr
  %task209.i = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %task209.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %task209.i, align 8
  %comm210.i = getelementptr inbounds %struct.task_struct, ptr %152, i32 0, i32 101
  %call212.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %comm210.i, ptr noundef nonnull @.str.55) #18
  br label %afs_dir_iterate_block.exit.thread

for.inc221.sink.split.i:                          ; preds = %cond.end.i.for.inc221.sink.split.i_crit_edge, %do.end40.i.for.inc221.sink.split.i_crit_edge
  %add.sink.i = phi i32 [ %add.i, %do.end40.i.for.inc221.sink.split.i_crit_edge ], [ %add111.i, %cond.end.i.for.inc221.sink.split.i_crit_edge ]
  %mul.i = shl i32 %add.sink.i, 5
  %add44.i = add i32 %mul.i, %conv70
  %conv45.i = zext i32 %add44.i to i64
  %153 = ptrtoint ptr %pos40 to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %conv45.i, ptr %pos40, align 8
  br label %for.inc221.i

for.inc221.i:                                     ; preds = %for.inc221.sink.split.i, %for.end.i.for.inc221.i_crit_edge, %do.end40.i.for.inc221.i_crit_edge
  %next.0.i = phi i32 [ %add111.i, %for.end.i.for.inc221.i_crit_edge ], [ %add.i, %do.end40.i.for.inc221.i_crit_edge ], [ %add.sink.i, %for.inc221.sink.split.i ]
  %cmp11.i = icmp ult i32 %next.0.i, 64
  br i1 %cmp11.i, label %for.inc221.i.for.body.i_crit_edge, label %do.body223.i

for.inc221.i.for.body.i_crit_edge:                ; preds = %for.inc221.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

do.body223.i:                                     ; preds = %for.inc221.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %154 = load i32, ptr @afs_debug, align 4
  %and224.i = and i32 %154, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and224.i)
  %tobool225.not.i = icmp eq i32 %and224.i, 0
  br i1 %tobool225.not.i, label %do.body223.i.do.cond82_crit_edge, label %do.end235.i, !prof !482

do.body223.i.do.cond82_crit_edge:                 ; preds = %do.body223.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond82

do.end235.i:                                      ; preds = %do.body223.i
  call void @__sanitizer_cov_trace_pc() #17
  %155 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i321.i = and i32 %155, -16384
  %156 = inttoptr i32 %and.i321.i to ptr
  %task238.i = getelementptr inbounds %struct.thread_info, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %task238.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %task238.i, align 8
  %comm239.i = getelementptr inbounds %struct.task_struct, ptr %158, i32 0, i32 101
  %call241.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %comm239.i, ptr noundef nonnull @.str.55) #18
  br label %do.cond82

afs_dir_iterate_block.exit.thread:                ; preds = %do.end206.i, %do.body194.i.afs_dir_iterate_block.exit.thread_crit_edge, %do.end176.i, %do.end137.i, %do.end79.i
  %retval.4.i.ph = phi i32 [ 0, %do.body194.i.afs_dir_iterate_block.exit.thread_crit_edge ], [ 0, %do.end206.i ], [ -5, %do.end176.i ], [ -5, %do.end137.i ], [ -5, %do.end79.i ]
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr1.i) #15
  br label %out

do.cond82:                                        ; preds = %do.end235.i, %do.body223.i.do.cond82_crit_edge
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr1.i) #15
  %add83 = add i32 %offset.0, 2048
  %cmp84 = icmp ult i32 %add83, %cond.off0
  br i1 %cmp84, label %do.cond82.do.body65_crit_edge, label %while.cond.loopexit

do.cond82.do.body65_crit_edge:                    ; preds = %do.cond82
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body65

out:                                              ; preds = %afs_dir_iterate_block.exit.thread, %if.then49, %while.cond.loopexit.out_crit_edge, %if.end39.out_crit_edge
  %ret.1 = phi i32 [ -5, %if.then49 ], [ %retval.4.i.ph, %afs_dir_iterate_block.exit.thread ], [ 0, %if.end39.out_crit_edge ], [ 0, %while.cond.loopexit.out_crit_edge ]
  %validate_lock = getelementptr inbounds %struct.afs_vnode, ptr %dir, i32 0, i32 8
  tail call void @up_read(ptr noundef %validate_lock) #15
  tail call void @afs_put_read(ptr noundef %call35) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %159 = load i32, ptr @afs_debug, align 4
  %and88 = and i32 %159, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %out.cleanup_crit_edge, label %do.end99, !prof !482

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end99:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  %160 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i205 = and i32 %160, -16384
  %161 = inttoptr i32 %and.i205 to ptr
  %task102 = getelementptr inbounds %struct.thread_info, ptr %161, i32 0, i32 2
  %162 = ptrtoint ptr %task102 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %task102, align 8
  %comm103 = getelementptr inbounds %struct.task_struct, ptr %163, i32 0, i32 101
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %comm103, ptr noundef nonnull @.str.6, i32 noundef %ret.1) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end99, %out.cleanup_crit_edge, %if.then37, %do.end24, %do.body12.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then37 ], [ -116, %do.end24 ], [ -116, %do.body12.cleanup_crit_edge ], [ %ret.1, %do.end99 ], [ %ret.1, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @afs_read_dir(ptr noundef %dvnode, ptr noundef %key) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %dvnode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !482

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm, ptr noundef nonnull @.str.14) #18
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 112) #19
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %do.end6.cleanup138_crit_edge, label %if.end11

do.end6.cleanup138_crit_edge:                     ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup138

if.end11:                                         ; preds = %do.end6
  %usage = getelementptr inbounds %struct.afs_read, ptr %call7.i.i, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #15
  %8 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %usage, align 8
  %vnode = getelementptr inbounds %struct.afs_read, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %vnode to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dvnode, ptr %vnode, align 4
  %tobool.not.i = icmp eq ptr %key, null
  br i1 %tobool.not.i, label %if.end11.key_get.exit_crit_edge, label %cond.true.i

if.end11.key_get.exit_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %key_get.exit

cond.true.i:                                      ; preds = %if.end11
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %key, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %key, i32 1, i32 3, i32 1) #15
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %key, ptr nonnull %key, i32 1, ptr nonnull elementtype(i32) %key) #15, !srcloc !493
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !490

cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %cond.true.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.key_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !482

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.key_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %key_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %key, i32 noundef %.sink.i.i.i.i.i) #15
  br label %key_get.exit

key_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.key_get.exit_crit_edge, %if.end11.key_get.exit_crit_edge
  %key13 = getelementptr inbounds %struct.afs_read, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %key13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %key, ptr %key13, align 8
  %cleanup = getelementptr inbounds %struct.afs_read, ptr %call7.i.i, i32 0, i32 13
  %13 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @afs_dir_read_cleanup, ptr %cleanup, align 4
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %dvnode, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %dvnode, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %dvnode, i32 0, i32 14
  %actual_len = getelementptr inbounds %struct.afs_read, ptr %call7.i.i, i32 0, i32 2
  %len = getelementptr inbounds %struct.afs_read, ptr %call7.i.i, i32 0, i32 1
  %data_version = getelementptr inbounds %struct.afs_vnode, ptr %dvnode, i32 0, i32 3, i32 1
  %data_version45 = getelementptr inbounds %struct.afs_read, ptr %call7.i.i, i32 0, i32 7
  %def_iter = getelementptr inbounds %struct.afs_read, ptr %call7.i.i, i32 0, i32 15
  %iter = getelementptr inbounds %struct.afs_read, ptr %call7.i.i, i32 0, i32 14
  %nr_pages50 = getelementptr inbounds %struct.afs_read, ptr %call7.i.i, i32 0, i32 10
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %dvnode, i32 0, i32 13
  %gfp_mask = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 3
  %validate_lock = getelementptr inbounds %struct.afs_vnode, ptr %dvnode, i32 0, i32 8
  %file_size = getelementptr inbounds %struct.afs_read, ptr %call7.i.i, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.backedge, %key_get.exit
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !494
  %and.i.i.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  %15 = tail call ptr @llvm.returnaddress(i32 0) #15
  %16 = ptrtoint ptr %15 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %16) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %16) #15
  tail call void @trace_hardirqs_on() #15
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %17 = tail call ptr @llvm.returnaddress(i32 0) #15
  %18 = ptrtoint ptr %17 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %18) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %18) #15
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !495
  %and.i.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !490

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #15, !srcloc !496
  %20 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !497
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !498
  %22 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i204 = and i32 %23, 1
  %tobool.not.i205 = icmp eq i32 %and.i204, 0
  br i1 %tobool.not.i205, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %21, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %23, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !499
  %24 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !500
  %26 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %i_size_seqcount.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %.lcssa.i)
  %cmp.i.i.not.i = icmp eq i32 %27, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i.backedge_crit_edge

while.end.i.do.body.i.backedge_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.backedge

do.body.i.backedge:                               ; preds = %if.then103, %while.end.i.do.body.i.backedge_crit_edge
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 2048, i64 %25)
  %cmp = icmp slt i64 %25, 2048
  br i1 %cmp, label %if.then16, label %if.end18

if.then16:                                        ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @trace_afs_file_error(ptr noundef %dvnode, i32 noundef -5, i32 noundef 5) #15
  br label %error

if.end18:                                         ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 2097152, i64 %25)
  %cmp19 = icmp ugt i64 %25, 2097152
  br i1 %cmp19, label %if.then20, label %do.body22

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @trace_afs_file_error(ptr noundef %dvnode, i32 noundef -27, i32 noundef 1)
  br label %error

do.body22:                                        ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %28 = load i32, ptr @afs_debug, align 4
  %and23 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body22.do.end43_crit_edge, label %do.end34, !prof !482

do.body22.do.end43_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end43

do.end34:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #17
  %29 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i206 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i206 to ptr
  %task37 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task37, align 8
  %comm38 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 101
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %comm38, ptr noundef nonnull @.str.14, i64 noundef %25) #18
  br label %do.end43

do.end43:                                         ; preds = %do.end34, %do.body22.do.end43_crit_edge
  %33 = trunc i64 %25 to i32
  %div225.lhs.trunc = add nuw nsw i32 %33, 4095
  %div225226227 = lshr i32 %div225.lhs.trunc, 12
  %34 = ptrtoint ptr %actual_len to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %25, ptr %actual_len, align 8
  %mul = and i32 %div225.lhs.trunc, -4096
  %conv44 = zext i32 %mul to i64
  %35 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv44, ptr %len, align 8
  %36 = ptrtoint ptr %data_version to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %data_version, align 8
  %38 = ptrtoint ptr %data_version45 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %data_version45, align 8
  %39 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_mapping, align 8
  %i_pages = getelementptr inbounds %struct.address_space, ptr %40, i32 0, i32 1
  tail call void @iov_iter_xarray(ptr noundef %def_iter, i32 noundef 0, ptr noundef %i_pages, i64 noundef 0, i32 noundef %33) #15
  %41 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %def_iter, ptr %iter, align 8
  %42 = ptrtoint ptr %nr_pages50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr_pages50, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %div225226227)
  %cmp51243 = icmp slt i32 %43, %div225226227
  br i1 %cmp51243, label %do.end43.while.body_crit_edge, label %do.end43.while.end_crit_edge

do.end43.while.end_crit_edge:                     ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

do.end43.while.body_crit_edge:                    ; preds = %do.end43
  br label %while.body

while.body:                                       ; preds = %cleanup71.while.body_crit_edge, %do.end43.while.body_crit_edge
  %i.0244 = phi i32 [ %add70, %cleanup71.while.body_crit_edge ], [ %43, %do.end43.while.body_crit_edge ]
  %call.i = tail call ptr @__filemap_get_folio(ptr noundef %1, i32 noundef %i.0244, i32 noundef 0, i32 noundef 0) #15
  %tobool54.not = icmp eq ptr %call.i, null
  br i1 %tobool54.not, label %if.then55, label %while.body.if.end65_crit_edge

while.body.if.end65_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

if.then55:                                        ; preds = %while.body
  %call56 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then55.if.end60_crit_edge, label %if.then58

if.then55.if.end60_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

if.then58:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #17
  %call.i207 = tail call fastcc ptr @afs_i2net(ptr noundef %dvnode) #15
  %n_inval = getelementptr inbounds %struct.afs_net, ptr %call.i207, i32 0, i32 38
  %call.i.i.i208 = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_inval, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %n_inval, i32 1, i32 3, i32 1) #15
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_inval, ptr %n_inval, i32 1, ptr elementtype(i32) %n_inval) #15, !srcloc !484
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.then55.if.end60_crit_edge
  %45 = ptrtoint ptr %gfp_mask to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %gfp_mask, align 4
  %call61 = tail call ptr @__filemap_get_folio(ptr noundef %1, i32 noundef %i.0244, i32 noundef 6, i32 noundef %46) #15
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %if.end60.error_crit_edge, label %if.end64

if.end60.error_crit_edge:                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end64:                                         ; preds = %if.end60
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %call61, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #15
  %47 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %48, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i.i209, label %do.end5.i.i, !prof !490

if.then.i.i209:                                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef nonnull %call61, ptr noundef nonnull @.str.42) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #15, !srcloc !501
  unreachable

do.end5.i.i:                                      ; preds = %if.end64
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #15
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #15, !srcloc !484
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@afs_read_dir, %if.then.i.i.i.i)) #15
          to label %folio_get.exit.i [label %if.then.i.i.i.i], !srcloc !502

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__page_ref_mod(ptr noundef nonnull %call61, i32 noundef 1) #15
  br label %folio_get.exit.i

folio_get.exit.i:                                 ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %private.i = getelementptr inbounds %struct.anon.148, ptr %call61, i32 0, i32 4
  %50 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 1 to ptr), ptr %private.i, align 4
  %51 = getelementptr inbounds %struct.page, ptr %call61, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %and.i.i.i.i210 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i210)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i210, 0
  br i1 %tobool.not.i.i.i, label %folio_attach_private.exit, label %if.then.i.i.i, !prof !482

if.then.i.i.i:                                    ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef nonnull %call61, ptr noundef nonnull @.str.33) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

folio_attach_private.exit:                        ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 13, ptr noundef nonnull %call61) #15
  tail call void @folio_unlock(ptr noundef nonnull %call61) #15
  br label %if.end65

if.end65:                                         ; preds = %folio_attach_private.exit, %while.body.if.end65_crit_edge
  %folio.0 = phi ptr [ %call.i, %while.body.if.end65_crit_edge ], [ %call61, %folio_attach_private.exit ]
  %54 = ptrtoint ptr %folio.0 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %folio.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp.i.not.i.i.i = icmp eq i32 %55, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i211, label %PageHead.exit.i.i, !prof !490

if.then.i.i.i211:                                 ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef nonnull %folio.0, ptr noundef nonnull @.str.43) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !492
  unreachable

PageHead.exit.i.i:                                ; preds = %if.end65
  %56 = ptrtoint ptr %folio.0 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %folio.0, align 4
  %58 = and i32 %57, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i.i212 = icmp eq i32 %58, 0
  br i1 %tobool.not.i.i212, label %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge, label %if.end.i.i

PageHead.exit.i.i.folio_nr_pages.exit_crit_edge:  ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %folio_nr_pages.exit

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %compound_nr.i.i = getelementptr %struct.page, ptr %folio.0, i32 1, i32 1, i32 0, i32 2
  %59 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %compound_nr.i.i, align 4
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %if.end.i.i, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge
  %retval.0.i.i = phi i32 [ %60, %if.end.i.i ], [ 1, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge ]
  %61 = ptrtoint ptr %nr_pages50 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr_pages50, align 8
  %add68 = add i32 %62, %retval.0.i.i
  store i32 %add68, ptr %nr_pages50, align 8
  %63 = ptrtoint ptr %folio.0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %folio.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp.i.not.i.i.i213 = icmp eq i32 %64, -1
  br i1 %cmp.i.not.i.i.i213, label %if.then.i.i.i214, label %PageHead.exit.i.i216, !prof !490

if.then.i.i.i214:                                 ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef nonnull %folio.0, ptr noundef nonnull @.str.43) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !492
  unreachable

PageHead.exit.i.i216:                             ; preds = %folio_nr_pages.exit
  %65 = ptrtoint ptr %folio.0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %folio.0, align 4
  %67 = and i32 %66, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i.i215 = icmp eq i32 %67, 0
  br i1 %tobool.not.i.i215, label %PageHead.exit.i.i216.cleanup71_crit_edge, label %if.end.i.i218

PageHead.exit.i.i216.cleanup71_crit_edge:         ; preds = %PageHead.exit.i.i216
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup71

if.end.i.i218:                                    ; preds = %PageHead.exit.i.i216
  call void @__sanitizer_cov_trace_pc() #17
  %compound_nr.i.i217 = getelementptr %struct.page, ptr %folio.0, i32 1, i32 1, i32 0, i32 2
  %68 = ptrtoint ptr %compound_nr.i.i217 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %compound_nr.i.i217, align 4
  br label %cleanup71

cleanup71:                                        ; preds = %if.end.i.i218, %PageHead.exit.i.i216.cleanup71_crit_edge
  %retval.0.i.i219 = phi i32 [ %69, %if.end.i.i218 ], [ 1, %PageHead.exit.i.i216.cleanup71_crit_edge ]
  %add70 = add i32 %retval.0.i.i219, %i.0244
  %cmp51 = icmp slt i32 %add70, %div225226227
  br i1 %cmp51, label %cleanup71.while.body_crit_edge, label %cleanup71.while.end_crit_edge

cleanup71.while.end_crit_edge:                    ; preds = %cleanup71
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

cleanup71.while.body_crit_edge:                   ; preds = %cleanup71
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %cleanup71.while.end_crit_edge, %do.end43.while.end_crit_edge
  %call72 = tail call i32 @down_read_killable(ptr noundef %validate_lock) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %while.end.error_crit_edge, label %if.end76

while.end.error_crit_edge:                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end76:                                         ; preds = %while.end
  %70 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %flags, align 4
  %72 = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool79.not = icmp eq i32 %72, 0
  br i1 %tobool79.not, label %if.end81, label %if.end76.cleanup138_crit_edge

if.end76.cleanup138_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup138

if.end81:                                         ; preds = %if.end76
  tail call void @up_read(ptr noundef %validate_lock) #15
  %call84 = tail call i32 @down_write_killable(ptr noundef %validate_lock) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.end81.error_crit_edge, label %if.end88

if.end81.error_crit_edge:                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end88:                                         ; preds = %if.end81
  %73 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %flags, align 4
  %75 = and i32 %74, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool91.not = icmp eq i32 %75, 0
  br i1 %tobool91.not, label %if.then92, label %if.end88.if.end112_crit_edge

if.end88.if.end112_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end112

if.then92:                                        ; preds = %if.end88
  tail call fastcc void @trace_afs_reload_dir(ptr noundef %dvnode)
  %call93 = tail call i32 @afs_fetch_data(ptr noundef %dvnode, ptr noundef nonnull %call7.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.then92.error_unlock_crit_edge, label %if.end97

if.then92.error_unlock_crit_edge:                 ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #17
  br label %error_unlock

if.end97:                                         ; preds = %if.then92
  %76 = ptrtoint ptr %nr_pages50 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nr_pages50, align 8
  %mul99 = shl i32 %77, 12
  %conv.i = zext i32 %mul99 to i64
  %78 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %task.i, align 8
  %read_bytes.i = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 155, i32 4
  %82 = ptrtoint ptr %read_bytes.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %read_bytes.i, align 8
  %add.i = add i64 %83, %conv.i
  store i64 %add.i, ptr %read_bytes.i, align 8
  %84 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %len, align 8
  %86 = ptrtoint ptr %file_size to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %file_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %85, i64 %87)
  %cmp101 = icmp slt i64 %85, %87
  br i1 %cmp101, label %if.then103, label %if.end105

if.then103:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @up_write(ptr noundef %validate_lock) #15
  br label %do.body.i.backedge

if.end105:                                        ; preds = %if.end97
  %call106 = tail call fastcc i32 @afs_dir_check(ptr noundef %dvnode, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %if.end105.error_unlock_crit_edge, label %if.end110

if.end105.error_unlock_crit_edge:                 ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #17
  br label %error_unlock

if.end110:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #15
  br label %if.end112

if.end112:                                        ; preds = %if.end110, %if.end88.if.end112_crit_edge
  tail call void @downgrade_write(ptr noundef %validate_lock) #15
  br label %cleanup138

error_unlock:                                     ; preds = %if.end105.error_unlock_crit_edge, %if.then92.error_unlock_crit_edge
  %ret.4 = phi i32 [ %call106, %if.end105.error_unlock_crit_edge ], [ %call93, %if.then92.error_unlock_crit_edge ]
  tail call void @up_write(ptr noundef %validate_lock) #15
  br label %error

error:                                            ; preds = %error_unlock, %if.end81.error_crit_edge, %while.end.error_crit_edge, %if.end60.error_crit_edge, %if.then20, %if.then16
  %ret.5 = phi i32 [ -5, %if.then16 ], [ -27, %if.then20 ], [ %ret.4, %error_unlock ], [ -12, %if.end60.error_crit_edge ], [ -512, %while.end.error_crit_edge ], [ -512, %if.end81.error_crit_edge ]
  tail call void @afs_put_read(ptr noundef nonnull %call7.i.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %88 = load i32, ptr @afs_debug, align 4
  %and116 = and i32 %88, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %error.do.end136_crit_edge, label %do.end127, !prof !482

error.do.end136_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end136

do.end127:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #17
  %89 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i221 = and i32 %89, -16384
  %90 = inttoptr i32 %and.i221 to ptr
  %task130 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %task130 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task130, align 8
  %comm131 = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 101
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %comm131, ptr noundef nonnull @.str.14, i32 noundef %ret.5) #18
  br label %do.end136

do.end136:                                        ; preds = %do.end127, %error.do.end136_crit_edge
  %93 = inttoptr i32 %ret.5 to ptr
  br label %cleanup138

cleanup138:                                       ; preds = %do.end136, %if.end112, %if.end76.cleanup138_crit_edge, %do.end6.cleanup138_crit_edge
  %retval.0 = phi ptr [ %93, %do.end136 ], [ %call7.i.i, %if.end112 ], [ inttoptr (i32 -12 to ptr), %do.end6.cleanup138_crit_edge ], [ %call7.i.i, %if.end76.cleanup138_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__filemap_get_folio(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_dir_read_cleanup(ptr nocapture noundef readonly %req) #1 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vnode = getelementptr inbounds %struct.afs_read, ptr %req, i32 0, i32 5
  %0 = ptrtoint ptr %vnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vnode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  %nr_pages = getelementptr inbounds %struct.afs_read, ptr %req, i32 0, i32 10
  %4 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_pages, align 8
  %sub = add i32 %5, -1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #15
  %6 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %7 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %8 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %9 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %i_pages = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %i_pages, ptr %xas, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 0, ptr %6, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 3 to ptr), ptr %7, align 4
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %8, align 4
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !490

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !485
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 696, ptr noundef nonnull @.str.32) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef %sub) #15
  %tobool5.not103 = icmp eq ptr %call, null
  br i1 %tobool5.not103, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %folio.0104 = phi ptr [ %call65, %for.inc.for.body_crit_edge ], [ %call, %rcu_read_lock.exit.for.body_crit_edge ]
  %magicptr.i = ptrtoint ptr %folio.0104 to i32
  %19 = zext i32 %magicptr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr.i, label %do.body [
    i32 1030, label %for.body.for.inc_crit_edge
    i32 1026, label %if.end4.i
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end4.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 3 to ptr), ptr %7, align 4
  br label %for.inc

do.body:                                          ; preds = %for.body
  %and.i = and i32 %magicptr.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body24, label %do.body17, !prof !482

do.body17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #15, !srcloc !503
  unreachable

do.body24:                                        ; preds = %do.body
  %21 = getelementptr inbounds %struct.page, ptr %folio.0104, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i.i.i.i81 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i81)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i81, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !482

if.then.i.i.i.i:                                  ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %folio.0104, ptr noundef nonnull @.str.33) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %do.body24
  %24 = ptrtoint ptr %folio.0104 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %folio.0104, align 4
  %26 = and i32 %25, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.if.end.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %21, align 4
  %and.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_swapcache.exit.i, label %if.then.i.i.i, !prof !482

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %folio.0104, ptr noundef nonnull @.str.33) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

folio_test_swapcache.exit.i:                      ; preds = %land.rhs.i.i
  %29 = ptrtoint ptr %folio.0104 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %folio.0104, align 4
  %31 = and i32 %30, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.not.i = icmp eq i32 %31, 0
  br i1 %tobool.i.not.i, label %folio_test_swapcache.exit.i.if.end.i_crit_edge, label %if.then.i82, !prof !482

folio_test_swapcache.exit.i.if.end.i_crit_edge:   ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i82:                                      ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i = call ptr @swapcache_mapping(ptr noundef nonnull %folio.0104) #15
  br label %folio_file_mapping.exit

if.end.i:                                         ; preds = %folio_test_swapcache.exit.i.if.end.i_crit_edge, %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge
  %mapping.i = getelementptr inbounds %struct.anon.148, ptr %folio.0104, i32 0, i32 2
  %32 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mapping.i, align 4
  br label %folio_file_mapping.exit

folio_file_mapping.exit:                          ; preds = %if.end.i, %if.then.i82
  %retval.0.i83 = phi ptr [ %call2.i, %if.then.i82 ], [ %33, %if.end.i ]
  %cmp.not = icmp eq ptr %retval.0.i83, %3
  br i1 %cmp.not, label %do.end64, label %do.end37, !prof !482

do.end37:                                         ; preds = %folio_file_mapping.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #18
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #18
  %call48 = call fastcc ptr @folio_file_mapping(ptr noundef nonnull %folio.0104)
  %34 = ptrtoint ptr %call48 to i32
  %35 = ptrtoint ptr %3 to i32
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %34, i32 noundef %35) #18
  %call54 = call fastcc ptr @folio_file_mapping(ptr noundef nonnull %folio.0104)
  %36 = ptrtoint ptr %call54 to i32
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %36, i32 noundef %35) #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #15, !srcloc !504
  unreachable

do.end64:                                         ; preds = %folio_file_mapping.exit
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %folio.0104, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #15
  %37 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i.i = icmp eq i32 %38, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i84, label %do.end5.i.i.i, !prof !490

if.then.i.i.i84:                                  ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %folio.0104, ptr noundef nonnull @.str.35) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !505
  unreachable

do.end5.i.i.i:                                    ; preds = %do.end64
  %call.i.i.i10.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !506
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #15
  %39 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #15, !srcloc !507
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %39, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !508
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@afs_dir_read_cleanup, %if.then.i.i.i.i85)) #15
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i85], !srcloc !502

if.then.i.i.i.i85:                                ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef nonnull %folio.0104, i32 noundef -1, i32 noundef %conv.i.i.i.i) #15
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i85, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i86, label %folio_put_testzero.exit.i.for.inc_crit_edge

folio_put_testzero.exit.i.for.inc_crit_edge:      ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then.i86:                                      ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__put_page(ptr noundef nonnull %folio.0104) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then.i86, %folio_put_testzero.exit.i.for.inc_crit_edge, %if.end4.i, %for.body.for.inc_crit_edge
  %call65 = call fastcc ptr @xas_next_entry(ptr noundef nonnull %xas, i32 noundef %sub)
  %tobool5.not = icmp eq ptr %call65, null
  br i1 %tobool5.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i88 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i88, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i91

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i91:                                ; preds = %for.end
  %call1.i89 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i89)
  %tobool.not.i90 = icmp eq i32 %call1.i89, 0
  br i1 %tobool.not.i90, label %land.lhs.true.i91.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i93

land.lhs.true.i91.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i91
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i93:                               ; preds = %land.lhs.true.i91
  %.b4.i92 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i92, label %land.lhs.true2.i93.rcu_read_unlock.exit_crit_edge, label %if.then.i94

land.lhs.true2.i93.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i93
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i94:                                      ; preds = %land.lhs.true2.i93
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 724, ptr noundef nonnull @.str.38) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i94, %land.lhs.true2.i93.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i91.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !486
  %40 = call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i.i.i.i95 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i95 to ptr
  %preempt_count.i.i.i.i96 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i96, align 4
  %sub.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i96, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_file_error(ptr noundef %vnode, i32 noundef %error, i32 noundef %where) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_file_error, i32 0, i32 1), ptr blockaddress(@trace_afs_file_error, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !502

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !482

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !509
  %call42 = tail call i32 @__traceiter_afs_file_error(ptr noundef null, ptr noundef %vnode, i32 noundef %error, i32 noundef %where) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !510
  %13 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !482

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !511
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_file_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_file_error, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_afs_file_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_afs_file_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 1217, ptr noundef nonnull @.str.37) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !512
  %31 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
declare dso_local void @iov_iter_xarray(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_reload_dir(ptr noundef %vnode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_reload_dir, i32 0, i32 1), ptr blockaddress(@trace_afs_reload_dir, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !502

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !482

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !513
  %call42 = tail call i32 @__traceiter_afs_reload_dir(ptr noundef null, ptr noundef %vnode) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !514
  %13 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !482

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !511
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_reload_dir, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_reload_dir, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_afs_reload_dir.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_afs_reload_dir.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 1340, ptr noundef nonnull @.str.37) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !512
  %31 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
declare dso_local i32 @afs_fetch_data(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @afs_dir_check(ptr noundef %dvnode, ptr nocapture noundef readonly %req) unnamed_addr #1 align 64 {
entry:
  %xas.i = alloca %struct.xa_state, align 4
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %dvnode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %nr_pages = getelementptr inbounds %struct.afs_read, ptr %req, i32 0, i32 10
  %2 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_pages, align 8
  %sub = add i32 %3, -1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #15
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %5 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %6 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %7 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %i_pages = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %i_pages, ptr %xas, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %4, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 3 to ptr), ptr %5, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %6, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !490

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !485
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 696, ptr noundef nonnull @.str.32) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef %sub) #15
  %tobool5.not107 = icmp eq ptr %call, null
  br i1 %tobool5.not107, label %rcu_read_lock.exit.for.end_crit_edge, label %for.body.lr.ph

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %actual_len = getelementptr inbounds %struct.afs_read, ptr %req, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %folio.0108 = phi ptr [ %call, %for.body.lr.ph ], [ %call27, %for.inc.for.body_crit_edge ]
  %magicptr.i = ptrtoint ptr %folio.0108 to i32
  %17 = zext i32 %magicptr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.239)
  switch i32 %magicptr.i, label %do.body [
    i32 1030, label %for.body.for.inc_crit_edge
    i32 1026, label %if.end4.i
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end4.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 3 to ptr), ptr %5, align 4
  br label %for.inc

do.body:                                          ; preds = %for.body
  %19 = getelementptr inbounds %struct.page, ptr %folio.0108, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i.i42 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i42)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i42, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !482

if.then.i.i.i.i:                                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %folio.0108, ptr noundef nonnull @.str.33) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %do.body
  %22 = ptrtoint ptr %folio.0108 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %folio.0108, align 4
  %24 = and i32 %23, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.if.end.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_swapcache.exit.i, label %if.then.i.i.i, !prof !482

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %folio.0108, ptr noundef nonnull @.str.33) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

folio_test_swapcache.exit.i:                      ; preds = %land.rhs.i.i
  %27 = ptrtoint ptr %folio.0108 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %folio.0108, align 4
  %29 = and i32 %28, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not.i = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i, label %folio_test_swapcache.exit.i.if.end.i_crit_edge, label %if.then.i43, !prof !482

folio_test_swapcache.exit.i.if.end.i_crit_edge:   ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i43:                                      ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i = call ptr @swapcache_mapping(ptr noundef nonnull %folio.0108) #15
  br label %folio_file_mapping.exit

if.end.i:                                         ; preds = %folio_test_swapcache.exit.i.if.end.i_crit_edge, %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge
  %mapping.i = getelementptr inbounds %struct.anon.148, ptr %folio.0108, i32 0, i32 2
  %30 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mapping.i, align 4
  br label %folio_file_mapping.exit

folio_file_mapping.exit:                          ; preds = %if.end.i, %if.then.i43
  %retval.0.i44 = phi ptr [ %call2.i, %if.then.i43 ], [ %31, %if.end.i ]
  %cmp.not = icmp eq ptr %retval.0.i44, %1
  br i1 %cmp.not, label %do.end23, label %do.body17, !prof !482

do.body17:                                        ; preds = %folio_file_mapping.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 234, 0\0A.popsection", ""() #15, !srcloc !515
  unreachable

do.end23:                                         ; preds = %folio_file_mapping.exit
  %32 = ptrtoint ptr %actual_len to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %actual_len, align 8
  %index.i.i.i = getelementptr inbounds %struct.page, ptr %folio.0108, i32 0, i32 1, i32 0, i32 2
  %34 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index.i.i.i, align 4
  %conv.i.i.i = zext i32 %35 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv.i.i.i, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %shl.i.i.i)
  %cmp.not.i = icmp sgt i64 %33, %shl.i.i.i
  br i1 %cmp.not.i, label %if.end.i45, label %do.end23.afs_dir_check_folio.exit.thread_crit_edge

do.end23.afs_dir_check_folio.exit.thread_crit_edge: ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_dir_check_folio.exit.thread

if.end.i45:                                       ; preds = %do.end23
  %36 = ptrtoint ptr %folio.0108 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %folio.0108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %37, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %PageHead.exit.i.i.i.i, !prof !490

if.then.i.i.i.i.i:                                ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %folio.0108, ptr noundef nonnull @.str.43) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !492
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %if.end.i45
  %38 = ptrtoint ptr %folio.0108 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %folio.0108, align 4
  %40 = and i32 %39, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i.i.i46 = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i.i.i46, label %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge, label %if.end.i.i.i.i

PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %folio_size.exit.i

if.end.i.i.i.i:                                   ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %41 = getelementptr %struct.page, ptr %folio.0108, i32 1, i32 1
  %compound_order.i.i.i.i = getelementptr inbounds %struct.anon.6, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %compound_order.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %compound_order.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %43 to i32
  br label %folio_size.exit.i

folio_size.exit.i:                                ; preds = %if.end.i.i.i.i, %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %conv.i.i.i.i, %if.end.i.i.i.i ], [ 0, %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge ]
  %shl.i.i = shl i32 4096, %retval.0.i.i.i.i
  %conv.i = zext i32 %shl.i.i to i64
  %sub.i = sub i64 %33, %shl.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %conv.i)
  %cmp2.i = icmp sgt i64 %sub.i, %conv.i
  %extract.t56.i = trunc i64 %sub.i to i32
  %cond.off0.i = select i1 %cmp2.i, i32 %shl.i.i, i32 %extract.t56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.off0.i)
  %cmp559.not.i = icmp eq i32 %cond.off0.i, 0
  br i1 %cmp559.not.i, label %folio_size.exit.i.afs_dir_check_folio.exit.thread_crit_edge, label %folio_size.exit.i.for.body.i_crit_edge

folio_size.exit.i.for.body.i_crit_edge:           ; preds = %folio_size.exit.i
  br label %for.body.i

folio_size.exit.i.afs_dir_check_folio.exit.thread_crit_edge: ; preds = %folio_size.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_dir_check_folio.exit.thread

for.body.i:                                       ; preds = %if.end23.i.for.body.i_crit_edge, %folio_size.exit.i.for.body.i_crit_edge
  %offset.060.i = phi i32 [ %add30.i, %if.end23.i.for.body.i_crit_edge ], [ 0, %folio_size.exit.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %offset.060.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %folio.0108, i32 %div3.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %44 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %44, 512
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i.i, i32 noundef %or.i.i) #15
  %rem.i.i = and i32 %offset.060.i, 2048
  %add.ptr1.i.i = getelementptr i8, ptr %call.i.i, i32 %rem.i.i
  %magic.i = getelementptr inbounds %struct.afs_xdr_dir_hdr, ptr %add.ptr1.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %magic.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %magic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1234, i16 %46)
  %cmp9.not.i = icmp eq i16 %46, 1234
  br i1 %cmp9.not.i, label %if.end23.i, label %if.then25

if.end23.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr i8, ptr %add.ptr1.i.i, i32 2047
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx.i, align 1
  call void @kunmap_local_indexed(ptr noundef %add.ptr1.i.i) #15
  %add30.i = add i32 %offset.060.i, 2048
  %cmp5.i = icmp ult i32 %add30.i, %cond.off0.i
  br i1 %cmp5.i, label %if.end23.i.for.body.i_crit_edge, label %if.end23.i.afs_dir_check_folio.exit.thread_crit_edge

if.end23.i.afs_dir_check_folio.exit.thread_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_dir_check_folio.exit.thread

if.end23.i.for.body.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

afs_dir_check_folio.exit.thread:                  ; preds = %if.end23.i.afs_dir_check_folio.exit.thread_crit_edge, %folio_size.exit.i.afs_dir_check_folio.exit.thread_crit_edge, %do.end23.afs_dir_check_folio.exit.thread_crit_edge
  %call.i57.i = call fastcc ptr @afs_i2net(ptr noundef %dvnode) #15
  %n_read_dir.i = getelementptr inbounds %struct.afs_net, ptr %call.i57.i, i32 0, i32 40
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %n_read_dir.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %n_read_dir.i, i32 1, i32 3, i32 1) #15
  %48 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_read_dir.i, ptr %n_read_dir.i, i32 1, ptr elementtype(i32) %n_read_dir.i) #15, !srcloc !484
  br label %for.inc

if.then25:                                        ; preds = %for.body.i
  %conv8.i = zext i16 %46 to i32
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %dvnode, i32 0, i32 11
  %49 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %i_ino.i, align 8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef %50, i64 noundef %shl.i.i.i, i32 noundef %offset.060.i, i32 noundef %cond.off0.i, i32 noundef %conv8.i) #18
  %conv16.i = zext i32 %offset.060.i to i64
  %add.i = add nuw nsw i64 %shl.i.i.i, %conv16.i
  call fastcc void @trace_afs_dir_check_failed(ptr noundef %dvnode, i64 noundef %add.i, i64 noundef %33) #15
  call void @kunmap_local_indexed(ptr noundef %add.ptr1.i.i) #15
  call fastcc void @trace_afs_file_error(ptr noundef %dvnode, i32 noundef -5, i32 noundef 0) #15
  %51 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_mapping, align 8
  %53 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nr_pages, align 8
  %sub.i48 = add i32 %54, -1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas.i) #15
  %55 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 1
  %56 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 6
  %57 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 7
  %58 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 8
  %i_pages.i = getelementptr inbounds %struct.address_space, ptr %52, i32 0, i32 1
  %59 = ptrtoint ptr %xas.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %i_pages.i, ptr %xas.i, align 4
  %60 = ptrtoint ptr %55 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 0, ptr %55, align 4
  %61 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 3 to ptr), ptr %56, align 4
  %62 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %57, align 4
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %58, align 4
  %fid.i = getelementptr inbounds %struct.afs_vnode, ptr %dvnode, i32 0, i32 2
  %64 = ptrtoint ptr %fid.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %fid.i, align 8
  %vnode.i = getelementptr inbounds %struct.afs_vnode, ptr %dvnode, i32 0, i32 2, i32 1
  %66 = ptrtoint ptr %vnode.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %vnode.i, align 8
  %file_size.i = getelementptr inbounds %struct.afs_read, ptr %req, i32 0, i32 3
  %68 = ptrtoint ptr %file_size.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %file_size.i, align 8
  %len.i = getelementptr inbounds %struct.afs_read, ptr %req, i32 0, i32 1
  %70 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %len.i, align 8
  %72 = ptrtoint ptr %actual_len to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %actual_len, align 8
  %call.i49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i64 noundef %65, i64 noundef %67, i64 noundef %69, i64 noundef %71, i64 noundef %73) #18
  %74 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %req, align 8
  %76 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nr_pages, align 8
  %iter.i = getelementptr inbounds %struct.afs_read, ptr %req, i32 0, i32 14
  %78 = ptrtoint ptr %iter.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %iter.i, align 8
  %iov_offset.i = getelementptr inbounds %struct.iov_iter, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %iov_offset.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %iov_offset.i, align 4
  %count.i.i = getelementptr inbounds %struct.iov_iter, ptr %79, i32 0, i32 4
  %82 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %count.i.i, align 8
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i64 noundef %75, i32 noundef %77, i32 noundef %81, i32 noundef %83) #18
  %call10.i = call ptr @xas_find(ptr noundef nonnull %xas.i, i32 noundef %sub.i48) #15
  %tobool.not107.i = icmp eq ptr %call10.i, null
  br i1 %tobool.not107.i, label %if.then25.afs_dir_dump.exit_crit_edge, label %if.then25.for.body.i50_crit_edge

if.then25.for.body.i50_crit_edge:                 ; preds = %if.then25
  br label %for.body.i50

if.then25.afs_dir_dump.exit_crit_edge:            ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_dir_dump.exit

for.body.i50:                                     ; preds = %for.inc52.i.for.body.i50_crit_edge, %if.then25.for.body.i50_crit_edge
  %folio.0108.i = phi ptr [ %call53.i, %for.inc52.i.for.body.i50_crit_edge ], [ %call10.i, %if.then25.for.body.i50_crit_edge ]
  %magicptr.i.i = ptrtoint ptr %folio.0108.i to i32
  %84 = zext i32 %magicptr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.240)
  switch i32 %magicptr.i.i, label %do.body12.i [
    i32 1030, label %for.body.i50.for.inc52.i_crit_edge
    i32 1026, label %if.end4.i.i
  ]

for.body.i50.for.inc52.i_crit_edge:               ; preds = %for.body.i50
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc52.i

if.end4.i.i:                                      ; preds = %for.body.i50
  call void @__sanitizer_cov_trace_pc() #17
  %85 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 3 to ptr), ptr %56, align 4
  br label %for.inc52.i

do.body12.i:                                      ; preds = %for.body.i50
  %86 = getelementptr inbounds %struct.page, ptr %folio.0108.i, i32 0, i32 1
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %86, align 4
  %and.i.i.i.i.i.i = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i, label %if.then.i.i.i.i.i51, !prof !482

if.then.i.i.i.i.i51:                              ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %folio.0108.i, ptr noundef nonnull @.str.33) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

folio_test_swapbacked.exit.i.i.i:                 ; preds = %do.body12.i
  %89 = ptrtoint ptr %folio.0108.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %folio.0108.i, align 4
  %91 = and i32 %90, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.i.not.i.i.i = icmp eq i32 %91, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_swapbacked.exit.i.i.i.if.end.i.i_crit_edge, label %land.rhs.i.i.i

folio_test_swapbacked.exit.i.i.i.if.end.i.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.rhs.i.i.i:                                   ; preds = %folio_test_swapbacked.exit.i.i.i
  %92 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %86, align 4
  %and.i.i.i.i.i52 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i52)
  %tobool.not.i.i.i.i53 = icmp eq i32 %and.i.i.i.i.i52, 0
  br i1 %tobool.not.i.i.i.i53, label %folio_test_swapcache.exit.i.i, label %if.then.i.i.i.i54, !prof !482

if.then.i.i.i.i54:                                ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %folio.0108.i, ptr noundef nonnull @.str.33) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

folio_test_swapcache.exit.i.i:                    ; preds = %land.rhs.i.i.i
  %94 = ptrtoint ptr %folio.0108.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %folio.0108.i, align 4
  %96 = and i32 %95, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.i.not.i.i55 = icmp eq i32 %96, 0
  br i1 %tobool.i.not.i.i55, label %folio_test_swapcache.exit.i.i.if.end.i.i_crit_edge, label %if.then.i.i, !prof !482

folio_test_swapcache.exit.i.i.if.end.i.i_crit_edge: ; preds = %folio_test_swapcache.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %folio_test_swapcache.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i.i = call ptr @swapcache_mapping(ptr noundef nonnull %folio.0108.i) #15
  br label %folio_file_mapping.exit.i

if.end.i.i:                                       ; preds = %folio_test_swapcache.exit.i.i.if.end.i.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.if.end.i.i_crit_edge
  %mapping.i.i = getelementptr inbounds %struct.anon.148, ptr %folio.0108.i, i32 0, i32 2
  %97 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mapping.i.i, align 4
  br label %folio_file_mapping.exit.i

folio_file_mapping.exit.i:                        ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i80.i = phi ptr [ %call2.i.i, %if.then.i.i ], [ %98, %if.end.i.i ]
  %cmp.not.i56 = icmp eq ptr %retval.0.i80.i, %52
  br i1 %cmp.not.i56, label %do.end25.i, label %do.body17.i, !prof !482

do.body17.i:                                      ; preds = %folio_file_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #15, !srcloc !516
  unreachable

do.end25.i:                                       ; preds = %folio_file_mapping.exit.i
  %99 = ptrtoint ptr %folio.0108.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %folio.0108.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %100)
  %cmp.i.not.i.i.i.i.i57 = icmp eq i32 %100, -1
  br i1 %cmp.i.not.i.i.i.i.i57, label %if.then.i.i.i.i81.i, label %PageHead.exit.i.i.i.i58, !prof !490

if.then.i.i.i.i81.i:                              ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %folio.0108.i, ptr noundef nonnull @.str.43) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !492
  unreachable

PageHead.exit.i.i.i.i58:                          ; preds = %do.end25.i
  %101 = ptrtoint ptr %folio.0108.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %folio.0108.i, align 4
  %103 = and i32 %102, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i.i.i82.i = icmp eq i32 %103, 0
  br i1 %tobool.not.i.i.i82.i, label %PageHead.exit.i.i.i.i58.folio_size.exit.i68_crit_edge, label %if.end.i.i.i.i61

PageHead.exit.i.i.i.i58.folio_size.exit.i68_crit_edge: ; preds = %PageHead.exit.i.i.i.i58
  call void @__sanitizer_cov_trace_pc() #17
  br label %folio_size.exit.i68

if.end.i.i.i.i61:                                 ; preds = %PageHead.exit.i.i.i.i58
  call void @__sanitizer_cov_trace_pc() #17
  %104 = getelementptr %struct.page, ptr %folio.0108.i, i32 1, i32 1
  %compound_order.i.i.i.i59 = getelementptr inbounds %struct.anon.6, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %compound_order.i.i.i.i59 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %compound_order.i.i.i.i59, align 1
  %conv.i.i.i.i60 = zext i8 %106 to i32
  br label %folio_size.exit.i68

folio_size.exit.i68:                              ; preds = %if.end.i.i.i.i61, %PageHead.exit.i.i.i.i58.folio_size.exit.i68_crit_edge
  %retval.0.i.i.i.i62 = phi i32 [ %conv.i.i.i.i60, %if.end.i.i.i.i61 ], [ 0, %PageHead.exit.i.i.i.i58.folio_size.exit.i68_crit_edge ]
  %shl.i.i63 = shl i32 4096, %retval.0.i.i.i.i62
  %conv.i64 = zext i32 %shl.i.i63 to i64
  %107 = ptrtoint ptr %actual_len to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %actual_len, align 8
  %index.i.i.i65 = getelementptr inbounds %struct.page, ptr %folio.0108.i, i32 0, i32 1, i32 0, i32 2
  %109 = ptrtoint ptr %index.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %index.i.i.i65, align 4
  %conv.i.i.i66 = zext i32 %110 to i64
  %shl.i.i.neg.i = mul nsw i64 %conv.i.i.i66, -4096
  %sub29.i = add i64 %shl.i.i.neg.i, %108
  call void @__sanitizer_cov_trace_cmp8(i64 %sub29.i, i64 %conv.i64)
  %cmp31.i = icmp sgt i64 %sub29.i, %conv.i64
  %extract.t79.i = trunc i64 %sub29.i to i32
  %cond.off0.i67 = select i1 %cmp31.i, i32 %shl.i.i63, i32 %extract.t79.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.off0.i67)
  %cmp35105.not.i = icmp eq i32 %cond.off0.i67, 0
  br i1 %cmp35105.not.i, label %folio_size.exit.i68.for.inc52.i_crit_edge, label %folio_size.exit.i68.for.body37.i_crit_edge

folio_size.exit.i68.for.body37.i_crit_edge:       ; preds = %folio_size.exit.i68
  br label %for.body37.i

folio_size.exit.i68.for.inc52.i_crit_edge:        ; preds = %folio_size.exit.i68
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc52.i

for.body37.i:                                     ; preds = %folio_index.exit.i.for.body37.i_crit_edge, %folio_size.exit.i68.for.body37.i_crit_edge
  %offset.0106.i = phi i32 [ %add51.i, %folio_index.exit.i.for.body37.i_crit_edge ], [ 0, %folio_size.exit.i68.for.body37.i_crit_edge ]
  %div3.i.i69 = lshr i32 %offset.0106.i, 12
  %add.ptr.i.i70 = getelementptr %struct.page, ptr %folio.0108.i, i32 %div3.i.i69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %111 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i71 = or i32 %111, 512
  %call.i.i72 = call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i.i70, i32 noundef %or.i.i71) #15
  %rem.i.i73 = and i32 %offset.0106.i, 2048
  %add.ptr1.i.i74 = getelementptr i8, ptr %call.i.i72, i32 %rem.i.i73
  %112 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %86, align 4
  %and.i.i.i.i.i83.i = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i83.i)
  %tobool.not.i.i.i.i84.i = icmp eq i32 %and.i.i.i.i.i83.i, 0
  br i1 %tobool.not.i.i.i.i84.i, label %folio_test_swapbacked.exit.i.i87.i, label %if.then.i.i.i.i85.i, !prof !482

if.then.i.i.i.i85.i:                              ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %folio.0108.i, ptr noundef nonnull @.str.33) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

folio_test_swapbacked.exit.i.i87.i:               ; preds = %for.body37.i
  %114 = ptrtoint ptr %folio.0108.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %folio.0108.i, align 4
  %116 = and i32 %115, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.i.not.i.i86.i = icmp eq i32 %116, 0
  br i1 %tobool.i.not.i.i86.i, label %folio_test_swapbacked.exit.i.i87.i.if.end.i96.i_crit_edge, label %land.rhs.i.i90.i

folio_test_swapbacked.exit.i.i87.i.if.end.i96.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i87.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i96.i

land.rhs.i.i90.i:                                 ; preds = %folio_test_swapbacked.exit.i.i87.i
  %117 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %86, align 4
  %and.i.i.i.i88.i = and i32 %118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i88.i)
  %tobool.not.i.i.i89.i = icmp eq i32 %and.i.i.i.i88.i, 0
  br i1 %tobool.not.i.i.i89.i, label %folio_test_swapcache.exit.i93.i, label %if.then.i.i.i91.i, !prof !482

if.then.i.i.i91.i:                                ; preds = %land.rhs.i.i90.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %folio.0108.i, ptr noundef nonnull @.str.33) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

folio_test_swapcache.exit.i93.i:                  ; preds = %land.rhs.i.i90.i
  %119 = ptrtoint ptr %folio.0108.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %folio.0108.i, align 4
  %121 = and i32 %120, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.i.not.i92.i = icmp eq i32 %121, 0
  br i1 %tobool.i.not.i92.i, label %folio_test_swapcache.exit.i93.i.if.end.i96.i_crit_edge, label %if.then.i95.i, !prof !482

folio_test_swapcache.exit.i93.i.if.end.i96.i_crit_edge: ; preds = %folio_test_swapcache.exit.i93.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i96.i

if.then.i95.i:                                    ; preds = %folio_test_swapcache.exit.i93.i
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i94.i = call i32 @__page_file_index(ptr noundef %folio.0108.i) #15
  br label %folio_index.exit.i

if.end.i96.i:                                     ; preds = %folio_test_swapcache.exit.i93.i.if.end.i96.i_crit_edge, %folio_test_swapbacked.exit.i.i87.i.if.end.i96.i_crit_edge
  %122 = ptrtoint ptr %index.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %index.i.i.i65, align 4
  br label %folio_index.exit.i

folio_index.exit.i:                               ; preds = %if.end.i96.i, %if.then.i95.i
  %retval.0.i97.i = phi i32 [ %call2.i94.i, %if.then.i95.i ], [ %123, %if.end.i96.i ]
  %add.i75 = add i32 %retval.0.i97.i, %offset.0106.i
  %call44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %add.i75, ptr noundef %add.ptr1.i.i74) #18
  call void @kunmap_local_indexed(ptr noundef %add.ptr1.i.i74) #15
  %add51.i = add i32 %offset.0106.i, 2048
  %cmp35.i = icmp ult i32 %add51.i, %cond.off0.i67
  br i1 %cmp35.i, label %folio_index.exit.i.for.body37.i_crit_edge, label %folio_index.exit.i.for.inc52.i_crit_edge

folio_index.exit.i.for.inc52.i_crit_edge:         ; preds = %folio_index.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc52.i

folio_index.exit.i.for.body37.i_crit_edge:        ; preds = %folio_index.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body37.i

for.inc52.i:                                      ; preds = %folio_index.exit.i.for.inc52.i_crit_edge, %folio_size.exit.i68.for.inc52.i_crit_edge, %if.end4.i.i, %for.body.i50.for.inc52.i_crit_edge
  %call53.i = call fastcc ptr @xas_next_entry(ptr noundef nonnull %xas.i, i32 noundef %sub.i48) #15
  %tobool.not.i76 = icmp eq ptr %call53.i, null
  br i1 %tobool.not.i76, label %for.inc52.i.afs_dir_dump.exit_crit_edge, label %for.inc52.i.for.body.i50_crit_edge

for.inc52.i.for.body.i50_crit_edge:               ; preds = %for.inc52.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i50

for.inc52.i.afs_dir_dump.exit_crit_edge:          ; preds = %for.inc52.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_dir_dump.exit

afs_dir_dump.exit:                                ; preds = %for.inc52.i.afs_dir_dump.exit_crit_edge, %if.then25.afs_dir_dump.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas.i) #15
  br label %for.end

for.inc:                                          ; preds = %afs_dir_check_folio.exit.thread, %if.end4.i, %for.body.for.inc_crit_edge
  %call27 = call fastcc ptr @xas_next_entry(ptr noundef nonnull %xas, i32 noundef %sub)
  %tobool5.not = icmp eq ptr %call27, null
  br i1 %tobool5.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %afs_dir_dump.exit, %rcu_read_lock.exit.for.end_crit_edge
  %ret.0 = phi i32 [ -5, %afs_dir_dump.exit ], [ 0, %rcu_read_lock.exit.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %call.i77 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i77, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i80

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i80:                                ; preds = %for.end
  %call1.i78 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i78)
  %tobool.not.i79 = icmp eq i32 %call1.i78, 0
  br i1 %tobool.not.i79, label %land.lhs.true.i80.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i82

land.lhs.true.i80.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i82:                               ; preds = %land.lhs.true.i80
  %.b4.i81 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i81, label %land.lhs.true2.i82.rcu_read_unlock.exit_crit_edge, label %if.then.i83

land.lhs.true2.i82.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i82
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i83:                                      ; preds = %land.lhs.true2.i82
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 724, ptr noundef nonnull @.str.38) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i83, %land.lhs.true2.i82.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i80.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !486
  %124 = call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i.i.i.i84 = and i32 %124, -16384
  %125 = inttoptr i32 %and.i.i.i.i.i84 to ptr
  %preempt_count.i.i.i.i85 = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %preempt_count.i.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %preempt_count.i.i.i.i85, align 4
  %sub.i.i.i = add i32 %127, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i85, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @downgrade_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @folio_file_mapping(ptr noundef %folio) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_swapbacked.exit.i, label %if.then.i.i.i, !prof !482

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.33) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !489
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.rhs.i:                                       ; preds = %folio_test_swapbacked.exit.i
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_swapcache.exit, label %if.then.i.i, !prof !482

if.then.i.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.33) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

folio_test_swapcache.exit:                        ; preds = %land.rhs.i
  %8 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %folio, align 4
  %10 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %folio_test_swapcache.exit.if.end_crit_edge, label %if.then, !prof !482

folio_test_swapcache.exit.if.end_crit_edge:       ; preds = %folio_test_swapcache.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %folio_test_swapcache.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call ptr @swapcache_mapping(ptr noundef %folio) #15
  br label %return

if.end:                                           ; preds = %folio_test_swapcache.exit.if.end_crit_edge, %folio_test_swapbacked.exit.i.if.end_crit_edge
  %mapping = getelementptr inbounds %struct.anon.148, ptr %folio, i32 0, i32 2
  %11 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mapping, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %call2, %if.then ], [ %12, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xas_next_entry(ptr noundef %xas, i32 noundef %max) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  br i1 %spec.select.i, label %entry.cleanup.sink.split_crit_edge, label %lor.lhs.false, !prof !490

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.lhs.false.cleanup.sink.split_crit_edge, !prof !482

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
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
  br i1 %cmp.not, label %lor.rhs.do.body_crit_edge, label %lor.rhs.cleanup.sink.split_crit_edge, !prof !482

lor.rhs.cleanup.sink.split_crit_edge:             ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

lor.rhs.do.body_crit_edge:                        ; preds = %lor.rhs
  br label %do.body

do.body:                                          ; preds = %if.end44.do.body_crit_edge, %lor.rhs.do.body_crit_edge
  %9 = ptrtoint ptr %xa_index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xa_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %max)
  %cmp8.not = icmp ult i32 %10, %max
  br i1 %cmp8.not, label %if.end18, label %do.body.cleanup.sink.split_crit_edge, !prof !482

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end18:                                         ; preds = %do.body
  %11 = ptrtoint ptr %xa_offset to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %xa_offset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %12)
  %cmp21 = icmp eq i8 %12, 63
  br i1 %cmp21, label %if.end18.cleanup.sink.split_crit_edge, label %if.end31, !prof !490

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
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
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 1
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i73 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i73, label %lor.lhs.false.i, label %if.end31.xa_entry.exit_crit_edge

if.end31.xa_entry.exit_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %xa_entry.exit

lor.lhs.false.i:                                  ; preds = %if.end31
  %call4.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.xa_entry.exit_crit_edge

lor.lhs.false.i.xa_entry.exit_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xa_entry.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call6.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.xa_entry.exit_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.xa_entry.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xa_entry.exit

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %.b13.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i, label %land.lhs.true8.i.xa_entry.exit_crit_edge, label %if.then.i

land.lhs.true8.i.xa_entry.exit_crit_edge:         ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xa_entry.exit

if.then.i:                                        ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @xa_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 1183, ptr noundef nonnull @.str.37) #15
  br label %xa_entry.exit

xa_entry.exit:                                    ; preds = %if.then.i, %land.lhs.true8.i.xa_entry.exit_crit_edge, %land.lhs.true.i.xa_entry.exit_crit_edge, %lor.lhs.false.i.xa_entry.exit_crit_edge, %if.end31.xa_entry.exit_crit_edge
  %17 = ptrtoint ptr %16 to i32
  %and.i74 = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i74)
  %cmp.i = icmp eq i32 %and.i74, 2
  br i1 %cmp.i, label %xa_entry.exit.cleanup.sink.split_crit_edge, label %if.end44, !prof !490

xa_entry.exit.cleanup.sink.split_crit_edge:       ; preds = %xa_entry.exit
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end44.do.body_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

cleanup.sink.split:                               ; preds = %xa_entry.exit.cleanup.sink.split_crit_edge, %if.end18.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge, %lor.rhs.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %call43 = tail call ptr @xas_find(ptr noundef %xas, i32 noundef %max) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end44.cleanup_crit_edge
  %retval.0 = phi ptr [ %call43, %cleanup.sink.split ], [ %16, %if.end44.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @swapcache_mapping(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_file_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @afs_i2net(ptr nocapture noundef readonly %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_net_id to i32))
  %6 = load i32, ptr @afs_net_id, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !485
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i.i.i, label %entry.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

entry.rcu_read_lock.exit.i.i.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %entry
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 696, ptr noundef nonnull @.str.32) #15
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i.i_crit_edge
  %gen.i.i.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 43
  %11 = ptrtoint ptr %gen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %gen.i.i.i, align 128
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %rcu_read_lock.exit.i.i.i.do.end7.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.do.end7.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7.i.i.i

land.lhs.true.i.i.i:                              ; preds = %rcu_read_lock.exit.i.i.i
  %call2.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.do.end7.i.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.do.end7.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7.i.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b9.i.i.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i.i.i, label %land.lhs.true4.i.i.i.do.end7.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.do.end7.i.i.i_crit_edge:     ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 45, ptr noundef nonnull @.str.37) #15
  br label %do.end7.i.i.i

do.end7.i.i.i:                                    ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.do.end7.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end7.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.do.end7.i.i.i_crit_edge
  %arrayidx.i.i.i = getelementptr [0 x ptr], ptr %12, i32 0, i32 %6
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i10.i.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i10.i.i.i, label %do.end7.i.i.i.afs_sb2net.exit_crit_edge, label %land.lhs.true.i13.i.i.i

do.end7.i.i.i.afs_sb2net.exit_crit_edge:          ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_sb2net.exit

land.lhs.true.i13.i.i.i:                          ; preds = %do.end7.i.i.i
  %call1.i11.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i.i)
  %tobool.not.i12.i.i.i = icmp eq i32 %call1.i11.i.i.i, 0
  br i1 %tobool.not.i12.i.i.i, label %land.lhs.true.i13.i.i.i.afs_sb2net.exit_crit_edge, label %land.lhs.true2.i15.i.i.i

land.lhs.true.i13.i.i.i.afs_sb2net.exit_crit_edge: ; preds = %land.lhs.true.i13.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_sb2net.exit

land.lhs.true2.i15.i.i.i:                         ; preds = %land.lhs.true.i13.i.i.i
  %.b4.i14.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i.i, label %land.lhs.true2.i15.i.i.i.afs_sb2net.exit_crit_edge, label %if.then.i16.i.i.i

land.lhs.true2.i15.i.i.i.afs_sb2net.exit_crit_edge: ; preds = %land.lhs.true2.i15.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_sb2net.exit

if.then.i16.i.i.i:                                ; preds = %land.lhs.true2.i15.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 724, ptr noundef nonnull @.str.38) #15
  br label %afs_sb2net.exit

afs_sb2net.exit:                                  ; preds = %if.then.i16.i.i.i, %land.lhs.true2.i15.i.i.i.afs_sb2net.exit_crit_edge, %land.lhs.true.i13.i.i.i.afs_sb2net.exit_crit_edge, %do.end7.i.i.i.afs_sb2net.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !486
  %15 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i.i.i.i17.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i17.i.i.i to ptr
  %preempt_count.i.i.i.i18.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i18.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_reload_dir(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_dir_check_failed(ptr noundef %vnode, i64 noundef %off, i64 noundef %i_size) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_dir_check_failed, i32 0, i32 1), ptr blockaddress(@trace_afs_dir_check_failed, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !502

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !482

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !517
  %call42 = tail call i32 @__traceiter_afs_dir_check_failed(ptr noundef null, ptr noundef %vnode, i64 noundef %off, i64 noundef %i_size) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !518
  %13 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !482

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !511
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_dir_check_failed, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_dir_check_failed, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_afs_dir_check_failed.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_afs_dir_check_failed.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 1017, ptr noundef nonnull @.str.37) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !512
  %31 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
declare dso_local i32 @__traceiter_afs_dir_check_failed(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @folio_index(ptr noundef %folio) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_swapbacked.exit.i, label %if.then.i.i.i, !prof !482

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.33) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !489
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.rhs.i:                                       ; preds = %folio_test_swapbacked.exit.i
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_swapcache.exit, label %if.then.i.i, !prof !482

if.then.i.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.33) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

folio_test_swapcache.exit:                        ; preds = %land.rhs.i
  %8 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %folio, align 4
  %10 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %folio_test_swapcache.exit.if.end_crit_edge, label %if.then, !prof !482

folio_test_swapcache.exit.if.end_crit_edge:       ; preds = %folio_test_swapcache.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %folio_test_swapcache.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 @__page_file_index(ptr noundef %folio) #15
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_lookup_filldir(ptr nocapture noundef %ctx, ptr noundef %name, i32 noundef %nlen, i64 noundef %fpos, i64 noundef %ino, i32 noundef %dtype) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end16_crit_edge, label %do.end, !prof !482

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end16

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %name5 = getelementptr inbounds %struct.afs_lookup_cookie, ptr %ctx, i32 0, i32 1
  %name6 = getelementptr inbounds %struct.afs_lookup_cookie, ptr %ctx, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name6, align 8
  %7 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %name5, align 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %comm, ptr noundef nonnull @.str.80, ptr noundef %6, i32 noundef %8, ptr noundef %name, i32 noundef %nlen, i64 noundef %ino, i32 noundef %dtype) #18
  br label %do.end16

do.end16:                                         ; preds = %do.end, %entry.do.end16_crit_edge
  %found = getelementptr inbounds %struct.afs_lookup_cookie, ptr %ctx, i32 0, i32 2
  %9 = ptrtoint ptr %found to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %found, align 8, !range !487
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool17.not = icmp eq i8 %10, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %do.end16
  %nr_fids = getelementptr inbounds %struct.afs_lookup_cookie, ptr %ctx, i32 0, i32 4
  %11 = ptrtoint ptr %nr_fids to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %nr_fids, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 50, i16 %12)
  %cmp = icmp ult i16 %12, 50
  br i1 %cmp, label %if.then20, label %if.then18.if.end49_crit_edge

if.then18.if.end49_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i16 %12 to i32
  %vnode = getelementptr %struct.afs_lookup_cookie, ptr %ctx, i32 0, i32 5, i32 %conv, i32 1
  %13 = ptrtoint ptr %vnode to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %ino, ptr %vnode, align 8
  %unique = getelementptr %struct.afs_lookup_cookie, ptr %ctx, i32 0, i32 5, i32 %conv, i32 3
  %14 = ptrtoint ptr %unique to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %dtype, ptr %unique, align 4
  %inc = add nuw nsw i16 %12, 1
  %15 = ptrtoint ptr %nr_fids to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %inc, ptr %nr_fids, align 2
  br label %if.end49

if.else:                                          ; preds = %do.end16
  %name28 = getelementptr inbounds %struct.afs_lookup_cookie, ptr %ctx, i32 0, i32 1
  %16 = ptrtoint ptr %name28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %name28, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %nlen)
  %cmp30 = icmp eq i32 %17, %nlen
  br i1 %cmp30, label %land.lhs.true, label %if.else.if.end49_crit_edge

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49

land.lhs.true:                                    ; preds = %if.else
  %name33 = getelementptr inbounds %struct.afs_lookup_cookie, ptr %ctx, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %name33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name33, align 8
  %bcmp = tail call i32 @bcmp(ptr %19, ptr %name, i32 %nlen) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp35 = icmp eq i32 %bcmp, 0
  br i1 %cmp35, label %if.then37, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49

if.then37:                                        ; preds = %land.lhs.true
  %vnode40 = getelementptr %struct.afs_lookup_cookie, ptr %ctx, i32 0, i32 5, i32 1, i32 1
  %20 = ptrtoint ptr %vnode40 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %ino, ptr %vnode40, align 8
  %unique43 = getelementptr %struct.afs_lookup_cookie, ptr %ctx, i32 0, i32 5, i32 1, i32 3
  %21 = ptrtoint ptr %unique43 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %dtype, ptr %unique43, align 4
  %22 = ptrtoint ptr %found to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %found, align 8
  %one_only = getelementptr inbounds %struct.afs_lookup_cookie, ptr %ctx, i32 0, i32 3
  %23 = ptrtoint ptr %one_only to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %one_only, align 1, !range !487
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool45.not = icmp eq i8 %24, 0
  br i1 %tobool45.not, label %if.then37.if.end49_crit_edge, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then37.if.end49_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49

if.end49:                                         ; preds = %if.then37.if.end49_crit_edge, %land.lhs.true.if.end49_crit_edge, %if.else.if.end49_crit_edge, %if.then20, %if.then18.if.end49_crit_edge
  %nr_fids50 = getelementptr inbounds %struct.afs_lookup_cookie, ptr %ctx, i32 0, i32 4
  %25 = ptrtoint ptr %nr_fids50 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %nr_fids50, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 49, i16 %26)
  %cmp52 = icmp ugt i16 %26, 49
  %cond = sext i1 %cmp52 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %27 = load i32, ptr @afs_debug, align 4
  %and55 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end49.cleanup_crit_edge, label %do.end66, !prof !482

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end66:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  %28 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i100 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i100 to ptr
  %task69 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task69 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task69, align 8
  %comm70 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 101
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %comm70, ptr noundef nonnull @.str.80, i32 noundef %cond) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %if.end49.cleanup_crit_edge, %if.then37.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then37.cleanup_crit_edge ], [ %cond, %do.end66 ], [ %cond, %if.end49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_lookup_one_filldir(ptr nocapture noundef %ctx, ptr noundef %name, i32 noundef %nlen, i64 noundef %fpos, i64 noundef %ino, i32 noundef %dtype) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end16_crit_edge, label %do.end, !prof !482

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end16

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %name5 = getelementptr inbounds %struct.afs_lookup_one_cookie, ptr %ctx, i32 0, i32 1
  %name6 = getelementptr inbounds %struct.afs_lookup_one_cookie, ptr %ctx, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name6, align 8
  %7 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %name5, align 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %comm, ptr noundef nonnull @.str.83, ptr noundef %6, i32 noundef %8, ptr noundef %name, i32 noundef %nlen, i64 noundef %ino, i32 noundef %dtype) #18
  br label %do.end16

do.end16:                                         ; preds = %do.end, %entry.do.end16_crit_edge
  %name17 = getelementptr inbounds %struct.afs_lookup_one_cookie, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %name17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %name17, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %nlen)
  %cmp.not = icmp eq i32 %10, %nlen
  br i1 %cmp.not, label %lor.lhs.false, label %do.end16.do.body24_crit_edge

do.end16.do.body24_crit_edge:                     ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body24

lor.lhs.false:                                    ; preds = %do.end16
  %name20 = getelementptr inbounds %struct.afs_lookup_one_cookie, ptr %ctx, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %name20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name20, align 8
  %bcmp = tail call i32 @bcmp(ptr %12, ptr %name, i32 %nlen) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp22.not = icmp eq i32 %bcmp, 0
  br i1 %cmp22.not, label %if.end46, label %lor.lhs.false.do.body24_crit_edge

lor.lhs.false.do.body24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body24

do.body24:                                        ; preds = %lor.lhs.false.do.body24_crit_edge, %do.end16.do.body24_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %13 = load i32, ptr @afs_debug, align 4
  %and25 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.cleanup_crit_edge, label %do.body24.cleanup.sink.split_crit_edge, !prof !482

do.body24.cleanup.sink.split_crit_edge:           ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end46:                                         ; preds = %lor.lhs.false
  %vnode = getelementptr inbounds %struct.afs_lookup_one_cookie, ptr %ctx, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %vnode to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %ino, ptr %vnode, align 8
  %unique = getelementptr inbounds %struct.afs_lookup_one_cookie, ptr %ctx, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %unique to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dtype, ptr %unique, align 4
  %found = getelementptr inbounds %struct.afs_lookup_one_cookie, ptr %ctx, i32 0, i32 2
  %16 = ptrtoint ptr %found to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %found, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %17 = load i32, ptr @afs_debug, align 4
  %and49 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end46.cleanup_crit_edge, label %if.end46.cleanup.sink.split_crit_edge, !prof !482

if.end46.cleanup.sink.split_crit_edge:            ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end46.cleanup.sink.split_crit_edge, %do.body24.cleanup.sink.split_crit_edge
  %.str.88.sink = phi ptr [ @.str.85, %do.body24.cleanup.sink.split_crit_edge ], [ @.str.88, %if.end46.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %do.body24.cleanup.sink.split_crit_edge ], [ -1, %if.end46.cleanup.sink.split_crit_edge ]
  %18 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i82 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i82 to ptr
  %task63 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task63 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task63, align 8
  %comm64 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 101
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.88.sink, ptr noundef %comm64, ptr noundef nonnull @.str.83) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end46.cleanup_crit_edge, %do.body24.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body24.cleanup_crit_edge ], [ -1, %if.end46.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_request_key(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_validate(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @afs_lookup_atsys(ptr nocapture noundef readonly %dir, ptr nocapture noundef readonly %dentry, ptr noundef %key) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @afs_i2net(ptr noundef %dir)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !482

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm, ptr noundef nonnull @.str.117) #18
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 256) #19
  %tobool10.not = icmp eq ptr %call7.i, null
  br i1 %tobool10.not, label %do.end7.out_p_crit_edge, label %if.end12

do.end7.out_p_crit_edge:                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_p

if.end12:                                         ; preds = %do.end7
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %6 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp = icmp ugt i32 %7, 4
  br i1 %cmp, label %if.then14, label %if.end12.if.end22_crit_edge

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %name16 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %name16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name16, align 8
  %sub = add i32 %7, -4
  %10 = call ptr @memcpy(ptr %call7.i, ptr %9, i32 %sub)
  %add.ptr = getelementptr i8, ptr %call7.i, i32 %sub
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %if.end12.if.end22_crit_edge
  %p.0 = phi ptr [ %add.ptr, %if.then14 ], [ %call7.i, %if.end12.if.end22_crit_edge ]
  %sysnames_lock = getelementptr inbounds %struct.afs_net, ptr %call, i32 0, i32 35
  tail call void @_raw_read_lock(ptr noundef %sysnames_lock) #15
  %sysnames = getelementptr inbounds %struct.afs_net, ptr %call, i32 0, i32 34
  %11 = ptrtoint ptr %sysnames to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sysnames, align 4
  %usage = getelementptr inbounds %struct.afs_sysnames, ptr %12, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #15
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #15, !srcloc !493
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end22.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !490

if.end22.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end22
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !482

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end22.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end22.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef %.sink.i.i.i) #15
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call void @_raw_read_unlock(ptr noundef %sysnames_lock) #15
  %nr = getelementptr inbounds %struct.afs_sysnames, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %nr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp2466.not = icmp eq i16 %16, 0
  br i1 %cmp2466.not, label %refcount_inc.exit.out_s_crit_edge, label %for.body.lr.ph

refcount_inc.exit.out_s_crit_edge:                ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_s

for.body.lr.ph:                                   ; preds = %refcount_inc.exit
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end43.for.body_crit_edge, %for.body.lr.ph
  %i.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end43.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr %12, i32 0, i32 %i.067
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %d_name, align 8
  %sub29 = add i32 %20, -4
  %call30 = tail call i32 @strlen(ptr noundef %18) #21
  %add = add i32 %sub29, %call30
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add)
  %cmp31 = icmp sgt i32 %add, 255
  br i1 %cmp31, label %for.body.out_s_crit_edge, label %if.end35

for.body.out_s_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_s

if.end35:                                         ; preds = %for.body
  %call36 = tail call ptr @strcpy(ptr noundef %p.0, ptr noundef %18) #21
  %21 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_parent, align 8
  %call37 = tail call ptr @lookup_one_len(ptr noundef nonnull %call7.i, ptr noundef %22, i32 noundef %add) #15
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end35.out_s_crit_edge, label %lor.lhs.false

if.end35.out_s_crit_edge:                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_s

lor.lhs.false:                                    ; preds = %if.end35
  %23 = ptrtoint ptr %call37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call37, align 8
  %and.i.i.i.i = and i32 %24, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.i.i.not = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.i.i.not, label %if.end43, label %lor.lhs.false.out_s_crit_edge

lor.lhs.false.out_s_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_s

if.end43:                                         ; preds = %lor.lhs.false
  tail call void @dput(ptr noundef %call37) #15
  %inc = add nuw nsw i32 %i.067, 1
  %25 = ptrtoint ptr %nr to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %nr, align 4
  %conv = zext i16 %26 to i32
  %cmp24 = icmp ult i32 %inc, %conv
  br i1 %cmp24, label %if.end43.for.body_crit_edge, label %if.end43.out_s_crit_edge

if.end43.out_s_crit_edge:                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_s

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

out_s:                                            ; preds = %if.end43.out_s_crit_edge, %lor.lhs.false.out_s_crit_edge, %if.end35.out_s_crit_edge, %for.body.out_s_crit_edge, %refcount_inc.exit.out_s_crit_edge
  %ret.0 = phi ptr [ null, %refcount_inc.exit.out_s_crit_edge ], [ inttoptr (i32 -36 to ptr), %for.body.out_s_crit_edge ], [ null, %if.end43.out_s_crit_edge ], [ %call37, %if.end35.out_s_crit_edge ], [ %call37, %lor.lhs.false.out_s_crit_edge ]
  tail call void @afs_put_sysnames(ptr noundef %12) #15
  tail call void @kfree(ptr noundef nonnull %call7.i) #15
  br label %out_p

out_p:                                            ; preds = %out_s, %do.end7.out_p_crit_edge
  %ret.1 = phi ptr [ %ret.0, %out_s ], [ inttoptr (i32 -12 to ptr), %do.end7.out_p_crit_edge ]
  tail call void @key_put(ptr noundef %key) #15
  ret ptr %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_try_auto_mntpt(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_lookup(ptr noundef %dvnode, ptr noundef %name, ptr noundef %fid) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_lookup, i32 0, i32 1), ptr blockaddress(@trace_afs_lookup, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !502

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !482

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !519
  %call42 = tail call i32 @__traceiter_afs_lookup(ptr noundef null, ptr noundef %dvnode, ptr noundef %name, ptr noundef %fid) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !520
  %13 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !482

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !511
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_lookup, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_lookup, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_afs_lookup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_afs_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 1104, ptr noundef nonnull @.str.37) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !512
  %31 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_sysnames(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup5(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_ilookup5_test_by_fid(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_alloc_operation(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup5_nowait(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @afs_begin_vnode_operation(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_wait_for_operation(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_put_operation(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fs_inline_bulk_status(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @yfs_fs_inline_bulk_status(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_do_lookup_success(ptr noundef %op) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !482

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm, ptr noundef nonnull @.str.125) #18
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %nr_files = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 12
  %5 = ptrtoint ptr %nr_files to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nr_files, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp159 = icmp sgt i16 %6, 0
  br i1 %cmp159, label %for.body.lr.ph, label %do.end6.do.body100_crit_edge

do.end6.do.body100_crit_edge:                     ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body100

for.body.lr.ph:                                   ; preds = %do.end6
  %arrayidx18 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  %abort_code8 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 2, i32 0, i32 13
  %abort_code12 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18, i32 6
  %error = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %more_files = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 6
  %key = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %cb_v_break = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0160 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %7 = zext i32 %i.0160 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %i.0160, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %for.body.sw.epilog_crit_edge
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %8 = ptrtoint ptr %abort_code8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %abort_code8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9.not = icmp eq i32 %9, 0
  br i1 %cmp9.not, label %sw.bb.sw.epilog_crit_edge, label %if.then11

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then11:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %abort_code12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %abort_code12, align 8
  %call13 = tail call i32 @afs_abort_to_error(i32 noundef %9) #15
  %conv14 = trunc i32 %call13 to i16
  %11 = ptrtoint ptr %error to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv14, ptr %error, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %more_files to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %more_files, align 8
  %sub = add nsw i32 %i.0160, -2
  %arrayidx19 = getelementptr %struct.afs_vnode_param, ptr %13, i32 %sub
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then11, %sw.bb.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %vp.0 = phi ptr [ %arrayidx19, %sw.default ], [ %file, %if.then11 ], [ %file, %sw.bb.sw.epilog_crit_edge ], [ %arrayidx18, %for.body.sw.epilog_crit_edge ]
  %scb20 = getelementptr inbounds %struct.afs_vnode_param, ptr %vp.0, i32 0, i32 2
  %have_status = getelementptr inbounds %struct.afs_vnode_param, ptr %vp.0, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %have_status to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %have_status, align 8, !range !487
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool21.not = icmp eq i8 %15, 0
  br i1 %tobool21.not, label %land.lhs.true, label %sw.epilog.do.body26_crit_edge

sw.epilog.do.body26_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body26

land.lhs.true:                                    ; preds = %sw.epilog
  %have_error = getelementptr inbounds %struct.afs_vnode_param, ptr %vp.0, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %have_error to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %have_error, align 2, !range !487
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool23.not = icmp eq i8 %17, 0
  br i1 %tobool23.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.do.body26_crit_edge

land.lhs.true.do.body26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body26

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

do.body26:                                        ; preds = %land.lhs.true.do.body26_crit_edge, %sw.epilog.do.body26_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %18 = load i32, ptr @afs_debug, align 4
  %and27 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body26.do.end47_crit_edge, label %do.end38, !prof !482

do.body26.do.end47_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end47

do.end38:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #17
  %19 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i155 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i155 to ptr
  %task41 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task41, align 8
  %comm42 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 101
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %comm42, i32 noundef %i.0160) #18
  br label %do.end47

do.end47:                                         ; preds = %do.end38, %do.body26.do.end47_crit_edge
  %23 = ptrtoint ptr %vp.0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vp.0, align 8
  %tobool49.not = icmp eq ptr %24, null
  br i1 %tobool49.not, label %if.else, label %if.then50

if.then50:                                        ; preds = %do.end47
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags, align 4
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool53.not = icmp eq i32 %27, 0
  br i1 %tobool53.not, label %if.then54, label %if.then50.for.inc_crit_edge

if.then50.for.inc_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then54:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @afs_vnode_commit_status(ptr noundef %op, ptr noundef %vp.0) #15
  br label %for.inc

if.else:                                          ; preds = %do.end47
  %abort_code58 = getelementptr inbounds %struct.afs_vnode_param, ptr %vp.0, i32 0, i32 2, i32 0, i32 13
  %28 = ptrtoint ptr %abort_code58 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %abort_code58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp59 = icmp eq i32 %29, 0
  br i1 %cmp59, label %if.then61, label %do.body70

if.then61:                                        ; preds = %if.else
  %call62 = tail call ptr @afs_iget(ptr noundef %op, ptr noundef %vp.0) #15
  %cmp.i = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then61.for.inc_crit_edge, label %if.then64

if.then61.for.inc_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then64:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %key, align 4
  %32 = ptrtoint ptr %cb_v_break to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cb_v_break, align 8
  tail call void @afs_cache_permit(ptr noundef %call62, ptr noundef %31, i32 noundef %33, ptr noundef %scb20) #15
  %34 = ptrtoint ptr %vp.0 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call62, ptr %vp.0, align 8
  %put_vnode = getelementptr inbounds %struct.afs_vnode_param, ptr %vp.0, i32 0, i32 6
  %35 = ptrtoint ptr %put_vnode to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %put_vnode, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %put_vnode, align 1
  br label %for.inc

do.body70:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %36 = load i32, ptr @afs_debug, align 4
  %and71 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.body70.for.inc_crit_edge, label %do.end82, !prof !482

do.body70.for.inc_crit_edge:                      ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

do.end82:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #17
  %37 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i156 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i156 to ptr
  %task85 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task85 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task85, align 8
  %comm86 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode_param, ptr %vp.0, i32 0, i32 1
  %41 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %fid, align 8
  %vnode92 = getelementptr inbounds %struct.afs_vnode_param, ptr %vp.0, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %vnode92 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %vnode92, align 8
  %unique = getelementptr inbounds %struct.afs_vnode_param, ptr %vp.0, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %unique, align 4
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %comm86, i32 noundef %29, i64 noundef %42, i64 noundef %44, i32 noundef %46) #18
  br label %for.inc

for.inc:                                          ; preds = %do.end82, %do.body70.for.inc_crit_edge, %if.then64, %if.then61.for.inc_crit_edge, %if.then54, %if.then50.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0160, 1
  %47 = ptrtoint ptr %nr_files to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %nr_files, align 8
  %conv = sext i16 %48 to i32
  %cmp = icmp slt i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body100_crit_edge

for.inc.do.body100_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body100

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

do.body100:                                       ; preds = %for.inc.do.body100_crit_edge, %do.end6.do.body100_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %49 = load i32, ptr @afs_debug, align 4
  %and101 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %do.body100.do.end121_crit_edge, label %do.end112, !prof !482

do.body100.do.end121_crit_edge:                   ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end121

do.end112:                                        ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #17
  %50 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i157 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i157 to ptr
  %task115 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task115 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task115, align 8
  %comm116 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 101
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %comm116, ptr noundef nonnull @.str.125) #18
  br label %do.end121

do.end121:                                        ; preds = %do.end112, %do.body100.do.end121_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_abort_to_error(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_vnode_commit_status(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_iget(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_cache_permit(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fs_fetch_status(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @yfs_fs_fetch_status(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @afs_check_validity(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_silly_iput(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_do_sync_operation(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fs_make_dir(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @yfs_fs_make_dir(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_create_success(ptr noundef %op) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !482

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 14
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef %comm, ptr noundef nonnull @.str.191, i32 noundef %6) #18
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %ctime = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 11
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  %mtime_client = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 2, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %ctime, ptr %mtime_client, i32 16)
  tail call void @afs_vnode_commit_status(ptr noundef %op, ptr noundef %file) #15
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 8
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %8 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %error.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end5.afs_update_dentry_version.exit_crit_edge

do.end5.afs_update_dentry_version.exit_crit_edge: ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_update_dentry_version.exit

if.then.i:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry, align 8
  %data_version.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 2, i32 0, i32 1
  %12 = ptrtoint ptr %data_version.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %data_version.i, align 8
  %conv.i = trunc i64 %13 to i32
  %14 = inttoptr i32 %conv.i to ptr
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 11
  %15 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %d_fsdata.i, align 4
  br label %afs_update_dentry_version.exit

afs_update_dentry_version.exit:                   ; preds = %if.then.i, %do.end5.afs_update_dentry_version.exit_crit_edge
  %arrayidx.i = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %16 = load i32, ptr @afs_debug, align 4
  %and.i18 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %tobool.not.i19 = icmp eq i32 %and.i18, 0
  br i1 %tobool.not.i19, label %afs_update_dentry_version.exit.do.body7.i_crit_edge, label %do.end.i, !prof !482

afs_update_dentry_version.exit.do.body7.i_crit_edge: ; preds = %afs_update_dentry_version.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body7.i

do.end.i:                                         ; preds = %afs_update_dentry_version.exit
  call void @__sanitizer_cov_trace_pc() #17
  %17 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 101
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm.i, ptr noundef nonnull @.str.192) #18
  br label %do.body7.i

do.body7.i:                                       ; preds = %do.end.i, %afs_update_dentry_version.exit.do.body7.i_crit_edge
  %21 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %error.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp.not.i = icmp eq i16 %22, 0
  br i1 %cmp.not.i, label %do.end50.i, label %do.end20.i, !prof !482

do.end20.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #18
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #18
  %23 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %error.i, align 2
  %conv33.i = sext i16 %24 to i32
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %conv33.i, i32 noundef 0) #18
  %25 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %error.i, align 2
  %conv40.i = sext i16 %26 to i32
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv40.i, i32 noundef 0) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1270, 0\0A.popsection", ""() #15, !srcloc !521
  unreachable

do.end50.i:                                       ; preds = %do.body7.i
  %call51.i = tail call ptr @afs_iget(ptr noundef %op, ptr noundef %arrayidx.i) #15
  %cmp.i.i = icmp ugt ptr %call51.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then53.i, label %if.end57.i

if.then53.i:                                      ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %call51.i to i32
  %conv55.i = trunc i32 %27 to i16
  %28 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv55.i, ptr %error.i, align 2
  br label %afs_vnode_new_inode.exit

if.end57.i:                                       ; preds = %do.end50.i
  %flags.i = getelementptr inbounds %struct.afs_vnode, ptr %call51.i, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags.i) #15
  %29 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %error.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool60.not.i = icmp eq i16 %30, 0
  br i1 %tobool60.not.i, label %if.then61.i, label %if.end57.i.if.end62.i_crit_edge

if.end57.i.if.end62.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62.i

if.then61.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #17
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %31 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %key.i, align 4
  %cb_break.i = getelementptr inbounds %struct.afs_vnode, ptr %call51.i, i32 0, i32 28
  %33 = ptrtoint ptr %cb_break.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cb_break.i, align 4
  %scb.i = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 2
  tail call void @afs_cache_permit(ptr noundef %call51.i, ptr noundef %32, i32 noundef %34, ptr noundef %scb.i) #15
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then61.i, %if.end57.i.if.end62.i_crit_edge
  %35 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dentry, align 8
  tail call void @d_instantiate(ptr noundef %36, ptr noundef %call51.i) #15
  br label %afs_vnode_new_inode.exit

afs_vnode_new_inode.exit:                         ; preds = %if.end62.i, %if.then53.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_create_edit_dir(ptr noundef %op) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !482

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef %comm, ptr noundef nonnull @.str.201, i32 noundef %8) #18
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %validate_lock = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 8
  tail call void @down_write(ptr noundef %validate_lock) #15
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %do.end8.if.end13_crit_edge, label %land.lhs.true

do.end8.if.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

land.lhs.true:                                    ; preds = %do.end8
  %data_version = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %data_version to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %data_version, align 8
  %dv_before = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 3
  %14 = ptrtoint ptr %dv_before to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dv_before, align 8
  %dv_delta = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 5
  %16 = ptrtoint ptr %dv_delta to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dv_delta, align 4
  %conv = zext i8 %17 to i64
  %add = add i64 %15, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %add)
  %cmp = icmp eq i64 %13, %add
  br i1 %cmp, label %if.then12, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 8
  %18 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dentry, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 4
  %fid = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1
  %20 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  tail call void @afs_edit_dir_add(ptr noundef %1, ptr noundef %d_name, ptr noundef %fid, i32 noundef %22) #15
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.lhs.true.if.end13_crit_edge, %do.end8.if.end13_crit_edge
  tail call void @up_write(ptr noundef %validate_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_create_put(ptr nocapture noundef readonly %op) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !482

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 14
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef %comm, ptr noundef nonnull @.str.202, i32 noundef %6) #18
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %error = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %error, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool6.not = icmp eq i16 %8, 0
  br i1 %tobool6.not, label %do.end5.if.end8_crit_edge, label %if.then7

do.end5.if.end8_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 8
  %9 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dentry, align 8
  tail call void @d_drop(ptr noundef %10) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end5.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_edit_dir_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fs_remove_dir(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @yfs_fs_remove_dir(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_rmdir_success(ptr noundef %op) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !482

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 14
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef %comm, ptr noundef nonnull @.str.205, i32 noundef %6) #18
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %ctime = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 11
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  %mtime_client = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 2, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %ctime, ptr %mtime_client, i32 16)
  tail call void @afs_vnode_commit_status(ptr noundef %op, ptr noundef %file) #15
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %8 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %error.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end5.afs_update_dentry_version.exit_crit_edge

do.end5.afs_update_dentry_version.exit_crit_edge: ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_update_dentry_version.exit

if.then.i:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 8
  %10 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry, align 8
  %data_version.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 2, i32 0, i32 1
  %12 = ptrtoint ptr %data_version.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %data_version.i, align 8
  %conv.i = trunc i64 %13 to i32
  %14 = inttoptr i32 %conv.i to ptr
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 11
  %15 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %d_fsdata.i, align 4
  br label %afs_update_dentry_version.exit

afs_update_dentry_version.exit:                   ; preds = %if.then.i, %do.end5.afs_update_dentry_version.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_rmdir_edit_dir(ptr nocapture noundef readonly %op) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !482

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef %comm, ptr noundef nonnull @.str.206, i32 noundef %8) #18
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 8
  %9 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dentry, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.not.i = icmp eq ptr %12, null
  br i1 %cmp.i.not.i, label %do.end6.afs_dir_remove_subdir.exit_crit_edge, label %if.then.i

do.end6.afs_dir_remove_subdir.exit_crit_edge:     ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_dir_remove_subdir.exit

if.then.i:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @clear_nlink(ptr noundef nonnull %12) #15
  %flags.i = getelementptr inbounds %struct.afs_vnode, ptr %12, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags.i) #15
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #15
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags.i) #15
  br label %afs_dir_remove_subdir.exit

afs_dir_remove_subdir.exit:                       ; preds = %if.then.i, %do.end6.afs_dir_remove_subdir.exit_crit_edge
  %validate_lock = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 8
  tail call void @down_write(ptr noundef %validate_lock) #15
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  br i1 %tobool8.not, label %afs_dir_remove_subdir.exit.if.end12_crit_edge, label %land.lhs.true

afs_dir_remove_subdir.exit.if.end12_crit_edge:    ; preds = %afs_dir_remove_subdir.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

land.lhs.true:                                    ; preds = %afs_dir_remove_subdir.exit
  %data_version = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %data_version to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %data_version, align 8
  %dv_before = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 3
  %18 = ptrtoint ptr %dv_before to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dv_before, align 8
  %dv_delta = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 5
  %20 = ptrtoint ptr %dv_delta to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dv_delta, align 4
  %conv = zext i8 %21 to i64
  %add = add i64 %19, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %add)
  %cmp = icmp eq i64 %17, %add
  br i1 %cmp, label %if.then10, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dentry, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 4
  tail call void @afs_edit_dir_remove(ptr noundef %1, ptr noundef %d_name, i32 noundef 6) #15
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %land.lhs.true.if.end12_crit_edge, %afs_dir_remove_subdir.exit.if.end12_crit_edge
  tail call void @up_write(ptr noundef %validate_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_rmdir_put(ptr nocapture noundef readonly %op) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !482

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 14
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef %comm, ptr noundef nonnull @.str.207, i32 noundef %6) #18
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %arrayidx = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 8
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %do.end5.if.end11_crit_edge, label %if.then7

do.end5.if.end11_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  %rmdir_lock = getelementptr inbounds %struct.afs_vnode, ptr %8, i32 0, i32 9
  tail call void @up_write(ptr noundef %rmdir_lock) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %do.end5.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_edit_dir_remove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_sillyrename(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__d_drop(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fs_remove_file(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @yfs_fs_remove_file(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_unlink_success(ptr noundef %op) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !482

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 14
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef %comm, ptr noundef nonnull @.str.209, i32 noundef %6) #18
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %ctime = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 11
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  %mtime_client = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 2, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %ctime, ptr %mtime_client, i32 16)
  %dv_before.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 3
  %8 = ptrtoint ptr %dv_before.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dv_before.i, align 8
  %dv_delta.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 5
  %10 = ptrtoint ptr %dv_delta.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dv_delta.i, align 4
  %conv.i = zext i8 %11 to i64
  %add.i = add i64 %9, %conv.i
  %data_version.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 2, i32 0, i32 1
  %12 = ptrtoint ptr %data_version.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %data_version.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %13)
  %cmp.not.i = icmp eq i64 %add.i, %13
  br i1 %cmp.not.i, label %do.end5.afs_check_dir_conflict.exit_crit_edge, label %if.then.i

do.end5.afs_check_dir_conflict.exit_crit_edge:    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_check_dir_conflict.exit

if.then.i:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %15, 4096
  store i32 %or.i, ptr %flags.i, align 8
  br label %afs_check_dir_conflict.exit

afs_check_dir_conflict.exit:                      ; preds = %if.then.i, %do.end5.afs_check_dir_conflict.exit_crit_edge
  tail call void @afs_vnode_commit_status(ptr noundef %op, ptr noundef %file) #15
  %arrayidx11 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1
  tail call void @afs_vnode_commit_status(ptr noundef %op, ptr noundef %arrayidx11) #15
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %16 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %error.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i = icmp eq i16 %17, 0
  br i1 %tobool.not.i, label %afs_update_dentry_version.exit, label %afs_check_dir_conflict.exit.afs_dir_remove_link.exit_crit_edge

afs_check_dir_conflict.exit.afs_dir_remove_link.exit_crit_edge: ; preds = %afs_check_dir_conflict.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_dir_remove_link.exit

afs_update_dentry_version.exit:                   ; preds = %afs_check_dir_conflict.exit
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 8
  %18 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dentry, align 8
  %20 = ptrtoint ptr %data_version.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %data_version.i, align 8
  %conv.i27 = trunc i64 %21 to i32
  %22 = inttoptr i32 %conv.i27 to ptr
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 11
  %23 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %d_fsdata.i, align 4
  %24 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %.pr = load i16, ptr %error.i, align 2
  %25 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %file, align 8
  %27 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx11, align 8
  %29 = load ptr, ptr %dentry, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %cmp.not.i30 = icmp eq i16 %.pr, 0
  br i1 %cmp.not.i30, label %lor.lhs.false.i, label %afs_update_dentry_version.exit.afs_dir_remove_link.exit_crit_edge

afs_update_dentry_version.exit.afs_dir_remove_link.exit_crit_edge: ; preds = %afs_update_dentry_version.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_dir_remove_link.exit

lor.lhs.false.i:                                  ; preds = %afs_update_dentry_version.exit
  %have_status.i = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 2, i32 2
  %30 = ptrtoint ptr %have_status.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %have_status.i, align 8, !range !487
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i31 = icmp eq i8 %31, 0
  br i1 %tobool.not.i31, label %lor.lhs.false.i.if.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %have_error.i = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 2, i32 4
  %32 = ptrtoint ptr %have_error.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %have_error.i, align 2, !range !487
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool13.not.i = icmp eq i8 %33, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.afs_dir_remove_link.exit_crit_edge

land.lhs.true.i.afs_dir_remove_link.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_dir_remove_link.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 5
  %34 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.not.i = icmp eq ptr %35, null
  br i1 %cmp.i.not.i, label %if.end16.i, label %if.end.i.afs_dir_remove_link.exit_crit_edge

if.end.i.afs_dir_remove_link.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_dir_remove_link.exit

if.end16.i:                                       ; preds = %if.end.i
  %flags.i32 = getelementptr inbounds %struct.afs_vnode, ptr %28, i32 0, i32 13
  %36 = ptrtoint ptr %flags.i32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags.i32, align 4
  %38 = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool18.not.i = icmp eq i32 %38, 0
  br i1 %tobool18.not.i, label %if.else.i, label %if.end16.i.do.body56.i_crit_edge

if.end16.i.do.body56.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body56.i

if.else.i:                                        ; preds = %if.end16.i
  %flags20.i = getelementptr inbounds %struct.afs_vnode, ptr %26, i32 0, i32 13
  %39 = ptrtoint ptr %flags20.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags20.i, align 4
  %41 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool22.not.i = icmp eq i32 %41, 0
  br i1 %tobool22.not.i, label %if.else31.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.else.i
  %cb_lock.i = getelementptr inbounds %struct.afs_vnode, ptr %28, i32 0, i32 29
  %lock.i.i = getelementptr inbounds %struct.afs_vnode, ptr %28, i32 0, i32 29, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #15
  %42 = ptrtoint ptr %cb_lock.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cb_lock.i, align 4
  %inc.i.i.i.i.i = add i32 %43, 1
  store i32 %inc.i.i.i.i.i, ptr %cb_lock.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !522
  %dep_map.i.i.i.i = getelementptr inbounds %struct.afs_vnode, ptr %28, i32 0, i32 29, i32 0, i32 0, i32 1
  %44 = tail call ptr @llvm.returnaddress(i32 0) #15
  %45 = ptrtoint ptr %44 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %45) #15
  tail call void @drop_nlink(ptr noundef %28) #15
  %46 = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 12
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp25.i = icmp eq i32 %48, 0
  br i1 %cmp25.i, label %if.then27.i, label %if.then23.i.if.end29.i_crit_edge

if.then23.i.if.end29.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i

if.then27.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags.i32) #15
  tail call void @__afs_break_callback(ptr noundef %28, i32 noundef 6) #15
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %if.then23.i.if.end29.i_crit_edge
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %45) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !523
  %49 = ptrtoint ptr %cb_lock.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cb_lock.i, align 4
  %inc.i.i.i.i = add i32 %50, 1
  store i32 %inc.i.i.i.i, ptr %cb_lock.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #15
  br label %do.body56.i

if.else31.i:                                      ; preds = %if.else.i
  tail call void @afs_break_callback(ptr noundef %28, i32 noundef 6) #15
  %51 = ptrtoint ptr %flags.i32 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %flags.i32, align 4
  %53 = and i32 %52, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool34.not.i = icmp eq i32 %53, 0
  br i1 %tobool34.not.i, label %if.else31.i.if.end46.i_crit_edge, label %do.body.i

if.else31.i.if.end46.i_crit_edge:                 ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46.i

do.body.i:                                        ; preds = %if.else31.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %54 = load i32, ptr @afs_debug, align 4
  %and.i33 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33)
  %tobool36.not.i = icmp eq i32 %and.i33, 0
  br i1 %tobool36.not.i, label %do.body.i.if.end46.i_crit_edge, label %do.end.i, !prof !482

do.body.i.if.end46.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %55 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 101
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, ptr noundef %comm.i) #18
  br label %if.end46.i

if.end46.i:                                       ; preds = %do.end.i, %do.body.i.if.end46.i_crit_edge, %if.else31.i.if.end46.i_crit_edge
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %59 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %key.i, align 4
  %call47.i = tail call i32 @afs_validate(ptr noundef %28, ptr noundef %60) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %call47.i)
  %cmp48.not.i = icmp eq i32 %call47.i, -116
  br i1 %cmp48.not.i, label %if.end46.i.do.body56.i_crit_edge, label %if.then50.i

if.end46.i.do.body56.i_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body56.i

if.then50.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv51.i = trunc i32 %call47.i to i16
  %61 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv51.i, ptr %error.i, align 2
  br label %do.body56.i

do.body56.i:                                      ; preds = %if.then50.i, %if.end46.i.do.body56.i_crit_edge, %if.end29.i, %if.end16.i.do.body56.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %62 = load i32, ptr @afs_debug, align 4
  %and57.i = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %do.body56.i.afs_dir_remove_link.exit_crit_edge, label %do.end68.i, !prof !482

do.body56.i.afs_dir_remove_link.exit_crit_edge:   ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_dir_remove_link.exit

do.end68.i:                                       ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #17
  %63 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i108.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i108.i to ptr
  %task71.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task71.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task71.i, align 8
  %comm72.i = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 101
  %67 = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 12
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %70 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %error.i, align 2
  %conv76.i = sext i16 %71 to i32
  %call77.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, ptr noundef %comm72.i, i32 noundef %69, i32 noundef %conv76.i) #18
  br label %afs_dir_remove_link.exit

afs_dir_remove_link.exit:                         ; preds = %do.end68.i, %do.body56.i.afs_dir_remove_link.exit_crit_edge, %if.end.i.afs_dir_remove_link.exit_crit_edge, %land.lhs.true.i.afs_dir_remove_link.exit_crit_edge, %afs_update_dentry_version.exit.afs_dir_remove_link.exit_crit_edge, %afs_check_dir_conflict.exit.afs_dir_remove_link.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_unlink_edit_dir(ptr nocapture noundef readonly %op) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !482

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = tail call i32 @llvm.read_register.i32(metadata !472) #15
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
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef %comm, ptr noundef nonnull @.str.215, i32 noundef %8) #18
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %validate_lock = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 8
  tail call void @down_write(ptr noundef %validate_lock) #15
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %do.end6.if.end11_crit_edge, label %land.lhs.true

do.end6.if.end11_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

land.lhs.true:                                    ; preds = %do.end6
  %data_version = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %data_version to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %data_version, align 8
  %dv_before = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 3
  %14 = ptrtoint ptr %dv_before to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dv_before, align 8
  %dv_delta = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 5
  %16 = ptrtoint ptr %dv_delta to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dv_delta, align 4
  %conv = zext i8 %17 to i64
  %add = add i64 %15, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %add)
  %cmp = icmp eq i64 %13, %add
  br i1 %cmp, label %if.then10, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 8
  %18 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dentry, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 4
  tail call void @afs_edit_dir_remove(ptr noundef %1, ptr noundef %d_name, i32 noundef 10) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true.if.end11_crit_edge, %do.end6.if.end11_crit_edge
  tail call void @up_write(ptr noundef %validate_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_unlink_put(ptr nocapture noundef readonly %op) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !482

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 14
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef %comm, ptr noundef nonnull @.str.216, i32 noundef %6) #18
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %7 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 8, !range !487
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %do.end5.if.end14_crit_edge, label %land.lhs.true

do.end5.if.end14_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

land.lhs.true:                                    ; preds = %do.end5
  %error = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %10 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %error, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %cmp = icmp sgt i16 %11, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %11)
  %cmp11.not = icmp eq i16 %11, -2
  %or.cond = or i1 %cmp, %cmp11.not
  br i1 %or.cond, label %land.lhs.true.if.end14_crit_edge, label %if.then13

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 8
  %12 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dentry, align 8
  tail call void @d_rehash(ptr noundef %13) #15
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %land.lhs.true.if.end14_crit_edge, %do.end5.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__afs_break_callback(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_rehash(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fs_create_file(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @yfs_fs_create_file(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fs_link(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @yfs_fs_link(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_link_success(ptr noundef %op) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  %arrayidx2 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !482

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 14
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef %comm, ptr noundef nonnull @.str.224, i32 noundef %6) #18
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %ctime = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 11
  %mtime_client = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 2, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %ctime, ptr %mtime_client, i32 16)
  tail call void @afs_vnode_commit_status(ptr noundef %op, ptr noundef %file) #15
  tail call void @afs_vnode_commit_status(ptr noundef %op, ptr noundef %arrayidx2) #15
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 8
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %8 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %error.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end8.afs_update_dentry_version.exit_crit_edge

do.end8.afs_update_dentry_version.exit_crit_edge: ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_update_dentry_version.exit

if.then.i:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry, align 8
  %data_version.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 2, i32 0, i32 1
  %12 = ptrtoint ptr %data_version.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %data_version.i, align 8
  %conv.i = trunc i64 %13 to i32
  %14 = inttoptr i32 %conv.i to ptr
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 11
  %15 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %d_fsdata.i, align 4
  br label %afs_update_dentry_version.exit

afs_update_dentry_version.exit:                   ; preds = %if.then.i, %do.end8.afs_update_dentry_version.exit_crit_edge
  %dentry_2 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 9
  %16 = ptrtoint ptr %dentry_2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dentry_2, align 4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_parent, align 8
  %20 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dentry, align 8
  %d_parent10 = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %d_parent10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_parent10, align 8
  %cmp = icmp eq ptr %19, %23
  br i1 %cmp, label %if.then11, label %afs_update_dentry_version.exit.if.end13_crit_edge

afs_update_dentry_version.exit.if.end13_crit_edge: ; preds = %afs_update_dentry_version.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then11:                                        ; preds = %afs_update_dentry_version.exit
  %24 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %error.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.i35 = icmp eq i16 %25, 0
  br i1 %tobool.not.i35, label %if.then.i39, label %if.then11.if.end13_crit_edge

if.then11.if.end13_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then.i39:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  %data_version.i36 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 2, i32 0, i32 1
  %26 = ptrtoint ptr %data_version.i36 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %data_version.i36, align 8
  %conv.i37 = trunc i64 %27 to i32
  %28 = inttoptr i32 %conv.i37 to ptr
  %d_fsdata.i38 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 11
  %29 = ptrtoint ptr %d_fsdata.i38 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %d_fsdata.i38, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then.i39, %if.then11.if.end13_crit_edge, %afs_update_dentry_version.exit.if.end13_crit_edge
  %30 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx2, align 8
  tail call void @ihold(ptr noundef %31) #15
  %32 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dentry, align 8
  %34 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx2, align 8
  tail call void @d_instantiate(ptr noundef %33, ptr noundef %35) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_link_put(ptr nocapture noundef readonly %op) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !482

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 14
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef %comm, ptr noundef nonnull @.str.225, i32 noundef %6) #18
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %error = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %error, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool6.not = icmp eq i16 %8, 0
  br i1 %tobool6.not, label %do.end5.if.end8_crit_edge, label %if.then7

do.end5.if.end8_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 8
  %9 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dentry, align 8
  tail call void @d_drop(ptr noundef %10) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end5.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fs_symlink(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @yfs_fs_symlink(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fs_rename(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @yfs_fs_rename(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_rename_success(ptr noundef %op) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !482

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 14
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef %comm, ptr noundef nonnull @.str.232, i32 noundef %6) #18
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %ctime = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 11
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  %mtime_client = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 2, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %ctime, ptr %mtime_client, i32 16)
  %arrayidx7 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1
  %dv_before.i = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 3
  %8 = ptrtoint ptr %dv_before.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dv_before.i, align 8
  %dv_delta.i = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 5
  %10 = ptrtoint ptr %dv_delta.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dv_delta.i, align 4
  %conv.i = zext i8 %11 to i64
  %add.i = add i64 %9, %conv.i
  %data_version.i = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 2, i32 0, i32 1
  %12 = ptrtoint ptr %data_version.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %data_version.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %13)
  %cmp.not.i = icmp eq i64 %add.i, %13
  br i1 %cmp.not.i, label %do.end5.afs_check_dir_conflict.exit_crit_edge, label %if.then.i

do.end5.afs_check_dir_conflict.exit_crit_edge:    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_check_dir_conflict.exit

if.then.i:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %15, 4096
  store i32 %or.i, ptr %flags.i, align 8
  br label %afs_check_dir_conflict.exit

afs_check_dir_conflict.exit:                      ; preds = %if.then.i, %do.end5.afs_check_dir_conflict.exit_crit_edge
  tail call void @afs_vnode_commit_status(ptr noundef %op, ptr noundef %file) #15
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx7, align 8
  %18 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %file, align 8
  %cmp.not = icmp eq ptr %17, %19
  br i1 %cmp.not, label %afs_check_dir_conflict.exit.if.end24_crit_edge, label %if.then15

afs_check_dir_conflict.exit.if.end24_crit_edge:   ; preds = %afs_check_dir_conflict.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then15:                                        ; preds = %afs_check_dir_conflict.exit
  call void @__sanitizer_cov_trace_pc() #17
  %mtime_client21 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 2, i32 0, i32 2
  %20 = call ptr @memcpy(ptr %ctime, ptr %mtime_client21, i32 16)
  tail call void @afs_vnode_commit_status(ptr noundef %op, ptr noundef %arrayidx7) #15
  br label %if.end24

if.end24:                                         ; preds = %if.then15, %afs_check_dir_conflict.exit.if.end24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_rename_edit_dir(ptr nocapture noundef %op) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  %arrayidx2 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 8
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 8
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 8
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %dentry_2 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 9
  %8 = ptrtoint ptr %dentry_2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dentry_2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %10 = load i32, ptr @afs_debug, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.end, !prof !482

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end13

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %11 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 14
  %15 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug_id, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef %comm, ptr noundef nonnull @.str.233, i32 noundef %16) #18
  br label %do.end13

do.end13:                                         ; preds = %do.end, %entry.do.end13_crit_edge
  %17 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %do.end13.if.end18_crit_edge, label %if.then15

do.end13.if.end18_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then15:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @d_rehash(ptr noundef nonnull %19) #15
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %do.end13.if.end18_crit_edge
  %validate_lock = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 8
  tail call void @down_write(ptr noundef %validate_lock) #15
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 13
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags, align 4
  %23 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool20.not = icmp eq i32 %23, 0
  br i1 %tobool20.not, label %if.end18.if.end23_crit_edge, label %land.lhs.true

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end18
  %data_version = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %data_version to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %data_version, align 8
  %dv_before = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 3
  %26 = ptrtoint ptr %dv_before to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %dv_before, align 8
  %dv_delta = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 5
  %28 = ptrtoint ptr %dv_delta to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dv_delta, align 4
  %conv = zext i8 %29 to i64
  %add = add i64 %27, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %add)
  %cmp = icmp eq i64 %25, %add
  br i1 %cmp, label %if.then22, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %d_name = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 4
  tail call void @afs_edit_dir_remove(ptr noundef %1, ptr noundef %d_name, i32 noundef 3) #15
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %land.lhs.true.if.end23_crit_edge, %if.end18.if.end23_crit_edge
  %cmp24.not = icmp eq ptr %3, %1
  br i1 %cmp24.not, label %if.end23.if.end29_crit_edge, label %if.then26

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @up_write(ptr noundef %validate_lock) #15
  %validate_lock28 = getelementptr inbounds %struct.afs_vnode, ptr %3, i32 0, i32 8
  tail call void @down_write(ptr noundef %validate_lock28) #15
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end23.if.end29_crit_edge
  %flags30 = getelementptr inbounds %struct.afs_vnode, ptr %3, i32 0, i32 13
  %30 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags30, align 4
  %32 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool32.not = icmp eq i32 %32, 0
  br i1 %tobool32.not, label %if.end29.if.end48_crit_edge, label %land.lhs.true33

if.end29.if.end48_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

land.lhs.true33:                                  ; preds = %if.end29
  %data_version35 = getelementptr inbounds %struct.afs_vnode, ptr %3, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %data_version35 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %data_version35, align 8
  %dv_before36 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 3
  %35 = ptrtoint ptr %dv_before36 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %dv_before36, align 8
  %dv_delta37 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 5
  %37 = ptrtoint ptr %dv_delta37 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dv_delta37, align 4
  %conv38 = zext i8 %38 to i64
  %add39 = add i64 %36, %conv38
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %add39)
  %cmp40 = icmp eq i64 %34, %add39
  br i1 %cmp40, label %if.then42, label %land.lhs.true33.if.end48_crit_edge

land.lhs.true33.if.end48_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.then42:                                        ; preds = %land.lhs.true33
  %new_negative = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %new_negative to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %new_negative, align 8, !range !487
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool43.not = icmp eq i8 %40, 0
  br i1 %tobool43.not, label %if.then44, label %if.then42.if.end46_crit_edge

if.then42.if.end46_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

if.then44:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  %d_name45 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 4
  tail call void @afs_edit_dir_remove(ptr noundef %3, ptr noundef %d_name45, i32 noundef 4) #15
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.then42.if.end46_crit_edge
  %d_name47 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 4
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %7, i32 0, i32 2
  tail call void @afs_edit_dir_add(ptr noundef %3, ptr noundef %d_name47, ptr noundef %fid, i32 noundef 5) #15
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %land.lhs.true33.if.end48_crit_edge, %if.end29.if.end48_crit_edge
  %d_inode.i110 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %41 = ptrtoint ptr %d_inode.i110 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %d_inode.i110, align 8
  %tobool50.not = icmp eq ptr %42, null
  br i1 %tobool50.not, label %if.end48.if.end63_crit_edge, label %if.then51

if.end48.if.end63_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

if.then51:                                        ; preds = %if.end48
  %i_lock = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #15
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %42, align 8
  %45 = and i16 %44, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %45)
  %cmp54 = icmp eq i16 %45, 16384
  br i1 %cmp54, label %if.then56, label %if.else

if.then56:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @clear_nlink(ptr noundef nonnull %42) #15
  br label %if.end61

if.else:                                          ; preds = %if.then51
  %46 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 12
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp57.not = icmp eq i32 %48, 0
  br i1 %cmp57.not, label %if.else.if.end61_crit_edge, label %if.then59

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

if.then59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @drop_nlink(ptr noundef nonnull %42) #15
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.else.if.end61_crit_edge, %if.then56
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #15
  br label %if.end63

if.end63:                                         ; preds = %if.end61, %if.end48.if.end63_crit_edge
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %49 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %error.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool.not.i = icmp eq i16 %50, 0
  br i1 %tobool.not.i, label %afs_update_dentry_version.exit, label %if.end63.afs_update_dentry_version.exit117_crit_edge

if.end63.afs_update_dentry_version.exit117_crit_edge: ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_update_dentry_version.exit117

afs_update_dentry_version.exit:                   ; preds = %if.end63
  %51 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dentry, align 8
  %data_version.i = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 2, i32 0, i32 1
  %53 = ptrtoint ptr %data_version.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %data_version.i, align 8
  %conv.i = trunc i64 %54 to i32
  %55 = inttoptr i32 %conv.i to ptr
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %52, i32 0, i32 11
  %56 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %d_fsdata.i, align 4
  %57 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %.pr = load i16, ptr %error.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %tobool.not.i112 = icmp eq i16 %.pr, 0
  br i1 %tobool.not.i112, label %if.then.i116, label %afs_update_dentry_version.exit.afs_update_dentry_version.exit117_crit_edge

afs_update_dentry_version.exit.afs_update_dentry_version.exit117_crit_edge: ; preds = %afs_update_dentry_version.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %afs_update_dentry_version.exit117

if.then.i116:                                     ; preds = %afs_update_dentry_version.exit
  call void @__sanitizer_cov_trace_pc() #17
  %58 = ptrtoint ptr %dentry_2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dentry_2, align 4
  %60 = ptrtoint ptr %data_version.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %data_version.i, align 8
  %conv.i114 = trunc i64 %61 to i32
  %62 = inttoptr i32 %conv.i114 to ptr
  %d_fsdata.i115 = getelementptr inbounds %struct.dentry, ptr %59, i32 0, i32 11
  %63 = ptrtoint ptr %d_fsdata.i115 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %d_fsdata.i115, align 4
  br label %afs_update_dentry_version.exit117

afs_update_dentry_version.exit117:                ; preds = %if.then.i116, %afs_update_dentry_version.exit.afs_update_dentry_version.exit117_crit_edge, %if.end63.afs_update_dentry_version.exit117_crit_edge
  tail call void @d_move(ptr noundef %5, ptr noundef %9) #15
  %validate_lock66 = getelementptr inbounds %struct.afs_vnode, ptr %3, i32 0, i32 8
  tail call void @up_write(ptr noundef %validate_lock66) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_rename_put(ptr nocapture noundef readonly %op) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !482

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !472) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 14
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef %comm, ptr noundef nonnull @.str.234, i32 noundef %6) #18
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %7 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %do.end5.if.end9_crit_edge, label %if.then7

do.end5.if.end9_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @d_rehash(ptr noundef nonnull %9) #15
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.end5.if.end9_crit_edge
  %tmp10 = getelementptr inbounds %struct.anon.165, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %tmp10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tmp10, align 4
  tail call void @dput(ptr noundef %11) #15
  %error = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %12 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %error, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool11.not = icmp eq i16 %13, 0
  br i1 %tobool11.not, label %if.end9.if.end13_crit_edge, label %if.then12

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 8
  %14 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dentry, align 8
  tail call void @d_rehash(ptr noundef %15) #15
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_move(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @folio_detach_private(ptr noundef %folio) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %private.i = getelementptr inbounds %struct.anon.148, ptr %folio, i32 0, i32 4
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private.exit, label %if.then.i.i, !prof !482

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.33) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !489
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %folio_test_private.exit
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %0, align 4
  %and.i.i.i1 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1)
  %tobool.not.i.i2 = icmp eq i32 %and.i.i.i1, 0
  br i1 %tobool.not.i.i2, label %folio_clear_private.exit, label %if.then.i.i3, !prof !482

if.then.i.i3:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.33) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

folio_clear_private.exit:                         ; preds = %if.end
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %folio) #15
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %private.i, align 4
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #15
  %9 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !490

if.then.i.i.i:                                    ; preds = %folio_clear_private.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.35) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !505
  unreachable

do.end5.i.i.i:                                    ; preds = %folio_clear_private.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !506
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #15
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #15, !srcloc !507
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !508
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@folio_detach_private, %if.then.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !502

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %folio, i32 noundef -1, i32 noundef %conv.i.i.i.i) #15
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i, label %folio_put_testzero.exit.i.cleanup_crit_edge

folio_put_testzero.exit.i.cleanup_crit_edge:      ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %folio) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %folio_put_testzero.exit.i.cleanup_crit_edge, %folio_test_private.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 234)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 234)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nobuiltin }
attributes #22 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !71, !72, !74, !75, !77, !78, !79, !81, !82, !84, !85, !87, !89, !91, !92, !94, !95, !96, !97, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !153, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !178, !179, !180, !181, !182, !184, !185, !186, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !220, !221, !223, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !242, !244, !245, !247, !248, !249, !250, !252, !253, !254, !256, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !281, !282, !284, !285, !286, !288, !289, !290, !292, !293, !294, !296, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !330, !331, !332, !334, !336, !337, !338, !339, !341, !342, !343, !345, !346, !347, !348, !349, !350, !351, !352, !354, !355, !356, !358, !359, !360, !362, !363, !364, !365, !367, !369, !370, !371, !373, !374, !375, !377, !378, !379, !381, !382, !383, !385, !387, !388, !389, !391, !392, !393, !394, !396, !397, !398, !400, !401, !402, !404, !405, !406, !408, !409, !410, !412, !413, !415, !417, !418, !419, !420, !422, !423, !425, !427, !428, !429, !431, !432, !433, !435, !436, !437, !438, !440, !441, !443, !445, !446, !447, !448, !450, !452, !453, !454, !456, !457, !458, !460, !461, !462, !464, !465, !466, !467, !469, !470, !471}
!llvm.named.register.sp = !{!472}
!llvm.module.flags = !{!473, !474, !475, !476, !477, !478, !479, !480}
!llvm.ident = !{!481}

!0 = !{ptr @afs_dir_file_operations, !1, !"afs_dir_file_operations", i1 false, i1 false}
!1 = !{!"../fs/afs/dir.c", i32 53, i32 30}
!2 = !{ptr @afs_dir_inode_operations, !3, !"afs_dir_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/afs/dir.c", i32 61, i32 31}
!4 = !{ptr @afs_dir_aops, !5, !"afs_dir_aops", i1 false, i1 false}
!5 = !{!"../fs/afs/dir.c", i32 75, i32 39}
!6 = !{ptr @afs_fs_dentry_operations, !7, !"afs_fs_dentry_operations", i1 false, i1 false}
!7 = !{!"../fs/afs/dir.c", i32 81, i32 32}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/afs/dir.c", i32 1245, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @afs_d_release._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @afs_d_release._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/afs/dir.c", i32 252, i32 2}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @afs_dir_open._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @afs_dir_open._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/afs/dir.c", i32 498, i32 2}
!21 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @afs_dir_iterate._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @afs_dir_iterate._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/afs/dir.c", i32 501, i32 3}
!26 = !{ptr @afs_dir_iterate._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @afs_dir_iterate._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/afs/dir.c", i32 547, i32 2}
!30 = !{ptr @afs_dir_iterate._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @afs_dir_iterate._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/afs/dir.c", i32 277, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @afs_read_dir._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @afs_read_dir._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/afs/dir.c", i32 300, i32 2}
!39 = !{ptr @afs_read_dir._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @afs_read_dir._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @afs_read_dir._entry.18, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../fs/afs/dir.c", i32 386, i32 2}
!43 = !{ptr @afs_read_dir._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/afs/dir.c", i32 125, i32 3}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @afs_dir_read_cleanup._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @afs_dir_read_cleanup._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @afs_dir_read_cleanup._entry.22, !45, !"_entry", i1 false, i1 false}
!51 = !{ptr @afs_dir_read_cleanup._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @afs_dir_read_cleanup._entry.25, !45, !"_entry", i1 false, i1 false}
!54 = !{ptr @afs_dir_read_cleanup._entry_ptr.27, !45, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @afs_dir_read_cleanup._entry.28, !45, !"_entry", i1 false, i1 false}
!57 = !{ptr @afs_dir_read_cleanup._entry_ptr.30, !45, !"_entry_ptr", i1 false, i1 false}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!60 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!64 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/mm.h", i32 717, i32 2}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../include/linux/xarray.h", i32 1182, i32 9}
!70 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!74 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../include/trace/events/afs.h", i32 1196, i32 1}
!77 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!81 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!84 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../include/trace/events/afs.h", i32 1325, i32 1}
!91 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/afs/dir.c", i32 154, i32 4}
!94 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @afs_dir_check_folio._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @afs_dir_check_folio._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../include/trace/events/afs.h", i32 998, i32 1}
!99 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/afs/dir.c", i32 192, i32 2}
!102 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @afs_dir_dump._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @afs_dir_dump._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/afs/dir.c", i32 195, i32 2}
!107 = !{ptr @afs_dir_dump._entry.48, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @afs_dir_dump._entry_ptr.50, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/afs/dir.c", i32 208, i32 4}
!111 = !{ptr @afs_dir_dump._entry.51, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @afs_dir_dump._entry_ptr.53, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/afs/dir.c", i32 403, i32 2}
!115 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @afs_dir_iterate_block._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @afs_dir_iterate_block._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/afs/dir.c", i32 415, i32 4}
!120 = !{ptr @afs_dir_iterate_block._entry.56, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @afs_dir_iterate_block._entry_ptr.58, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/afs/dir.c", i32 430, i32 4}
!124 = !{ptr @afs_dir_iterate_block._entry.59, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @afs_dir_iterate_block._entry_ptr.61, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/afs/dir.c", i32 436, i32 3}
!128 = !{ptr @afs_dir_iterate_block._entry.62, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @afs_dir_iterate_block._entry_ptr.64, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/afs/dir.c", i32 444, i32 4}
!134 = !{ptr @afs_dir_iterate_block._entry.67, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @afs_dir_iterate_block._entry_ptr.69, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/afs/dir.c", i32 456, i32 5}
!138 = !{ptr @afs_dir_iterate_block._entry.70, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @afs_dir_iterate_block._entry_ptr.72, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.74, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/afs/dir.c", i32 474, i32 4}
!142 = !{ptr @afs_dir_iterate_block._entry.73, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @afs_dir_iterate_block._entry_ptr.75, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.77, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/afs/dir.c", i32 481, i32 2}
!146 = !{ptr @afs_dir_iterate_block._entry.76, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @afs_dir_iterate_block._entry_ptr.78, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/afs/dir.c", i32 642, i32 2}
!150 = !{ptr @.str.80, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @afs_lookup_filldir._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @afs_lookup_filldir._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @afs_lookup_filldir._entry.81, !154, !"_entry", i1 false, i1 false}
!154 = !{!"../fs/afs/dir.c", i32 666, i32 2}
!155 = !{ptr @afs_lookup_filldir._entry_ptr.82, !154, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.83, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/afs/dir.c", i32 573, i32 2}
!158 = !{ptr @afs_lookup_one_filldir._entry, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @afs_lookup_one_filldir._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.85, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/afs/dir.c", i32 583, i32 3}
!162 = !{ptr @afs_lookup_one_filldir._entry.84, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @afs_lookup_one_filldir._entry_ptr.86, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.88, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/afs/dir.c", i32 591, i32 2}
!166 = !{ptr @afs_lookup_one_filldir._entry.87, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @afs_lookup_one_filldir._entry_ptr.89, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.90, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/afs/dir.c", i32 980, i32 2}
!170 = !{ptr @.str.91, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @afs_lookup._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @afs_lookup._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @afs_lookup._entry.92, !174, !"_entry", i1 false, i1 false}
!174 = !{!"../fs/afs/dir.c", i32 983, i32 2}
!175 = !{ptr @afs_lookup._entry_ptr.93, !174, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @afs_lookup._entry.94, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @afs_lookup._entry_ptr.95, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @afs_lookup._entry.96, !174, !"_entry", i1 false, i1 false}
!179 = !{ptr @afs_lookup._entry_ptr.97, !174, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @afs_lookup._entry.98, !174, !"_entry", i1 false, i1 false}
!181 = !{ptr @afs_lookup._entry_ptr.99, !174, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.101, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/afs/dir.c", i32 986, i32 3}
!184 = !{ptr @afs_lookup._entry.100, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @afs_lookup._entry_ptr.102, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @afs_lookup._entry.103, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../fs/afs/dir.c", i32 991, i32 3}
!188 = !{ptr @afs_lookup._entry_ptr.104, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.106, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/afs/dir.c", i32 997, i32 3}
!191 = !{ptr @afs_lookup._entry.105, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @afs_lookup._entry_ptr.107, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.109, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/afs/dir.c", i32 1004, i32 3}
!195 = !{ptr @afs_lookup._entry.108, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @afs_lookup._entry_ptr.110, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.112, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/afs/dir.c", i32 1024, i32 2}
!199 = !{ptr @afs_lookup._entry.111, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @afs_lookup._entry_ptr.113, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.115, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/afs/dir.c", i32 1032, i32 2}
!203 = !{ptr @afs_lookup._entry.114, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @afs_lookup._entry_ptr.116, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.117, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/afs/dir.c", i32 923, i32 2}
!207 = !{ptr @afs_lookup_atsys._entry, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @afs_lookup_atsys._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.118, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/afs/dir.c", i32 793, i32 2}
!211 = !{ptr @.str.119, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @afs_do_lookup._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @afs_do_lookup._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.121, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../fs/afs/dir.c", i32 840, i32 2}
!216 = !{ptr @afs_do_lookup._entry.120, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @afs_do_lookup._entry_ptr.122, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @afs_do_lookup._entry.123, !219, !"_entry", i1 false, i1 false}
!219 = !{!"../fs/afs/dir.c", i32 907, i32 2}
!220 = !{ptr @afs_do_lookup._entry_ptr.124, !219, !"_entry_ptr", i1 false, i1 false}
!221 = distinct !{null, !222, !"__warned", i1 false, i1 false}
!222 = !{!"../fs/afs/dir.c", i32 761, i32 10}
!223 = !{ptr @afs_inline_bulk_status_operation, !224, !"afs_inline_bulk_status_operation", i1 false, i1 false}
!224 = !{!"../fs/afs/dir.c", i32 732, i32 39}
!225 = !{ptr @.str.125, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../fs/afs/dir.c", i32 682, i32 2}
!227 = !{ptr @afs_do_lookup_success._entry, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @afs_do_lookup_success._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.127, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/afs/dir.c", i32 707, i32 3}
!231 = !{ptr @afs_do_lookup_success._entry.126, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @afs_do_lookup_success._entry_ptr.128, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.130, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/afs/dir.c", i32 723, i32 4}
!235 = !{ptr @afs_do_lookup_success._entry.129, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @afs_do_lookup_success._entry_ptr.131, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @afs_do_lookup_success._entry.132, !238, !"_entry", i1 false, i1 false}
!238 = !{!"../fs/afs/dir.c", i32 729, i32 2}
!239 = !{ptr @afs_do_lookup_success._entry_ptr.133, !238, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @afs_lookup_fetch_status_operation, !241, !"afs_lookup_fetch_status_operation", i1 false, i1 false}
!241 = !{!"../fs/afs/dir.c", i32 738, i32 39}
!242 = distinct !{null, !243, !"__already_done", i1 false, i1 false}
!243 = !{!"../include/trace/events/afs.h", i32 1080, i32 1}
!244 = distinct !{null, !243, !"__warned", i1 false, i1 false}
!245 = !{ptr @.str.134, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../fs/afs/dir.c", i32 1097, i32 3}
!247 = !{ptr @.str.135, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @afs_d_revalidate._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @afs_d_revalidate._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.137, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../fs/afs/dir.c", i32 1101, i32 3}
!252 = !{ptr @afs_d_revalidate._entry.136, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @afs_d_revalidate._entry_ptr.138, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.140, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../fs/afs/dir.c", i32 1116, i32 3}
!256 = !{ptr @afs_d_revalidate._entry.139, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @afs_d_revalidate._entry_ptr.141, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.143, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../fs/afs/dir.c", i32 1134, i32 2}
!260 = !{ptr @afs_d_revalidate._entry.142, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @afs_d_revalidate._entry_ptr.144, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.146, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../fs/afs/dir.c", i32 1146, i32 4}
!264 = !{ptr @afs_d_revalidate._entry.145, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @afs_d_revalidate._entry_ptr.147, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.149, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../fs/afs/dir.c", i32 1156, i32 4}
!268 = !{ptr @afs_d_revalidate._entry.148, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @afs_d_revalidate._entry_ptr.150, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.152, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../fs/afs/dir.c", i32 1166, i32 4}
!272 = !{ptr @afs_d_revalidate._entry.151, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @afs_d_revalidate._entry_ptr.153, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.155, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../fs/afs/dir.c", i32 1176, i32 3}
!276 = !{ptr @afs_d_revalidate._entry.154, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @afs_d_revalidate._entry_ptr.156, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.158, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../fs/afs/dir.c", i32 1182, i32 3}
!280 = !{ptr @afs_d_revalidate._entry.157, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @afs_d_revalidate._entry_ptr.159, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.161, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../fs/afs/dir.c", i32 1192, i32 2}
!284 = !{ptr @afs_d_revalidate._entry.160, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @afs_d_revalidate._entry_ptr.162, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.164, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../fs/afs/dir.c", i32 1196, i32 2}
!288 = !{ptr @afs_d_revalidate._entry.163, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @afs_d_revalidate._entry_ptr.165, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.167, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../fs/afs/dir.c", i32 1200, i32 2}
!292 = !{ptr @afs_d_revalidate._entry.166, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @afs_d_revalidate._entry_ptr.168, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.169, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../fs/afs/dir.c", i32 1046, i32 2}
!296 = !{ptr @.str.170, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @afs_d_revalidate_rcu._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @afs_d_revalidate_rcu._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.171, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../fs/afs/dir.c", i32 611, i32 2}
!301 = !{ptr @afs_do_lookup_one._entry, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @afs_do_lookup_one._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.173, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../fs/afs/dir.c", i32 616, i32 3}
!305 = !{ptr @afs_do_lookup_one._entry.172, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @afs_do_lookup_one._entry_ptr.174, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.176, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../fs/afs/dir.c", i32 621, i32 3}
!309 = !{ptr @afs_do_lookup_one._entry.175, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @afs_do_lookup_one._entry_ptr.177, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.179, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../fs/afs/dir.c", i32 626, i32 2}
!313 = !{ptr @afs_do_lookup_one._entry.178, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @afs_do_lookup_one._entry_ptr.180, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.181, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../fs/afs/dir.c", i32 1212, i32 2}
!317 = !{ptr @afs_d_delete._entry, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @afs_d_delete._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.183, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../fs/afs/dir.c", i32 1222, i32 2}
!321 = !{ptr @afs_d_delete._entry.182, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @afs_d_delete._entry_ptr.184, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.186, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../fs/afs/dir.c", i32 1226, i32 2}
!325 = !{ptr @afs_d_delete._entry.185, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @afs_d_delete._entry_ptr.187, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.188, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../fs/afs/dir.c", i32 1339, i32 2}
!329 = !{ptr @.str.189, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @afs_mkdir._entry, !328, !"_entry", i1 false, i1 false}
!331 = !{ptr @afs_mkdir._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @afs_mkdir_operation, !333, !"afs_mkdir_operation", i1 false, i1 false}
!333 = !{!"../fs/afs/dir.c", i32 1321, i32 39}
!334 = !{ptr @.str.190, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../fs/afs/dir.c", i32 1290, i32 2}
!336 = !{ptr @.str.191, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @afs_create_success._entry, !335, !"_entry", i1 false, i1 false}
!338 = !{ptr @afs_create_success._entry_ptr, !335, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.192, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../fs/afs/dir.c", i32 1268, i32 2}
!341 = !{ptr @afs_vnode_new_inode._entry, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @afs_vnode_new_inode._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @afs_vnode_new_inode._entry.193, !344, !"_entry", i1 false, i1 false}
!344 = !{!"../fs/afs/dir.c", i32 1270, i32 2}
!345 = !{ptr @afs_vnode_new_inode._entry_ptr.194, !344, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @afs_vnode_new_inode._entry.195, !344, !"_entry", i1 false, i1 false}
!347 = !{ptr @afs_vnode_new_inode._entry_ptr.196, !344, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @afs_vnode_new_inode._entry.197, !344, !"_entry", i1 false, i1 false}
!349 = !{ptr @afs_vnode_new_inode._entry_ptr.198, !344, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @afs_vnode_new_inode._entry.199, !344, !"_entry", i1 false, i1 false}
!351 = !{ptr @afs_vnode_new_inode._entry_ptr.200, !344, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.201, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../fs/afs/dir.c", i32 1303, i32 2}
!354 = !{ptr @afs_create_edit_dir._entry, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @afs_create_edit_dir._entry_ptr, !353, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.202, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../fs/afs/dir.c", i32 1315, i32 2}
!358 = !{ptr @afs_create_put._entry, !357, !"_entry", i1 false, i1 false}
!359 = !{ptr @afs_create_put._entry_ptr, !357, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.203, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../fs/afs/dir.c", i32 1423, i32 2}
!362 = !{ptr @.str.204, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @afs_rmdir._entry, !361, !"_entry", i1 false, i1 false}
!364 = !{ptr @afs_rmdir._entry_ptr, !361, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @afs_rmdir_operation, !366, !"afs_rmdir_operation", i1 false, i1 false}
!366 = !{!"../fs/afs/dir.c", i32 1405, i32 39}
!367 = !{ptr @.str.205, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../fs/afs/dir.c", i32 1376, i32 2}
!369 = !{ptr @afs_rmdir_success._entry, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @afs_rmdir_success._entry_ptr, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.206, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../fs/afs/dir.c", i32 1387, i32 2}
!373 = !{ptr @afs_rmdir_edit_dir._entry, !372, !"_entry", i1 false, i1 false}
!374 = !{ptr @afs_rmdir_edit_dir._entry_ptr, !372, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.207, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../fs/afs/dir.c", i32 1400, i32 2}
!377 = !{ptr @afs_rmdir_put._entry, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @afs_rmdir_put._entry_ptr, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.208, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../fs/afs/dir.c", i32 1557, i32 2}
!381 = !{ptr @afs_unlink._entry, !380, !"_entry", i1 false, i1 false}
!382 = !{ptr @afs_unlink._entry_ptr, !380, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @afs_unlink_operation, !384, !"afs_unlink_operation", i1 false, i1 false}
!384 = !{!"../fs/afs/dir.c", i32 1538, i32 39}
!385 = !{ptr @.str.209, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../fs/afs/dir.c", i32 1508, i32 2}
!387 = !{ptr @afs_unlink_success._entry, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @afs_unlink_success._entry_ptr, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.210, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../fs/afs/dir.c", i32 1496, i32 4}
!391 = !{ptr @.str.211, !390, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @afs_dir_remove_link._entry, !390, !"_entry", i1 false, i1 false}
!393 = !{ptr @afs_dir_remove_link._entry_ptr, !390, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.213, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../fs/afs/dir.c", i32 1503, i32 2}
!396 = !{ptr @afs_dir_remove_link._entry.212, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @afs_dir_remove_link._entry_ptr.214, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.215, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../fs/afs/dir.c", i32 1522, i32 2}
!400 = !{ptr @afs_unlink_edit_dir._entry, !399, !"_entry", i1 false, i1 false}
!401 = !{ptr @afs_unlink_edit_dir._entry_ptr, !399, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.216, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../fs/afs/dir.c", i32 1533, i32 2}
!404 = !{ptr @afs_unlink_put._entry, !403, !"_entry", i1 false, i1 false}
!405 = !{ptr @afs_unlink_put._entry_ptr, !403, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.217, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../fs/afs/dir.c", i32 1638, i32 2}
!408 = !{ptr @afs_create._entry, !407, !"_entry", i1 false, i1 false}
!409 = !{ptr @afs_create._entry_ptr, !407, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @afs_create._entry.218, !411, !"_entry", i1 false, i1 false}
!411 = !{!"../fs/afs/dir.c", i32 1663, i32 2}
!412 = !{ptr @afs_create._entry_ptr.219, !411, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @afs_create_operation, !414, !"afs_create_operation", i1 false, i1 false}
!414 = !{!"../fs/afs/dir.c", i32 1619, i32 39}
!415 = !{ptr @.str.220, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../fs/afs/dir.c", i32 1710, i32 2}
!417 = !{ptr @.str.221, !416, !"<string literal>", i1 false, i1 false}
!418 = !{ptr @afs_link._entry, !416, !"_entry", i1 false, i1 false}
!419 = !{ptr @afs_link._entry_ptr, !416, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @afs_link._entry.222, !421, !"_entry", i1 false, i1 false}
!421 = !{!"../fs/afs/dir.c", i32 1745, i32 2}
!422 = !{ptr @afs_link._entry_ptr.223, !421, !"_entry_ptr", i1 false, i1 false}
!423 = !{ptr @afs_link_operation, !424, !"afs_link_operation", i1 false, i1 false}
!424 = !{!"../fs/afs/dir.c", i32 1690, i32 39}
!425 = !{ptr @.str.224, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../fs/afs/dir.c", i32 1672, i32 2}
!427 = !{ptr @afs_link_success._entry, !426, !"_entry", i1 false, i1 false}
!428 = !{ptr @afs_link_success._entry_ptr, !426, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.225, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../fs/afs/dir.c", i32 1685, i32 2}
!431 = !{ptr @afs_link_put._entry, !430, !"_entry", i1 false, i1 false}
!432 = !{ptr @afs_link_put._entry_ptr, !430, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.226, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../fs/afs/dir.c", i32 1768, i32 2}
!435 = !{ptr @.str.227, !434, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @afs_symlink._entry, !434, !"_entry", i1 false, i1 false}
!437 = !{ptr @afs_symlink._entry_ptr, !434, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @afs_symlink._entry.228, !439, !"_entry", i1 false, i1 false}
!439 = !{!"../fs/afs/dir.c", i32 1797, i32 2}
!440 = !{ptr @afs_symlink._entry_ptr.229, !439, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @afs_symlink_operation, !442, !"afs_symlink_operation", i1 false, i1 false}
!442 = !{!"../fs/afs/dir.c", i32 1749, i32 39}
!443 = !{ptr @.str.230, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../fs/afs/dir.c", i32 1917, i32 2}
!445 = !{ptr @.str.231, !444, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @afs_rename._entry, !444, !"_entry", i1 false, i1 false}
!447 = !{ptr @afs_rename._entry_ptr, !444, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @afs_rename_operation, !449, !"afs_rename_operation", i1 false, i1 false}
!449 = !{!"../fs/afs/dir.c", i32 1887, i32 39}
!450 = !{ptr @.str.232, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../fs/afs/dir.c", i32 1803, i32 2}
!452 = !{ptr @afs_rename_success._entry, !451, !"_entry", i1 false, i1 false}
!453 = !{ptr @afs_rename_success._entry_ptr, !451, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @.str.233, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../fs/afs/dir.c", i32 1825, i32 2}
!456 = !{ptr @afs_rename_edit_dir._entry, !455, !"_entry", i1 false, i1 false}
!457 = !{ptr @afs_rename_edit_dir._entry_ptr, !455, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @.str.234, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../fs/afs/dir.c", i32 1879, i32 2}
!460 = !{ptr @afs_rename_put._entry, !459, !"_entry", i1 false, i1 false}
!461 = !{ptr @afs_rename_put._entry_ptr, !459, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @.str.235, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../fs/afs/dir.c", i32 2009, i32 2}
!464 = !{ptr @.str.236, !463, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @afs_dir_releasepage._entry, !463, !"_entry", i1 false, i1 false}
!466 = !{ptr @afs_dir_releasepage._entry_ptr, !463, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.237, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../fs/afs/dir.c", i32 2028, i32 2}
!469 = !{ptr @.str.238, !468, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @afs_dir_invalidatepage._entry, !468, !"_entry", i1 false, i1 false}
!471 = !{ptr @afs_dir_invalidatepage._entry_ptr, !468, !"_entry_ptr", i1 false, i1 false}
!472 = !{!"sp"}
!473 = !{i32 1, !"wchar_size", i32 2}
!474 = !{i32 1, !"min_enum_size", i32 4}
!475 = !{i32 8, !"branch-target-enforcement", i32 0}
!476 = !{i32 8, !"sign-return-address", i32 0}
!477 = !{i32 8, !"sign-return-address-all", i32 0}
!478 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!479 = !{i32 7, !"uwtable", i32 1}
!480 = !{i32 7, !"frame-pointer", i32 2}
!481 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!482 = !{!"branch_weights", i32 2000, i32 1}
!483 = !{i64 2157999221, i64 2157999698, i64 2157999258, i64 2157999314, i64 2157999348, i64 2157999372, i64 2157999413, i64 2157999434, i64 2157999462, i64 2157999496}
!484 = !{i64 2148261793, i64 2148261819, i64 2148261848, i64 2148261882, i64 2148261913, i64 2148261936}
!485 = !{i64 2149516774}
!486 = !{i64 2149517040}
!487 = !{i8 0, i8 2}
!488 = !{i64 2157867022, i64 2157867498, i64 2157867059, i64 2157867115, i64 2157867149, i64 2157867173, i64 2157867214, i64 2157867235, i64 2157867263, i64 2157867297}
!489 = !{i64 2150613073, i64 2150613564, i64 2150613110, i64 2150613166, i64 2150613200, i64 2150613224, i64 2150613265, i64 2150613286, i64 2150613314, i64 2150613348}
!490 = !{!"branch_weights", i32 1, i32 2000}
!491 = !{i64 2158123554, i64 2158124032, i64 2158123591, i64 2158123647, i64 2158123681, i64 2158123705, i64 2158123746, i64 2158123767, i64 2158123795, i64 2158123829}
!492 = !{i64 2151375798, i64 2151376289, i64 2151375835, i64 2151375891, i64 2151375925, i64 2151375949, i64 2151375990, i64 2151376011, i64 2151376039, i64 2151376073}
!493 = !{i64 2148263323, i64 2148263355, i64 2148263384, i64 2148263418, i64 2148263449, i64 2148263472}
!494 = !{i64 654274, i64 654335}
!495 = !{i64 657006}
!496 = !{i64 657291}
!497 = !{i64 2152547159}
!498 = !{i64 2152547001}
!499 = !{i64 2152547329}
!500 = !{i64 2150133143}
!501 = !{i64 2153231922, i64 2153232406, i64 2153231959, i64 2153232015, i64 2153232049, i64 2153232073, i64 2153232114, i64 2153232135, i64 2153232163, i64 2153232197}
!502 = !{i64 2148743608, i64 2148743613, i64 2148743626, i64 2148743670, i64 2148743704, i64 2148743725}
!503 = !{i64 2157869138, i64 2157869615, i64 2157869175, i64 2157869231, i64 2157869265, i64 2157869289, i64 2157869330, i64 2157869351, i64 2157869379, i64 2157869413}
!504 = !{i64 2157876973, i64 2157877450, i64 2157877010, i64 2157877066, i64 2157877100, i64 2157877124, i64 2157877165, i64 2157877186, i64 2157877214, i64 2157877248}
!505 = !{i64 2153207949, i64 2153208432, i64 2153207986, i64 2153208042, i64 2153208076, i64 2153208100, i64 2153208141, i64 2153208162, i64 2153208190, i64 2153208224}
!506 = !{i64 2148350245}
!507 = !{i64 2148264978, i64 2148265010, i64 2148265039, i64 2148265073, i64 2148265104, i64 2148265127}
!508 = !{i64 2148350474}
!509 = !{i64 2157623842}
!510 = !{i64 2157624071}
!511 = !{i64 2149525333}
!512 = !{i64 2149526369}
!513 = !{i64 2157711540}
!514 = !{i64 2157711741}
!515 = !{i64 2157897499, i64 2157897976, i64 2157897536, i64 2157897592, i64 2157897626, i64 2157897650, i64 2157897691, i64 2157897712, i64 2157897740, i64 2157897774}
!516 = !{i64 2157889883, i64 2157890360, i64 2157889920, i64 2157889976, i64 2157890010, i64 2157890034, i64 2157890075, i64 2157890096, i64 2157890124, i64 2157890158}
!517 = !{i64 2157493605}
!518 = !{i64 2157493844}
!519 = !{i64 2157549812}
!520 = !{i64 2157550029}
!521 = !{i64 2158064622, i64 2158065100, i64 2158064659, i64 2158064715, i64 2158064749, i64 2158064773, i64 2158064814, i64 2158064835, i64 2158064863, i64 2158064897}
!522 = !{i64 2150133468}
!523 = !{i64 2150133793}
