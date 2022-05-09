; ModuleID = '/llk/IR_all_yes/fs/ceph/file.c_pt.bc'
source_filename = "../fs/ceph/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%union.anon.98 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.105, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.106, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.107, ptr, %struct.address_space, %struct.list_head, %union.anon.108, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.105 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.106 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.107 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.108 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ceph_fs_client = type { ptr, %struct.list_head, ptr, ptr, i32, i8, i8, i32, i64, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ceph_mds_request = type { i64, %struct.rb_node, ptr, %struct.kref, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ceph_vino, %struct.ceph_vino, ptr, ptr, i32, %struct.mutex, %union.ceph_mds_request_args, i32, ptr, i32, %struct.timespec64, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.ceph_mds_reply_info_parsed, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, i32, i64, %struct.list_head, %struct.completion, %struct.completion, ptr, ptr, %struct.list_head, i64, i64, i32, %struct.ceph_cap_reservation }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.ceph_vino = type { i64, i64 }
%union.ceph_mds_request_args = type { %struct.anon.139, [16 x i8] }
%struct.anon.139 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ceph_mds_reply_info_parsed = type { ptr, %struct.ceph_mds_reply_info_in, %struct.ceph_mds_reply_info_in, ptr, ptr, i32, ptr, %union.anon.144, ptr, i32 }
%struct.ceph_mds_reply_info_in = type { ptr, %struct.ceph_dir_layout, i32, ptr, i32, ptr, i64, i32, ptr, i32, ptr, i64, i64, i32, %struct.ceph_timespec, %struct.ceph_timespec, i64, i64 }
%struct.ceph_dir_layout = type { i8, i8, i16, i32 }
%struct.ceph_timespec = type { i32, i32 }
%union.anon.144 = type { %struct.anon.146, [8 x i8] }
%struct.anon.146 = type { i8, i64 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ceph_cap_reservation = type { i32, i32 }
%struct.file = type { %union.anon.20, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ceph_acl_sec_ctx = type { ptr, ptr, ptr, i32, ptr }
%struct.ceph_file_layout = type { i32, i32, i32, i64, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.103, %struct.list_head, %struct.list_head, %union.anon.104 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.103 = type { %struct.list_head }
%union.anon.104 = type { %struct.hlist_node }
%struct.ceph_cap = type { ptr, %struct.rb_node, ptr, %struct.list_head, i64, %union.anon.131, i32, i32, i32, i32, i32, %struct.list_head }
%union.anon.131 = type { %struct.anon.133 }
%struct.anon.133 = type { i64, i32 }
%struct.ceph_mds_session = type { ptr, i32, i32, i32, i32, i64, %struct.mutex, [4 x i8], %struct.ceph_connection, %struct.ceph_auth_handshake, %struct.atomic_t, i32, %struct.spinlock, %struct.refcount_struct, %struct.list_head, ptr, i32, i32, i32, i32, %struct.list_head, %struct.work_struct, %struct.list_head, %struct.list_head, i32, i64, %struct.list_head, %struct.list_head, %struct.xarray }
%struct.ceph_connection = type <{ ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32, ptr, %struct.ceph_entity_name, %struct.ceph_entity_addr, [7 x i8], i64, %struct.mutex, %struct.list_head, %struct.list_head, [4 x i8], i64, i64, i64, ptr, ptr, ptr, i32, i32, i32, %struct.timespec64, %struct.delayed_work, i32, %union.anon.122 }>
%struct.ceph_entity_name = type <{ i8, i64 }>
%struct.ceph_entity_addr = type { i32, i32, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.111 }
%union.anon.111 = type { ptr, [124 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.122 = type { %struct.ceph_connection_v2_info }
%struct.ceph_connection_v2_info = type { %struct.iov_iter, [5 x %struct.kvec], %struct.bio_vec, i32, i32, %struct.iov_iter, [8 x %struct.kvec], %struct.bio_vec, i32, i32, i32, i8, %struct.ceph_frame_desc, %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor, ptr, ptr, ptr, %struct.crypto_wait, %struct.ceph_gcm_nonce, %struct.ceph_gcm_nonce, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, [16 x ptr], i32, [8 x %struct.kvec], [8 x %struct.kvec], i32, i32, i64, i64, i64, i64, i64, [96 x i8], [96 x i8], %struct.anon.123 }
%struct.kvec = type { ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.21, %union.anon.22 }
%union.anon.21 = type { ptr }
%union.anon.22 = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ceph_frame_desc = type { i32, i32, [4 x i32], [4 x i32] }
%struct.ceph_msg_data_cursor = type { i32, ptr, i32, i8, i8, %union.anon.117 }
%union.anon.117 = type { %struct.ceph_bio_iter }
%struct.ceph_bio_iter = type { ptr, %struct.bvec_iter }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.ceph_gcm_nonce = type <{ i32, i64 }>
%struct.anon.123 = type { i8, %union.anon.124 }
%union.anon.124 = type <{ %struct.anon.125, [3 x i8] }>
%struct.anon.125 = type { i32, i32, i32 }
%struct.ceph_auth_handshake = type { ptr, ptr, i32, ptr, i32, ptr, ptr }
%struct.ceph_dentry_info = type { ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ceph_mds_reply_head = type <{ i32, i32, i32, i8, i8, i8 }>
%struct.ceph_mds_reply_inode = type <{ i64, i64, i32, i64, i64, %struct.ceph_mds_reply_cap, %struct.ceph_file_layout_legacy, %struct.ceph_timespec, %struct.ceph_timespec, %struct.ceph_timespec, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, %struct.ceph_timespec, %struct.ceph_frag_tree_head }>
%struct.ceph_mds_reply_cap = type <{ i32, i32, i64, i32, i32, i64, i8 }>
%struct.ceph_file_layout_legacy = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ceph_frag_tree_head = type { i32, [0 x %struct.ceph_frag_tree_split] }
%struct.ceph_frag_tree_split = type { i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.90, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.39 }
%struct.llist_node = type { ptr }
%union.anon.39 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.41 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.90 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.38 = type { %struct.callback_head }
%struct.ceph_string = type { %struct.kref, %union.anon.127, i32, [0 x i8] }
%union.anon.127 = type { %struct.rb_node }
%struct.ceph_mds_client = type { ptr, %struct.mutex, ptr, %struct.completion, %struct.wait_queue_head, %struct.list_head, i32, ptr, %struct.atomic_t, i32, i32, %struct.atomic64_t, %struct.rb_root, %struct.mutex, i64, %struct.rw_semaphore, %struct.rb_root, %struct.list_head, i32, %struct.spinlock, i64, i64, %struct.rb_root, %struct.delayed_work, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.ceph_client_metric, %struct.spinlock, %struct.rb_root, %struct.list_head, %struct.rw_semaphore, %struct.rb_root, [65 x i8] }
%struct.ceph_client_metric = type { %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, [4 x %struct.ceph_metric], %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, ptr, %struct.delayed_work }
%struct.ceph_metric = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ceph_file_info = type { i16, i16, %struct.spinlock, %struct.list_head, i32, %struct.atomic_t }
%struct.ceph_dir_file_info = type { %struct.ceph_file_info, i32, ptr, i32, ptr, i64, i64, i32, ptr, i32 }
%struct.ceph_rw_context = type { %struct.list_head, ptr, i32 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.ceph_client = type { %struct.ceph_fsid, i8, ptr, ptr, %struct.mutex, %struct.wait_queue_head, i32, ptr, i64, i64, %struct.ceph_messenger, %struct.ceph_mon_client, %struct.ceph_osd_client, ptr, ptr, ptr, ptr }
%struct.ceph_fsid = type { [16 x i8] }
%struct.ceph_messenger = type <{ %struct.ceph_entity_inst, %struct.ceph_entity_addr, [3 x i8], %struct.atomic_t, %struct.possible_net_t, i32, %struct.spinlock }>
%struct.ceph_entity_inst = type <{ %struct.ceph_entity_name, %struct.ceph_entity_addr }>
%struct.possible_net_t = type { ptr }
%struct.ceph_mon_client = type { ptr, ptr, %struct.mutex, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.ceph_connection, i8, i32, %struct.rb_root, i64, [4 x %struct.anon.126], i32, ptr }
%struct.anon.126 = type { %struct.ceph_mon_subscribe_item, i8, i32 }
%struct.ceph_mon_subscribe_item = type <{ i64, i8 }>
%struct.ceph_osd_client = type { ptr, ptr, %struct.rw_semaphore, %struct.rb_root, %struct.list_head, %struct.spinlock, i32, [4 x i8], %struct.ceph_osd, %struct.atomic64_t, i64, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.atomic_t, %struct.atomic_t, i32, %struct.delayed_work, %struct.delayed_work, ptr, ptr, %struct.ceph_msgpool, %struct.ceph_msgpool, ptr, ptr }
%struct.ceph_osd = type { %struct.refcount_struct, ptr, i32, i32, %struct.rb_node, [4 x i8], %struct.ceph_connection, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.ceph_auth_handshake, i32, %struct.list_head, %struct.mutex, [4 x i8] }
%struct.ceph_msgpool = type { ptr, ptr, i32, i32, i32 }
%struct.ceph_osdmap = type { %struct.ceph_fsid, i32, %struct.ceph_timespec, %struct.ceph_timespec, i32, i32, ptr, ptr, ptr, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, ptr, %struct.rb_root, i32, ptr, %struct.workspace_manager }
%struct.workspace_manager = type { %struct.list_head, %struct.spinlock, i32, %struct.atomic_t, %struct.wait_queue_head }
%struct.ceph_snap_context = type { %struct.refcount_struct, i64, i32, [0 x i64] }
%struct.ceph_mount_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ceph_aio_request = type { ptr, i32, i8, i8, i32, %struct.list_head, i32, %struct.atomic_t, %struct.timespec64, ptr }
%struct.ceph_osd_request = type { i64, %struct.rb_node, %struct.rb_node, %struct.work_struct, ptr, %struct.ceph_osd_request_target, ptr, ptr, i32, i32, i32, ptr, %struct.kref, i8, %struct.completion, ptr, ptr, %struct.list_head, ptr, i64, ptr, %struct.timespec64, i64, i8, i32, i32, i64, i64, i32, i32, [0 x %struct.ceph_osd_req_op] }
%struct.ceph_osd_request_target = type { %struct.ceph_object_id, %struct.ceph_object_locator, %struct.ceph_object_id, %struct.ceph_object_locator, %struct.ceph_pg, %struct.ceph_spg, i32, i32, %struct.ceph_osds, %struct.ceph_osds, i32, i32, i8, i8, i32, i8, i8, i32, i32, i32 }
%struct.ceph_object_id = type { ptr, [52 x i8], i32 }
%struct.ceph_object_locator = type { i64, ptr }
%struct.ceph_pg = type { i64, i32 }
%struct.ceph_spg = type { %struct.ceph_pg, i8 }
%struct.ceph_osds = type { [32 x i32], i32, i32 }
%struct.ceph_osd_req_op = type { i16, i32, i32, i32, i32, %union.anon.148 }
%union.anon.148 = type { %struct.anon.155 }
%struct.anon.155 = type { ptr, ptr, %struct.ceph_osd_data, %struct.ceph_osd_data, %struct.ceph_osd_data, i8, i8, i32 }
%struct.ceph_osd_data = type { i32, %union.anon.149 }
%union.anon.149 = type { %struct.anon.150, [8 x i8] }
%struct.anon.150 = type { ptr, i64, i32, i8, i8 }
%struct.page = type { i32, %union.anon.7, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.ceph_bvec_iter = type { ptr, %struct.bvec_iter }
%struct.ceph_aio_work = type { %struct.work_struct, ptr }
%struct.ceph_inode_info = type { %struct.ceph_vino, %struct.spinlock, i64, i64, i32, i32, %struct.atomic64_t, %struct.atomic64_t, [2 x %struct.atomic64_t], %struct.ceph_dir_layout, %struct.ceph_file_layout, %struct.ceph_file_layout, ptr, %struct.timespec64, i64, i64, i64, i64, i64, i64, i64, i64, i32, %struct.rb_root, i32, %struct.mutex, %struct.ceph_inode_xattrs_info, %struct.rb_root, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.wait_queue_head, i32, %struct.list_head, %struct.ceph_cap_reservation, %struct.list_head, ptr, i32, i32, i32, [4 x i32], %struct.mutex, i32, i64, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %union.anon.128, %struct.list_head, %struct.list_head, %struct.timespec64, %struct.timespec64, %struct.work_struct, i32, ptr, %struct.inode }
%struct.ceph_inode_xattrs_info = type { ptr, ptr, %struct.rb_root, i8, i32, i32, i32, i64, i64 }
%union.anon.128 = type { ptr }

@ceph_renew_caps.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ceph\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceph_renew_caps\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ceph/file.c\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%.*s %12.12s:%-4d : renew caps %p want %s issued %s updating mds_wanted\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"ceph: %.*s %12.12s:%-4d : renew caps %p want %s issued %s updating mds_wanted\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@ceph_renew_caps.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%.*s %12.12s:%-4d : renew caps %p open result=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ceph: %.*s %12.12s:%-4d : renew caps %p open result=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@ceph_open.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ceph_open\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%.*s %12.12s:%-4d : open file %p is already opened\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ceph: %.*s %12.12s:%-4d : open file %p is already opened\0A\00", [38 x i8] zeroinitializer }, align 32
@ceph_open.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%.*s %12.12s:%-4d : open inode %p ino %llx.%llx file %p flags %d (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"ceph: %.*s %12.12s:%-4d : open inode %p ino %llx.%llx file %p flags %d (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@ceph_open.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.13, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%.*s %12.12s:%-4d : open %p fmode %d want %s issued %s using existing\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"ceph: %.*s %12.12s:%-4d : open %p fmode %d want %s issued %s using existing\0A\00", [51 x i8] zeroinitializer }, align 32
@ceph_open.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.15, i8 0, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%.*s %12.12s:%-4d : open fmode %d wants %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ceph: %.*s %12.12s:%-4d : open fmode %d wants %s\0A\00", [46 x i8] zeroinitializer }, align 32
@ceph_open.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.17, i8 0, i8 105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%.*s %12.12s:%-4d : open result=%d on %llx.%llx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ceph: %.*s %12.12s:%-4d : open result=%d on %llx.%llx\0A\00", [41 x i8] zeroinitializer }, align 32
@ceph_atomic_open.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 -81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ceph_atomic_open\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%.*s %12.12s:%-4d : atomic_open %p dentry %p '%pd' %s flags %d mode 0%o\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"ceph: %.*s %12.12s:%-4d : atomic_open %p dentry %p '%pd' %s flags %d mode 0%o\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unhashed\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hashed\00", [25 x i8] zeroinitializer }, align 32
@ceph_atomic_open.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.24, i8 0, i8 -57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%.*s %12.12s:%-4d : atomic_open finish_no_open on dn %p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"ceph: %.*s %12.12s:%-4d : atomic_open finish_no_open on dn %p\0A\00", [33 x i8] zeroinitializer }, align 32
@ceph_atomic_open.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.26, i8 0, i8 -57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%.*s %12.12s:%-4d : atomic_open finish_open on dn %p\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ceph: %.*s %12.12s:%-4d : atomic_open finish_open on dn %p\0A\00", [36 x i8] zeroinitializer }, align 32
@ceph_atomic_open.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.28, i8 0, i8 -53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%.*s %12.12s:%-4d : atomic_open result=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ceph: %.*s %12.12s:%-4d : atomic_open result=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@ceph_release.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 -51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ceph_release\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%.*s %12.12s:%-4d : release inode %p dir file %p\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ceph: %.*s %12.12s:%-4d : release inode %p dir file %p\0A\00", [40 x i8] zeroinitializer }, align 32
@ceph_dir_file_cachep = external dso_local local_unnamed_addr global ptr, align 4
@ceph_release.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.33, i8 0, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%.*s %12.12s:%-4d : release inode %p regular file %p\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ceph: %.*s %12.12s:%-4d : release inode %p regular file %p\0A\00", [36 x i8] zeroinitializer }, align 32
@ceph_file_cachep = external dso_local local_unnamed_addr global ptr, align 4
@ceph_file_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @ceph_llseek, ptr null, ptr null, ptr @ceph_read_iter, ptr @ceph_write_iter, ptr null, ptr null, ptr null, ptr null, ptr @ceph_ioctl, ptr null, ptr @ceph_mmap, i32 0, ptr @ceph_open, ptr null, ptr @ceph_release, ptr @ceph_fsync, ptr null, ptr @ceph_lock, ptr null, ptr null, ptr null, ptr @ceph_flock, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr @simple_nosetlease, ptr @ceph_fallocate, ptr null, ptr @ceph_copy_file_range, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ceph_flags_sys2wire.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ceph_flags_sys2wire\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%.*s %12.12s:%-4d : unused open flags: %x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ceph: %.*s %12.12s:%-4d : unused open flags: %x\0A\00", [47 x i8] zeroinitializer }, align 32
@ceph_init_file.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ceph_init_file\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%.*s %12.12s:%-4d : init_file %p %p 0%o (symlink)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ceph: %.*s %12.12s:%-4d : init_file %p %p 0%o (symlink)\0A\00", [39 x i8] zeroinitializer }, align 32
@ceph_init_file.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.41, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%.*s %12.12s:%-4d : init_file %p %p 0%o (special)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ceph: %.*s %12.12s:%-4d : init_file %p %p 0%o (special)\0A\00", [39 x i8] zeroinitializer }, align 32
@ceph_init_file_info.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ceph_init_file_info\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%.*s %12.12s:%-4d : %s %p %p 0%o (%s)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ceph: %.*s %12.12s:%-4d : %s %p %p 0%o (%s)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dir\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"regular\00", [24 x i8] zeroinitializer }, align 32
@ceph_init_file_info.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&fi->rw_contexts_lock\00", [42 x i8] zeroinitializer }, align 32
@try_prep_async_create.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.49 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ceph_async_create_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014ceph: ceph: async create failure path=(%llx)%s result=%d!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ceph_async_create_cb\00", [43 x i8] zeroinitializer }, align 32
@ceph_async_create_cb._entry_ptr = internal global ptr @ceph_async_create_cb._entry, section ".printk_index", align 4
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"<<bad>>\00", [24 x i8] zeroinitializer }, align 32
@ceph_async_create_cb._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.54, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014ceph: %s: inode number mismatch! err=%d deleg_ino=0x%llx target=0x%llx\0A\00", [54 x i8] zeroinitializer }, align 32
@ceph_async_create_cb._entry_ptr.58 = internal global ptr @ceph_async_create_cb._entry.56, section ".printk_index", align 4
@ceph_async_create_cb._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.54, ptr @.str.2, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014ceph: %s: no req->r_target_inode for 0x%llx\0A\00", [49 x i8] zeroinitializer }, align 32
@ceph_async_create_cb._entry_ptr.61 = internal global ptr @ceph_async_create_cb._entry.59, section ".printk_index", align 4
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@ceph_finish_async_create.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 0, i8 -94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ceph_finish_async_create\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%.*s %12.12s:%-4d : %s failed to fill inode: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ceph: %.*s %12.12s:%-4d : %s failed to fill inode: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ceph_finish_async_create.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.66, i8 0, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%.*s %12.12s:%-4d : %s d_adding new inode 0x%llx to 0x%llx/%s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"ceph: %.*s %12.12s:%-4d : %s d_adding new inode 0x%llx to 0x%llx/%s\0A\00", [59 x i8] zeroinitializer }, align 32
@ceph_finish_async_create.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@restore_deleg_ino._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014ceph: ceph: unable to restore delegated ino 0x%llx to session: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"restore_deleg_ino\00", [46 x i8] zeroinitializer }, align 32
@restore_deleg_ino._entry_ptr = internal global ptr @restore_deleg_ino._entry, section ".printk_index", align 4
@cache_file_layout.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ceph_read_iter.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 1, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ceph_read_iter\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%.*s %12.12s:%-4d : aio_read %p %llx.%llx %llu~%u trying to get caps on %p\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"ceph: %.*s %12.12s:%-4d : aio_read %p %llx.%llx %llu~%u trying to get caps on %p\0A\00", [46 x i8] zeroinitializer }, align 32
@ceph_read_iter.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.73, i8 1, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%.*s %12.12s:%-4d : aio_sync_read %p %llx.%llx %llu~%u got cap refs on %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"ceph: %.*s %12.12s:%-4d : aio_sync_read %p %llx.%llx %llu~%u got cap refs on %s\0A\00", [47 x i8] zeroinitializer }, align 32
@ceph_read_iter.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.75, i8 1, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%.*s %12.12s:%-4d : aio_read %p %llx.%llx %llu~%u got cap refs on %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"ceph: %.*s %12.12s:%-4d : aio_read %p %llx.%llx %llu~%u got cap refs on %s\0A\00", [52 x i8] zeroinitializer }, align 32
@ceph_read_iter.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.77, i8 1, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%.*s %12.12s:%-4d : aio_read %p %llx.%llx dropping cap refs on %s = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"ceph: %.*s %12.12s:%-4d : aio_read %p %llx.%llx dropping cap refs on %s = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ceph_read_iter.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.79, i8 1, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%.*s %12.12s:%-4d : sync_read hit hole, ppos %lld < size %lld, reading more\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"ceph: %.*s %12.12s:%-4d : sync_read hit hole, ppos %lld < size %lld, reading more\0A\00", [45 x i8] zeroinitializer }, align 32
@ceph_direct_read_write.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 1, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ceph_direct_read_write\00", [41 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%.*s %12.12s:%-4d : sync_direct_%s on file %p %lld~%u snapc %p seq %lld\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"ceph: %.*s %12.12s:%-4d : sync_direct_%s on file %p %lld~%u snapc %p seq %lld\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@ceph_direct_read_write.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.86, i8 1, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%.*s %12.12s:%-4d : invalidate_inode_pages2_range returned %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"ceph: %.*s %12.12s:%-4d : invalidate_inode_pages2_range returned %d\0A\00", [59 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ceph_aio_complete_req.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.89, i8 1, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ceph_aio_complete_req\00", [42 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%.*s %12.12s:%-4d : ceph_aio_complete_req %p rc %d bytes %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ceph: %.*s %12.12s:%-4d : ceph_aio_complete_req %p rc %d bytes %u\0A\00", [61 x i8] zeroinitializer }, align 32
@ceph_aio_complete_req.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.91 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&aio_work->work)\00", [61 x i8] zeroinitializer }, align 32
@ceph_aio_complete.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.2, ptr @.str.93, i8 1, i8 2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ceph_aio_complete\00", [46 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%.*s %12.12s:%-4d : ceph_aio_complete %p rc %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ceph: %.*s %12.12s:%-4d : ceph_aio_complete %p rc %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@ceph_sync_read.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.96, ptr @.str.2, ptr @.str.97, i8 0, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ceph_sync_read\00", [17 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%.*s %12.12s:%-4d : sync_read on file %p %llu~%u %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ceph: %.*s %12.12s:%-4d : sync_read on file %p %llu~%u %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"O_DIRECT\00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ceph_sync_read.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.96, ptr @.str.2, ptr @.str.101, i8 0, i8 -21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%.*s %12.12s:%-4d : sync_read %llu~%llu got %zd i_size %llu%s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"ceph: %.*s %12.12s:%-4d : sync_read %llu~%llu got %zd i_size %llu%s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" MORE\00", [26 x i8] zeroinitializer }, align 32
@ceph_sync_read.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.96, ptr @.str.2, ptr @.str.104, i8 0, i8 -19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%.*s %12.12s:%-4d : sync_read zero gap %llu~%llu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ceph: %.*s %12.12s:%-4d : sync_read zero gap %llu~%llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ceph_sync_read.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.96, ptr @.str.2, ptr @.str.106, i8 0, i8 -8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%.*s %12.12s:%-4d : sync_read result %zd retry_op %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ceph: %.*s %12.12s:%-4d : sync_read result %zd retry_op %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@ceph_write_iter.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.112, i8 1, i8 -65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceph_write_iter\00", [16 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%.*s %12.12s:%-4d : aio_write %p %llx.%llx %llu~%zd getting caps. i_size %llu\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"ceph: %.*s %12.12s:%-4d : aio_write %p %llx.%llx %llu~%zd getting caps. i_size %llu\0A\00", [43 x i8] zeroinitializer }, align 32
@ceph_write_iter.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.114, i8 1, i8 -61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%.*s %12.12s:%-4d : aio_write %p %llx.%llx %llu~%zd got cap refs on %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"ceph: %.*s %12.12s:%-4d : aio_write %p %llx.%llx %llu~%zd got cap refs on %s\0A\00", [50 x i8] zeroinitializer }, align 32
@ceph_write_iter.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.116, i8 1, i8 -45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%.*s %12.12s:%-4d : aio_write %p %llx.%llx %llu~%u  dropping cap refs on %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"ceph: %.*s %12.12s:%-4d : aio_write %p %llx.%llx %llu~%u  dropping cap refs on %s\0A\00", [45 x i8] zeroinitializer }, align 32
@ceph_write_iter.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.118, i8 1, i8 -44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%.*s %12.12s:%-4d : aio_write %p %llx.%llx %llu~%ugot EOLDSNAPC, retrying\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"ceph: %.*s %12.12s:%-4d : aio_write %p %llx.%llx %llu~%ugot EOLDSNAPC, retrying\0A\00", [47 x i8] zeroinitializer }, align 32
@ceph_sync_write.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.120, ptr @.str.2, ptr @.str.121, i8 1, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceph_sync_write\00", [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%.*s %12.12s:%-4d : sync_write on file %p %lld~%u snapc %p seq %lld\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"ceph: %.*s %12.12s:%-4d : sync_write on file %p %lld~%u snapc %p seq %lld\0A\00", [53 x i8] zeroinitializer }, align 32
@ceph_sync_write.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.120, ptr @.str.2, ptr @.str.86, i8 1, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__ceph_copy_file_range.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.124, i8 2, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__ceph_copy_file_range\00", [41 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%.*s %12.12s:%-4d : Copying files across clusters: src: %pU dst: %pU\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"ceph: %.*s %12.12s:%-4d : Copying files across clusters: src: %pU dst: %pU\0A\00", [52 x i8] zeroinitializer }, align 32
@__ceph_copy_file_range.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.126, i8 2, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%.*s %12.12s:%-4d : Invalid src/dst files layout\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ceph: %.*s %12.12s:%-4d : Invalid src/dst files layout\0A\00", [40 x i8] zeroinitializer }, align 32
@__ceph_copy_file_range.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.128, i8 2, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%.*s %12.12s:%-4d : failed to write src file (%zd)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ceph: %.*s %12.12s:%-4d : failed to write src file (%zd)\0A\00", [38 x i8] zeroinitializer }, align 32
@__ceph_copy_file_range.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.130, i8 2, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%.*s %12.12s:%-4d : failed to write dst file (%zd)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ceph: %.*s %12.12s:%-4d : failed to write dst file (%zd)\0A\00", [38 x i8] zeroinitializer }, align 32
@__ceph_copy_file_range.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.132, i8 2, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%.*s %12.12s:%-4d : get_rd_wr_caps returned %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ceph: %.*s %12.12s:%-4d : get_rd_wr_caps returned %d\0A\00", [42 x i8] zeroinitializer }, align 32
@__ceph_copy_file_range.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.134, i8 2, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%.*s %12.12s:%-4d : Failed to invalidate inode pages (%zd)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"ceph: %.*s %12.12s:%-4d : Failed to invalidate inode pages (%zd)\0A\00", [62 x i8] zeroinitializer }, align 32
@__ceph_copy_file_range.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.136, i8 2, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%.*s %12.12s:%-4d : Initial partial copy of %u bytes\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ceph: %.*s %12.12s:%-4d : Initial partial copy of %u bytes\0A\00", [36 x i8] zeroinitializer }, align 32
@__ceph_copy_file_range.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.138, i8 2, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%.*s %12.12s:%-4d : Failed partial copy (%zd)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ceph: %.*s %12.12s:%-4d : Failed partial copy (%zd)\0A\00", [43 x i8] zeroinitializer }, align 32
@__ceph_copy_file_range.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.140, i8 2, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%.*s %12.12s:%-4d : Copied %zu bytes out of %zu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ceph: %.*s %12.12s:%-4d : Copied %zu bytes out of %zu\0A\00", [41 x i8] zeroinitializer }, align 32
@__ceph_copy_file_range.__UNIQUE_ID_ddebug413 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.142, i8 2, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%.*s %12.12s:%-4d : Final partial copy of %zu bytes\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ceph: %.*s %12.12s:%-4d : Final partial copy of %zu bytes\0A\00", [37 x i8] zeroinitializer }, align 32
@__ceph_copy_file_range.__UNIQUE_ID_ddebug414 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.138, i8 2, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@is_file_size_ok.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.2, ptr @.str.145, i8 2, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"is_file_size_ok\00", [16 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%.*s %12.12s:%-4d : Copy beyond EOF (%llu + %zu > %llu)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"ceph: %.*s %12.12s:%-4d : Copy beyond EOF (%llu + %zu > %llu)\0A\00", [33 x i8] zeroinitializer }, align 32
@ceph_do_objects_copy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ceph_do_objects_copy.__warned.147 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.148 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%llx.%08llx\00", [20 x i8] zeroinitializer }, align 32
@ceph_do_objects_copy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.2, i32 2349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\015ceph: OSDs don't support copy-from2; disabling copy offload\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ceph_do_objects_copy\00", [43 x i8] zeroinitializer }, align 32
@ceph_do_objects_copy._entry_ptr = internal global ptr @ceph_do_objects_copy._entry, section ".printk_index", align 4
@ceph_do_objects_copy.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.150, ptr @.str.2, ptr @.str.151, i8 2, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%.*s %12.12s:%-4d : ceph_osdc_copy_from returned %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ceph: %.*s %12.12s:%-4d : ceph_osdc_copy_from returned %d\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966768]
@__sancov_gen_cov_switch_values.154 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 4294967201, i64 4294967278]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 300, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 332, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 353, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 362, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 387, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 409, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 423, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 699, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 796, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 799, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 813, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 823, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 835, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [15 x i8] c"ceph_file_fops\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2579, i32 30 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 51, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 264, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 269, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 211, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 239, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 493, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 695, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 723, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 544, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 554, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 566, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 648, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 657, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 513, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1562, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1591, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1609, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1617, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1678, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1230, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1243, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1074, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1082, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1032, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 717, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 878, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 939, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 947, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 992, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 260, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1787, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1804, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1868, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1874, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1442, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2389, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2420, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2434, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2439, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2451, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2466, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2487, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2498, i32 4 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2520, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2549, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2231, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2324, i32 29 }
@___asan_gen_.602 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2349, i32 5 }
@___asan_gen_.614 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.615 = private constant [18 x i8] c"../fs/ceph/file.c\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2351, i32 4 }
@llvm.compiler.used = appending global [158 x ptr] [ptr @ceph_async_create_cb._entry, ptr @ceph_async_create_cb._entry.56, ptr @ceph_async_create_cb._entry.59, ptr @ceph_async_create_cb._entry_ptr, ptr @ceph_async_create_cb._entry_ptr.58, ptr @ceph_async_create_cb._entry_ptr.61, ptr @ceph_do_objects_copy._entry, ptr @ceph_do_objects_copy._entry_ptr, ptr @restore_deleg_ino._entry, ptr @restore_deleg_ino._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @ceph_file_fops, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @ceph_init_file_info.__key, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @ceph_aio_complete_req.__key, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152], section "llvm.metadata"
@0 = internal global [153 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_file_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_init_file_info.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_async_create_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_async_create_cb._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_async_create_cb._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @restore_deleg_ino._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_aio_complete_req.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_do_objects_copy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_renew_caps(ptr noundef %inode, i32 noundef %fmode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %mdsc.i = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %mdsc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdsc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %i_ceph_lock = getelementptr i8, ptr %inode, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #12
  tail call void @__ceph_touch_fmode(ptr noundef %add.ptr.i, ptr noundef %5, i32 noundef %fmode) #12
  %call2 = tail call i32 @__ceph_caps_file_wanted(ptr noundef %add.ptr.i) #12
  %i_caps.i = getelementptr i8, ptr %inode, i32 -520
  %6 = ptrtoint ptr %i_caps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %i_caps.i, align 8
  %cmp.i.not = icmp eq ptr %7, null
  br i1 %cmp.i.not, label %entry.if.end15_crit_edge, label %land.lhs.true

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %and = and i32 %call2, 12968
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %i_auth_cap = getelementptr i8, ptr %inode, i32 -516
  %8 = ptrtoint ptr %i_auth_cap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_auth_cap, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %lor.lhs.false.if.end15_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %call5 = tail call i32 @__ceph_caps_issued(ptr noundef %add.ptr.i, ptr noundef null) #12
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_renew_caps.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_renew_caps, %if.then11)) #12
          to label %do.end [label %if.then11], !srcloc !303

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call13 = tail call ptr @ceph_cap_string(i32 noundef %call2) #12
  %call14 = tail call ptr @ceph_cap_string(i32 noundef %call5) #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_renew_caps.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.4, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 301, ptr noundef %inode, ptr noundef %call13, ptr noundef %call14) #12
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.then
  tail call void @ceph_check_caps(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef null) #12
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false.if.end15_crit_edge, %entry.if.end15_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #12
  %10 = and i32 %call2, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144, i32 %10)
  %.not = icmp eq i32 %10, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %10)
  %.not97 = icmp eq i32 %10, 4096
  %spec.select90 = zext i1 %.not97 to i32
  %flags.0 = select i1 %.not, i32 2, i32 %spec.select90
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %call34 = tail call fastcc ptr @prepare_open_request(ptr noundef %12, i32 noundef %flags.0, i32 noundef 0)
  %cmp.i94 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %call34 to i32
  br label %do.body40

if.end38:                                         ; preds = %if.end15
  %r_inode = getelementptr inbounds %struct.ceph_mds_request, ptr %call34, i32 0, i32 5
  %14 = ptrtoint ptr %r_inode to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %inode, ptr %r_inode, align 8
  tail call void @ihold(ptr noundef %inode) #12
  %r_num_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call34, i32 0, i32 40
  %15 = ptrtoint ptr %r_num_caps to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %r_num_caps, align 4
  %call39 = tail call i32 @ceph_mdsc_do_request(ptr noundef %5, ptr noundef null, ptr noundef %call34) #12
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call34, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #12
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #12, !srcloc !305
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.do.body40_crit_edge, label %if.then10.i.i.i.i.i, !prof !306

if.end5.i.i.i.i.i.do.body40_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body40

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #12
  br label %do.body40

if.then.i.i:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !307
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #12, !callees !308
  br label %do.body40

do.body40:                                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.do.body40_crit_edge, %if.then36
  %err.0 = phi i32 [ %13, %if.then36 ], [ %call39, %if.end5.i.i.i.i.i.do.body40_crit_edge ], [ %call39, %if.then10.i.i.i.i.i ], [ %call39, %if.then.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_renew_caps.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_renew_caps, %if.then52)) #12
          to label %do.end56 [label %if.then52], !srcloc !303

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_renew_caps.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.7, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 332, ptr noundef %inode, i32 noundef %err.0) #12
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %do.body40
  %17 = tail call i32 @llvm.smin.i32(i32 %err.0, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %17, %do.end56 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ceph_touch_fmode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_caps_file_wanted(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_caps_issued(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_cap_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_check_caps(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @prepare_open_request(ptr nocapture noundef readonly %sb, i32 noundef %flags, i32 noundef %create_mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %mdsc.i = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mdsc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdsc.i, align 8
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 770, i32 4865
  %and1 = and i32 %flags, 579
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %spec.select = select i1 %tobool2.not, i32 0, i32 2
  %call3 = tail call ptr @ceph_mdsc_create_request(ptr noundef %3, i32 noundef %cond, i32 noundef %spec.select) #12
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.out_crit_edge, label %if.end6

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end6:                                          ; preds = %entry
  %call7 = tail call i32 @ceph_flags_to_mode(i32 noundef %flags) #12
  %r_fmode = getelementptr inbounds %struct.ceph_mds_request, ptr %call3, i32 0, i32 18
  %4 = ptrtoint ptr %r_fmode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call7, ptr %r_fmode, align 8
  %5 = xor i32 %and, -4
  %flags.addr.0.i = and i32 %5, %flags
  %and9.i = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %and13.i = and i32 %flags.addr.0.i, -132
  %flags.addr.1.i = select i1 %tobool10.not.i, i32 %flags.addr.0.i, i32 %and13.i
  %and31.i = and i32 %flags.addr.1.i, -49668
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool33.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool33.not.i, label %if.end6.ceph_flags_sys2wire.exit_crit_edge, label %do.body.i

if.end6.ceph_flags_sys2wire.exit_crit_edge:       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceph_flags_sys2wire.exit

do.body.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_flags_sys2wire.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@prepare_open_request, %if.then38.i)) #12
          to label %ceph_flags_sys2wire.exit [label %if.then38.i], !srcloc !303

if.then38.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_flags_sys2wire.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.37, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 51, i32 noundef %and31.i) #12
  br label %ceph_flags_sys2wire.exit

ceph_flags_sys2wire.exit:                         ; preds = %if.then38.i, %do.body.i, %if.end6.ceph_flags_sys2wire.exit_crit_edge
  %and21.i = shl i32 %flags.addr.1.i, 2
  %6 = and i32 %and21.i, 65536
  %and15.i = and i32 %flags.addr.1.i, 512
  %and.i = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %switch.selectcmp63.i = icmp eq i32 %and.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %switch.selectcmp.i = icmp eq i32 %and.i, 1
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  %switch.select64.i = select i1 %switch.selectcmp63.i, i32 2, i32 %switch.select.i
  %7 = and i32 %and21.i, 131072
  %8 = and i32 %flags, 192
  %9 = or i32 %switch.select64.i, %8
  %10 = or i32 %9, %and15.i
  %11 = or i32 %10, %6
  %12 = or i32 %11, %7
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  %r_args = getelementptr inbounds %struct.ceph_mds_request, ptr %call3, i32 0, i32 17
  %14 = ptrtoint ptr %r_args to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %r_args, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %create_mode)
  %mode = getelementptr inbounds %struct.ceph_mds_request, ptr %call3, i32 0, i32 17, i32 0, i32 1
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %mode, align 4
  br label %out

out:                                              ; preds = %ceph_flags_sys2wire.exit, %entry.out_crit_edge
  ret ptr %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_mdsc_do_request(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %mdsc2 = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %mdsc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdsc2, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end9, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_open.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_open, %if.then7)) #12
          to label %cleanup [label %if.then7], !srcloc !303

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_open.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.10, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 353, ptr noundef %file) #12
  br label %cleanup

if.end9:                                          ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %8 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_flags, align 4
  %and = and i32 %9, -193
  %10 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %inode, align 8
  %12 = and i16 %11, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %12)
  %cmp = icmp eq i16 %12, 16384
  %spec.store.select = select i1 %cmp, i32 16384, i32 %and
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_open.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_open, %if.then26)) #12
          to label %do.end34 [label %if.then26], !srcloc !303

if.then26:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %add.ptr.i, align 8
  %snap = getelementptr i8, ptr %inode, i32 -944
  %15 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %snap, align 8
  %17 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %f_flags, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_open.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.12, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 363, ptr noundef %inode, i64 noundef %14, i64 noundef %16, ptr noundef %file, i32 noundef %spec.store.select, i32 noundef %18) #12
  br label %do.end34

do.end34:                                         ; preds = %if.then26, %if.end9
  %call35 = tail call i32 @ceph_flags_to_mode(i32 noundef %spec.store.select) #12
  %call36 = tail call i32 @ceph_caps_for_mode(i32 noundef %call35) #12
  %snap.i = getelementptr i8, ptr %inode, i32 -944
  %19 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %20)
  %cmp38.not = icmp eq i64 %20, -2
  br i1 %cmp38.not, label %do.end34.if.end49_crit_edge, label %land.lhs.true

do.end34.if.end49_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

land.lhs.true:                                    ; preds = %do.end34
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %21 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %f_mode, align 8
  %and40 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end43, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end43:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %20)
  %cmp45 = icmp eq i64 %20, -1
  br i1 %cmp45, label %if.then47, label %if.end43.if.end49_crit_edge

if.end43.if.end49_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %call48 = tail call fastcc i32 @ceph_init_file(ptr noundef %inode, ptr noundef %file, i32 noundef %call35)
  br label %cleanup

if.end49:                                         ; preds = %if.end43.if.end49_crit_edge, %do.end34.if.end49_crit_edge
  %i_ceph_lock = getelementptr i8, ptr %inode, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #12
  %i_caps.i = getelementptr i8, ptr %inode, i32 -520
  %23 = ptrtoint ptr %i_caps.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %i_caps.i, align 8
  %cmp.i.not = icmp eq ptr %24, null
  br i1 %cmp.i.not, label %if.end49.if.else_crit_edge, label %land.lhs.true52

if.end49.if.else_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true52:                                  ; preds = %if.end49
  %and53 = and i32 %call35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %cmp54 = icmp eq i32 %and53, 0
  br i1 %cmp54, label %land.lhs.true52.if.then57_crit_edge, label %lor.lhs.false

land.lhs.true52.if.then57_crit_edge:              ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then57

lor.lhs.false:                                    ; preds = %land.lhs.true52
  %i_auth_cap = getelementptr i8, ptr %inode, i32 -516
  %25 = ptrtoint ptr %i_auth_cap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_auth_cap, align 4
  %tobool56.not = icmp eq ptr %26, null
  br i1 %tobool56.not, label %lor.lhs.false.if.else_crit_edge, label %lor.lhs.false.if.then57_crit_edge

lor.lhs.false.if.then57_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then57

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then57:                                        ; preds = %lor.lhs.false.if.then57_crit_edge, %land.lhs.true52.if.then57_crit_edge
  %call58 = tail call i32 @__ceph_caps_mds_wanted(ptr noundef %add.ptr.i, i1 noundef zeroext true) #12
  %call59 = tail call i32 @__ceph_caps_issued(ptr noundef %add.ptr.i, ptr noundef null) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_open.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_open, %if.then72)) #12
          to label %do.end78 [label %if.then72], !srcloc !303

if.then72:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  %call74 = tail call ptr @ceph_cap_string(i32 noundef %call36) #12
  %call75 = tail call ptr @ceph_cap_string(i32 noundef %call59) #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_open.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.14, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 389, ptr noundef %inode, i32 noundef %call35, ptr noundef %call74, ptr noundef %call75) #12
  br label %do.end78

do.end78:                                         ; preds = %if.then72, %if.then57
  tail call void @__ceph_touch_fmode(ptr noundef %add.ptr.i, ptr noundef %5, i32 noundef %call35) #12
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #12
  %and80 = and i32 %call59, %call36
  call void @__sanitizer_cov_trace_cmp4(i32 %and80, i32 %call36)
  %cmp81.not = icmp eq i32 %and80, %call36
  %and84 = and i32 %call58, %call36
  call void @__sanitizer_cov_trace_cmp4(i32 %and84, i32 %call36)
  %cmp85.not = icmp eq i32 %and84, %call36
  %or.cond = select i1 %cmp81.not, i1 true, i1 %cmp85.not
  br i1 %or.cond, label %do.end78.if.end92_crit_edge, label %land.lhs.true87

do.end78.if.end92_crit_edge:                      ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

land.lhs.true87:                                  ; preds = %do.end78
  %27 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %28)
  %cmp89.not = icmp eq i64 %28, -1
  br i1 %cmp89.not, label %land.lhs.true87.if.end92_crit_edge, label %if.then91

land.lhs.true87.if.end92_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

if.then91:                                        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ceph_check_caps(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef null) #12
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %land.lhs.true87.if.end92_crit_edge, %do.end78.if.end92_crit_edge
  %call93 = tail call fastcc i32 @ceph_init_file(ptr noundef %inode, ptr noundef %file, i32 noundef %call35)
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %if.end49.if.else_crit_edge
  %29 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %30)
  %cmp95.not = icmp eq i64 %30, -2
  br i1 %cmp95.not, label %if.else.if.end105_crit_edge, label %land.lhs.true97

if.else.if.end105_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end105

land.lhs.true97:                                  ; preds = %if.else
  %i_snap_caps = getelementptr i8, ptr %inode, i32 -392
  %31 = ptrtoint ptr %i_snap_caps to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i_snap_caps, align 8
  %and98 = and i32 %32, %call36
  call void @__sanitizer_cov_trace_cmp4(i32 %and98, i32 %call36)
  %cmp99 = icmp eq i32 %and98, %call36
  br i1 %cmp99, label %if.then101, label %land.lhs.true97.if.end105_crit_edge

land.lhs.true97.if.end105_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end105

if.then101:                                       ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__ceph_touch_fmode(ptr noundef %add.ptr.i, ptr noundef %5, i32 noundef %call35) #12
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #12
  %call103 = tail call fastcc i32 @ceph_init_file(ptr noundef %inode, ptr noundef %file, i32 noundef %call35)
  br label %cleanup

if.end105:                                        ; preds = %land.lhs.true97.if.end105_crit_edge, %if.else.if.end105_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_open.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_open, %if.then119)) #12
          to label %do.end124 [label %if.then119], !srcloc !303

if.then119:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  %call121 = tail call ptr @ceph_cap_string(i32 noundef %call36) #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_open.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.16, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 409, i32 noundef %call35, ptr noundef %call121) #12
  br label %do.end124

do.end124:                                        ; preds = %if.then119, %if.end105
  %33 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb, align 4
  %call126 = tail call fastcc ptr @prepare_open_request(ptr noundef %34, i32 noundef %spec.store.select, i32 noundef 0)
  %cmp.i251 = icmp ugt ptr %call126, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i251, label %if.then128, label %if.end130

if.then128:                                       ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %call126 to i32
  br label %cleanup

if.end130:                                        ; preds = %do.end124
  %r_inode = getelementptr inbounds %struct.ceph_mds_request, ptr %call126, i32 0, i32 5
  %36 = ptrtoint ptr %r_inode to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %inode, ptr %r_inode, align 8
  tail call void @ihold(ptr noundef %inode) #12
  %r_num_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call126, i32 0, i32 40
  %37 = ptrtoint ptr %r_num_caps to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %r_num_caps, align 4
  %call131 = tail call i32 @ceph_mdsc_do_request(ptr noundef %5, ptr noundef null, ptr noundef %call126) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.then133, label %if.end130.if.end135_crit_edge

if.end130.if.end135_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

if.then133:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  %r_fmode = getelementptr inbounds %struct.ceph_mds_request, ptr %call126, i32 0, i32 18
  %38 = ptrtoint ptr %r_fmode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %r_fmode, align 8
  %call134 = tail call fastcc i32 @ceph_init_file(ptr noundef %inode, ptr noundef %file, i32 noundef %39)
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %if.end130.if.end135_crit_edge
  %err.0 = phi i32 [ %call131, %if.end130.if.end135_crit_edge ], [ %call134, %if.then133 ]
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call126, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #12
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #12, !srcloc !305
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !306

if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceph_mdsc_put_request.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #12
  br label %ceph_mdsc_put_request.exit

if.then.i.i:                                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !307
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #12, !callees !308
  br label %ceph_mdsc_put_request.exit

ceph_mdsc_put_request.exit:                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_open.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_open, %if.then148)) #12
          to label %cleanup [label %if.then148], !srcloc !303

if.then148:                                       ; preds = %ceph_mdsc_put_request.exit
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %add.ptr.i, align 8
  %43 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %snap.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_open.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.18, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 423, i32 noundef %err.0, i64 noundef %42, i64 noundef %44) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then148, %ceph_mdsc_put_request.exit, %if.then128, %if.then101, %if.end92, %if.then47, %land.lhs.true.cleanup_crit_edge, %if.then7, %do.body
  %retval.0 = phi i32 [ %call48, %if.then47 ], [ %call93, %if.end92 ], [ %call103, %if.then101 ], [ 0, %if.then7 ], [ -30, %land.lhs.true.cleanup_crit_edge ], [ %35, %if.then128 ], [ %err.0, %if.then148 ], [ 0, %do.body ], [ %err.0, %ceph_mdsc_put_request.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_flags_to_mode(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_caps_for_mode(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ceph_init_file(ptr noundef %inode, ptr noundef %file, i32 noundef %fmode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i16 %2, label %do.body15 [
    i16 -32768, label %sw.bb
    i16 16384, label %entry.sw.bb2_crit_edge
    i16 -24576, label %do.body
  ]

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %4 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_mode, align 8
  %and1 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool = icmp ne i32 %and1, 0
  tail call void @ceph_fscache_use_cookie(ptr noundef %inode, i1 noundef zeroext %tobool) #12
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry.sw.bb2_crit_edge
  %6 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %inode, align 8
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %8)
  %cmp = icmp eq i16 %8, 16384
  %call = tail call fastcc i32 @ceph_init_file_info(ptr noundef %inode, ptr noundef %file, i32 noundef %fmode, i1 noundef zeroext %cmp)
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_init_file.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_init_file, %if.then)) #12
          to label %sw.epilog [label %if.then], !srcloc !303

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %inode, align 8
  %conv14 = zext i16 %10 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_init_file.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.40, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 265, ptr noundef %inode, ptr noundef %file, i32 noundef %conv14) #12
  br label %sw.epilog

do.body15:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_init_file.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_init_file, %if.then27)) #12
          to label %do.body34 [label %if.then27], !srcloc !303

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %inode, align 8
  %conv30 = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_init_file.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.42, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 270, ptr noundef %inode, ptr noundef %file, i32 noundef %conv30) #12
  br label %do.body34

do.body34:                                        ; preds = %if.then27, %do.body15
  %13 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %release = getelementptr inbounds %struct.file_operations, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %release, align 4
  %cmp35 = icmp eq ptr %17, @ceph_release
  br i1 %cmp35, label %do.body44, label %do.end52, !prof !309

do.body44:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 275, 0\0A.popsection", ""() #12, !srcloc !310
  unreachable

do.end52:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  %open = getelementptr inbounds %struct.file_operations, ptr %15, i32 0, i32 14
  %18 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %open, align 4
  %call53 = tail call i32 %19(ptr noundef %inode, ptr noundef %file) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end52, %if.then, %do.body, %sw.bb2
  %ret.0 = phi i32 [ %call53, %do.end52 ], [ 0, %if.then ], [ %call, %sw.bb2 ], [ 0, %do.body ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_caps_mds_wanted(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_atomic_open(ptr noundef %dir, ptr noundef %dentry, ptr noundef %file, i32 noundef %flags, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  %mode.addr = alloca i16, align 2
  %as_ctx = alloca %struct.ceph_acl_sec_ctx, align 4
  %lo = alloca %struct.ceph_file_layout, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %mode, ptr %mode.addr, align 2
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %mdsc1 = getelementptr inbounds %struct.ceph_fs_client, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %mdsc1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdsc1, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %as_ctx) #12
  %7 = call ptr @memset(ptr %as_ctx, i32 0, i32 20)
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %4, i32 0, i32 2
  %8 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mount_options, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp ne i32 %12, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_atomic_open.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_atomic_open, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !303

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %15, null
  %cond = select i1 %tobool.not.i.i.not, ptr @.str.22, ptr @.str.23
  %16 = ptrtoint ptr %mode.addr to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mode.addr, align 2
  %conv = zext i16 %17 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_atomic_open.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.21, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 701, ptr noundef %dir, ptr noundef %dentry, ptr noundef %dentry, ptr noundef nonnull %cond, i32 noundef %flags, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %18 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %19)
  %cmp = icmp ugt i32 %19, 255
  br i1 %cmp, label %do.end.cleanup197_crit_edge, label %if.end15

do.end.cleanup197_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup197

if.end15:                                         ; preds = %do.end
  %and16 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end15
  %call19 = tail call zeroext i1 @ceph_quota_is_max_files_exceeded(ptr noundef %dir) #12
  br i1 %call19, label %if.then18.cleanup197_crit_edge, label %if.end21

if.then18.cleanup197_crit_edge:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup197

if.end21:                                         ; preds = %if.then18
  %call22 = call i32 @ceph_pre_init_acls(ptr noundef %dir, ptr noundef nonnull %mode.addr, ptr noundef nonnull %as_ctx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end21.cleanup197_crit_edge, label %if.end26

if.end21.cleanup197_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup197

if.end26:                                         ; preds = %if.end21
  %20 = ptrtoint ptr %mode.addr to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mode.addr, align 2
  %call27 = call i32 @ceph_security_init_secctx(ptr noundef %dentry, i16 noundef zeroext %21, ptr noundef nonnull %as_ctx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.out_ctx_crit_edge, label %if.end26.if.end36_crit_edge

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.end26.out_ctx_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_ctx

if.else:                                          ; preds = %if.end15
  %22 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dentry, align 8
  %and.i = and i32 %23, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool33.not = icmp eq i32 %and.i, 0
  br i1 %tobool33.not, label %if.else.cleanup197_crit_edge, label %if.else.if.end36_crit_edge

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.else.cleanup197_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup197

if.end36:                                         ; preds = %if.else.if.end36_crit_edge, %if.end26.if.end36_crit_edge
  %24 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb, align 4
  %26 = ptrtoint ptr %mode.addr to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mode.addr, align 2
  %conv38398 = zext i16 %27 to i32
  %call39399 = call fastcc ptr @prepare_open_request(ptr noundef %25, i32 noundef %flags, i32 noundef %conv38398)
  %cmp.i400 = icmp ugt ptr %call39399, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i400, label %if.end36.if.then41_crit_edge, label %if.end43.lr.ph

if.end36.if.then41_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then41

if.end43.lr.ph:                                   ; preds = %if.end36
  %tobool.not.i = icmp eq ptr %dentry, null
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  %pagelist = getelementptr inbounds %struct.ceph_acl_sec_ctx, ptr %as_ctx, i32 0, i32 4
  %add.ptr.i.i = getelementptr i8, ptr %dir, i32 -952
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %i_ceph_lock.i = getelementptr i8, ptr %dir, i32 -936
  %i_auth_cap.i = getelementptr i8, ptr %dir, i32 -516
  %i_cached_layout.i = getelementptr i8, ptr %dir, i32 -792
  %i_complete_seq.i.i = getelementptr i8, ptr %dir, i32 -848
  %i_release_count.i.i = getelementptr i8, ptr %dir, i32 -864
  %i_shared_gen.i = getelementptr i8, ptr %dir, i32 -180
  %pool_ns.i = getelementptr i8, ptr %dir, i32 -768
  %pool_ns73.i = getelementptr inbounds %struct.ceph_file_layout, ptr %lo, i32 0, i32 4
  br label %if.end43

if.then41:                                        ; preds = %cleanup.if.then41_crit_edge, %if.end36.if.then41_crit_edge
  %call39.lcssa = phi ptr [ %call39399, %if.end36.if.then41_crit_edge ], [ %call39, %cleanup.if.then41_crit_edge ]
  %28 = ptrtoint ptr %call39.lcssa to i32
  br label %out_ctx

if.end43:                                         ; preds = %cleanup.if.end43_crit_edge, %if.end43.lr.ph
  %call39402 = phi ptr [ %call39399, %if.end43.lr.ph ], [ %call39, %cleanup.if.end43_crit_edge ]
  %try_async.0.off0401 = phi i1 [ %13, %if.end43.lr.ph ], [ false, %cleanup.if.end43_crit_edge ]
  br i1 %tobool.not.i, label %if.end43.dget.exit_crit_edge, label %if.then.i

if.end43.dget.exit_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %dget.exit

if.then.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  call void @lockref_get(ptr noundef %d_lockref.i) #12
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.end43.dget.exit_crit_edge
  %r_dentry = getelementptr inbounds %struct.ceph_mds_request, ptr %call39402, i32 0, i32 6
  %29 = ptrtoint ptr %r_dentry to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dentry, ptr %r_dentry, align 4
  %r_num_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call39402, i32 0, i32 40
  %30 = ptrtoint ptr %r_num_caps to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %r_num_caps, align 4
  %call45 = call zeroext i1 @ceph_security_xattr_wanted(ptr noundef %dir) #12
  %spec.select = select i1 %call45, i32 1157627904, i32 83886080
  %r_args = getelementptr inbounds %struct.ceph_mds_request, ptr %call39402, i32 0, i32 17
  %mask48 = getelementptr inbounds %struct.ceph_mds_request, ptr %call39402, i32 0, i32 17, i32 0, i32 6
  %31 = ptrtoint ptr %mask48 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.select, ptr %mask48, align 8
  %r_parent = getelementptr inbounds %struct.ceph_mds_request, ptr %call39402, i32 0, i32 13
  %32 = ptrtoint ptr %r_parent to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dir, ptr %r_parent, align 8
  call void @ihold(ptr noundef %dir) #12
  br i1 %tobool17.not, label %dget.exit.if.end88_crit_edge, label %if.then51

dget.exit.if.end88_crit_edge:                     ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then51:                                        ; preds = %dget.exit
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %lo) #12
  %33 = call ptr @memset(ptr %lo, i32 255, i32 32)
  %r_dentry_drop = getelementptr inbounds %struct.ceph_mds_request, ptr %call39402, i32 0, i32 27
  %34 = ptrtoint ptr %r_dentry_drop to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 264, ptr %r_dentry_drop, align 4
  %r_dentry_unless = getelementptr inbounds %struct.ceph_mds_request, ptr %call39402, i32 0, i32 28
  %35 = ptrtoint ptr %r_dentry_unless to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 512, ptr %r_dentry_unless, align 8
  %36 = ptrtoint ptr %pagelist to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pagelist, align 4
  %tobool52.not = icmp eq ptr %37, null
  br i1 %tobool52.not, label %if.then51.if.end56_crit_edge, label %if.then53

if.then51.if.end56_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then53:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  %r_pagelist = getelementptr inbounds %struct.ceph_mds_request, ptr %call39402, i32 0, i32 24
  %38 = ptrtoint ptr %r_pagelist to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %r_pagelist, align 8
  %39 = ptrtoint ptr %pagelist to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %pagelist, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.then51.if.end56_crit_edge
  br i1 %try_async.0.off0401, label %land.lhs.true, label %if.end56.cleanup.thread361_crit_edge

if.end56.cleanup.thread361_crit_edge:             ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread361

land.lhs.true:                                    ; preds = %if.end56
  %r_deleg_ino = getelementptr inbounds %struct.ceph_mds_request, ptr %call39402, i32 0, i32 55
  %40 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %d_fsdata.i.i, align 4
  call void @_raw_spin_lock(ptr noundef %i_ceph_lock.i) #12
  %42 = ptrtoint ptr %i_auth_cap.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_auth_cap.i, align 4
  %tobool.not.i302 = icmp eq ptr %43, null
  br i1 %tobool.not.i302, label %land.lhs.true.try_prep_async_create.exit.thread_crit_edge, label %if.end.i

land.lhs.true.try_prep_async_create.exit.thread_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %try_prep_async_create.exit.thread

if.end.i:                                         ; preds = %land.lhs.true
  %session.i = getelementptr inbounds %struct.ceph_cap, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %session.i, align 8
  %xa_head.i.i = getelementptr inbounds %struct.ceph_mds_session, ptr %45, i32 0, i32 28, i32 2
  %46 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %xa_head.i.i, align 4
  %cmp.i.i = icmp eq ptr %47, null
  br i1 %cmp.i.i, label %if.end.i.try_prep_async_create.exit.thread_crit_edge, label %if.end5.i

if.end.i.try_prep_async_create.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %try_prep_async_create.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call i32 @ceph_file_layout_is_valid(ptr noundef %i_cached_layout.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.try_prep_async_create.exit.thread_crit_edge, label %if.end9.i

if.end5.i.try_prep_async_create.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %try_prep_async_create.exit.thread

if.end9.i:                                        ; preds = %if.end5.i
  %call10.i = call i32 @__ceph_caps_issued(ptr noundef %add.ptr.i.i, ptr noundef null) #12
  %and.i303 = and i32 %call10.i, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %and.i303)
  %cmp.not.i = icmp eq i32 %and.i303, 1536
  br i1 %cmp.not.i, label %if.end12.i, label %if.end9.i.try_prep_async_create.exit.thread_crit_edge

if.end9.i.try_prep_async_create.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %try_prep_async_create.exit.thread

if.end12.i:                                       ; preds = %if.end9.i
  %48 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dentry, align 8
  %and.i.i = and i32 %49, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool14.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool14.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end12.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_complete_seq.i.i, i32 noundef 8) #12
  %call.i.i111.i = call i64 @generic_atomic64_read(ptr noundef %i_complete_seq.i.i) #12
  %call.i.i3.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_release_count.i.i, i32 noundef 8) #12
  %call.i4.i.i = call i64 @generic_atomic64_read(ptr noundef %i_release_count.i.i) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i111.i, i64 %call.i4.i.i)
  %cmp.i112.i = icmp eq i64 %call.i.i111.i, %call.i4.i.i
  br i1 %cmp.i112.i, label %if.end18.i, label %if.then15.i.try_prep_async_create.exit.thread_crit_edge

if.then15.i.try_prep_async_create.exit.thread_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %try_prep_async_create.exit.thread

if.end18.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_lock(ptr noundef %d_lockref.i) #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_shared_gen.i, i32 noundef 4) #12
  %50 = ptrtoint ptr %i_shared_gen.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %i_shared_gen.i, align 4
  %lease_shared_gen.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %41, i32 0, i32 4
  %52 = ptrtoint ptr %lease_shared_gen.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %lease_shared_gen.i, align 4
  call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #12
  br label %if.end28.i

if.else.i:                                        ; preds = %if.end12.i
  %call.i.i110.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_shared_gen.i, i32 noundef 4) #12
  %53 = ptrtoint ptr %i_shared_gen.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %i_shared_gen.i, align 4
  %lease_shared_gen24.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %41, i32 0, i32 4
  %55 = ptrtoint ptr %lease_shared_gen24.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %lease_shared_gen24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp25.not.i = icmp eq i32 %54, %56
  br i1 %cmp25.not.i, label %if.else.i.if.end28.i_crit_edge, label %if.else.i.try_prep_async_create.exit.thread_crit_edge

if.else.i.try_prep_async_create.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %try_prep_async_create.exit.thread

if.else.i.if.end28.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else.i.if.end28.i_crit_edge, %if.end18.i
  %57 = ptrtoint ptr %i_auth_cap.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i_auth_cap.i, align 4
  %session30.i = getelementptr inbounds %struct.ceph_cap, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %session30.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %session30.i, align 8
  %call31.i = call i64 @ceph_get_deleg_ino(ptr noundef %60) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call31.i)
  %tobool32.not.i = icmp eq i64 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end28.i.try_prep_async_create.exit.thread_crit_edge, label %if.end34.i

if.end28.i.try_prep_async_create.exit.thread_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %try_prep_async_create.exit.thread

if.end34.i:                                       ; preds = %if.end28.i
  %61 = ptrtoint ptr %r_deleg_ino to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %call31.i, ptr %r_deleg_ino, align 8
  call void @ceph_take_cap_refs(ptr noundef %add.ptr.i.i, i32 noundef 1536, i1 noundef zeroext false) #12
  %62 = call ptr @memcpy(ptr %lo, ptr %i_cached_layout.i, i32 32)
  %63 = call i32 @llvm.read_register.i32(metadata !293) #12
  %and.i.i.i.i.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %66, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !311
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %if.end34.i.for.cond.i.preheader_crit_edge, label %land.lhs.true.i.i

if.end34.i.for.cond.i.preheader_crit_edge:        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

land.lhs.true.i.i:                                ; preds = %if.end34.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i305 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i305, label %land.lhs.true.i.i.for.cond.i.preheader_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.for.cond.i.preheader_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 696, ptr noundef nonnull @.str.51) #12
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i.i.for.cond.i.preheader_crit_edge, %if.end34.i.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %kref_get_unless_zero.exit.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %67 = ptrtoint ptr %pool_ns.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %pool_ns.i, align 8
  %call43.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %land.lhs.true.i, label %for.cond.i.do.end52.i_crit_edge

for.cond.i.do.end52.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end52.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call45.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %land.lhs.true.i.do.end52.i_crit_edge, label %land.lhs.true47.i

land.lhs.true.i.do.end52.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end52.i

land.lhs.true47.i:                                ; preds = %land.lhs.true.i
  %.b109.i = load i1, ptr @try_prep_async_create.__warned, align 1
  br i1 %.b109.i, label %land.lhs.true47.i.do.end52.i_crit_edge, label %if.then49.i

land.lhs.true47.i.do.end52.i_crit_edge:           ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end52.i

if.then49.i:                                      ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @try_prep_async_create.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 494, ptr noundef nonnull @.str.49) #12
  br label %do.end52.i

do.end52.i:                                       ; preds = %if.then49.i, %land.lhs.true47.i.do.end52.i_crit_edge, %land.lhs.true.i.do.end52.i_crit_edge, %for.cond.i.do.end52.i_crit_edge
  %tobool54.not.i = icmp eq ptr %68, null
  br i1 %tobool54.not.i, label %do.end52.i.for.end.i_crit_edge, label %lor.lhs.false.i

do.end52.i.for.end.i_crit_edge:                   ; preds = %do.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

lor.lhs.false.i:                                  ; preds = %do.end52.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #12
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %68, i32 noundef 4) #12
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %68, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %lor.lhs.false.i
  %71 = phi i32 [ %70, %lor.lhs.false.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %72 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i.i.i.i.i = icmp eq i32 %71, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %71, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %68, i32 noundef 4) #12
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #12
  %73 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %68, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %75 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %68, ptr nonnull %68, i32 %74, i32 %add.i.i.i.i.i, ptr nonnull elementtype(i32) %68) #12, !srcloc !312
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %75, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %75, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %74
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !306

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %76 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %77, 1
  %78 = or i32 %add5.i.i.i.i.i, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %.not.i.i.i.i.i = icmp sgt i32 %78, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !306

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %68, i32 noundef 0) #12
  %79 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %80 = phi i32 [ %77, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  %tobool12.i.i.i.i.not.i = icmp eq i32 %80, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #12
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.for.cond.i_crit_edge, label %kref_get_unless_zero.exit.i.for.end.i_crit_edge

kref_get_unless_zero.exit.i.for.end.i_crit_edge:  ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

kref_get_unless_zero.exit.i.for.cond.i_crit_edge: ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.end.i:                                        ; preds = %kref_get_unless_zero.exit.i.for.end.i_crit_edge, %do.end52.i.for.end.i_crit_edge
  %call.i113.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i113.i, label %for.end.i.if.then61_crit_edge, label %land.lhs.true.i116.i

for.end.i.if.then61_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

land.lhs.true.i116.i:                             ; preds = %for.end.i
  %call1.i114.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i114.i)
  %tobool.not.i115.i = icmp eq i32 %call1.i114.i, 0
  br i1 %tobool.not.i115.i, label %land.lhs.true.i116.i.if.then61_crit_edge, label %land.lhs.true2.i118.i

land.lhs.true.i116.i.if.then61_crit_edge:         ; preds = %land.lhs.true.i116.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

land.lhs.true2.i118.i:                            ; preds = %land.lhs.true.i116.i
  %.b4.i117.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i117.i, label %land.lhs.true2.i118.i.if.then61_crit_edge, label %if.then.i119.i

land.lhs.true2.i118.i.if.then61_crit_edge:        ; preds = %land.lhs.true2.i118.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

if.then.i119.i:                                   ; preds = %land.lhs.true2.i118.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 724, ptr noundef nonnull @.str.52) #12
  br label %if.then61

try_prep_async_create.exit.thread:                ; preds = %if.end28.i.try_prep_async_create.exit.thread_crit_edge, %if.else.i.try_prep_async_create.exit.thread_crit_edge, %if.then15.i.try_prep_async_create.exit.thread_crit_edge, %if.end9.i.try_prep_async_create.exit.thread_crit_edge, %if.end5.i.try_prep_async_create.exit.thread_crit_edge, %if.end.i.try_prep_async_create.exit.thread_crit_edge, %land.lhs.true.try_prep_async_create.exit.thread_crit_edge
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock.i) #12
  %r_dir_caps355 = getelementptr inbounds %struct.ceph_mds_request, ptr %call39402, i32 0, i32 39
  %81 = ptrtoint ptr %r_dir_caps355 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %r_dir_caps355, align 8
  br label %cleanup.thread361

if.then61:                                        ; preds = %if.then.i119.i, %land.lhs.true2.i118.i.if.then61_crit_edge, %land.lhs.true.i116.i.if.then61_crit_edge, %for.end.i.if.then61_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !313
  %82 = call i32 @llvm.read_register.i32(metadata !293) #12
  %and.i.i.i.i.i120.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i120.i to ptr
  %preempt_count.i.i.i.i121.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i121.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i121.i, align 4
  %sub.i.i.i.i = add i32 %85, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i121.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !314
  %86 = ptrtoint ptr %pool_ns73.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %68, ptr %pool_ns73.i, align 8
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock.i) #12
  %r_dir_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call39402, i32 0, i32 39
  %87 = ptrtoint ptr %r_dir_caps to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1536, ptr %r_dir_caps, align 8
  %r_req_flags = getelementptr inbounds %struct.ceph_mds_request, ptr %call39402, i32 0, i32 15
  call void @_set_bit(i32 noundef 8, ptr noundef %r_req_flags) #12
  %88 = ptrtoint ptr %r_args to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %r_args, align 8
  %or64 = or i32 %89, -2147483648
  store i32 %or64, ptr %r_args, align 8
  %r_callback = getelementptr inbounds %struct.ceph_mds_request, ptr %call39402, i32 0, i32 59
  %90 = ptrtoint ptr %r_callback to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @ceph_async_create_cb, ptr %r_callback, align 8
  %call65 = call i32 @ceph_mdsc_submit_request(ptr noundef %6, ptr noundef %dir, ptr noundef %call39402) #12
  %91 = zext i32 %call65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %call65, label %if.then61.if.end80_crit_edge [
    i32 0, label %if.then67
    i32 -528, label %if.then72
  ]

if.then61.if.end80_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then67:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  %92 = ptrtoint ptr %mode.addr to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %mode.addr, align 2
  %call68 = call fastcc i32 @ceph_finish_async_create(ptr noundef %dir, ptr noundef %dentry, ptr noundef %file, i16 noundef zeroext %93, ptr noundef %call39402, ptr noundef nonnull %as_ctx, ptr noundef nonnull %lo)
  br label %if.end80

if.then72:                                        ; preds = %if.then61
  %94 = ptrtoint ptr %r_deleg_ino to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %r_deleg_ino, align 8
  call void @_raw_spin_lock(ptr noundef %i_ceph_lock.i) #12
  %96 = ptrtoint ptr %i_auth_cap.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %i_auth_cap.i, align 4
  %tobool.not.i308 = icmp eq ptr %97, null
  br i1 %tobool.not.i308, label %if.end.thread.i, label %if.end.i310

if.end.thread.i:                                  ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock.i) #12
  br label %restore_deleg_ino.exit

if.end.i310:                                      ; preds = %if.then72
  %session.i309 = getelementptr inbounds %struct.ceph_cap, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %session.i309 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %session.i309, align 8
  %call2.i = call ptr @ceph_get_mds_session(ptr noundef %99) #12
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock.i) #12
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.end.i310.restore_deleg_ino.exit_crit_edge, label %if.then5.i

if.end.i310.restore_deleg_ino.exit_crit_edge:     ; preds = %if.end.i310
  call void @__sanitizer_cov_trace_pc() #14
  br label %restore_deleg_ino.exit

if.then5.i:                                       ; preds = %if.end.i310
  %call6.i311 = call i32 @ceph_restore_deleg_ino(ptr noundef nonnull %call2.i, i64 noundef %95) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i311)
  %tobool7.not.i312 = icmp eq i32 %call6.i311, 0
  br i1 %tobool7.not.i312, label %if.then5.i.if.end10.i_crit_edge, label %do.end.i

if.then5.i.if.end10.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

do.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i64 noundef %95, i32 noundef %call6.i311) #15
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i, %if.then5.i.if.end10.i_crit_edge
  call void @ceph_put_mds_session(ptr noundef nonnull %call2.i) #12
  br label %restore_deleg_ino.exit

restore_deleg_ino.exit:                           ; preds = %if.end10.i, %if.end.i310.restore_deleg_ino.exit_crit_edge, %if.end.thread.i
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call39402, i32 0, i32 3
  %call.i.i.i.i.i.i.i313 = call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !304
  call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #12
  %100 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #12, !srcloc !305
  %asmresult.i.i.i.i.i.i.i.i314 = extractvalue { i32, i32, i32 } %100, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i314)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i314, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i317, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %restore_deleg_ino.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i314)
  %.not.i.i.i.i.i315 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i314, 0
  br i1 %.not.i.i.i.i.i315, label %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge, label %if.then10.i.i.i.i.i316, !prof !306

if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceph_mdsc_put_request.exit

if.then10.i.i.i.i.i316:                           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #12
  br label %ceph_mdsc_put_request.exit

if.then.i.i317:                                   ; preds = %restore_deleg_ino.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !307
  call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #12, !callees !308
  br label %ceph_mdsc_put_request.exit

ceph_mdsc_put_request.exit:                       ; preds = %if.then.i.i317, %if.then10.i.i.i.i.i316, %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge
  %101 = ptrtoint ptr %pool_ns73.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile ptr, ptr %pool_ns73.i, align 8
  %tobool.not.i318 = icmp eq ptr %102, null
  br i1 %tobool.not.i318, label %ceph_mdsc_put_request.exit.cleanup_crit_edge, label %if.end.i322

ceph_mdsc_put_request.exit.cleanup_crit_edge:     ; preds = %ceph_mdsc_put_request.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i322:                                      ; preds = %ceph_mdsc_put_request.exit
  %call.i.i.i.i.i.i.i319 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %102, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !304
  call void @llvm.prefetch.p0(ptr nonnull %102, i32 1, i32 3, i32 1) #12
  %103 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %102, ptr nonnull %102, i32 1, ptr nonnull elementtype(i32) %102) #12, !srcloc !305
  %asmresult.i.i.i.i.i.i.i.i320 = extractvalue { i32, i32, i32 } %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i320)
  %cmp.i.i.i.i.i321 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i320, 1
  br i1 %cmp.i.i.i.i.i321, label %if.then.i.i326, label %if.end5.i.i.i.i.i324

if.end5.i.i.i.i.i324:                             ; preds = %if.end.i322
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i320)
  %.not.i.i.i.i.i323 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i320, 0
  br i1 %.not.i.i.i.i.i323, label %if.end5.i.i.i.i.i324.cleanup_crit_edge, label %if.then10.i.i.i.i.i325, !prof !306

if.end5.i.i.i.i.i324.cleanup_crit_edge:           ; preds = %if.end5.i.i.i.i.i324
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i.i325:                           ; preds = %if.end5.i.i.i.i.i324
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %102, i32 noundef 3) #12
  br label %cleanup

if.then.i.i326:                                   ; preds = %if.end.i322
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !307
  call void @ceph_release_string(ptr noundef nonnull %102) #12, !callees !308
  br label %cleanup

if.end80:                                         ; preds = %if.then67, %if.then61.if.end80_crit_edge
  %err.2 = phi i32 [ %call68, %if.then67 ], [ %call65, %if.then61.if.end80_crit_edge ]
  %104 = ptrtoint ptr %pool_ns73.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile ptr, ptr %pool_ns73.i, align 8
  %tobool.not.i327 = icmp eq ptr %105, null
  br i1 %tobool.not.i327, label %if.end80.cleanup.thread_crit_edge, label %if.end.i331

if.end80.cleanup.thread_crit_edge:                ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end.i331:                                      ; preds = %if.end80
  %call.i.i.i.i.i.i.i328 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %105, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !304
  call void @llvm.prefetch.p0(ptr nonnull %105, i32 1, i32 3, i32 1) #12
  %106 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %105, ptr nonnull %105, i32 1, ptr nonnull elementtype(i32) %105) #12, !srcloc !305
  %asmresult.i.i.i.i.i.i.i.i329 = extractvalue { i32, i32, i32 } %106, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i329)
  %cmp.i.i.i.i.i330 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i329, 1
  br i1 %cmp.i.i.i.i.i330, label %if.then.i.i335, label %if.end5.i.i.i.i.i333

if.end5.i.i.i.i.i333:                             ; preds = %if.end.i331
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i329)
  %.not.i.i.i.i.i332 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i329, 0
  br i1 %.not.i.i.i.i.i332, label %if.end5.i.i.i.i.i333.cleanup.thread_crit_edge, label %if.then10.i.i.i.i.i334, !prof !306

if.end5.i.i.i.i.i333.cleanup.thread_crit_edge:    ; preds = %if.end5.i.i.i.i.i333
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.then10.i.i.i.i.i334:                           ; preds = %if.end5.i.i.i.i.i333
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %105, i32 noundef 3) #12
  br label %cleanup.thread

if.then.i.i335:                                   ; preds = %if.end.i331
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !307
  call void @ceph_release_string(ptr noundef nonnull %105) #12, !callees !308
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then.i.i335, %if.then10.i.i.i.i.i334, %if.end5.i.i.i.i.i333.cleanup.thread_crit_edge, %if.end80.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %lo) #12
  br label %out_req

cleanup.thread361:                                ; preds = %try_prep_async_create.exit.thread, %if.end56.cleanup.thread361_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %lo) #12
  br label %if.end88

cleanup:                                          ; preds = %if.then.i.i326, %if.then10.i.i.i.i.i325, %if.end5.i.i.i.i.i324.cleanup_crit_edge, %ceph_mdsc_put_request.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %lo) #12
  %107 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %i_sb, align 4
  %109 = ptrtoint ptr %mode.addr to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %mode.addr, align 2
  %conv38 = zext i16 %110 to i32
  %call39 = call fastcc ptr @prepare_open_request(ptr noundef %108, i32 noundef %flags, i32 noundef %conv38)
  %cmp.i = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.if.then41_crit_edge, label %cleanup.if.end43_crit_edge

cleanup.if.end43_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

cleanup.if.then41_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then41

if.end88:                                         ; preds = %cleanup.thread361, %dget.exit.if.end88_crit_edge
  %call39402410 = phi ptr [ %call39402, %cleanup.thread361 ], [ %call39399, %dget.exit.if.end88_crit_edge ]
  %r_req_flags89 = getelementptr inbounds %struct.ceph_mds_request, ptr %call39402410, i32 0, i32 15
  call void @_set_bit(i32 noundef 7, ptr noundef %r_req_flags89) #12
  %and90 = and i32 %flags, 576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  %spec.select292 = select i1 %tobool91.not, ptr null, ptr %dir
  %call93 = call i32 @ceph_mdsc_do_request(ptr noundef %6, ptr noundef %spec.select292, ptr noundef %call39402410) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call93)
  %cmp94 = icmp eq i32 %call93, -2
  br i1 %cmp94, label %if.then96, label %if.end88.if.end102_crit_edge

if.end88.if.end102_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

if.then96:                                        ; preds = %if.end88
  %call97 = call ptr @ceph_handle_snapdir(ptr noundef %call39402410, ptr noundef %dentry) #12
  %cmp.i337 = icmp ugt ptr %call97, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i337, label %if.then99, label %if.then96.if.end102_crit_edge

if.then96.if.end102_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

if.then99:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #14
  %111 = ptrtoint ptr %call97 to i32
  br label %out_req

if.end102:                                        ; preds = %if.then96.if.end102_crit_edge, %if.end88.if.end102_crit_edge
  %err.4 = phi i32 [ %call93, %if.end88.if.end102_crit_edge ], [ 0, %if.then96.if.end102_crit_edge ]
  %dentry.addr.0 = phi ptr [ %dentry, %if.end88.if.end102_crit_edge ], [ %call97, %if.then96.if.end102_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4)
  %tobool103.not = icmp ne i32 %err.4, 0
  %brmerge = or i1 %tobool17.not, %tobool103.not
  br i1 %brmerge, label %if.end102.if.end111_crit_edge, label %land.lhs.true107

if.end102.if.end111_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

land.lhs.true107:                                 ; preds = %if.end102
  %r_reply_info = getelementptr inbounds %struct.ceph_mds_request, ptr %call39402410, i32 0, i32 36
  %112 = ptrtoint ptr %r_reply_info to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %r_reply_info, align 8
  %is_dentry = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %113, i32 0, i32 4
  %114 = ptrtoint ptr %is_dentry to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %is_dentry, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool108.not = icmp eq i8 %115, 0
  br i1 %tobool108.not, label %if.then109, label %if.end111.thread

if.then109:                                       ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #14
  %call110 = call i32 @ceph_handle_notrace_create(ptr noundef %dir, ptr noundef %dentry.addr.0) #12
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %if.end102.if.end111_crit_edge
  %err.5 = phi i32 [ %err.4, %if.end102.if.end111_crit_edge ], [ %call110, %if.then109 ]
  %116 = ptrtoint ptr %dentry.addr.0 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dentry.addr.0, align 8
  %and.i338 = and i32 %117, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i338)
  %tobool113.not = icmp eq i32 %and.i338, 0
  br i1 %tobool113.not, label %if.end121.thread, label %if.end111.if.then114_crit_edge

if.end111.if.then114_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then114

if.end111.thread:                                 ; preds = %land.lhs.true107
  %118 = ptrtoint ptr %dentry.addr.0 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dentry.addr.0, align 8
  %and.i338378 = and i32 %119, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i338378)
  %tobool113.not379 = icmp eq i32 %and.i338378, 0
  br i1 %tobool113.not379, label %if.end111.thread.lor.lhs.false_crit_edge, label %if.end111.thread.if.then114_crit_edge

if.end111.thread.if.then114_crit_edge:            ; preds = %if.end111.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then114

if.end111.thread.lor.lhs.false_crit_edge:         ; preds = %if.end111.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.then114:                                       ; preds = %if.end111.thread.if.then114_crit_edge, %if.end111.if.then114_crit_edge
  %err.5380 = phi i32 [ 0, %if.end111.thread.if.then114_crit_edge ], [ %err.5, %if.end111.if.then114_crit_edge ]
  %call115 = call ptr @ceph_finish_lookup(ptr noundef %call39402410, ptr noundef %dentry.addr.0, i32 noundef %err.5380) #12
  %cmp.i339 = icmp ugt ptr %call115, inttoptr (i32 -4096 to ptr)
  %120 = ptrtoint ptr %call115 to i32
  %spec.select384 = select i1 %cmp.i339, i32 %120, i32 %err.5380
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select384)
  %tobool122.not = icmp eq i32 %spec.select384, 0
  br i1 %tobool122.not, label %if.end124, label %if.then114.out_req_crit_edge

if.then114.out_req_crit_edge:                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_req

if.end121.thread:                                 ; preds = %if.end111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5)
  %tobool122.not367 = icmp eq i32 %err.5, 0
  br i1 %tobool122.not367, label %if.end121.thread.lor.lhs.false_crit_edge, label %if.end121.thread.out_req_crit_edge

if.end121.thread.out_req_crit_edge:               ; preds = %if.end121.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_req

if.end121.thread.lor.lhs.false_crit_edge:         ; preds = %if.end121.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.end124:                                        ; preds = %if.then114
  %tobool125.not = icmp eq ptr %call115, null
  br i1 %tobool125.not, label %if.end124.lor.lhs.false_crit_edge, label %if.end124.do.body132_crit_edge

if.end124.do.body132_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body132

if.end124.lor.lhs.false_crit_edge:                ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end124.lor.lhs.false_crit_edge, %if.end121.thread.lor.lhs.false_crit_edge, %if.end111.thread.lor.lhs.false_crit_edge
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry.addr.0, i32 0, i32 5
  %121 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %d_inode.i, align 8
  %cmp.i340 = icmp eq ptr %122, null
  br i1 %cmp.i340, label %lor.lhs.false.do.body132_crit_edge, label %lor.lhs.false128

lor.lhs.false.do.body132_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body132

lor.lhs.false128:                                 ; preds = %lor.lhs.false
  %123 = ptrtoint ptr %dentry.addr.0 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %dentry.addr.0, align 8
  %and.i.i341 = and i32 %124, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i.i341)
  %cmp.i342 = icmp eq i32 %and.i.i341, 6291456
  br i1 %cmp.i342, label %lor.lhs.false128.do.body132_crit_edge, label %do.body151

lor.lhs.false128.do.body132_crit_edge:            ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body132

do.body132:                                       ; preds = %lor.lhs.false128.do.body132_crit_edge, %lor.lhs.false.do.body132_crit_edge, %if.end124.do.body132_crit_edge
  %dn.0368372 = phi ptr [ %call115, %if.end124.do.body132_crit_edge ], [ null, %lor.lhs.false.do.body132_crit_edge ], [ null, %lor.lhs.false128.do.body132_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_atomic_open.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_atomic_open, %if.then144)) #12
          to label %do.end148 [label %if.then144], !srcloc !303

if.then144:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_atomic_open.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.25, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 796, ptr noundef %dn.0368372) #12
  br label %do.end148

do.end148:                                        ; preds = %if.then144, %do.body132
  %call149 = call i32 @finish_no_open(ptr noundef %file, ptr noundef %dn.0368372) #12
  br label %out_req

do.body151:                                       ; preds = %lor.lhs.false128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_atomic_open.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_atomic_open, %if.then163)) #12
          to label %do.end167 [label %if.then163], !srcloc !303

if.then163:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_atomic_open.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.27, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 799, ptr noundef null) #12
  br label %do.end167

do.end167:                                        ; preds = %if.then163, %do.body151
  %r_op = getelementptr inbounds %struct.ceph_mds_request, ptr %call39402410, i32 0, i32 4
  %125 = ptrtoint ptr %r_op to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %r_op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4865, i32 %126)
  %cmp168 = icmp eq i32 %126, 4865
  br i1 %cmp168, label %land.lhs.true170, label %do.end167.if.end177_crit_edge

do.end167.if.end177_crit_edge:                    ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end177

land.lhs.true170:                                 ; preds = %do.end167
  %127 = getelementptr inbounds %struct.ceph_mds_request, ptr %call39402410, i32 0, i32 36, i32 7
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %127, align 8, !range !315
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool172.not = icmp eq i8 %129, 0
  br i1 %tobool172.not, label %land.lhs.true170.if.end177_crit_edge, label %if.then174

land.lhs.true170.if.end177_crit_edge:             ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end177

if.then174:                                       ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #14
  %130 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %d_inode.i, align 8
  call fastcc void @cache_file_layout(ptr noundef %dir, ptr noundef %131)
  call void @ceph_init_inode_acls(ptr noundef %131, ptr noundef nonnull %as_ctx) #12
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %132 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %f_mode, align 8
  %or176 = or i32 %133, 1048576
  store i32 %or176, ptr %f_mode, align 8
  br label %if.end177

if.end177:                                        ; preds = %if.then174, %land.lhs.true170.if.end177_crit_edge, %do.end167.if.end177_crit_edge
  %call178 = call i32 @finish_open(ptr noundef %file, ptr noundef %dentry.addr.0, ptr noundef nonnull @ceph_open) #12
  br label %out_req

out_req:                                          ; preds = %if.end177, %do.end148, %if.end121.thread.out_req_crit_edge, %if.then114.out_req_crit_edge, %if.then99, %cleanup.thread
  %call39402409 = phi ptr [ %call39402410, %if.then99 ], [ %call39402410, %if.then114.out_req_crit_edge ], [ %call39402410, %do.end148 ], [ %call39402410, %if.end177 ], [ %call39402, %cleanup.thread ], [ %call39402410, %if.end121.thread.out_req_crit_edge ]
  %err.7 = phi i32 [ %111, %if.then99 ], [ %spec.select384, %if.then114.out_req_crit_edge ], [ %call149, %do.end148 ], [ %call178, %if.end177 ], [ %err.2, %cleanup.thread ], [ %err.5, %if.end121.thread.out_req_crit_edge ]
  %r_kref.i344 = getelementptr inbounds %struct.ceph_mds_request, ptr %call39402409, i32 0, i32 3
  %call.i.i.i.i.i.i.i345 = call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i344, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !304
  call void @llvm.prefetch.p0(ptr %r_kref.i344, i32 1, i32 3, i32 1) #12
  %134 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i344, ptr %r_kref.i344, i32 1, ptr elementtype(i32) %r_kref.i344) #12, !srcloc !305
  %asmresult.i.i.i.i.i.i.i.i346 = extractvalue { i32, i32, i32 } %134, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i346)
  %cmp.i.i.i.i.i347 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i346, 1
  br i1 %cmp.i.i.i.i.i347, label %if.then.i.i351, label %if.end5.i.i.i.i.i349

if.end5.i.i.i.i.i349:                             ; preds = %out_req
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i346)
  %.not.i.i.i.i.i348 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i346, 0
  br i1 %.not.i.i.i.i.i348, label %if.end5.i.i.i.i.i349.out_ctx_crit_edge, label %if.then10.i.i.i.i.i350, !prof !306

if.end5.i.i.i.i.i349.out_ctx_crit_edge:           ; preds = %if.end5.i.i.i.i.i349
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_ctx

if.then10.i.i.i.i.i350:                           ; preds = %if.end5.i.i.i.i.i349
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %r_kref.i344, i32 noundef 3) #12
  br label %out_ctx

if.then.i.i351:                                   ; preds = %out_req
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !307
  call void @ceph_mdsc_release_request(ptr noundef %r_kref.i344) #12, !callees !308
  br label %out_ctx

out_ctx:                                          ; preds = %if.then.i.i351, %if.then10.i.i.i.i.i350, %if.end5.i.i.i.i.i349.out_ctx_crit_edge, %if.then41, %if.end26.out_ctx_crit_edge
  %err.8 = phi i32 [ %call27, %if.end26.out_ctx_crit_edge ], [ %28, %if.then41 ], [ %err.7, %if.end5.i.i.i.i.i349.out_ctx_crit_edge ], [ %err.7, %if.then10.i.i.i.i.i350 ], [ %err.7, %if.then.i.i351 ]
  call void @ceph_release_acl_sec_ctx(ptr noundef nonnull %as_ctx) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_atomic_open.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_atomic_open, %if.then192)) #12
          to label %cleanup197 [label %if.then192], !srcloc !303

if.then192:                                       ; preds = %out_ctx
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_atomic_open.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.29, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 813, i32 noundef %err.8) #12
  br label %cleanup197

cleanup197:                                       ; preds = %if.then192, %out_ctx, %if.else.cleanup197_crit_edge, %if.end21.cleanup197_crit_edge, %if.then18.cleanup197_crit_edge, %do.end.cleanup197_crit_edge
  %retval.0 = phi i32 [ -36, %do.end.cleanup197_crit_edge ], [ -122, %if.then18.cleanup197_crit_edge ], [ %call22, %if.end21.cleanup197_crit_edge ], [ -2, %if.else.cleanup197_crit_edge ], [ %err.8, %if.then192 ], [ %err.8, %out_ctx ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %as_ctx) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ceph_quota_is_max_files_exceeded(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_pre_init_acls(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_security_init_secctx(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ceph_security_xattr_wanted(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_async_create_cb(ptr nocapture noundef readnone %mdsc, ptr noundef %req) #0 align 64 {
entry:
  %pathlen = alloca i32, align 4
  %base = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %r_err = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 37
  %0 = ptrtoint ptr %r_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %r_reply_info = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36
  %2 = ptrtoint ptr %r_reply_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %r_reply_info, align 8
  %result2 = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %result2 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %result2, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %6, %cond.false ], [ %1, %entry.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -528, i32 %cond)
  %cmp = icmp eq i32 %cond, -528
  br i1 %cmp, label %cond.end.out_crit_edge, label %if.end

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %cond.end
  %r_parent = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 13
  %7 = ptrtoint ptr %r_parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %r_parent, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_mapping, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool.not.i = icmp eq i32 %cond, 0
  br i1 %tobool.not.i, label %if.end18, label %if.end.i, !prof !306

if.end.i:                                         ; preds = %if.end
  tail call void @__filemap_set_wb_err(ptr noundef %10, i32 noundef %cond) #12
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool4.not.i = icmp eq ptr %12, null
  br i1 %tobool4.not.i, label %if.end.i.if.then4_crit_edge, label %if.then5.i

if.end.i.if.then4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 50
  %call.i = tail call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef %cond) #12
  br label %if.then4

if.then4:                                         ; preds = %if.then5.i, %if.end.i.if.then4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %cond)
  %cmp.i = icmp eq i32 %cond, -28
  %flags.i = getelementptr inbounds %struct.address_space, ptr %10, i32 0, i32 10
  %..i = zext i1 %cmp.i to i32
  tail call void @_set_bit(i32 noundef %..i, ptr noundef %flags.i) #12
  %r_dentry = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 6
  %15 = ptrtoint ptr %r_dentry to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %r_dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pathlen) #12
  %19 = ptrtoint ptr %pathlen to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %pathlen, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %base) #12
  %20 = ptrtoint ptr %base to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %base, align 8
  %call6 = call ptr @ceph_mdsc_build_path(ptr noundef %16, ptr noundef nonnull %pathlen, ptr noundef nonnull %base, i32 noundef 0) #12
  %21 = ptrtoint ptr %r_parent to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %r_parent, align 8
  %i_release_count.i.i = getelementptr i8, ptr %22, i32 -864
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_release_count.i.i, i32 noundef 8) #12
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %i_release_count.i.i) #12
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.not, label %if.then4.if.end11_crit_edge, label %if.then10

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then10:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  call void @d_drop(ptr noundef %16) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then4.if.end11_crit_edge
  call void @ceph_inode_shutdown(ptr noundef %18) #12
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %base, align 8
  %cmp.i89 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i89, ptr @.str.55, ptr %call6
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i64 noundef %26, ptr noundef %spec.select, i32 noundef %cond) #15
  %tobool.not.i.i90 = icmp eq ptr %call6, null
  %spec.select.i.i = or i1 %tobool.not.i.i90, %cmp.i89
  br i1 %spec.select.i.i, label %if.end11.if.end18.thread_crit_edge, label %if.then.i

if.end11.if.end18.thread_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.thread

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %pathlen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pathlen, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %29 = load ptr, ptr @names_cachep, align 4
  %sub.neg.i = add i32 %28, -4095
  %add.ptr.i = getelementptr i8, ptr %call6, i32 %sub.neg.i
  call void @kmem_cache_free(ptr noundef %29, ptr noundef %add.ptr.i) #12
  br label %if.end18.thread

if.end18:                                         ; preds = %if.end
  %r_target_inode = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 14
  %30 = ptrtoint ptr %r_target_inode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %r_target_inode, align 4
  %tobool19.not = icmp eq ptr %31, null
  br i1 %tobool19.not, label %do.end49, label %if.end18.if.then20_crit_edge

if.end18.if.then20_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20

if.end18.thread:                                  ; preds = %if.then.i, %if.end11.if.end18.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %base) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pathlen) #12
  %r_target_inode105 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 14
  %32 = ptrtoint ptr %r_target_inode105 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %r_target_inode105, align 4
  %tobool19.not106 = icmp eq ptr %33, null
  br i1 %tobool19.not106, label %if.end18.thread.out_crit_edge, label %if.end18.thread.if.then20_crit_edge

if.end18.thread.if.then20_crit_edge:              ; preds = %if.end18.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20

if.end18.thread.out_crit_edge:                    ; preds = %if.end18.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then20:                                        ; preds = %if.end18.thread.if.then20_crit_edge, %if.end18.if.then20_crit_edge
  %34 = phi ptr [ %33, %if.end18.thread.if.then20_crit_edge ], [ %31, %if.end18.if.then20_crit_edge ]
  %r_target_inode107 = phi ptr [ %r_target_inode105, %if.end18.thread.if.then20_crit_edge ], [ %r_target_inode, %if.end18.if.then20_crit_edge ]
  %add.ptr.i92 = getelementptr i8, ptr %34, i32 -952
  %35 = ptrtoint ptr %add.ptr.i92 to i32
  call void @__asan_load8_noabort(i32 %35)
  %tmp24.sroa.0.0.copyload = load i64, ptr %add.ptr.i92, align 8
  %r_deleg_ino = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 55
  %36 = ptrtoint ptr %r_deleg_ino to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %r_deleg_ino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %tmp24.sroa.0.0.copyload)
  %cmp26.not = icmp eq i64 %37, %tmp24.sroa.0.0.copyload
  br i1 %cmp26.not, label %if.then20.if.end35_crit_edge, label %do.end30

if.then20.if.end35_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end30:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %r_err to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %r_err, align 8
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.54, i32 noundef %39, i64 noundef %37, i64 noundef %tmp24.sroa.0.0.copyload) #15
  br label %if.end35

if.end35:                                         ; preds = %do.end30, %if.then20.if.end35_crit_edge
  %40 = ptrtoint ptr %r_target_inode107 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %r_target_inode107, align 4
  %i_mapping37 = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %i_mapping37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_mapping37, align 8
  br i1 %tobool.not.i, label %if.end35.mapping_set_error.exit104_crit_edge, label %if.end.i95, !prof !306

if.end35.mapping_set_error.exit104_crit_edge:     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %mapping_set_error.exit104

if.end.i95:                                       ; preds = %if.end35
  call void @__filemap_set_wb_err(ptr noundef %43, i32 noundef %cond) #12
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %tobool4.not.i94 = icmp eq ptr %45, null
  br i1 %tobool4.not.i94, label %if.end.i95.if.end7.i103_crit_edge, label %if.then5.i99

if.end.i95.if.end7.i103_crit_edge:                ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i103

if.then5.i99:                                     ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %i_sb.i96 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %i_sb.i96 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_sb.i96, align 4
  %s_wb_err.i97 = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 50
  %call.i98 = call i32 @errseq_set(ptr noundef %s_wb_err.i97, i32 noundef %cond) #12
  br label %if.end7.i103

if.end7.i103:                                     ; preds = %if.then5.i99, %if.end.i95.if.end7.i103_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %cond)
  %cmp.i100 = icmp eq i32 %cond, -28
  %flags.i101 = getelementptr inbounds %struct.address_space, ptr %43, i32 0, i32 10
  %..i102 = zext i1 %cmp.i100 to i32
  call void @_set_bit(i32 noundef %..i102, ptr noundef %flags.i101) #12
  br label %mapping_set_error.exit104

mapping_set_error.exit104:                        ; preds = %if.end7.i103, %if.end35.mapping_set_error.exit104_crit_edge
  %i_ceph_lock = getelementptr i8, ptr %34, i32 -936
  call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #12
  %i_ceph_flags = getelementptr i8, ptr %34, i32 -868
  %48 = ptrtoint ptr %i_ceph_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %i_ceph_flags, align 4
  %and = and i32 %49, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %mapping_set_error.exit104.if.end43_crit_edge, label %if.then39

mapping_set_error.exit104.if.end43_crit_edge:     ; preds = %mapping_set_error.exit104
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then39:                                        ; preds = %mapping_set_error.exit104
  call void @__sanitizer_cov_trace_pc() #14
  %and41 = and i32 %49, -4097
  %50 = ptrtoint ptr %i_ceph_flags to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and41, ptr %i_ceph_flags, align 4
  call void @wake_up_bit(ptr noundef %i_ceph_flags, i32 noundef 12) #12
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %mapping_set_error.exit104.if.end43_crit_edge
  %r_session = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 50
  %51 = ptrtoint ptr %r_session to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %r_session, align 4
  call void @ceph_kick_flushing_inode_caps(ptr noundef %52, ptr noundef %add.ptr.i92) #12
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #12
  br label %out

do.end49:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %r_deleg_ino51 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 55
  %53 = ptrtoint ptr %r_deleg_ino51 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %r_deleg_ino51, align 8
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.54, i64 noundef %54) #15
  br label %out

out:                                              ; preds = %do.end49, %if.end43, %if.end18.thread.out_crit_edge, %cond.end.out_crit_edge
  call void @ceph_mdsc_release_dir_caps(ptr noundef %req) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_mdsc_submit_request(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ceph_finish_async_create(ptr noundef %dir, ptr noundef %dentry, ptr noundef %file, i16 noundef zeroext %mode, ptr nocapture noundef readonly %req, ptr noundef %as_ctx, ptr noundef %lo) unnamed_addr #0 align 64 {
entry:
  %xattr_buf = alloca [4 x i8], align 4
  %in = alloca %struct.ceph_mds_reply_inode, align 8
  %iinfo = alloca %struct.ceph_mds_reply_info_in, align 8
  %now = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xattr_buf) #12
  call void @llvm.lifetime.start.p0(i64 221, ptr nonnull %in) #12
  %0 = call ptr @memset(ptr %in, i32 0, i32 221)
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %iinfo) #12
  %1 = call ptr @memset(ptr %iinfo, i32 0, i32 104)
  %2 = ptrtoint ptr %iinfo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %in, ptr %iinfo, align 8
  %add.ptr.i = getelementptr i8, ptr %dir, i32 -952
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now) #12
  %3 = call ptr @memset(ptr %now, i32 255, i32 16)
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %mdsc.i = getelementptr inbounds %struct.ceph_fs_client, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %mdsc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdsc.i, align 8
  %r_deleg_ino = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 55
  %10 = ptrtoint ptr %r_deleg_ino to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %r_deleg_ino, align 8
  call void @ktime_get_real_ts64(ptr noundef nonnull %now) #12
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %12 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_sb, align 4
  %.fca.0.insert200 = insertvalue [2 x i64] poison, i64 %11, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert200, i64 -2, 1
  %call3 = call ptr @ceph_get_inode(ptr noundef %13, [2 x i64] %.fca.1.insert) #12
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %inline_version = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 6
  %15 = ptrtoint ptr %inline_version to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %inline_version, align 8
  %change_attr = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 17
  %16 = ptrtoint ptr %change_attr to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1, ptr %change_attr, align 8
  %btime = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 14
  %17 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %now, align 8
  %conv.i = trunc i64 %18 to i32
  %19 = call i32 @llvm.bswap.i32(i32 %conv.i) #12
  %20 = ptrtoint ptr %btime to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %btime, align 4
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %now, i32 0, i32 1
  %21 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tv_nsec.i, align 8
  %23 = call i32 @llvm.bswap.i32(i32 %22) #12
  %tv_nsec2.i = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 14, i32 1
  %24 = ptrtoint ptr %tv_nsec2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %tv_nsec2.i, align 8
  %xattr_len = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 4
  %25 = ptrtoint ptr %xattr_len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %xattr_len, align 4
  %xattr_data = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 5
  %26 = ptrtoint ptr %xattr_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %xattr_buf, ptr %xattr_data, align 8
  %27 = ptrtoint ptr %xattr_buf to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %xattr_buf, align 4
  %28 = call i64 @llvm.bswap.i64(i64 %11)
  %29 = ptrtoint ptr %in to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %in, align 8
  %snapid = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %in, i32 0, i32 1
  %30 = ptrtoint ptr %snapid to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 -72057594037927937, ptr %snapid, align 8
  %version = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %in, i32 0, i32 3
  %31 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 72057594037927936, ptr %version, align 4
  %cap = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %in, i32 0, i32 5
  %wanted = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %in, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %wanted to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -583073792, ptr %wanted, align 8
  %33 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -583073792, ptr %cap, align 4
  %cap_id = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %in, i32 0, i32 5, i32 2
  %34 = ptrtoint ptr %cap_id to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 72057594037927936, ptr %cap_id, align 4
  %35 = getelementptr i8, ptr %dir, i32 -108
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %37, align 8
  %40 = call i64 @llvm.bswap.i64(i64 %39)
  %realm = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %in, i32 0, i32 5, i32 5
  %41 = ptrtoint ptr %realm to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %40, ptr %realm, align 4
  %flags = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %in, i32 0, i32 5, i32 6
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %flags, align 4
  %ctime = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %in, i32 0, i32 7
  %mtime = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %in, i32 0, i32 8
  %atime = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %in, i32 0, i32 9
  %43 = ptrtoint ptr %btime to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %btime, align 4
  %45 = ptrtoint ptr %atime to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %atime, align 1
  %46 = ptrtoint ptr %mtime to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 %44, ptr %mtime, align 1
  %47 = ptrtoint ptr %ctime to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 %44, ptr %ctime, align 1
  %truncate_seq = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %in, i32 0, i32 14
  %48 = ptrtoint ptr %truncate_seq to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 16777216, ptr %truncate_seq, align 1
  %truncate_size = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %in, i32 0, i32 13
  %49 = ptrtoint ptr %truncate_size to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 -1, ptr %truncate_size, align 1
  %xattr_version = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %in, i32 0, i32 4
  %50 = ptrtoint ptr %xattr_version to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 72057594037927936, ptr %xattr_version, align 4
  %51 = call i32 @llvm.read_register.i32(metadata !293) #12
  %and.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 99
  %55 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %56, i32 0, i32 10
  %57 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %57)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert199 = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call17 = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert199) #12
  %58 = call i32 @llvm.bswap.i32(i32 %call17)
  %uid = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %in, i32 0, i32 16
  %59 = ptrtoint ptr %uid to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %58, ptr %uid, align 1
  %60 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %dir, align 8
  %62 = and i16 %61, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool.not = icmp eq i16 %62, 0
  br i1 %tobool.not, label %do.end47, label %if.then18

if.then18:                                        ; preds = %if.end
  %i_gid = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 3
  %63 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %63)
  %.unpack = load i32, ptr %i_gid, align 8
  %64 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call20 = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %64) #12
  %65 = call i32 @llvm.bswap.i32(i32 %call20)
  %gid = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %in, i32 0, i32 17
  %66 = ptrtoint ptr %gid to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %65, ptr %gid, align 1
  %conv21 = zext i16 %mode to i32
  %and22 = and i32 %conv21, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and22)
  %cmp = icmp eq i32 %and22, 16384
  br i1 %cmp, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i16 %mode, 1024
  br label %if.end55

if.else:                                          ; preds = %if.then18
  %and28 = and i32 %conv21, 1032
  call void @__sanitizer_cov_trace_const_cmp4(i32 1032, i32 %and28)
  %cmp29 = icmp eq i32 %and28, 1032
  br i1 %cmp29, label %land.lhs.true, label %if.else.if.end55_crit_edge

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

land.lhs.true:                                    ; preds = %if.else
  %67 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %67)
  %.unpack244 = load i32, ptr %i_gid, align 8
  %68 = insertvalue [1 x i32] undef, i32 %.unpack244, 0
  %call33 = call i32 @in_group_p([1 x i32] %68) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true35, label %land.lhs.true.if.end55_crit_edge

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

land.lhs.true35:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call36 = call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef nonnull @init_user_ns, ptr noundef %dir, i32 noundef 4) #12
  %and39 = and i16 %mode, -1025
  %spec.select = select i1 %call36, i16 %mode, i16 %and39
  br label %if.end55

do.end47:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task, align 8
  %cred51 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 99
  %71 = ptrtoint ptr %cred51 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cred51, align 16
  %fsgid = getelementptr inbounds %struct.cred, ptr %72, i32 0, i32 11
  %73 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %73)
  %agg.tmp44.sroa.0.0.copyload = load i32, ptr %fsgid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp44.sroa.0.0.copyload, 0
  %call53 = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #12
  %74 = call i32 @llvm.bswap.i32(i32 %call53)
  %gid54 = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %in, i32 0, i32 17
  %75 = ptrtoint ptr %gid54 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %74, ptr %gid54, align 1
  br label %if.end55

if.end55:                                         ; preds = %do.end47, %land.lhs.true35, %land.lhs.true.if.end55_crit_edge, %if.else.if.end55_crit_edge, %if.then24
  %mode.addr.0 = phi i16 [ %or, %if.then24 ], [ %mode, %land.lhs.true.if.end55_crit_edge ], [ %mode, %if.else.if.end55_crit_edge ], [ %mode, %do.end47 ], [ %spec.select, %land.lhs.true35 ]
  %conv56 = zext i16 %mode.addr.0 to i32
  %76 = call i32 @llvm.bswap.i32(i32 %conv56)
  %mode57 = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %in, i32 0, i32 15
  %77 = ptrtoint ptr %mode57 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %76, ptr %mode57, align 1
  %nlink = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %in, i32 0, i32 18
  %78 = ptrtoint ptr %nlink to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 16777216, ptr %nlink, align 1
  %79 = ptrtoint ptr %lo to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %lo, align 8
  %conv58 = zext i32 %80 to i64
  %81 = call i64 @llvm.bswap.i64(i64 %conv58)
  %max_size = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %in, i32 0, i32 12
  %82 = ptrtoint ptr %max_size to i32
  call void @__asan_storeN_noabort(i32 %82, i32 8)
  store i64 %81, ptr %max_size, align 1
  %layout = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %in, i32 0, i32 6
  call void @ceph_file_layout_to_legacy(ptr noundef %lo, ptr noundef %layout) #12
  %pool_ns63 = getelementptr inbounds %struct.ceph_file_layout, ptr %lo, i32 0, i32 4
  %83 = ptrtoint ptr %pool_ns63 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %pool_ns63, align 8
  %tobool65.not = icmp eq ptr %84, null
  br i1 %tobool65.not, label %if.end55.if.end68_crit_edge, label %if.then66

if.end55.if.end68_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.then66:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  %len = getelementptr inbounds %struct.ceph_string, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len, align 4
  %pool_ns_len = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 9
  %87 = ptrtoint ptr %pool_ns_len to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %pool_ns_len, align 8
  %str = getelementptr inbounds %struct.ceph_string, ptr %84, i32 0, i32 3
  %pool_ns_data = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 10
  %88 = ptrtoint ptr %pool_ns_data to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %str, ptr %pool_ns_data, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end55.if.end68_crit_edge
  %snap_rwsem = getelementptr inbounds %struct.ceph_mds_client, ptr %9, i32 0, i32 15
  call void @down_read(ptr noundef %snap_rwsem) #12
  %r_session = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 50
  %89 = ptrtoint ptr %r_session to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %r_session, align 4
  %r_fmode = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 18
  %91 = ptrtoint ptr %r_fmode to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %r_fmode, align 8
  %call69 = call i32 @ceph_fill_inode(ptr noundef %call3, ptr noundef null, ptr noundef nonnull %iinfo, ptr noundef null, ptr noundef %90, i32 noundef %92, ptr noundef null) #12
  call void @up_read(ptr noundef %snap_rwsem) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool71.not = icmp eq i32 %call69, 0
  br i1 %tobool71.not, label %if.else92, label %do.body73

do.body73:                                        ; preds = %if.end68
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_finish_async_create.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_finish_async_create, %if.then79)) #12
          to label %do.end83 [label %if.then79], !srcloc !303

if.then79:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_finish_async_create.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.65, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 648, ptr noundef nonnull @.str.63, i32 noundef %call69) #12
  br label %do.end83

do.end83:                                         ; preds = %if.then79, %do.body73
  %i_release_count.i.i = getelementptr i8, ptr %dir, i32 -864
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_release_count.i.i, i32 noundef 8) #12
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %i_release_count.i.i) #12
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 2, i32 1
  %93 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %94, null
  br i1 %tobool.not.i.i.not, label %do.end83.if.end87_crit_edge, label %if.then86

do.end83.if.end87_crit_edge:                      ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then86:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #14
  call void @d_drop(ptr noundef %dentry) #12
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %do.end83.if.end87_crit_edge
  %i_state = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 24
  %95 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %i_state, align 8
  %and88 = and i32 %96, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end87.cleanup_crit_edge, label %if.then90

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  call void @discard_new_inode(ptr noundef %call3) #12
  br label %cleanup

if.else92:                                        ; preds = %if.end68
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_finish_async_create.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_finish_async_create, %if.then105)) #12
          to label %do.end111 [label %if.then105], !srcloc !303

if.then105:                                       ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #14
  %97 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %add.ptr.i, align 8
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %99 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %name, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_finish_async_create.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.67, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 658, ptr noundef nonnull @.str.63, i64 noundef %11, i64 noundef %98, ptr noundef %100) #12
  br label %do.end111

do.end111:                                        ; preds = %if.then105, %if.else92
  %i_ordered_count.i.i = getelementptr i8, ptr %dir, i32 -856
  %call.i.i.i.i250 = call zeroext i1 @__kasan_check_write(ptr noundef %i_ordered_count.i.i, i32 noundef 8) #12
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %i_ordered_count.i.i) #12
  call void @ceph_init_inode_acls(ptr noundef %call3, ptr noundef %as_ctx) #12
  %i_state112 = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 24
  %101 = ptrtoint ptr %i_state112 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %i_state112, align 8
  %and113 = and i32 %102, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %do.end111.if.end117_crit_edge, label %if.then115

do.end111.if.end117_crit_edge:                    ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end117

if.then115:                                       ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #14
  %i_ceph_flags = getelementptr i8, ptr %call3, i32 -868
  %103 = ptrtoint ptr %i_ceph_flags to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 4096, ptr %i_ceph_flags, align 4
  call void @unlock_new_inode(ptr noundef %call3) #12
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %do.end111.if.end117_crit_edge
  %104 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dentry, align 8
  %and.i252 = and i32 %105, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i252)
  %tobool119.not = icmp eq i32 %and.i252, 0
  br i1 %tobool119.not, label %lor.lhs.false, label %if.end117.if.then122_crit_edge

if.end117.if.then122_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then122

lor.lhs.false:                                    ; preds = %if.end117
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %106 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %d_inode.i, align 8
  %cmp.i253 = icmp eq ptr %107, null
  br i1 %cmp.i253, label %lor.lhs.false.if.then122_crit_edge, label %lor.lhs.false.if.end183_crit_edge

lor.lhs.false.if.end183_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183

lor.lhs.false.if.then122_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then122

if.then122:                                       ; preds = %lor.lhs.false.if.then122_crit_edge, %if.end117.if.then122_crit_edge
  %pprev.i.i254 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 2, i32 1
  %108 = ptrtoint ptr %pprev.i.i254 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pprev.i.i254, align 4
  %tobool.not.i.i255.not = icmp eq ptr %109, null
  br i1 %tobool.not.i.i255.not, label %if.then122.if.end126_crit_edge, label %if.then125

if.then122.if.end126_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end126

if.then125:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #14
  call void @d_drop(ptr noundef %dentry) #12
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %if.then122.if.end126_crit_edge
  %call127 = call ptr @d_splice_alias(ptr noundef %call3, ptr noundef %dentry) #12
  %tobool128.not = icmp ne ptr %call127, null
  %cmp129 = icmp ne ptr %call127, %dentry
  %spec.select245 = and i1 %tobool128.not, %cmp129
  br i1 %spec.select245, label %land.rhs138, label %if.end126.if.end183_crit_edge

if.end126.if.end183_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183

land.rhs138:                                      ; preds = %if.end126
  %.b243 = load i1, ptr @ceph_finish_async_create.__already_done, align 1
  br i1 %.b243, label %land.rhs138.if.end183_crit_edge, label %if.then149, !prof !306

land.rhs138.if.end183_crit_edge:                  ; preds = %land.rhs138
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183

if.then149:                                       ; preds = %land.rhs138
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ceph_finish_async_create.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 675, i32 noundef 9, ptr noundef null) #12
  br label %if.end183

if.end183:                                        ; preds = %if.then149, %land.rhs138.if.end183_crit_edge, %if.end126.if.end183_crit_edge, %lor.lhs.false.if.end183_crit_edge
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %110 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %f_mode, align 8
  %or184 = or i32 %111, 1048576
  store i32 %or184, ptr %f_mode, align 8
  %call185 = call i32 @finish_open(ptr noundef %file, ptr noundef %dentry, ptr noundef nonnull @ceph_open) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end183, %if.then90, %if.end87.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %14, %if.then ], [ %call69, %if.then90 ], [ %call69, %if.end87.cleanup_crit_edge ], [ %call185, %if.end183 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now) #12
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %iinfo) #12
  call void @llvm.lifetime.end.p0(i64 221, ptr nonnull %in) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xattr_buf) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_handle_snapdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_handle_notrace_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_finish_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @finish_no_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cache_file_layout(ptr noundef %dst, ptr noundef %src) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dst, i32 -952
  %i_ceph_lock = getelementptr i8, ptr %dst, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #12
  %call2 = tail call i32 @__ceph_caps_issued(ptr noundef %add.ptr.i, ptr noundef null) #12
  %and = and i32 %call2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end51_crit_edge, label %land.lhs.true

entry.if.end51_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

land.lhs.true:                                    ; preds = %entry
  %i_cached_layout = getelementptr i8, ptr %dst, i32 -792
  %call3 = tail call i32 @ceph_file_layout_is_valid(ptr noundef %i_cached_layout) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then:                                          ; preds = %land.lhs.true
  %i_layout = getelementptr i8, ptr %src, i32 -824
  %0 = call ptr @memcpy(ptr %i_cached_layout, ptr %i_layout, i32 32)
  %1 = tail call i32 @llvm.read_register.i32(metadata !293) #12
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !311
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 696, ptr noundef nonnull @.str.51) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %pool_ns = getelementptr i8, ptr %src, i32 -800
  br label %for.cond

for.cond:                                         ; preds = %kref_get_unless_zero.exit.for.cond_crit_edge, %rcu_read_lock.exit
  %5 = ptrtoint ptr %pool_ns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %pool_ns, align 8
  %call9 = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true11, label %for.cond.do.end18_crit_edge

for.cond.do.end18_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18

land.lhs.true11:                                  ; preds = %for.cond
  %call12 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true11.do.end18_crit_edge, label %land.lhs.true14

land.lhs.true11.do.end18_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %.b61 = load i1, ptr @cache_file_layout.__warned, align 1
  br i1 %.b61, label %land.lhs.true14.do.end18_crit_edge, label %if.then16

land.lhs.true14.do.end18_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cache_file_layout.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 441, ptr noundef nonnull @.str.49) #12
  br label %do.end18

do.end18:                                         ; preds = %if.then16, %land.lhs.true14.do.end18_crit_edge, %land.lhs.true11.do.end18_crit_edge, %for.cond.do.end18_crit_edge
  %tobool20.not = icmp eq ptr %6, null
  br i1 %tobool20.not, label %do.end18.for.end_crit_edge, label %lor.lhs.false

do.end18.for.end_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

lor.lhs.false:                                    ; preds = %do.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %6, i32 noundef 4) #12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %lor.lhs.false
  %9 = phi i32 [ %8, %lor.lhs.false ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %9, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %6, i32 noundef 4) #12
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #12
  %11 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %6, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %13 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %6, ptr nonnull %6, i32 %12, i32 %add.i.i.i.i, ptr nonnull elementtype(i32) %6) #12, !srcloc !312
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %12
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !306

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %14 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %15, 1
  %16 = or i32 %add5.i.i.i.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !306

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %6, i32 noundef 0) #12
  %17 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %18 = phi i32 [ %15, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  %tobool12.i.i.i.i.not = icmp eq i32 %18, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.cond_crit_edge, label %kref_get_unless_zero.exit.for.end_crit_edge

kref_get_unless_zero.exit.for.end_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

kref_get_unless_zero.exit.for.cond_crit_edge:     ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %kref_get_unless_zero.exit.for.end_crit_edge, %do.end18.for.end_crit_edge
  %call.i63 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i63, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i66

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i66:                                ; preds = %for.end
  %call1.i64 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64)
  %tobool.not.i65 = icmp eq i32 %call1.i64, 0
  br i1 %tobool.not.i65, label %land.lhs.true.i66.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i68

land.lhs.true.i66.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i68:                               ; preds = %land.lhs.true.i66
  %.b4.i67 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i67, label %land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge, label %if.then.i69

land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i69:                                      ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 724, ptr noundef nonnull @.str.52) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i69, %land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i66.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !313
  %19 = call i32 @llvm.read_register.i32(metadata !293) #12
  %and.i.i.i.i.i70 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i70 to ptr
  %preempt_count.i.i.i.i71 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i71, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i71, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !316
  %pool_ns40 = getelementptr i8, ptr %dst, i32 -768
  %23 = ptrtoint ptr %pool_ns40 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %6, ptr %pool_ns40, align 8
  br label %if.end51

if.end51:                                         ; preds = %rcu_read_unlock.exit, %land.lhs.true.if.end51_crit_edge, %entry.if.end51_crit_edge
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_init_inode_acls(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @finish_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_release_acl_sec_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %2)
  %cmp = icmp eq i16 %2, 16384
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_release.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_release, %if.then5)) #12
          to label %do.end [label %if.then5], !srcloc !303

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_release.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.32, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 823, ptr noundef %inode, ptr noundef %file) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.then
  %rw_contexts = getelementptr inbounds %struct.ceph_file_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %rw_contexts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %rw_contexts, align 4
  %cmp.i.not = icmp eq ptr %6, %rw_contexts
  br i1 %cmp.i.not, label %do.end.if.end32_crit_edge, label %do.end26, !prof !306

do.end.if.end32_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

do.end26:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 824, i32 noundef 9, ptr noundef null) #12
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %do.end.if.end32_crit_edge
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %4, align 8
  %conv41 = sext i16 %8 to i32
  tail call void @ceph_put_fmode(ptr noundef %add.ptr.i, i32 noundef %conv41, i32 noundef 1) #12
  %last_readdir = getelementptr inbounds %struct.ceph_dir_file_info, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %last_readdir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %last_readdir, align 4
  %tobool42.not = icmp eq ptr %10, null
  br i1 %tobool42.not, label %if.end32.if.end45_crit_edge, label %if.then43

if.end32.if.end45_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then43:                                        ; preds = %if.end32
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %10, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #12
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #12, !srcloc !305
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end45_crit_edge, label %if.then10.i.i.i.i.i, !prof !306

if.end5.i.i.i.i.i.if.end45_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #12
  br label %if.end45

if.then.i.i:                                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !307
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #12, !callees !308
  br label %if.end45

if.end45:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end45_crit_edge, %if.end32.if.end45_crit_edge
  %last_name = getelementptr inbounds %struct.ceph_dir_file_info, ptr %4, i32 0, i32 4
  %12 = ptrtoint ptr %last_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %last_name, align 4
  tail call void @kfree(ptr noundef %13) #12
  %dir_info = getelementptr inbounds %struct.ceph_dir_file_info, ptr %4, i32 0, i32 8
  %14 = ptrtoint ptr %dir_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dir_info, align 4
  tail call void @kfree(ptr noundef %15) #12
  br label %if.end103

if.else:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_release.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_release, %if.then59)) #12
          to label %do.end63 [label %if.then59], !srcloc !303

if.then59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_release.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.34, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 835, ptr noundef %inode, ptr noundef %file) #12
  br label %do.end63

do.end63:                                         ; preds = %if.then59, %if.else
  %rw_contexts65 = getelementptr inbounds %struct.ceph_file_info, ptr %4, i32 0, i32 3
  %16 = ptrtoint ptr %rw_contexts65 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %rw_contexts65, align 4
  %cmp.i127.not = icmp eq ptr %17, %rw_contexts65
  br i1 %cmp.i127.not, label %do.end63.if.end91_crit_edge, label %do.end85, !prof !306

do.end63.if.end91_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

do.end85:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 836, i32 noundef 9, ptr noundef null) #12
  br label %if.end91

if.end91:                                         ; preds = %do.end85, %do.end63.if.end91_crit_edge
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %18 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %f_mode, align 8
  %and99 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100 = icmp ne i32 %and99, 0
  tail call void @ceph_fscache_unuse_cookie(ptr noundef %inode, i1 noundef zeroext %tobool100) #12
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %4, align 4
  %conv102 = sext i16 %21 to i32
  tail call void @ceph_put_fmode(ptr noundef %add.ptr.i, i32 noundef %conv102, i32 noundef 1) #12
  br label %if.end103

if.end103:                                        ; preds = %if.end91, %if.end45
  %ceph_file_cachep.sink = phi ptr [ @ceph_file_cachep, %if.end91 ], [ @ceph_dir_file_cachep, %if.end45 ]
  %22 = ptrtoint ptr %ceph_file_cachep.sink to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ceph_file_cachep.sink, align 4
  tail call void @kmem_cache_free(ptr noundef %23, ptr noundef %4) #12
  %i_cap_wq = getelementptr i8, ptr %inode, i32 -476
  tail call void @__wake_up(ptr noundef %i_cap_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_put_fmode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_fscache_unuse_cookie(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ceph_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #12
  %whence.off = add i32 %whence, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %whence.off)
  %switch = icmp ult i32 %whence.off, 3
  br i1 %switch, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__ceph_do_getattr(ptr noundef %3, ptr noundef null, i32 noundef 256, i1 noundef zeroext false) #12
  %conv = sext i32 %call.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %if.then.out_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %call9 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %8 = zext i32 %whence to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %whence, label %if.end8.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb10
    i32 3, label %sw.bb17
    i32 4, label %sw.bb25
  ]

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i64 %call9, %offset
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %offset)
  %cmp11 = icmp eq i64 %offset, 0
  %f_pos = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %9 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %f_pos, align 8
  br i1 %cmp11, label %sw.bb10.out_crit_edge, label %if.end14

sw.bb10.out_crit_edge:                            ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end14:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  %add16 = add i64 %10, %offset
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %offset)
  %cmp18 = icmp sgt i64 %offset, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %call9, i64 %offset)
  %cmp21.not = icmp sgt i64 %call9, %offset
  %or.cond = select i1 %cmp18, i1 %cmp21.not, i1 false
  br i1 %or.cond, label %sw.bb17.sw.epilog_crit_edge, label %sw.bb17.out_crit_edge

sw.bb17.out_crit_edge:                            ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %offset)
  %cmp26 = icmp sgt i64 %offset, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %call9, i64 %offset)
  %cmp29.not = icmp sgt i64 %call9, %offset
  %or.cond60 = select i1 %cmp26, i1 %cmp29.not, i1 false
  br i1 %or.cond60, label %sw.bb25.sw.epilog_crit_edge, label %sw.bb25.out_crit_edge

sw.bb25.out_crit_edge:                            ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25.sw.epilog_crit_edge, %sw.bb17.sw.epilog_crit_edge, %if.end14, %sw.bb, %if.end8.sw.epilog_crit_edge
  %offset.addr.0 = phi i64 [ %offset, %if.end8.sw.epilog_crit_edge ], [ %add16, %if.end14 ], [ %add, %sw.bb ], [ %offset, %sw.bb17.sw.epilog_crit_edge ], [ %call9, %sw.bb25.sw.epilog_crit_edge ]
  %max_file_size = getelementptr inbounds %struct.ceph_fs_client, ptr %7, i32 0, i32 8
  %11 = ptrtoint ptr %max_file_size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %max_file_size, align 8
  %13 = tail call i64 @llvm.smax.i64(i64 %call9, i64 %12)
  %call35 = tail call i64 @vfs_setpos(ptr noundef %file, i64 noundef %offset.addr.0, i64 noundef %13) #12
  br label %out

out:                                              ; preds = %sw.epilog, %sw.bb25.out_crit_edge, %sw.bb17.out_crit_edge, %sw.bb10.out_crit_edge, %if.then.out_crit_edge
  %ret.0 = phi i64 [ %conv, %if.then.out_crit_edge ], [ %call35, %sw.epilog ], [ -6, %sw.bb17.out_crit_edge ], [ -6, %sw.bb25.out_crit_edge ], [ %10, %sw.bb10.out_crit_edge ]
  tail call void @up_write(ptr noundef %i_rwsem.i) #12
  ret i64 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_read_iter(ptr noundef %iocb, ptr noundef %to) #0 align 64 {
entry:
  %got = alloca i32, align 4
  %retry_op = alloca i32, align 4
  %rw_ctx = alloca %struct.ceph_rw_context, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -952
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %8 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ki_flags, align 8
  %and = and i32 %9, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %got) #12
  %10 = ptrtoint ptr %got to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %got, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retry_op) #12
  %11 = ptrtoint ptr %retry_op to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %retry_op, align 4
  %snap = getelementptr i8, ptr %7, i32 -944
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %i_ceph_flags.i = getelementptr i8, ptr %7, i32 -868
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %flags = getelementptr inbounds %struct.ceph_file_info, ptr %3, i32 0, i32 1
  %12 = getelementptr inbounds %struct.list_head, ptr %rw_ctx, i32 0, i32 1
  %13 = getelementptr inbounds %struct.ceph_rw_context, ptr %rw_ctx, i32 0, i32 1
  %14 = getelementptr inbounds %struct.ceph_rw_context, ptr %rw_ctx, i32 0, i32 2
  %rw_contexts_lock.i = getelementptr inbounds %struct.ceph_file_info, ptr %3, i32 0, i32 2
  %rw_contexts.i = getelementptr inbounds %struct.ceph_file_info, ptr %3, i32 0, i32 3
  %i_inline_version = getelementptr i8, ptr %7, i32 -880
  %15 = getelementptr inbounds i8, ptr %rw_ctx, i32 8
  br label %again.outer

again.outer:                                      ; preds = %do.end317, %entry
  %read.0.ph = phi i32 [ %add318, %do.end317 ], [ 0, %entry ]
  %want.0.ph = phi i32 [ %39, %do.end317 ], [ 0, %entry ]
  %len.0.ph = phi i32 [ %sub319, %do.end317 ], [ %5, %entry ]
  br label %again

again:                                            ; preds = %do.body182.again_crit_edge, %again.outer
  %want.0 = phi i32 [ %39, %do.body182.again_crit_edge ], [ %want.0.ph, %again.outer ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_read_iter.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_read_iter, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !303

if.then:                                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr.i, align 8
  %18 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %snap, align 8
  %20 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ki_pos, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_read_iter.__UNIQUE_ID_ddebug379, ptr noundef nonnull @.str.72, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1563, ptr noundef %7, i64 noundef %17, i64 noundef %19, i64 noundef %21, i32 noundef %len.0.ph, ptr noundef %7) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %again
  %22 = ptrtoint ptr %i_ceph_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %i_ceph_flags.i, align 4
  %24 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i.i, align 16
  %mount_state.i = getelementptr inbounds %struct.ceph_fs_client, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %mount_state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %mount_state.i, align 4
  %and.i = and i32 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp.i = icmp sgt i32 %29, 3
  %spec.select.i = select i1 %tobool.not.i, i1 true, i1 %cmp.i
  br i1 %spec.select.i, label %do.end.cleanup329_crit_edge, label %if.end14

do.end.cleanup329_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup329

if.end14:                                         ; preds = %do.end
  br i1 %tobool.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  call void @ceph_start_io_direct(ptr noundef %7) #12
  br label %if.end17

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  call void @ceph_start_io_read(ptr noundef %7) #12
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then16
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flags, align 2
  %32 = and i16 %31, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool19.not = icmp eq i16 %32, 0
  %or = or i32 %want.0, 1024
  %33 = select i1 %tobool19.not, i1 %tobool.not, i1 false
  %want.1 = select i1 %33, i32 %or, i32 %want.0
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %3, align 4
  %36 = shl i16 %35, 13
  %37 = and i16 %36, -32768
  %38 = zext i16 %37 to i32
  %39 = or i32 %want.1, %38
  %call29 = call i32 @ceph_get_caps(ptr noundef %1, i32 noundef 2048, i32 noundef %39, i64 noundef -1, ptr noundef nonnull %got) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp = icmp slt i32 %call29, 0
  br i1 %cmp, label %if.then31, label %if.end36

if.then31:                                        ; preds = %if.end17
  br i1 %tobool.not, label %if.else34, label %if.then33

if.then33:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  call void @ceph_end_io_direct(ptr noundef %7) #12
  br label %cleanup329

if.else34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  call void @ceph_end_io_read(ptr noundef %7) #12
  br label %cleanup329

if.end36:                                         ; preds = %if.end17
  %40 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %got, align 4
  %and37 = and i32 %41, 33792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %cmp38 = icmp eq i32 %and37, 0
  br i1 %cmp38, label %if.end36.do.body49_crit_edge, label %lor.lhs.false

if.end36.do.body49_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body49

lor.lhs.false:                                    ; preds = %if.end36
  %42 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ki_flags, align 8
  %and41 = and i32 %43, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %lor.lhs.false43, label %lor.lhs.false.do.body49_crit_edge

lor.lhs.false.do.body49_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body49

lor.lhs.false43:                                  ; preds = %lor.lhs.false
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %flags, align 2
  %46 = and i16 %45, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool47.not = icmp eq i16 %46, 0
  br i1 %tobool47.not, label %if.else96, label %lor.lhs.false43.do.body49_crit_edge

lor.lhs.false43.do.body49_crit_edge:              ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body49

do.body49:                                        ; preds = %lor.lhs.false43.do.body49_crit_edge, %lor.lhs.false.do.body49_crit_edge, %if.end36.do.body49_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_read_iter.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_read_iter, %if.then61)) #12
          to label %do.end73 [label %if.then61], !srcloc !303

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %add.ptr.i, align 8
  %49 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %snap, align 8
  %51 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ki_pos, align 8
  %53 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %got, align 4
  %call70 = call ptr @ceph_cap_string(i32 noundef %54) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_read_iter.__UNIQUE_ID_ddebug380, ptr noundef nonnull @.str.74, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1593, ptr noundef %7, i64 noundef %48, i64 noundef %50, i64 noundef %52, i32 noundef %len.0.ph, ptr noundef %call70) #12
  br label %do.end73

do.end73:                                         ; preds = %if.then61, %do.body49
  %55 = ptrtoint ptr %i_inline_version to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %i_inline_version, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %56)
  %cmp74 = icmp eq i64 %56, -1
  br i1 %cmp74, label %if.then76, label %if.else94

if.then76:                                        ; preds = %do.end73
  %57 = ptrtoint ptr %retry_op to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %retry_op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool77.not = icmp eq i32 %58, 0
  br i1 %tobool77.not, label %land.lhs.true78, label %if.then76.if.else91_crit_edge

if.then76.if.else91_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else91

land.lhs.true78:                                  ; preds = %if.then76
  %59 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ki_flags, align 8
  %and80 = and i32 %60, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %land.lhs.true78.if.else91_crit_edge, label %if.then82

land.lhs.true78.if.else91_crit_edge:              ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else91

if.then82:                                        ; preds = %land.lhs.true78
  %call83 = call fastcc i32 @ceph_direct_read_write(ptr noundef %iocb, ptr noundef %to, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call83)
  %cmp84 = icmp sgt i32 %call83, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call83, i32 %len.0.ph)
  %cmp87 = icmp ult i32 %call83, %len.0.ph
  %or.cond = select i1 %cmp84, i1 %cmp87, i1 false
  br i1 %or.cond, label %if.then89, label %if.then82.do.body125_crit_edge

if.then82.do.body125_crit_edge:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body125

if.then89:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %retry_op to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %retry_op, align 4
  br label %do.body125

if.else91:                                        ; preds = %land.lhs.true78.if.else91_crit_edge, %if.then76.if.else91_crit_edge
  %call92 = call fastcc i32 @ceph_sync_read(ptr noundef %iocb, ptr noundef %to, ptr noundef nonnull %retry_op)
  br label %do.body125

if.else94:                                        ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %retry_op to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 3, ptr %retry_op, align 4
  br label %do.body125

if.else96:                                        ; preds = %lor.lhs.false43
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rw_ctx) #12
  %63 = ptrtoint ptr %15 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 -1, ptr %15, align 8
  %64 = ptrtoint ptr %rw_ctx to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 0, ptr %rw_ctx, align 8
  %65 = call i32 @llvm.read_register.i32(metadata !293) #12
  %and.i483 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i483 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task, align 8
  %69 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %13, align 8
  %70 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %41, ptr %14, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_read_iter.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_read_iter, %if.then110)) #12
          to label %do.end122 [label %if.then110], !srcloc !303

if.then110:                                       ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %add.ptr.i, align 8
  %73 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %snap, align 8
  %75 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %ki_pos, align 8
  %77 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %got, align 4
  %call119 = call ptr @ceph_cap_string(i32 noundef %78) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_read_iter.__UNIQUE_ID_ddebug381, ptr noundef nonnull @.str.76, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1611, ptr noundef %7, i64 noundef %72, i64 noundef %74, i64 noundef %76, i32 noundef %len.0.ph, ptr noundef %call119) #12
  br label %do.end122

do.end122:                                        ; preds = %if.then110, %if.else96
  call void @_raw_spin_lock(ptr noundef %rw_contexts_lock.i) #12
  %79 = ptrtoint ptr %rw_contexts.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rw_contexts.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %rw_ctx, ptr noundef %rw_contexts.i, ptr noundef %80) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end122.ceph_add_rw_context.exit_crit_edge

do.end122.ceph_add_rw_context.exit_crit_edge:     ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceph_add_rw_context.exit

if.end.i.i.i:                                     ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %rw_ctx, ptr %prev1.i.i.i, align 4
  %82 = ptrtoint ptr %rw_ctx to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %80, ptr %rw_ctx, align 8
  %83 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %rw_contexts.i, ptr %12, align 4
  %84 = ptrtoint ptr %rw_contexts.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %rw_ctx, ptr %rw_contexts.i, align 4
  br label %ceph_add_rw_context.exit

ceph_add_rw_context.exit:                         ; preds = %if.end.i.i.i, %do.end122.ceph_add_rw_context.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %rw_contexts_lock.i) #12
  %call123 = call i32 @generic_file_read_iter(ptr noundef %iocb, ptr noundef %to) #12
  call void @_raw_spin_lock(ptr noundef %rw_contexts_lock.i) #12
  %call.i.i.i487 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %rw_ctx) #12
  br i1 %call.i.i.i487, label %if.end.i.i.i488, label %ceph_add_rw_context.exit.ceph_del_rw_context.exit_crit_edge

ceph_add_rw_context.exit.ceph_del_rw_context.exit_crit_edge: ; preds = %ceph_add_rw_context.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceph_del_rw_context.exit

if.end.i.i.i488:                                  ; preds = %ceph_add_rw_context.exit
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %12, align 4
  %87 = ptrtoint ptr %rw_ctx to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rw_ctx, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev1.i.i.i.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %88, ptr %86, align 4
  br label %ceph_del_rw_context.exit

ceph_del_rw_context.exit:                         ; preds = %if.end.i.i.i488, %ceph_add_rw_context.exit.ceph_del_rw_context.exit_crit_edge
  %91 = ptrtoint ptr %rw_ctx to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 256 to ptr), ptr %rw_ctx, align 8
  %92 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  call void @_raw_spin_unlock(ptr noundef %rw_contexts_lock.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rw_ctx) #12
  br label %do.body125

do.body125:                                       ; preds = %ceph_del_rw_context.exit, %if.else94, %if.else91, %if.then89, %if.then82.do.body125_crit_edge
  %ret.0 = phi i32 [ %call92, %if.else91 ], [ %call83, %if.then89 ], [ %call83, %if.then82.do.body125_crit_edge ], [ %call29, %if.else94 ], [ %call123, %ceph_del_rw_context.exit ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_read_iter.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_read_iter, %if.then137)) #12
          to label %do.end148 [label %if.then137], !srcloc !303

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %add.ptr.i, align 8
  %95 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %snap, align 8
  %97 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %got, align 4
  %call145 = call ptr @ceph_cap_string(i32 noundef %98) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_read_iter.__UNIQUE_ID_ddebug382, ptr noundef nonnull @.str.78, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1618, ptr noundef %7, i64 noundef %94, i64 noundef %96, ptr noundef %call145, i32 noundef %ret.0) #12
  br label %do.end148

do.end148:                                        ; preds = %if.then137, %do.body125
  %99 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %got, align 4
  call void @ceph_put_cap_refs(ptr noundef %add.ptr.i, i32 noundef %100) #12
  br i1 %tobool.not, label %if.else151, label %if.then150

if.then150:                                       ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #14
  call void @ceph_end_io_direct(ptr noundef %7) #12
  br label %if.end152

if.else151:                                       ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #14
  call void @ceph_end_io_read(ptr noundef %7) #12
  br label %if.end152

if.end152:                                        ; preds = %if.else151, %if.then150
  %101 = ptrtoint ptr %retry_op to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %retry_op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %102)
  %cmp153 = icmp sgt i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp156 = icmp sgt i32 %ret.0, -1
  %or.cond462 = select i1 %cmp153, i1 %cmp156, i1 false
  br i1 %or.cond462, label %if.then158, label %if.end152.if.end323_crit_edge

if.end152.if.end323_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end323

if.then158:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %102)
  %cmp159 = icmp eq i32 %102, 3
  br i1 %cmp159, label %if.then161, label %if.then158.if.end166_crit_edge

if.then158.if.end166_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166

if.then161:                                       ; preds = %if.then158
  %call38.i.i.i.i = call ptr @__folio_alloc(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %tobool163.not = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool163.not, label %if.then161.cleanup329_crit_edge, label %if.then161.if.end166_crit_edge

if.then161.if.end166_crit_edge:                   ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166

if.then161.cleanup329_crit_edge:                  ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup329

if.end166:                                        ; preds = %if.then161.if.end166_crit_edge, %if.then158.if.end166_crit_edge
  %page.0 = phi ptr [ %call38.i.i.i.i, %if.then161.if.end166_crit_edge ], [ null, %if.then158.if.end166_crit_edge ]
  %tobool167 = icmp ne ptr %page.0, null
  %call172 = call i32 @__ceph_do_getattr(ptr noundef %7, ptr noundef %page.0, i32 noundef 2304, i1 noundef zeroext %tobool167) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %cmp173 = icmp slt i32 %call172, 0
  br i1 %cmp173, label %if.then175, label %if.end202

if.then175:                                       ; preds = %if.end166
  br i1 %tobool167, label %if.then177, label %if.then175.if.end178_crit_edge

if.then175.if.end178_crit_edge:                   ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end178

if.then177:                                       ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #14
  call void @__free_pages(ptr noundef nonnull %page.0, i32 noundef 0) #12
  br label %if.end178

if.end178:                                        ; preds = %if.then177, %if.then175.if.end178_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call172)
  %cmp179 = icmp eq i32 %call172, -61
  br i1 %cmp179, label %do.body182, label %if.end178.cleanup329_crit_edge

if.end178.cleanup329_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup329

do.body182:                                       ; preds = %if.end178
  br i1 %cmp159, label %do.body182.again_crit_edge, label %do.body192, !prof !306

do.body182.again_crit_edge:                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #14
  br label %again

do.body192:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1642, 0\0A.popsection", ""() #12, !srcloc !317
  unreachable

if.end202:                                        ; preds = %if.end166
  %call203 = call fastcc i64 @i_size_read(ptr noundef %7)
  %103 = zext i32 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %102, label %if.end202.if.end323_crit_edge [
    i32 3, label %do.body207
    i32 2, label %land.lhs.true292
  ]

if.end202.if.end323_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end323

do.body207:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp208 = icmp ne i32 %ret.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read.0.ph)
  %cmp210 = icmp sgt i32 %read.0.ph, 0
  %spec.select463 = select i1 %cmp208, i1 true, i1 %cmp210, !prof !309
  br i1 %spec.select463, label %do.body219, label %do.end227, !prof !309

do.body219:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1650, 0\0A.popsection", ""() #12, !srcloc !318
  unreachable

do.end227:                                        ; preds = %do.body207
  %104 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %ki_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %105, i64 %call203)
  %cmp229 = icmp slt i64 %105, %call203
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %105)
  %cmp233 = icmp slt i64 %105, 4096
  %or.cond464 = and i1 %cmp229, %cmp233
  br i1 %or.cond464, label %if.then235, label %do.end227.if.end264_crit_edge

do.end227.if.end264_crit_edge:                    ; preds = %do.end227
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end264

if.then235:                                       ; preds = %do.end227
  %conv237 = zext i32 %len.0.ph to i64
  %add = add nsw i64 %105, %conv237
  %106 = call i64 @llvm.smin.i64(i64 %call203, i64 %add)
  %107 = call i64 @llvm.smin.i64(i64 %106, i64 4096)
  %conv248508 = zext i32 %call172 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %107, i64 %conv248508)
  %cmp249 = icmp sgt i64 %107, %conv248508
  br i1 %cmp249, label %if.then251, label %if.then235.if.end253_crit_edge

if.then235.if.end253_crit_edge:                   ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end253

if.then251:                                       ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #14
  %conv252 = trunc i64 %107 to i32
  call void @zero_user_segments(ptr noundef %page.0, i32 noundef %call172, i32 noundef %conv252, i32 noundef 0, i32 noundef 0) #12
  br label %if.end253

if.end253:                                        ; preds = %if.then251, %if.then235.if.end253_crit_edge
  %108 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %ki_pos, align 8
  %110 = trunc i64 %109 to i32
  %conv256 = and i32 %110, 4095
  %sub = sub i64 %107, %109
  %conv258 = trunc i64 %sub to i32
  %call259 = call i32 @copy_page_to_iter(ptr noundef %page.0, i32 noundef %conv256, i32 noundef %conv258, ptr noundef %to) #12
  %conv260 = sext i32 %call259 to i64
  %111 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %ki_pos, align 8
  %add262 = add i64 %112, %conv260
  store i64 %add262, ptr %ki_pos, align 8
  %add263 = add i32 %call259, %read.0.ph
  br label %if.end264

if.end264:                                        ; preds = %if.end253, %do.end227.if.end264_crit_edge
  %read.1 = phi i32 [ %add263, %if.end253 ], [ %read.0.ph, %do.end227.if.end264_crit_edge ]
  %113 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %ki_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call203, i64 %114)
  %cmp266 = icmp sgt i64 %call203, %114
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0.ph, i32 %read.1)
  %cmp269 = icmp ugt i32 %len.0.ph, %read.1
  %or.cond465 = select i1 %cmp266, i1 %cmp269, i1 false
  br i1 %or.cond465, label %if.then271, label %if.end264.if.end288_crit_edge

if.end264.if.end288_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end288

if.then271:                                       ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #14
  %sub272 = sub i32 %len.0.ph, %read.1
  %sub274 = sub i64 %call203, %114
  %conv275 = trunc i64 %sub274 to i32
  %115 = call i32 @llvm.umin.i32(i32 %sub272, i32 %conv275)
  %call283 = call i32 @iov_iter_zero(i32 noundef %115, ptr noundef %to) #12
  %conv284 = sext i32 %call283 to i64
  %116 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %ki_pos, align 8
  %add286 = add i64 %117, %conv284
  store i64 %add286, ptr %ki_pos, align 8
  %add287 = add i32 %call283, %read.1
  br label %if.end288

if.end288:                                        ; preds = %if.then271, %if.end264.if.end288_crit_edge
  %read.2 = phi i32 [ %add287, %if.then271 ], [ %read.1, %if.end264.if.end288_crit_edge ]
  call void @__free_pages(ptr noundef %page.0, i32 noundef 0) #12
  br label %cleanup329

land.lhs.true292:                                 ; preds = %if.end202
  %118 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %ki_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %119, i64 %call203)
  %cmp294 = icmp slt i64 %119, %call203
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0.ph, i32 %ret.0)
  %cmp297 = icmp ugt i32 %len.0.ph, %ret.0
  %or.cond466 = select i1 %cmp294, i1 %cmp297, i1 false
  br i1 %or.cond466, label %do.body300, label %land.lhs.true292.if.end323_crit_edge

land.lhs.true292.if.end323_crit_edge:             ; preds = %land.lhs.true292
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end323

do.body300:                                       ; preds = %land.lhs.true292
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_read_iter.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_read_iter, %if.then312)) #12
          to label %do.end317 [label %if.then312], !srcloc !303

if.then312:                                       ; preds = %do.body300
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %ki_pos, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_read_iter.__UNIQUE_ID_ddebug389, ptr noundef nonnull @.str.80, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1679, i64 noundef %121, i64 noundef %call203) #12
  br label %do.end317

do.end317:                                        ; preds = %if.then312, %do.body300
  %add318 = add i32 %ret.0, %read.0.ph
  %sub319 = sub i32 %len.0.ph, %ret.0
  %122 = ptrtoint ptr %retry_op to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %retry_op, align 4
  br label %again.outer

if.end323:                                        ; preds = %land.lhs.true292.if.end323_crit_edge, %if.end202.if.end323_crit_edge, %if.end152.if.end323_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp324509 = icmp slt i32 %ret.0, 0
  %add327 = select i1 %cmp324509, i32 0, i32 %read.0.ph
  %ret.5 = add i32 %add327, %ret.0
  br label %cleanup329

cleanup329:                                       ; preds = %if.end323, %if.end288, %if.end178.cleanup329_crit_edge, %if.then161.cleanup329_crit_edge, %if.else34, %if.then33, %do.end.cleanup329_crit_edge
  %retval.2 = phi i32 [ %ret.5, %if.end323 ], [ %call29, %if.else34 ], [ %call29, %if.then33 ], [ %read.2, %if.end288 ], [ -12, %if.then161.cleanup329_crit_edge ], [ %call172, %if.end178.cleanup329_crit_edge ], [ -116, %do.end.cleanup329_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retry_op) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %got) #12
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_write_iter(ptr noundef %iocb, ptr noundef %from) #0 align 64 {
entry:
  %prealloc_cf = alloca ptr, align 4
  %got = alloca i32, align 4
  %data = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -952
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prealloc_cf) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %got) #12
  %12 = ptrtoint ptr %got to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %got, align 4, !annotation !319
  %call4 = tail call fastcc i64 @i_size_read(ptr noundef %5)
  %max_file_size = getelementptr inbounds %struct.ceph_fs_client, ptr %9, i32 0, i32 8
  %13 = ptrtoint ptr %max_file_size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %max_file_size, align 8
  %15 = tail call i64 @llvm.smax.i64(i64 %call4, i64 %14)
  %i_ceph_flags.i = getelementptr i8, ptr %5, i32 -868
  %16 = ptrtoint ptr %i_ceph_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %i_ceph_flags.i, align 4
  %18 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i.i, align 16
  %mount_state.i = getelementptr inbounds %struct.ceph_fs_client, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %mount_state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %mount_state.i, align 4
  %and.i = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp.i = icmp sgt i32 %23, 3
  %spec.select.i = select i1 %tobool.not.i, i1 true, i1 %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %snap.i = getelementptr i8, ptr %5, i32 -944
  %24 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %25)
  %cmp7.not = icmp eq i64 %25, -2
  br i1 %cmp7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @ceph_alloc_cap_flush() #12
  %26 = ptrtoint ptr %prealloc_cf to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call10, ptr %prealloc_cf, align 4
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %27 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ki_flags, align 8
  %and = and i32 %28, 131088
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %and)
  %cmp13 = icmp eq i32 %and, 131072
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %count1.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %lock = getelementptr inbounds %struct.ceph_client, ptr %11, i32 0, i32 12, i32 2
  %osdmap = getelementptr inbounds %struct.ceph_client, ptr %11, i32 0, i32 12, i32 1
  %pool_id = getelementptr i8, ptr %5, i32 -808
  %i_inline_version = getelementptr i8, ptr %5, i32 -880
  %flags82 = getelementptr inbounds %struct.ceph_file_info, ptr %3, i32 0, i32 1
  %i_version.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 38
  %i_ceph_lock = getelementptr i8, ptr %5, i32 -936
  %i_cap_snaps.i = getelementptr i8, ptr %5, i32 -404
  %prev.i = getelementptr i8, ptr %5, i32 -400
  %i_head_snapc = getelementptr i8, ptr %5, i32 -396
  br label %retry_snap

retry_snap:                                       ; preds = %if.then261, %do.body249, %if.end12
  %want.0 = phi i32 [ 0, %if.end12 ], [ %63, %do.body249 ], [ %63, %if.then261 ]
  %written.0 = phi i32 [ 0, %if.end12 ], [ -85, %do.body249 ], [ -85, %if.then261 ]
  br i1 %cmp13, label %if.then17, label %if.else

if.then17:                                        ; preds = %retry_snap
  call void @__sanitizer_cov_trace_pc() #14
  call void @ceph_start_io_direct(ptr noundef %5) #12
  br label %if.end18

if.else:                                          ; preds = %retry_snap
  call void @__sanitizer_cov_trace_pc() #14
  call void @ceph_start_io_write(ptr noundef %5) #12
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then17
  %call19 = call ptr @inode_to_bdi(ptr noundef %5) #12
  %29 = call i32 @llvm.read_register.i32(metadata !293) #12
  %and.i447 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i447 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task, align 8
  %backing_dev_info = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 150
  %33 = ptrtoint ptr %backing_dev_info to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call19, ptr %backing_dev_info, align 4
  %34 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ki_flags, align 8
  %and22 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end18.if.end29_crit_edge, label %if.then24

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then24:                                        ; preds = %if.end18
  %call.i = call i32 @__ceph_do_getattr(ptr noundef %5, ptr noundef null, i32 noundef 256, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp26 = icmp slt i32 %call.i, 0
  br i1 %cmp26, label %if.then24.out_crit_edge, label %if.then24.if.end29_crit_edge

if.then24.if.end29_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then24.out_crit_edge:                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end29:                                         ; preds = %if.then24.if.end29_crit_edge, %if.end18.if.end29_crit_edge
  %call30 = call i32 @generic_write_checks(ptr noundef %iocb, ptr noundef %from) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 1
  br i1 %cmp31, label %if.end29.out_crit_edge, label %if.end33

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end33:                                         ; preds = %if.end29
  %36 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ki_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %37)
  %cmp34.not = icmp sgt i64 %15, %37
  br i1 %cmp34.not, label %if.else38, label %if.end33.out_crit_edge, !prof !306

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.else38:                                        ; preds = %if.end33
  %sub = sub i64 %15, %37
  %38 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count1.i, align 8
  %conv.i = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv.i)
  %cmp.i448 = icmp ult i64 %sub, %conv.i
  br i1 %cmp.i448, label %if.then.i, label %if.else38.iov_iter_truncate.exit_crit_edge

if.else38.iov_iter_truncate.exit_crit_edge:       ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #14
  br label %iov_iter_truncate.exit

if.then.i:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #14
  %conv3.i = trunc i64 %sub to i32
  %40 = ptrtoint ptr %count1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv3.i, ptr %count1.i, align 8
  br label %iov_iter_truncate.exit

iov_iter_truncate.exit:                           ; preds = %if.then.i, %if.else38.iov_iter_truncate.exit_crit_edge
  %41 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count1.i, align 8
  %conv = sext i32 %42 to i64
  %add = add i64 %37, %conv
  %call41 = call zeroext i1 @ceph_quota_is_max_bytes_exceeded(ptr noundef %5, i64 noundef %add) #12
  br i1 %call41, label %iov_iter_truncate.exit.out_crit_edge, label %if.end43

iov_iter_truncate.exit.out_crit_edge:             ; preds = %iov_iter_truncate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end43:                                         ; preds = %iov_iter_truncate.exit
  call void @down_read(ptr noundef %lock) #12
  %43 = ptrtoint ptr %osdmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %osdmap, align 4
  %flags = getelementptr inbounds %struct.ceph_osdmap, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 4
  %47 = ptrtoint ptr %pool_id to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %pool_id, align 8
  %call45 = call i64 @ceph_pg_pool_flags(ptr noundef %44, i64 noundef %48) #12
  call void @up_read(ptr noundef %lock) #12
  %and47 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %and49 = and i64 %call45, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and49)
  %tobool50.not = icmp eq i64 %and49, 0
  %or.cond = select i1 %tobool48.not, i1 %tobool50.not, i1 false
  br i1 %or.cond, label %if.end52, label %if.end43.out_crit_edge

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end52:                                         ; preds = %if.end43
  %call53 = call i32 @file_remove_privs(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.out_crit_edge

if.end52.out_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end56:                                         ; preds = %if.end52
  %49 = ptrtoint ptr %i_inline_version to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %i_inline_version, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %50)
  %cmp57.not = icmp eq i64 %50, -1
  br i1 %cmp57.not, label %if.end56.do.body_crit_edge, label %if.then59

if.end56.do.body_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then59:                                        ; preds = %if.end56
  %call60 = call i32 @ceph_uninline_data(ptr noundef %1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then59.out_crit_edge, label %if.then59.do.body_crit_edge

if.then59.do.body_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then59.out_crit_edge:                          ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body:                                          ; preds = %if.then59.do.body_crit_edge, %if.end56.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_write_iter.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_write_iter, %if.then75)) #12
          to label %do.end [label %if.then75], !srcloc !303

if.then75:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %add.ptr.i, align 8
  %53 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %snap.i, align 8
  %call80 = call fastcc i64 @i_size_read(ptr noundef %5)
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_write_iter.__UNIQUE_ID_ddebug392, ptr noundef nonnull @.str.113, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1788, ptr noundef %5, i64 noundef %52, i64 noundef %54, i64 noundef %37, i32 noundef %42, i64 noundef %call80) #12
  br label %do.end

do.end:                                           ; preds = %if.then75, %do.body
  %55 = ptrtoint ptr %flags82 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %flags82, align 2
  %57 = and i16 %56, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool85.not = icmp eq i16 %57, 0
  %or = or i32 %want.0, 8192
  %spec.select = select i1 %cmp13, i32 %want.0, i32 %or
  %want.1 = select i1 %tobool85.not, i32 %spec.select, i32 %want.0
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %3, align 4
  %60 = shl i16 %59, 13
  %61 = and i16 %60, -32768
  %62 = zext i16 %61 to i32
  %63 = or i32 %want.1, %62
  %64 = ptrtoint ptr %got to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %got, align 4
  %call97 = call i32 @ceph_get_caps(ptr noundef %1, i32 noundef 4096, i32 noundef %63, i64 noundef %add, ptr noundef nonnull %got) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %do.end.out_crit_edge, label %if.end101

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end101:                                        ; preds = %do.end
  %call102 = call i32 @file_update_time(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %out_caps

if.end105:                                        ; preds = %if.end101
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i, i32 noundef 8) #12
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %i_version.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_write_iter.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_write_iter, %if.then118)) #12
          to label %do.end129 [label %if.then118], !srcloc !303

if.then118:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %add.ptr.i, align 8
  %67 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %snap.i, align 8
  %69 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %got, align 4
  %call126 = call ptr @ceph_cap_string(i32 noundef %70) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_write_iter.__UNIQUE_ID_ddebug393, ptr noundef nonnull @.str.115, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1805, ptr noundef %5, i64 noundef %66, i64 noundef %68, i64 noundef %37, i32 noundef %42, ptr noundef %call126) #12
  br label %do.end129

do.end129:                                        ; preds = %if.then118, %if.end105
  %71 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %got, align 4
  %and130 = and i32 %72, 40960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %cmp131 = icmp eq i32 %and130, 0
  br i1 %cmp131, label %do.end129.if.then145_crit_edge, label %lor.lhs.false133

do.end129.if.then145_crit_edge:                   ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then145

lor.lhs.false133:                                 ; preds = %do.end129
  %73 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ki_flags, align 8
  %and135 = and i32 %74, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %lor.lhs.false137, label %lor.lhs.false133.if.then145_crit_edge

lor.lhs.false133.if.then145_crit_edge:            ; preds = %lor.lhs.false133
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then145

lor.lhs.false137:                                 ; preds = %lor.lhs.false133
  %75 = ptrtoint ptr %flags82 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %flags82, align 2
  %77 = and i16 %76, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool141.not = icmp eq i16 %77, 0
  br i1 %tobool141.not, label %lor.lhs.false142, label %lor.lhs.false137.if.then145_crit_edge

lor.lhs.false137.if.then145_crit_edge:            ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then145

lor.lhs.false142:                                 ; preds = %lor.lhs.false137
  %78 = ptrtoint ptr %i_ceph_flags.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %i_ceph_flags.i, align 4
  %and143 = and i32 %79, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.else191, label %lor.lhs.false142.if.then145_crit_edge

lor.lhs.false142.if.then145_crit_edge:            ; preds = %lor.lhs.false142
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then145

if.then145:                                       ; preds = %lor.lhs.false142.if.then145_crit_edge, %lor.lhs.false137.if.then145_crit_edge, %lor.lhs.false133.if.then145_crit_edge, %do.end129.if.then145_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data) #12
  %80 = call ptr @memset(ptr %data, i32 255, i32 24)
  call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #12
  %81 = ptrtoint ptr %i_cap_snaps.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %i_cap_snaps.i, align 4
  %cmp.i.not.i = icmp eq ptr %82, %i_cap_snaps.i
  br i1 %cmp.i.not.i, label %if.then145.do.body151_crit_edge, label %__ceph_have_pending_cap_snap.exit

if.then145.do.body151_crit_edge:                  ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body151

__ceph_have_pending_cap_snap.exit:                ; preds = %if.then145
  %83 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i, align 4
  %writing.i = getelementptr i8, ptr %84, i32 192
  %85 = ptrtoint ptr %writing.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %writing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool2.i.not = icmp eq i32 %86, 0
  br i1 %tobool2.i.not, label %__ceph_have_pending_cap_snap.exit.do.body151_crit_edge, label %if.then147

__ceph_have_pending_cap_snap.exit.do.body151_crit_edge: ; preds = %__ceph_have_pending_cap_snap.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body151

if.then147:                                       ; preds = %__ceph_have_pending_cap_snap.exit
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %prev.i, align 4
  %context = getelementptr i8, ptr %88, i32 60
  %89 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %context, align 8
  %call149 = call ptr @ceph_get_snap_context(ptr noundef %90) #12
  br label %if.end173

do.body151:                                       ; preds = %__ceph_have_pending_cap_snap.exit.do.body151_crit_edge, %if.then145.do.body151_crit_edge
  %91 = ptrtoint ptr %i_head_snapc to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %i_head_snapc, align 4
  %tobool152.not = icmp eq ptr %92, null
  br i1 %tobool152.not, label %do.body162, label %do.end170, !prof !309

do.body162:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1821, 0\0A.popsection", ""() #12, !srcloc !320
  unreachable

do.end170:                                        ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #14
  %call172 = call ptr @ceph_get_snap_context(ptr noundef nonnull %92) #12
  br label %if.end173

if.end173:                                        ; preds = %do.end170, %if.then147
  %snapc.0 = phi ptr [ %call149, %if.then147 ], [ %call172, %do.end170 ]
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #12
  %93 = call ptr @memcpy(ptr %data, ptr %from, i32 24)
  %94 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ki_flags, align 8
  %and176 = and i32 %95, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %if.else180, label %if.then178

if.then178:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #14
  %call179 = call fastcc i32 @ceph_direct_read_write(ptr noundef %iocb, ptr noundef nonnull %data, ptr noundef %snapc.0, ptr noundef nonnull %prealloc_cf)
  br label %if.end182

if.else180:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #14
  %call181 = call fastcc i32 @ceph_sync_write(ptr noundef %iocb, ptr noundef nonnull %data, i64 noundef %37, ptr noundef %snapc.0)
  br label %if.end182

if.end182:                                        ; preds = %if.else180, %if.then178
  %written.1 = phi i32 [ %call179, %if.then178 ], [ %call181, %if.else180 ]
  br i1 %cmp13, label %if.then184, label %if.else185

if.then184:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #14
  call void @ceph_end_io_direct(ptr noundef %5) #12
  br label %if.end186

if.else185:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #14
  call void @ceph_end_io_write(ptr noundef %5) #12
  br label %if.end186

if.end186:                                        ; preds = %if.else185, %if.then184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.1)
  %cmp187 = icmp sgt i32 %written.1, 0
  br i1 %cmp187, label %if.then189, label %if.end186.if.end190_crit_edge

if.end186.if.end190_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end190

if.then189:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #14
  call void @iov_iter_advance(ptr noundef %from, i32 noundef %written.1) #12
  br label %if.end190

if.end190:                                        ; preds = %if.then189, %if.end186.if.end190_crit_edge
  call void @ceph_put_snap_context(ptr noundef %snapc.0) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data) #12
  br label %if.end206

if.else191:                                       ; preds = %lor.lhs.false142
  %call192 = call i32 @generic_perform_write(ptr noundef %1, ptr noundef %from, i64 noundef %37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call192)
  %cmp193 = icmp sgt i32 %call192, -1
  br i1 %cmp193, label %if.then201, label %if.else191.if.end205_crit_edge, !prof !306

if.else191.if.end205_crit_edge:                   ; preds = %if.else191
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end205

if.then201:                                       ; preds = %if.else191
  call void @__sanitizer_cov_trace_pc() #14
  %conv202461 = zext i32 %call192 to i64
  %add203 = add i64 %37, %conv202461
  %96 = ptrtoint ptr %ki_pos to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %add203, ptr %ki_pos, align 8
  br label %if.end205

if.end205:                                        ; preds = %if.then201, %if.else191.if.end205_crit_edge
  call void @ceph_end_io_write(ptr noundef %5) #12
  br label %if.end206

if.end206:                                        ; preds = %if.end205, %if.end190
  %written.2 = phi i32 [ %written.1, %if.end190 ], [ %call192, %if.end205 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %written.2)
  %cmp207 = icmp sgt i32 %written.2, -1
  br i1 %cmp207, label %if.then209, label %if.end206.do.body222_crit_edge

if.end206.do.body222_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body222

if.then209:                                       ; preds = %if.end206
  call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #12
  %97 = ptrtoint ptr %i_inline_version to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 -1, ptr %i_inline_version, align 8
  %call212 = call i32 @__ceph_mark_dirty_caps(ptr noundef %add.ptr.i, i32 noundef 4096, ptr noundef nonnull %prealloc_cf) #12
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212)
  %tobool214.not = icmp eq i32 %call212, 0
  br i1 %tobool214.not, label %if.then209.if.end216_crit_edge, label %if.then215

if.then209.if.end216_crit_edge:                   ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end216

if.then215:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #14
  call void @__mark_inode_dirty(ptr noundef %5, i32 noundef %call212) #12
  br label %if.end216

if.end216:                                        ; preds = %if.then215, %if.then209.if.end216_crit_edge
  %98 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %ki_pos, align 8
  %call218 = call zeroext i1 @ceph_quota_is_max_bytes_approaching(ptr noundef %5, i64 noundef %99) #12
  br i1 %call218, label %if.then219, label %if.end216.do.body222_crit_edge

if.end216.do.body222_crit_edge:                   ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body222

if.then219:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #14
  call void @ceph_check_caps(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef null) #12
  br label %do.body222

do.body222:                                       ; preds = %if.then219, %if.end216.do.body222_crit_edge, %if.end206.do.body222_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_write_iter.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_write_iter, %if.then234)) #12
          to label %do.end245 [label %if.then234], !srcloc !303

if.then234:                                       ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #14
  %100 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %add.ptr.i, align 8
  %102 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %snap.i, align 8
  %104 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %got, align 4
  %call242 = call ptr @ceph_cap_string(i32 noundef %105) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_write_iter.__UNIQUE_ID_ddebug394, ptr noundef nonnull @.str.117, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1870, ptr noundef %5, i64 noundef %101, i64 noundef %103, i64 noundef %37, i32 noundef %42, ptr noundef %call242) #12
  br label %do.end245

do.end245:                                        ; preds = %if.then234, %do.body222
  %106 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %got, align 4
  call void @ceph_put_cap_refs(ptr noundef %add.ptr.i, i32 noundef %107) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -85, i32 %written.2)
  %cmp246 = icmp eq i32 %written.2, -85
  br i1 %cmp246, label %do.body249, label %if.end272

do.body249:                                       ; preds = %do.end245
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_write_iter.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_write_iter, %if.then261)) #12
          to label %retry_snap [label %if.then261], !srcloc !303

if.then261:                                       ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #14
  %108 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %add.ptr.i, align 8
  %110 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %snap.i, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_write_iter.__UNIQUE_ID_ddebug395, ptr noundef nonnull @.str.119, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1875, ptr noundef %5, i64 noundef %109, i64 noundef %111, i64 noundef %37, i32 noundef %42) #12
  br label %retry_snap

if.end272:                                        ; preds = %do.end245
  %112 = inttoptr i32 %and.i447 to ptr
  %task.le = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 2
  br i1 %cmp207, label %if.then275, label %if.end272.out_unlocked_crit_edge

if.end272.out_unlocked_crit_edge:                 ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlocked

if.then275:                                       ; preds = %if.end272
  %and276 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and276)
  %tobool277.not = icmp eq i32 %and276, 0
  %and279 = and i64 %call45, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and279)
  %tobool280.not = icmp eq i64 %and279, 0
  %or.cond437 = select i1 %tobool277.not, i1 %tobool280.not, i1 false
  br i1 %or.cond437, label %if.then275.if.end284_crit_edge, label %if.then281

if.then275.if.end284_crit_edge:                   ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end284

if.then281:                                       ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #14
  %113 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ki_flags, align 8
  %or283 = or i32 %114, 2
  store i32 %or283, ptr %ki_flags, align 8
  br label %if.end284

if.end284:                                        ; preds = %if.then281, %if.then275.if.end284_crit_edge
  %call285 = call fastcc i32 @generic_write_sync(ptr noundef %iocb, i32 noundef %written.2)
  br label %out_unlocked

out_caps:                                         ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  %115 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %got, align 4
  call void @ceph_put_cap_refs(ptr noundef %add.ptr.i, i32 noundef %116) #12
  br label %out

out:                                              ; preds = %out_caps, %do.end.out_crit_edge, %if.then59.out_crit_edge, %if.end52.out_crit_edge, %if.end43.out_crit_edge, %iov_iter_truncate.exit.out_crit_edge, %if.end33.out_crit_edge, %if.end29.out_crit_edge, %if.then24.out_crit_edge
  %err.0 = phi i32 [ %call102, %out_caps ], [ -28, %if.end43.out_crit_edge ], [ -122, %iov_iter_truncate.exit.out_crit_edge ], [ -27, %if.end33.out_crit_edge ], [ %call97, %do.end.out_crit_edge ], [ %call60, %if.then59.out_crit_edge ], [ %call53, %if.end52.out_crit_edge ], [ %call30, %if.end29.out_crit_edge ], [ %call.i, %if.then24.out_crit_edge ]
  %.pn = inttoptr i32 %and.i447 to ptr
  %task505 = getelementptr inbounds %struct.thread_info, ptr %.pn, i32 0, i32 2
  br i1 %cmp13, label %if.then288, label %if.else289

if.then288:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  call void @ceph_end_io_direct(ptr noundef %5) #12
  br label %out_unlocked

if.else289:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  call void @ceph_end_io_write(ptr noundef %5) #12
  br label %out_unlocked

out_unlocked:                                     ; preds = %if.else289, %if.then288, %if.end284, %if.end272.out_unlocked_crit_edge
  %task504 = phi ptr [ %task505, %if.then288 ], [ %task505, %if.else289 ], [ %task.le, %if.end284 ], [ %task.le, %if.end272.out_unlocked_crit_edge ]
  %err.1 = phi i32 [ %err.0, %if.then288 ], [ %err.0, %if.else289 ], [ 0, %if.end284 ], [ 0, %if.end272.out_unlocked_crit_edge ]
  %written.3 = phi i32 [ %written.0, %if.then288 ], [ %written.0, %if.else289 ], [ %call285, %if.end284 ], [ %written.2, %if.end272.out_unlocked_crit_edge ]
  %117 = ptrtoint ptr %prealloc_cf to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %prealloc_cf, align 4
  call void @ceph_free_cap_flush(ptr noundef %118) #12
  %119 = ptrtoint ptr %task504 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %task504, align 8
  %backing_dev_info293 = getelementptr inbounds %struct.task_struct, ptr %120, i32 0, i32 150
  %121 = ptrtoint ptr %backing_dev_info293 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %backing_dev_info293, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.3)
  %tobool294.not = icmp eq i32 %written.3, 0
  %err.1.written.3 = select i1 %tobool294.not, i32 %err.1, i32 %written.3
  br label %cleanup

cleanup:                                          ; preds = %out_unlocked, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1.written.3, %out_unlocked ], [ -116, %entry.cleanup_crit_edge ], [ -30, %if.end.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %got) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prealloc_cf) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_lock(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_flock(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_nosetlease(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_fallocate(ptr noundef %file, i32 noundef %mode, i64 noundef %offset, i64 noundef %length) #0 align 64 {
entry:
  %prealloc_cf = alloca ptr, align 4
  %got = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -952
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prealloc_cf) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %got) #12
  %4 = ptrtoint ptr %got to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %got, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cmp.not = icmp eq i32 %mode, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %3, align 8
  %7 = and i16 %6, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %7)
  %cmp2 = icmp eq i16 %7, -32768
  br i1 %cmp2, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @ceph_alloc_cap_flush() #12
  %8 = ptrtoint ptr %prealloc_cf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %prealloc_cf, align 4
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #12
  %snap.i = getelementptr i8, ptr %3, i32 -944
  %9 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %10)
  %cmp10.not = icmp eq i64 %10, -2
  br i1 %cmp10.not, label %if.end13, label %if.end8.unlock_crit_edge

if.end8.unlock_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end13:                                         ; preds = %if.end8
  %i_inline_version = getelementptr i8, ptr %3, i32 -880
  %11 = ptrtoint ptr %i_inline_version to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_inline_version, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %12)
  %cmp14.not = icmp eq i64 %12, -1
  br i1 %cmp14.not, label %if.end13.if.end22_crit_edge, label %if.then16

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then16:                                        ; preds = %if.end13
  %call17 = tail call i32 @ceph_uninline_data(ptr noundef %file, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then16.unlock_crit_edge, label %if.then16.if.end22_crit_edge

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then16.unlock_crit_edge:                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end22:                                         ; preds = %if.then16.if.end22_crit_edge, %if.end13.if.end22_crit_edge
  %ret.0 = phi i32 [ %call17, %if.then16.if.end22_crit_edge ], [ 0, %if.end13.if.end22_crit_edge ]
  %call23 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  call void @__sanitizer_cov_trace_cmp8(i64 %call23, i64 %offset)
  %cmp24.not = icmp sgt i64 %call23, %offset
  br i1 %cmp24.not, label %if.end27, label %if.end22.unlock_crit_edge

if.end22.unlock_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end27:                                         ; preds = %if.end22
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 4
  %15 = and i16 %14, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool34.not = icmp eq i16 %15, 0
  %want.0 = select i1 %tobool34.not, i32 8192, i32 40960
  %call37 = call i32 @ceph_get_caps(ptr noundef %file, i32 noundef 4096, i32 noundef %want.0, i64 noundef 0, ptr noundef nonnull %got) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end27.unlock_crit_edge, label %if.end41

if.end27.unlock_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end41:                                         ; preds = %if.end27
  %add = add i64 %length, %offset
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call23)
  %cmp28 = icmp sgt i64 %add, %call23
  %sub = sub i64 %call23, %offset
  %spec.select = select i1 %cmp28, i64 %sub, i64 %length
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %16 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_mapping, align 8
  %invalidate_lock.i = getelementptr inbounds %struct.address_space, ptr %17, i32 0, i32 2
  call void @down_write(ptr noundef %invalidate_lock.i) #12
  call void @ceph_fscache_invalidate(ptr noundef %3, i1 noundef zeroext false) #12
  call fastcc void @ceph_zero_pagecache_range(ptr noundef %3, i64 noundef %offset, i64 noundef %spec.select)
  %call42 = call fastcc i32 @ceph_zero_objects(ptr noundef %3, i64 noundef %offset, i64 noundef %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then44, label %if.end41.if.end51_crit_edge

if.end41.if.end51_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then44:                                        ; preds = %if.end41
  %i_ceph_lock = getelementptr i8, ptr %3, i32 -936
  call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #12
  %18 = ptrtoint ptr %i_inline_version to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 -1, ptr %i_inline_version, align 8
  %call46 = call i32 @__ceph_mark_dirty_caps(ptr noundef %add.ptr.i, i32 noundef 4096, ptr noundef nonnull %prealloc_cf) #12
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool48.not = icmp eq i32 %call46, 0
  br i1 %tobool48.not, label %if.then44.if.end51_crit_edge, label %if.then49

if.then44.if.end51_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then49:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  call void @__mark_inode_dirty(ptr noundef %3, i32 noundef %call46) #12
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.then44.if.end51_crit_edge, %if.end41.if.end51_crit_edge
  %19 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_mapping, align 8
  %invalidate_lock.i94 = getelementptr inbounds %struct.address_space, ptr %20, i32 0, i32 2
  call void @up_write(ptr noundef %invalidate_lock.i94) #12
  %21 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %got, align 4
  call void @ceph_put_cap_refs(ptr noundef %add.ptr.i, i32 noundef %22) #12
  br label %unlock

unlock:                                           ; preds = %if.end51, %if.end27.unlock_crit_edge, %if.end22.unlock_crit_edge, %if.then16.unlock_crit_edge, %if.end8.unlock_crit_edge
  %ret.1 = phi i32 [ %call17, %if.then16.unlock_crit_edge ], [ %ret.0, %if.end22.unlock_crit_edge ], [ %call37, %if.end27.unlock_crit_edge ], [ %call42, %if.end51 ], [ -30, %if.end8.unlock_crit_edge ]
  call void @up_write(ptr noundef %i_rwsem.i) #12
  %23 = ptrtoint ptr %prealloc_cf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prealloc_cf, align 4
  call void @ceph_free_cap_flush(ptr noundef %24) #12
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %unlock ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %got) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prealloc_cf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_copy_file_range(ptr noundef %src_file, i64 noundef %src_off, ptr noundef %dst_file, i64 noundef %dst_off, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ceph_copy_file_range(ptr noundef %src_file, i64 noundef %src_off, ptr noundef %dst_file, i64 noundef %dst_off, i32 noundef %len, i32 noundef %flags)
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %call, label %entry.if.end_crit_edge [
    i32 -95, label %entry.if.then_crit_edge
    i32 -18, label %entry.if.then_crit_edge11
  ]

entry.if.then_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge11
  %call2 = tail call i32 @generic_copy_file_range(ptr noundef %src_file, i64 noundef %src_off, ptr noundef %dst_file, i64 noundef %dst_off, i32 noundef %len, i32 noundef %flags) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then ], [ %call, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_mdsc_create_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_mdsc_release_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_fscache_use_cookie(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ceph_init_file_info(ptr noundef %inode, ptr noundef %file, i32 noundef %fmode, i1 noundef zeroext %isdir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mount_options, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_init_file_info.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_init_file_info, %if.then)) #12
          to label %do.body9 [label %if.then], !srcloc !303

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %inode, align 8
  %conv = zext i16 %7 to i32
  %cond = select i1 %isdir, ptr @.str.46, ptr @.str.47
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_init_file_info.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.45, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 212, ptr noundef nonnull @.str.43, ptr noundef %inode, ptr noundef %file, i32 noundef %conv, ptr noundef nonnull %cond) #12
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  %8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %release = getelementptr inbounds %struct.file_operations, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %release, align 4
  %cmp.not = icmp eq ptr %12, @ceph_release
  br i1 %cmp.not, label %do.end26, label %do.body18, !prof !306

do.body18:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 213, 0\0A.popsection", ""() #12, !srcloc !321
  unreachable

do.end26:                                         ; preds = %do.body9
  br i1 %isdir, label %if.then28, label %if.else

if.then28:                                        ; preds = %do.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ceph_dir_file_cachep to i32))
  %13 = load ptr, ptr @ceph_dir_file_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %13, i32 noundef 3520) #12
  %tobool30.not = icmp eq ptr %call.i, null
  br i1 %tobool30.not, label %if.then28.cleanup57_crit_edge, label %cleanup

if.then28.cleanup57_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup57

cleanup:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %14 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %private_data, align 4
  %next_offset = getelementptr inbounds %struct.ceph_dir_file_info, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %next_offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %next_offset, align 8
  %readdir_cache_idx = getelementptr inbounds %struct.ceph_dir_file_info, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %readdir_cache_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %readdir_cache_idx, align 8
  br label %if.end44

if.else:                                          ; preds = %do.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ceph_file_cachep to i32))
  %17 = load ptr, ptr @ceph_file_cachep, align 4
  %call.i80 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %17, i32 noundef 3520) #12
  %tobool34.not = icmp eq ptr %call.i80, null
  br i1 %tobool34.not, label %if.else.cleanup57_crit_edge, label %if.end36

if.else.cleanup57_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup57

if.end36:                                         ; preds = %if.else
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %5, align 4
  %and = and i32 %19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %if.end36.if.end42_crit_edge, label %if.then38

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %flags39 = getelementptr inbounds %struct.ceph_file_info, ptr %call.i80, i32 0, i32 1
  %20 = ptrtoint ptr %flags39 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags39, align 2
  %22 = or i16 %21, 1
  store i16 %22, ptr %flags39, align 2
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end36.if.end42_crit_edge
  %private_data43 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %23 = ptrtoint ptr %private_data43 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i80, ptr %private_data43, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end42, %cleanup
  %fi.1 = phi ptr [ %call.i, %cleanup ], [ %call.i80, %if.end42 ]
  tail call void @ceph_get_fmode(ptr noundef %add.ptr.i, i32 noundef %fmode, i32 noundef 1) #12
  %conv45 = trunc i32 %fmode to i16
  %24 = ptrtoint ptr %fi.1 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv45, ptr %fi.1, align 8
  %rw_contexts_lock = getelementptr inbounds %struct.ceph_file_info, ptr %fi.1, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %rw_contexts_lock, ptr noundef nonnull @.str.48, ptr noundef nonnull @ceph_init_file_info.__key, i16 noundef signext 3) #12
  %rw_contexts = getelementptr inbounds %struct.ceph_file_info, ptr %fi.1, i32 0, i32 3
  %25 = ptrtoint ptr %rw_contexts to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %rw_contexts, ptr %rw_contexts, align 8
  %prev.i = getelementptr inbounds %struct.ceph_file_info, ptr %fi.1, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %rw_contexts, ptr %prev.i, align 4
  %27 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i82 = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 33
  %29 = ptrtoint ptr %s_fs_info.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i82, align 16
  %filp_gen = getelementptr inbounds %struct.ceph_fs_client, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %filp_gen to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %filp_gen, align 4
  %filp_gen56 = getelementptr inbounds %struct.ceph_file_info, ptr %fi.1, i32 0, i32 4
  %33 = ptrtoint ptr %filp_gen56 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %filp_gen56, align 8
  br label %cleanup57

cleanup57:                                        ; preds = %if.end44, %if.else.cleanup57_crit_edge, %if.then28.cleanup57_crit_edge
  %retval.1 = phi i32 [ 0, %if.end44 ], [ -12, %if.else.cleanup57_crit_edge ], [ -12, %if.then28.cleanup57_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_get_fmode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_file_layout_is_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ceph_get_deleg_ino(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_take_cap_refs(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_mdsc_build_path(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_inode_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_kick_flushing_inode_caps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_mdsc_release_dir_caps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_get_inode(ptr noundef, [2 x i64]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable_wrt_inode_uidgid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_file_layout_to_legacy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_fill_inode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @discard_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_get_mds_session(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_restore_deleg_ino(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_put_mds_session(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_release_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !322
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %1 = tail call ptr @llvm.returnaddress(i32 0) #12
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call ptr @llvm.returnaddress(i32 0) #12
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #12
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !323
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !309

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !324
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !325
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !326
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !327
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !328
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_setpos(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_do_getattr(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_start_io_direct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_start_io_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_get_caps(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_end_io_direct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_end_io_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ceph_direct_read_write(ptr noundef %iocb, ptr noundef %iter, ptr noundef %snapc, ptr nocapture noundef %pcf) unnamed_addr #0 align 64 {
entry:
  %pages.i.i = alloca [64 x ptr], align 4
  %start.i.i = alloca i32, align 4
  %mtime = alloca %struct.timespec64, align 8
  %size = alloca i64, align 8
  %i = alloca %struct.iov_iter, align 8
  %osd_reqs231 = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -952
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdsc, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mtime) #12
  %10 = call ptr @memset(ptr %mtime, i32 255, i32 16)
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %mtime, ptr noundef %3) #12
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %13 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ki_pos, align 8
  %data_source.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 2
  %15 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data_source.i, align 2, !range !315
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp = icmp eq i8 %16, 1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %iter to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %iter, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.i = icmp eq i8 %18, 0
  %frombool9 = zext i1 %cmp.i to i8
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %19 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %f_inode.i, align 8
  %snap.i = getelementptr i8, ptr %20, i32 -944
  %21 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %22)
  %cmp14.not = icmp eq i64 %22, -2
  br i1 %cmp14.not, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true.cleanup275_crit_edge

land.lhs.true.cleanup275_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup275

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %land.end
  %frombool9469 = phi i8 [ %frombool9, %land.end ], [ 0, %land.lhs.true.do.body_crit_edge ]
  %23 = phi i1 [ %cmp.i, %land.end ], [ false, %land.lhs.true.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_direct_read_write.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_direct_read_write, %if.then21)) #12
          to label %do.end [label %if.then21], !srcloc !303

if.then21:                                        ; preds = %do.body
  %cond = select i1 %cmp, ptr @.str.84, ptr @.str.85
  %tobool25.not = icmp eq ptr %snapc, null
  br i1 %tobool25.not, label %if.then21.cond.end_crit_edge, label %cond.true

if.then21.cond.end_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %seq = getelementptr inbounds %struct.ceph_snap_context, ptr %snapc, i32 0, i32 1
  %24 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %seq, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then21.cond.end_crit_edge
  %cond26 = phi i64 [ %25, %cond.true ], [ 0, %if.then21.cond.end_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_direct_read_write.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.83, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1232, ptr noundef nonnull %cond, ptr noundef %1, i64 noundef %14, i32 noundef %12, ptr noundef %snapc, i64 noundef %cond26) #12
  br label %do.end

do.end:                                           ; preds = %cond.end, %do.body
  br i1 %cmp, label %if.then29, label %do.end.if.end56_crit_edge

do.end.if.end56_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then29:                                        ; preds = %do.end
  call void @ceph_fscache_invalidate(ptr noundef %3, i1 noundef zeroext true) #12
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %26 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_mapping, align 8
  %28 = lshr i64 %14, 12
  %conv30 = trunc i64 %28 to i32
  %conv31 = zext i32 %12 to i64
  %add = add nuw nsw i64 %conv31, 17592186044415
  %sub = add i64 %add, %14
  %29 = lshr i64 %sub, 12
  %conv33 = trunc i64 %29 to i32
  %call34 = call i32 @invalidate_inode_pages2_range(ptr noundef %27, i32 noundef %conv30, i32 noundef %conv33) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.body38, label %if.then29.if.end56_crit_edge

if.then29.if.end56_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

do.body38:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_direct_read_write.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_direct_read_write, %if.then50)) #12
          to label %if.end56 [label %if.then50], !srcloc !303

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_direct_read_write.__UNIQUE_ID_ddebug368, ptr noundef nonnull @.str.87, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1243, i32 noundef %call34) #12
  br label %if.end56

if.end56:                                         ; preds = %if.then50, %do.body38, %if.then29.if.end56_crit_edge, %do.end.if.end56_crit_edge
  %flags.0 = phi i32 [ 32, %if.then50 ], [ 32, %if.then29.if.end56_crit_edge ], [ 16, %do.end.if.end56_crit_edge ], [ 32, %do.body38 ]
  %30 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp58.not527 = icmp eq i32 %31, 0
  br i1 %cmp58.not527, label %if.end56.land.lhs.true265_crit_edge, label %while.body.lr.ph

if.end56.land.lhs.true265_crit_edge:              ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true265

while.body.lr.ph:                                 ; preds = %if.end56
  %mount_options73 = getelementptr inbounds %struct.ceph_fs_client, ptr %7, i32 0, i32 2
  %tmp83.sroa.4.0.add.ptr.i.i.sroa_idx = getelementptr i8, ptr %3, i32 -944
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %7, i32 0, i32 3
  %i_layout = getelementptr i8, ptr %3, i32 -824
  %i_truncate_seq = getelementptr i8, ptr %3, i32 -272
  %i_truncate_size = getelementptr i8, ptr %3, i32 -264
  %ki_complete.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 2
  %conv112 = zext i32 %12 to i64
  %i_mapping140 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %metric.i = getelementptr inbounds %struct.ceph_mds_client, ptr %9, i32 0, i32 49, i32 6
  %arrayidx.i = getelementptr %struct.ceph_mds_client, ptr %9, i32 0, i32 49, i32 6, i32 1
  %cond86 = select i1 %cmp, i32 8705, i32 4609
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %32 = phi i32 [ %31, %while.body.lr.ph ], [ %125, %cleanup.while.body_crit_edge ]
  %aio_req.0533 = phi ptr [ null, %while.body.lr.ph ], [ %aio_req.2, %cleanup.while.body_crit_edge ]
  %pos.0529 = phi i64 [ %14, %while.body.lr.ph ], [ %pos.1, %cleanup.while.body_crit_edge ]
  %ret.0528 = phi i32 [ 0, %while.body.lr.ph ], [ %ret.5, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size) #12
  %conv61 = zext i32 %32 to i64
  %33 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv61, ptr %size, align 8
  %34 = ptrtoint ptr %mount_options73 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mount_options73, align 4
  %rsize = getelementptr inbounds %struct.ceph_mount_options, ptr %35, i32 0, i32 2
  %wsize = getelementptr inbounds %struct.ceph_mount_options, ptr %35, i32 0, i32 1
  %rsize.sink = select i1 %cmp, ptr %wsize, ptr %rsize
  %36 = ptrtoint ptr %rsize.sink to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rsize.sink, align 4
  %38 = call i32 @llvm.umin.i32(i32 %32, i32 %37)
  %storemerge = zext i32 %38 to i64
  %39 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %storemerge, ptr %size, align 8
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %tmp83.sroa.0.0.copyload = load i64, ptr %add.ptr.i, align 8
  %41 = ptrtoint ptr %tmp83.sroa.4.0.add.ptr.i.i.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %41)
  %tmp83.sroa.4.0.copyload = load i64, ptr %tmp83.sroa.4.0.add.ptr.i.i.sroa_idx, align 8
  %42 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %client, align 8
  %osdc = getelementptr inbounds %struct.ceph_client, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %i_truncate_seq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i_truncate_seq, align 8
  %46 = ptrtoint ptr %i_truncate_size to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %i_truncate_size, align 8
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %tmp83.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %tmp83.sroa.4.0.copyload, 1
  %call87 = call ptr @ceph_osdc_new_request(ptr noundef %osdc, ptr noundef %i_layout, [2 x i64] %.fca.1.insert, i64 noundef %pos.0529, ptr noundef nonnull %size, i32 noundef 0, i32 noundef 1, i32 noundef %cond86, i32 noundef %flags.0, ptr noundef %snapc, i32 noundef %45, i64 noundef %47, i1 noundef zeroext false) #12
  %cmp.i451 = icmp ugt ptr %call87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i451, label %if.then89, label %if.end91

if.then89:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %call87 to i32
  br label %cleanup.thread

if.end91:                                         ; preds = %while.body
  %49 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %size, align 8
  %conv92 = trunc i64 %50 to i32
  %51 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %conv92)
  %cmp.i.i = icmp ugt i32 %52, %conv92
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end91.iov_iter_truncate.exit.i_crit_edge

if.end91.iov_iter_truncate.exit.i_crit_edge:      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %iov_iter_truncate.exit.i

if.then.i.i:                                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv92, ptr %count.i, align 8
  br label %iov_iter_truncate.exit.i

iov_iter_truncate.exit.i:                         ; preds = %if.then.i.i, %if.end91.iov_iter_truncate.exit.i_crit_edge
  %call1.i = call i32 @iov_iter_npages(ptr noundef %iter, i32 noundef 2147483647) #12
  %54 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %52, ptr %count.i, align 8
  %55 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call1.i, i32 12) #12
  %56 = extractvalue { i32, i1 } %55, 1
  br i1 %56, label %iov_iter_truncate.exit.i.if.then96_crit_edge, label %kvmalloc_array.exit.i, !prof !309

iov_iter_truncate.exit.i.if.then96_crit_edge:     ; preds = %iov_iter_truncate.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then96

kvmalloc_array.exit.i:                            ; preds = %iov_iter_truncate.exit.i
  %57 = extractvalue { i32, i1 } %55, 0
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %57, i32 noundef 3520, i32 noundef -1) #16
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %kvmalloc_array.exit.i.if.then96_crit_edge, label %if.end.i

kvmalloc_array.exit.i.if.then96_crit_edge:        ; preds = %kvmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then96

if.end.i:                                         ; preds = %kvmalloc_array.exit.i
  %58 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count.i, align 8
  %60 = call i32 @llvm.umin.i32(i32 %59, i32 %conv92) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp2.i29.not.i = icmp eq i32 %60, 0
  br i1 %cmp2.i29.not.i, label %if.end.i.if.end97_crit_edge, label %if.end.i.while.body.i.i_crit_edge

if.end.i.while.body.i.i_crit_edge:                ; preds = %if.end.i
  br label %while.body.i.i

if.end.i.if.end97_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.end.i.while.body.i.i_crit_edge
  %bvec_idx.0.i31.i = phi i32 [ %bvec_idx.1.lcssa.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ 0, %if.end.i.while.body.i.i_crit_edge ]
  %size.0.i30.i = phi i32 [ %add.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ 0, %if.end.i.while.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %pages.i.i) #12
  %61 = call ptr @memset(ptr %pages.i.i, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start.i.i) #12
  %62 = ptrtoint ptr %start.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %start.i.i, align 4, !annotation !319
  %sub.i.i = sub i32 %60, %size.0.i30.i
  %call3.i.i = call i32 @iov_iter_get_pages(ptr noundef %iter, ptr noundef nonnull %pages.i.i, i32 noundef %sub.i.i, i32 noundef 64, ptr noundef nonnull %start.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %cleanup.thread.i.i, label %if.end6.i.i

cleanup.thread.i.i:                               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0.i30.i)
  %tobool.not.i.i = icmp eq i32 %size.0.i30.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start.i.i) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %pages.i.i) #12
  br i1 %tobool.not.i.i, label %cleanup.thread.i.i.if.then5.i_crit_edge, label %cleanup.thread.i.i.__iter_get_bvecs.exit.i_crit_edge

cleanup.thread.i.i.__iter_get_bvecs.exit.i_crit_edge: ; preds = %cleanup.thread.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iter_get_bvecs.exit.i

cleanup.thread.i.i.if.then5.i_crit_edge:          ; preds = %cleanup.thread.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.i

if.end6.i.i:                                      ; preds = %while.body.i.i
  call void @iov_iter_advance(ptr noundef %iter, i32 noundef %call3.i.i) #12
  %add.i.i = add i32 %call3.i.i, %size.0.i30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool7.not49.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool7.not49.i.i, label %if.end6.i.i.cleanup.i.i_crit_edge, label %for.body.preheader.i.i

if.end6.i.i.cleanup.i.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

for.body.preheader.i.i:                           ; preds = %if.end6.i.i
  %63 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %start.promoted.i.i = load i32, ptr %start.i.i, align 4
  %64 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pages.i.i, align 4
  %sub8.peel.i.i = sub i32 4096, %start.promoted.i.i
  %66 = call i32 @llvm.smin.i32(i32 %call3.i.i, i32 %sub8.peel.i.i) #12
  %arrayidx14.peel.i.i = getelementptr %struct.bio_vec, ptr %call.i.i.i, i32 %bvec_idx.0.i31.i
  %67 = ptrtoint ptr %arrayidx14.peel.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %65, ptr %arrayidx14.peel.i.i, align 4
  %bv.sroa.5.0.arrayidx14.sroa_idx.peel.i.i = getelementptr inbounds i8, ptr %arrayidx14.peel.i.i, i32 4
  %68 = ptrtoint ptr %bv.sroa.5.0.arrayidx14.sroa_idx.peel.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %66, ptr %bv.sroa.5.0.arrayidx14.sroa_idx.peel.i.i, align 4
  %bv.sroa.8.0.arrayidx14.sroa_idx.peel.i.i = getelementptr inbounds i8, ptr %arrayidx14.peel.i.i, i32 8
  %69 = ptrtoint ptr %bv.sroa.8.0.arrayidx14.sroa_idx.peel.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %start.promoted.i.i, ptr %bv.sroa.8.0.arrayidx14.sroa_idx.peel.i.i, align 4
  %sub16.peel.i.i = sub i32 %call3.i.i, %66
  %inc17.peel.i.i = add i32 %bvec_idx.0.i31.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub16.peel.i.i)
  %tobool7.not.peel.i.i = icmp eq i32 %sub16.peel.i.i, 0
  br i1 %tobool7.not.peel.i.i, label %for.body.preheader.i.i.cleanup.i.i_crit_edge, label %for.body.preheader.i.i.for.body.i.i_crit_edge

for.body.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.body.preheader.i.i
  br label %for.body.i.i

for.body.preheader.i.i.cleanup.i.i_crit_edge:     ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i.for.body.i.i_crit_edge
  %idx.052.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 1, %for.body.preheader.i.i.for.body.i.i_crit_edge ]
  %bytes.051.i.i = phi i32 [ %sub16.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %sub16.peel.i.i, %for.body.preheader.i.i.for.body.i.i_crit_edge ]
  %bvec_idx.150.i.i = phi i32 [ %inc17.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %inc17.peel.i.i, %for.body.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [64 x ptr], ptr %pages.i.i, i32 0, i32 %idx.052.i.i
  %70 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i.i, align 4
  %72 = call i32 @llvm.smin.i32(i32 %bytes.051.i.i, i32 4096) #12
  %arrayidx14.i.i = getelementptr %struct.bio_vec, ptr %call.i.i.i, i32 %bvec_idx.150.i.i
  %73 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %71, ptr %arrayidx14.i.i, align 4
  %bv.sroa.5.0.arrayidx14.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx14.i.i, i32 4
  %74 = ptrtoint ptr %bv.sroa.5.0.arrayidx14.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %72, ptr %bv.sroa.5.0.arrayidx14.sroa_idx.i.i, align 4
  %bv.sroa.8.0.arrayidx14.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx14.i.i, i32 8
  %75 = ptrtoint ptr %bv.sroa.8.0.arrayidx14.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %bv.sroa.8.0.arrayidx14.sroa_idx.i.i, align 4
  %sub16.i.i = sub i32 %bytes.051.i.i, %72
  %inc.i.i = add i32 %idx.052.i.i, 1
  %inc17.i.i = add i32 %bvec_idx.150.i.i, 1
  %tobool7.not.i.i = icmp eq i32 %sub16.i.i, 0
  br i1 %tobool7.not.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge, !llvm.loop !329

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %for.body.i.i.cleanup.i.i_crit_edge, %for.body.preheader.i.i.cleanup.i.i_crit_edge, %if.end6.i.i.cleanup.i.i_crit_edge
  %bvec_idx.1.lcssa.i.i = phi i32 [ %bvec_idx.0.i31.i, %if.end6.i.i.cleanup.i.i_crit_edge ], [ %inc17.peel.i.i, %for.body.preheader.i.i.cleanup.i.i_crit_edge ], [ %inc17.i.i, %for.body.i.i.cleanup.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start.i.i) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %pages.i.i) #12
  %cmp2.i.i = icmp ugt i32 %60, %add.i.i
  br i1 %cmp2.i.i, label %cleanup.i.i.while.body.i.i_crit_edge, label %cleanup.i.i.__iter_get_bvecs.exit.i_crit_edge

cleanup.i.i.__iter_get_bvecs.exit.i_crit_edge:    ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iter_get_bvecs.exit.i

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

__iter_get_bvecs.exit.i:                          ; preds = %cleanup.i.i.__iter_get_bvecs.exit.i_crit_edge, %cleanup.thread.i.i.__iter_get_bvecs.exit.i_crit_edge
  %size.0.i28.i = phi i32 [ %size.0.i30.i, %cleanup.thread.i.i.__iter_get_bvecs.exit.i_crit_edge ], [ %add.i.i, %cleanup.i.i.__iter_get_bvecs.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0.i28.i)
  %cmp.i452 = icmp slt i32 %size.0.i28.i, 0
  br i1 %cmp.i452, label %__iter_get_bvecs.exit.i.if.then5.i_crit_edge, label %__iter_get_bvecs.exit.i.if.end97_crit_edge

__iter_get_bvecs.exit.i.if.end97_crit_edge:       ; preds = %__iter_get_bvecs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

__iter_get_bvecs.exit.i.if.then5.i_crit_edge:     ; preds = %__iter_get_bvecs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.i

if.then5.i:                                       ; preds = %__iter_get_bvecs.exit.i.if.then5.i_crit_edge, %cleanup.thread.i.i.if.then5.i_crit_edge
  %retval.2.i26.i = phi i32 [ %size.0.i28.i, %__iter_get_bvecs.exit.i.if.then5.i_crit_edge ], [ %call3.i.i, %cleanup.thread.i.i.if.then5.i_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #12
  br label %if.then96

if.then96:                                        ; preds = %if.then5.i, %kvmalloc_array.exit.i.if.then96_crit_edge, %iov_iter_truncate.exit.i.if.then96_crit_edge
  %retval.0.i453.ph = phi i32 [ %retval.2.i26.i, %if.then5.i ], [ -12, %iov_iter_truncate.exit.i.if.then96_crit_edge ], [ -12, %kvmalloc_array.exit.i.if.then96_crit_edge ]
  call void @ceph_osdc_put_request(ptr noundef %call87) #12
  br label %cleanup.thread

if.end97:                                         ; preds = %__iter_get_bvecs.exit.i.if.end97_crit_edge, %if.end.i.if.end97_crit_edge
  %retval.0.i453 = phi i32 [ %size.0.i28.i, %__iter_get_bvecs.exit.i.if.end97_crit_edge ], [ 0, %if.end.i.if.end97_crit_edge ]
  %conv98500 = zext i32 %retval.0.i453 to i64
  %76 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %77, i64 %conv98500)
  %cmp99.not = icmp eq i64 %77, %conv98500
  br i1 %cmp99.not, label %if.end97.if.end103_crit_edge, label %if.then101

if.end97.if.end103_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

if.then101:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  call void @osd_req_op_extent_update(ptr noundef %call87, i32 noundef 0, i64 noundef %conv98500) #12
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.end97.if.end103_crit_edge
  %78 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %ki_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %pos.0529, i64 %79)
  %cmp105 = icmp eq i64 %pos.0529, %79
  br i1 %cmp105, label %land.lhs.true107, label %if.end103.if.end137_crit_edge

if.end103.if.end137_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137

land.lhs.true107:                                 ; preds = %if.end103
  %80 = ptrtoint ptr %ki_complete.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ki_complete.i, align 8
  %cmp.i454 = icmp eq ptr %81, null
  br i1 %cmp.i454, label %land.lhs.true107.if.end137_crit_edge, label %land.lhs.true109

land.lhs.true107.if.end137_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137

land.lhs.true109:                                 ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i453, i32 %12)
  %cmp110 = icmp eq i32 %retval.0.i453, %12
  br i1 %cmp110, label %land.lhs.true109.if.then117_crit_edge, label %lor.lhs.false

land.lhs.true109.if.then117_crit_edge:            ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then117

lor.lhs.false:                                    ; preds = %land.lhs.true109
  %add113 = add i64 %pos.0529, %conv112
  %call114 = call fastcc i64 @i_size_read(ptr noundef %3)
  call void @__sanitizer_cov_trace_cmp8(i64 %add113, i64 %call114)
  %cmp115.not = icmp sgt i64 %add113, %call114
  br i1 %cmp115.not, label %lor.lhs.false.if.end137_crit_edge, label %lor.lhs.false.if.then117_crit_edge

lor.lhs.false.if.then117_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then117

lor.lhs.false.if.end137_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137

if.then117:                                       ; preds = %lor.lhs.false.if.then117_crit_edge, %land.lhs.true109.if.then117_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %82 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %82, i32 noundef 3520, i32 noundef 56) #17
  %tobool119.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool119.not, label %if.then117.if.end137_crit_edge, label %if.then120

if.then117.if.end137_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137

if.then120:                                       ; preds = %if.then117
  %83 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %iocb, ptr %call7.i.i, align 8
  %write123 = getelementptr inbounds %struct.ceph_aio_request, ptr %call7.i.i, i32 0, i32 2
  %84 = ptrtoint ptr %write123 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %16, ptr %write123, align 8
  %should_dirty126 = getelementptr inbounds %struct.ceph_aio_request, ptr %call7.i.i, i32 0, i32 3
  %85 = ptrtoint ptr %should_dirty126 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %frombool9469, ptr %should_dirty126, align 1
  %osd_reqs = getelementptr inbounds %struct.ceph_aio_request, ptr %call7.i.i, i32 0, i32 5
  %86 = ptrtoint ptr %osd_reqs to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %osd_reqs, ptr %osd_reqs, align 8
  %prev.i = getelementptr inbounds %struct.ceph_aio_request, ptr %call7.i.i, i32 0, i32 5, i32 1
  %87 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %osd_reqs, ptr %prev.i, align 4
  br i1 %cmp, label %if.end137.thread, label %if.end145.thread

if.end145.thread:                                 ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #14
  call void @osd_req_op_extent_osd_data_bvecs(ptr noundef %call87, i32 noundef 0, ptr noundef nonnull %call.i.i.i, i32 noundef %call1.i, i32 noundef %retval.0.i453) #12
  br label %if.then147

if.end137.thread:                                 ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #14
  %mtime130 = getelementptr inbounds %struct.ceph_aio_request, ptr %call7.i.i, i32 0, i32 8
  %88 = call ptr @memcpy(ptr %mtime130, ptr %mtime, i32 16)
  %prealloc_cf = getelementptr inbounds %struct.ceph_aio_request, ptr %call7.i.i, i32 0, i32 9
  %89 = ptrtoint ptr %prealloc_cf to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prealloc_cf, align 8
  %91 = ptrtoint ptr %pcf to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pcf, align 4
  store ptr %92, ptr %prealloc_cf, align 8
  store ptr %90, ptr %pcf, align 4
  br label %if.then139

if.end137:                                        ; preds = %if.then117.if.end137_crit_edge, %lor.lhs.false.if.end137_crit_edge, %land.lhs.true107.if.end137_crit_edge, %if.end103.if.end137_crit_edge
  %aio_req.1 = phi ptr [ %aio_req.0533, %land.lhs.true107.if.end137_crit_edge ], [ null, %if.then117.if.end137_crit_edge ], [ %aio_req.0533, %lor.lhs.false.if.end137_crit_edge ], [ %aio_req.0533, %if.end103.if.end137_crit_edge ]
  br i1 %cmp, label %if.end137.if.then139_crit_edge, label %if.end137.if.end145_crit_edge

if.end137.if.end145_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end145

if.end137.if.then139_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then139

if.then139:                                       ; preds = %if.end137.if.then139_crit_edge, %if.end137.thread
  %aio_req.1482 = phi ptr [ %call7.i.i, %if.end137.thread ], [ %aio_req.1, %if.end137.if.then139_crit_edge ]
  %93 = ptrtoint ptr %i_mapping140 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %i_mapping140, align 8
  %add142 = add i64 %pos.0529, %conv98500
  %add143 = add i64 %add142, 4095
  %and = and i64 %add143, -4096
  %sub144 = add i64 %and, -1
  call void @truncate_inode_pages_range(ptr noundef %94, i64 noundef %pos.0529, i64 noundef %sub144) #12
  %r_mtime = getelementptr inbounds %struct.ceph_osd_request, ptr %call87, i32 0, i32 21
  %95 = call ptr @memcpy(ptr %r_mtime, ptr %mtime, i32 16)
  br label %if.end145

if.end145:                                        ; preds = %if.then139, %if.end137.if.end145_crit_edge
  %aio_req.1481 = phi ptr [ %aio_req.1482, %if.then139 ], [ %aio_req.1, %if.end137.if.end145_crit_edge ]
  call void @osd_req_op_extent_osd_data_bvecs(ptr noundef %call87, i32 noundef 0, ptr noundef nonnull %call.i.i.i, i32 noundef %call1.i, i32 noundef %retval.0.i453) #12
  %tobool146.not = icmp eq ptr %aio_req.1481, null
  br i1 %tobool146.not, label %if.end152, label %if.end145.if.then147_crit_edge

if.end145.if.then147_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then147

if.then147:                                       ; preds = %if.end145.if.then147_crit_edge, %if.end145.thread
  %aio_req.1481487 = phi ptr [ %call7.i.i, %if.end145.thread ], [ %aio_req.1481, %if.end145.if.then147_crit_edge ]
  %total_len = getelementptr inbounds %struct.ceph_aio_request, ptr %aio_req.1481487, i32 0, i32 1
  %96 = ptrtoint ptr %total_len to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %total_len, align 4
  %add148 = add i32 %97, %retval.0.i453
  store i32 %add148, ptr %total_len, align 4
  %num_reqs = getelementptr inbounds %struct.ceph_aio_request, ptr %aio_req.1481487, i32 0, i32 6
  %98 = ptrtoint ptr %num_reqs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_reqs, align 8
  %inc = add i32 %99, 1
  store i32 %inc, ptr %num_reqs, align 8
  %pending_reqs = getelementptr inbounds %struct.ceph_aio_request, ptr %aio_req.1481487, i32 0, i32 7
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pending_reqs, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %pending_reqs, i32 1, i32 3, i32 1) #12
  %100 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_reqs, ptr %pending_reqs, i32 1, ptr elementtype(i32) %pending_reqs) #12, !srcloc !331
  %r_callback = getelementptr inbounds %struct.ceph_osd_request, ptr %call87, i32 0, i32 15
  %101 = ptrtoint ptr %r_callback to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @ceph_aio_complete_req, ptr %r_callback, align 8
  %r_inode = getelementptr inbounds %struct.ceph_osd_request, ptr %call87, i32 0, i32 16
  %102 = ptrtoint ptr %r_inode to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %3, ptr %r_inode, align 4
  %r_priv = getelementptr inbounds %struct.ceph_osd_request, ptr %call87, i32 0, i32 18
  %103 = ptrtoint ptr %r_priv to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %aio_req.1481487, ptr %r_priv, align 8
  %r_private_item = getelementptr inbounds %struct.ceph_osd_request, ptr %call87, i32 0, i32 17
  %osd_reqs149 = getelementptr inbounds %struct.ceph_aio_request, ptr %aio_req.1481487, i32 0, i32 5
  %prev.i455 = getelementptr inbounds %struct.ceph_aio_request, ptr %aio_req.1481487, i32 0, i32 5, i32 1
  %104 = ptrtoint ptr %prev.i455 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %prev.i455, align 4
  %call.i.i456 = call zeroext i1 @__list_add_valid(ptr noundef %r_private_item, ptr noundef %105, ptr noundef %osd_reqs149) #12
  br i1 %call.i.i456, label %if.end.i.i, label %if.then147.list_add_tail.exit_crit_edge

if.then147.list_add_tail.exit_crit_edge:          ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #14
  %106 = ptrtoint ptr %prev.i455 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %r_private_item, ptr %prev.i455, align 4
  %107 = ptrtoint ptr %r_private_item to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %osd_reqs149, ptr %r_private_item, align 4
  %prev3.i.i = getelementptr inbounds %struct.ceph_osd_request, ptr %call87, i32 0, i32 17, i32 1
  %108 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %105, ptr %prev3.i.i, align 4
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %r_private_item, ptr %105, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then147.list_add_tail.exit_crit_edge
  %add151 = add i64 %pos.0529, %conv98500
  br label %cleanup

if.end152:                                        ; preds = %if.end145
  %r_osdc = getelementptr inbounds %struct.ceph_osd_request, ptr %call87, i32 0, i32 11
  %110 = ptrtoint ptr %r_osdc to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %r_osdc, align 4
  %call153 = call i32 @ceph_osdc_start_request(ptr noundef %111, ptr noundef %call87, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.then155, label %if.end152.if.end159_crit_edge

if.end152.if.end159_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end159

if.then155:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %client, align 8
  %osdc157 = getelementptr inbounds %struct.ceph_client, ptr %113, i32 0, i32 12
  %call158 = call i32 @ceph_osdc_wait_request(ptr noundef %osdc157, ptr noundef %call87) #12
  br label %if.end159

if.end159:                                        ; preds = %if.then155, %if.end152.if.end159_crit_edge
  %ret.1 = phi i32 [ %call153, %if.end152.if.end159_crit_edge ], [ %call158, %if.then155 ]
  %r_start_latency = getelementptr inbounds %struct.ceph_osd_request, ptr %call87, i32 0, i32 26
  %114 = ptrtoint ptr %r_start_latency to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %r_start_latency, align 8
  %r_end_latency = getelementptr inbounds %struct.ceph_osd_request, ptr %call87, i32 0, i32 27
  %116 = ptrtoint ptr %r_end_latency to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %r_end_latency, align 8
  br i1 %cmp, label %if.then161, label %if.else162

if.then161:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #14
  call void @ceph_update_metrics(ptr noundef %arrayidx.i, i64 noundef %115, i64 noundef %117, i32 noundef %retval.0.i453, i32 noundef %ret.1) #12
  %call166.c444 = call fastcc i64 @i_size_read(ptr noundef %3)
  %118 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %call166.c444, ptr %size, align 8
  br label %if.end203

if.else162:                                       ; preds = %if.end159
  call void @ceph_update_metrics(ptr noundef %metric.i, i64 noundef %115, i64 noundef %117, i32 noundef %retval.0.i453, i32 noundef %ret.1) #12
  %call166.c = call fastcc i64 @i_size_read(ptr noundef %3)
  %119 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %call166.c, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %ret.1)
  %cmp169 = icmp eq i32 %ret.1, -2
  %ret.2 = select i1 %cmp169, i32 0, i32 %ret.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.2)
  %cmp173 = icmp sgt i32 %ret.2, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i453, i32 %ret.2)
  %cmp176 = icmp sgt i32 %retval.0.i453, %ret.2
  %or.cond = select i1 %cmp173, i1 %cmp176, i1 false
  br i1 %or.cond, label %land.lhs.true178, label %if.else162.if.end198_crit_edge

if.else162.if.end198_crit_edge:                   ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end198

land.lhs.true178:                                 ; preds = %if.else162
  %conv179502 = zext i32 %ret.2 to i64
  %add180 = add i64 %pos.0529, %conv179502
  call void @__sanitizer_cov_trace_cmp8(i64 %call166.c, i64 %add180)
  %cmp181 = icmp ugt i64 %call166.c, %add180
  br i1 %cmp181, label %if.then183, label %land.lhs.true178.if.end198_crit_edge

land.lhs.true178.if.end198_crit_edge:             ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end198

if.then183:                                       ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %i) #12
  %120 = call ptr @memset(ptr %i, i32 255, i32 24)
  %sub184 = sub nsw i32 %retval.0.i453, %ret.2
  %sub187 = sub i64 %call166.c, %add180
  %conv188 = trunc i64 %sub187 to i32
  %121 = call i32 @llvm.umin.i32(i32 %sub184, i32 %conv188)
  call void @iov_iter_bvec(ptr noundef nonnull %i, i32 noundef 0, ptr noundef nonnull %call.i.i.i, i32 noundef %call1.i, i32 noundef %retval.0.i453) #12
  call void @iov_iter_advance(ptr noundef nonnull %i, i32 noundef %ret.2) #12
  %call196 = call i32 @iov_iter_zero(i32 noundef %121, ptr noundef nonnull %i) #12
  %add197 = add i32 %121, %ret.2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %i) #12
  br label %if.end198

if.end198:                                        ; preds = %if.then183, %land.lhs.true178.if.end198_crit_edge, %if.else162.if.end198_crit_edge
  %ret.3 = phi i32 [ %add197, %if.then183 ], [ %ret.2, %land.lhs.true178.if.end198_crit_edge ], [ %ret.2, %if.else162.if.end198_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %cmp199504 = icmp slt i32 %ret.3, 0
  %spec.select = select i1 %cmp199504, i32 %retval.0.i453, i32 %ret.3
  br label %if.end203

if.end203:                                        ; preds = %if.end198, %if.then161
  %ret.4 = phi i32 [ %ret.1, %if.then161 ], [ %ret.3, %if.end198 ]
  %len.0 = phi i32 [ %retval.0.i453, %if.then161 ], [ %spec.select, %if.end198 ]
  call fastcc void @put_bvecs(ptr noundef nonnull %call.i.i.i, i32 noundef %call1.i, i1 noundef zeroext %23)
  call void @ceph_osdc_put_request(ptr noundef %call87) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4)
  %cmp205 = icmp slt i32 %ret.4, 0
  br i1 %cmp205, label %if.end203.cleanup.thread_crit_edge, label %if.end208

if.end203.cleanup.thread_crit_edge:               ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end208:                                        ; preds = %if.end203
  %conv209501 = zext i32 %len.0 to i64
  %add210 = add i64 %pos.0529, %conv209501
  %122 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %size, align 8
  br i1 %cmp, label %land.lhs.true219.critedge, label %land.lhs.true212

land.lhs.true212:                                 ; preds = %if.end208
  call void @__sanitizer_cov_trace_cmp8(i64 %add210, i64 %123)
  %cmp213.not = icmp ult i64 %add210, %123
  br i1 %cmp213.not, label %land.lhs.true212.cleanup_crit_edge, label %land.lhs.true212.cleanup.thread_crit_edge

land.lhs.true212.cleanup.thread_crit_edge:        ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

land.lhs.true212.cleanup_crit_edge:               ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true219.critedge:                        ; preds = %if.end208
  call void @__sanitizer_cov_trace_cmp8(i64 %add210, i64 %123)
  %cmp220 = icmp ugt i64 %add210, %123
  br i1 %cmp220, label %if.then222, label %land.lhs.true219.critedge.cleanup_crit_edge

land.lhs.true219.critedge.cleanup_crit_edge:      ; preds = %land.lhs.true219.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then222:                                       ; preds = %land.lhs.true219.critedge
  %call223 = call zeroext i1 @ceph_inode_set_size(ptr noundef %3, i64 noundef %add210) #12
  br i1 %call223, label %if.then224, label %if.then222.cleanup_crit_edge

if.then222.cleanup_crit_edge:                     ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then224:                                       ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #14
  call void @ceph_check_caps(ptr noundef %add.ptr.i, i32 noundef 1, ptr noundef null) #12
  br label %cleanup

cleanup.thread:                                   ; preds = %land.lhs.true212.cleanup.thread_crit_edge, %if.end203.cleanup.thread_crit_edge, %if.then96, %if.then89
  %ret.5.ph = phi i32 [ %retval.0.i453.ph, %if.then96 ], [ %48, %if.then89 ], [ %ret.4, %land.lhs.true212.cleanup.thread_crit_edge ], [ %ret.4, %if.end203.cleanup.thread_crit_edge ]
  %pos.1.ph = phi i64 [ %pos.0529, %if.then96 ], [ %pos.0529, %if.then89 ], [ %pos.0529, %if.end203.cleanup.thread_crit_edge ], [ %add210, %land.lhs.true212.cleanup.thread_crit_edge ]
  %aio_req.2.ph = phi ptr [ %aio_req.0533, %if.then96 ], [ %aio_req.0533, %if.then89 ], [ null, %land.lhs.true212.cleanup.thread_crit_edge ], [ null, %if.end203.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size) #12
  br label %while.end

cleanup:                                          ; preds = %if.then224, %if.then222.cleanup_crit_edge, %land.lhs.true219.critedge.cleanup_crit_edge, %land.lhs.true212.cleanup_crit_edge, %list_add_tail.exit
  %ret.5 = phi i32 [ %ret.0528, %list_add_tail.exit ], [ %ret.4, %land.lhs.true212.cleanup_crit_edge ], [ %ret.4, %if.then222.cleanup_crit_edge ], [ %ret.4, %if.then224 ], [ %ret.4, %land.lhs.true219.critedge.cleanup_crit_edge ]
  %pos.1 = phi i64 [ %add151, %list_add_tail.exit ], [ %add210, %land.lhs.true212.cleanup_crit_edge ], [ %add210, %if.then222.cleanup_crit_edge ], [ %add210, %if.then224 ], [ %add210, %land.lhs.true219.critedge.cleanup_crit_edge ]
  %aio_req.2 = phi ptr [ %aio_req.1481487, %list_add_tail.exit ], [ null, %land.lhs.true212.cleanup_crit_edge ], [ null, %if.then222.cleanup_crit_edge ], [ null, %if.then224 ], [ null, %land.lhs.true219.critedge.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size) #12
  %124 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %count.i, align 8
  %cmp58.not = icmp eq i32 %125, 0
  br i1 %cmp58.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread
  %ret.6 = phi i32 [ %ret.5.ph, %cleanup.thread ], [ %ret.5, %cleanup.while.end_crit_edge ]
  %pos.2 = phi i64 [ %pos.1.ph, %cleanup.thread ], [ %pos.1, %cleanup.while.end_crit_edge ]
  %aio_req.3 = phi ptr [ %aio_req.2.ph, %cleanup.thread ], [ %aio_req.2, %cleanup.while.end_crit_edge ]
  %tobool229.not = icmp eq ptr %aio_req.3, null
  br i1 %tobool229.not, label %if.end262, label %if.then230

if.then230:                                       ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %osd_reqs231) #12
  %126 = getelementptr inbounds %struct.list_head, ptr %osd_reqs231, i32 0, i32 1
  %127 = ptrtoint ptr %osd_reqs231 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %osd_reqs231, ptr %osd_reqs231, align 4
  %128 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %osd_reqs231, ptr %126, align 4
  %num_reqs232 = getelementptr inbounds %struct.ceph_aio_request, ptr %aio_req.3, i32 0, i32 6
  %129 = ptrtoint ptr %num_reqs232 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %num_reqs232, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp233 = icmp eq i32 %130, 0
  br i1 %cmp233, label %if.then235, label %if.end236

if.then235:                                       ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %aio_req.3) #12
  br label %cleanup261

if.end236:                                        ; preds = %if.then230
  %cond239 = select i1 %cmp, i32 4096, i32 2048
  call void @ceph_get_cap_refs(ptr noundef %add.ptr.i, i32 noundef %cond239) #12
  %osd_reqs240 = getelementptr inbounds %struct.ceph_aio_request, ptr %aio_req.3, i32 0, i32 5
  %131 = ptrtoint ptr %osd_reqs240 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile ptr, ptr %osd_reqs240, align 4
  %cmp.i.not.i = icmp eq ptr %132, %osd_reqs240
  br i1 %cmp.i.not.i, label %if.end236.list_splice.exit_crit_edge, label %if.then.i

if.end236.list_splice.exit_crit_edge:             ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice.exit

if.then.i:                                        ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #14
  %133 = ptrtoint ptr %osd_reqs231 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %osd_reqs231, align 4
  %prev2.i.i = getelementptr inbounds %struct.ceph_aio_request, ptr %aio_req.3, i32 0, i32 5, i32 1
  %135 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i458 = getelementptr inbounds %struct.list_head, ptr %132, i32 0, i32 1
  %137 = ptrtoint ptr %prev3.i.i458 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %osd_reqs231, ptr %prev3.i.i458, align 4
  store ptr %132, ptr %osd_reqs231, align 4
  %138 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %134, ptr %136, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  %139 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %136, ptr %prev6.i.i, align 4
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %if.then.i, %if.end236.list_splice.exit_crit_edge
  %i_dio_count.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 41
  %call.i.i.i460 = call zeroext i1 @__kasan_check_write(ptr noundef %i_dio_count.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %i_dio_count.i, i32 1, i32 3, i32 1) #12
  %140 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_dio_count.i, ptr %i_dio_count.i, i32 1, ptr elementtype(i32) %i_dio_count.i) #12, !srcloc !331
  %141 = ptrtoint ptr %osd_reqs231 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile ptr, ptr %osd_reqs231, align 4
  %cmp.i461.not538 = icmp eq ptr %142, %osd_reqs231
  br i1 %cmp.i461.not538, label %list_splice.exit.cleanup261_crit_edge, label %list_splice.exit.while.body246_crit_edge

list_splice.exit.while.body246_crit_edge:         ; preds = %list_splice.exit
  br label %while.body246

list_splice.exit.cleanup261_crit_edge:            ; preds = %list_splice.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup261

while.body246:                                    ; preds = %if.end259.while.body246_crit_edge, %list_splice.exit.while.body246_crit_edge
  %143 = phi ptr [ %156, %if.end259.while.body246_crit_edge ], [ %142, %list_splice.exit.while.body246_crit_edge ]
  %ret.7539 = phi i32 [ %ret.8498, %if.end259.while.body246_crit_edge ], [ %ret.6, %list_splice.exit.while.body246_crit_edge ]
  %add.ptr = getelementptr i8, ptr %143, i32 -688
  %call.i.i462 = call zeroext i1 @__list_del_entry_valid(ptr noundef %143) #12
  br i1 %call.i.i462, label %if.end.i.i463, label %while.body246.list_del_init.exit_crit_edge

while.body246.list_del_init.exit_crit_edge:       ; preds = %while.body246
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i463:                                    ; preds = %while.body246
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %prev.i.i, align 4
  %146 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %143, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %145, ptr %prev1.i.i.i, align 4
  %149 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %147, ptr %145, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i463, %while.body246.list_del_init.exit_crit_edge
  %150 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %143, ptr %143, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %143, i32 0, i32 1
  %151 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %143, ptr %prev.i3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.7539)
  %cmp250 = icmp sgt i32 %ret.7539, -1
  br i1 %cmp250, label %if.end255, label %list_del_init.exit.if.then258_crit_edge

list_del_init.exit.if.then258_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then258

if.end255:                                        ; preds = %list_del_init.exit
  %r_osdc253 = getelementptr i8, ptr %143, i32 -76
  %152 = ptrtoint ptr %r_osdc253 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %r_osdc253, align 4
  %call254 = call i32 @ceph_osdc_start_request(ptr noundef %153, ptr noundef %add.ptr, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254)
  %cmp256 = icmp slt i32 %call254, 0
  br i1 %cmp256, label %if.end255.if.then258_crit_edge, label %if.end255.if.end259_crit_edge

if.end255.if.end259_crit_edge:                    ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end259

if.end255.if.then258_crit_edge:                   ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then258

if.then258:                                       ; preds = %if.end255.if.then258_crit_edge, %list_del_init.exit.if.then258_crit_edge
  %ret.8499 = phi i32 [ %call254, %if.end255.if.then258_crit_edge ], [ %ret.7539, %list_del_init.exit.if.then258_crit_edge ]
  %r_result = getelementptr i8, ptr %143, i32 -80
  %154 = ptrtoint ptr %r_result to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %ret.8499, ptr %r_result, align 8
  call void @ceph_aio_complete_req(ptr noundef %add.ptr)
  br label %if.end259

if.end259:                                        ; preds = %if.then258, %if.end255.if.end259_crit_edge
  %ret.8498 = phi i32 [ %ret.8499, %if.then258 ], [ %call254, %if.end255.if.end259_crit_edge ]
  %155 = ptrtoint ptr %osd_reqs231 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile ptr, ptr %osd_reqs231, align 4
  %cmp.i461.not = icmp eq ptr %156, %osd_reqs231
  br i1 %cmp.i461.not, label %if.end259.cleanup261_crit_edge, label %if.end259.while.body246_crit_edge

if.end259.while.body246_crit_edge:                ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body246

if.end259.cleanup261_crit_edge:                   ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup261

cleanup261:                                       ; preds = %if.end259.cleanup261_crit_edge, %list_splice.exit.cleanup261_crit_edge, %if.then235
  %retval.0 = phi i32 [ %ret.6, %if.then235 ], [ -529, %list_splice.exit.cleanup261_crit_edge ], [ -529, %if.end259.cleanup261_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %osd_reqs231) #12
  br label %cleanup275

if.end262:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -85, i32 %ret.6)
  %cmp263.not = icmp eq i32 %ret.6, -85
  br i1 %cmp263.not, label %if.end262.cleanup275_crit_edge, label %if.end262.land.lhs.true265_crit_edge

if.end262.land.lhs.true265_crit_edge:             ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true265

if.end262.cleanup275_crit_edge:                   ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup275

land.lhs.true265:                                 ; preds = %if.end262.land.lhs.true265_crit_edge, %if.end56.land.lhs.true265_crit_edge
  %ret.6563569 = phi i32 [ %ret.6, %if.end262.land.lhs.true265_crit_edge ], [ 0, %if.end56.land.lhs.true265_crit_edge ]
  %pos.2564568 = phi i64 [ %pos.2, %if.end262.land.lhs.true265_crit_edge ], [ %14, %if.end56.land.lhs.true265_crit_edge ]
  %157 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %ki_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %pos.2564568, i64 %158)
  %cmp267 = icmp sgt i64 %pos.2564568, %158
  br i1 %cmp267, label %if.then269, label %land.lhs.true265.cleanup275_crit_edge

land.lhs.true265.cleanup275_crit_edge:            ; preds = %land.lhs.true265
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup275

if.then269:                                       ; preds = %land.lhs.true265
  call void @__sanitizer_cov_trace_pc() #14
  %sub271 = sub i64 %pos.2564568, %158
  %conv272 = trunc i64 %sub271 to i32
  %159 = ptrtoint ptr %ki_pos to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %pos.2564568, ptr %ki_pos, align 8
  br label %cleanup275

cleanup275:                                       ; preds = %if.then269, %land.lhs.true265.cleanup275_crit_edge, %if.end262.cleanup275_crit_edge, %cleanup261, %land.lhs.true.cleanup275_crit_edge
  %retval.1 = phi i32 [ %retval.0, %cleanup261 ], [ -30, %land.lhs.true.cleanup275_crit_edge ], [ %conv272, %if.then269 ], [ %ret.6563569, %land.lhs.true265.cleanup275_crit_edge ], [ -85, %if.end262.cleanup275_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mtime) #12
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ceph_sync_read(ptr nocapture noundef %iocb, ptr noundef %to, ptr nocapture noundef %retry_op) unnamed_addr #0 align 64 {
entry:
  %len = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -952
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client, align 8
  %osdc3 = getelementptr inbounds %struct.ceph_client, ptr %9, i32 0, i32 12
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %10 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ki_pos, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #12
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %12 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count.i, align 8
  %conv = zext i32 %13 to i64
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv, ptr %len, align 8
  %call5 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_sync_read.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_sync_read, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !303

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %len, align 8
  %conv10 = trunc i64 %16 to i32
  %f_flags = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %f_flags, align 4
  %and = and i32 %18, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool11.not, ptr @.str.100, ptr @.str.99
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_sync_read.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.98, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 879, ptr noundef %1, i64 noundef %11, i32 noundef %conv10, ptr noundef nonnull %cond) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool12.not = icmp eq i64 %20, 0
  br i1 %tobool12.not, label %do.end.cleanup207_crit_edge, label %if.end14

do.end.cleanup207_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup207

if.end14:                                         ; preds = %do.end
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %21 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_mapping, align 8
  %add = add i64 %11, -1
  %sub = add i64 %add, %20
  %call15 = tail call i32 @filemap_write_and_wait_range(ptr noundef %22, i64 noundef %11, i64 noundef %sub) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.end14.cleanup207_crit_edge, label %while.cond.preheader

if.end14.cleanup207_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup207

while.cond.preheader:                             ; preds = %if.end14
  %23 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count.i, align 8
  %conv20359 = zext i32 %24 to i64
  %25 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv20359, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp21.not360 = icmp eq i32 %24, 0
  br i1 %cmp21.not360, label %while.cond.preheader.while.end172_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end172_crit_edge:      ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end172

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %i_layout = getelementptr i8, ptr %3, i32 -824
  %i_truncate_seq = getelementptr i8, ptr %3, i32 -272
  %i_truncate_size = getelementptr i8, ptr %3, i32 -264
  %.elt316 = getelementptr i8, ptr %3, i32 -944
  %mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %7, i32 0, i32 9
  br label %while.body

while.cond:                                       ; preds = %if.end157
  %26 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count.i, align 8
  %conv20 = zext i32 %27 to i64
  %28 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv20, ptr %len, align 8
  %cmp21.not = icmp eq i32 %27, 0
  br i1 %cmp21.not, label %while.cond.while.end172_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.while.end172_crit_edge:                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end172

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %off.0362 = phi i64 [ %11, %while.body.lr.ph ], [ %off.1, %while.cond.while.body_crit_edge ]
  %i_size.0361 = phi i64 [ %call5, %while.body.lr.ph ], [ %call47, %while.cond.while.body_crit_edge ]
  %29 = ptrtoint ptr %i_truncate_seq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_truncate_seq, align 8
  %31 = ptrtoint ptr %i_truncate_size to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_truncate_size, align 8
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %.unpack = load i64, ptr %add.ptr.i, align 8
  %34 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %35 = ptrtoint ptr %.elt316 to i32
  call void @__asan_load8_noabort(i32 %35)
  %.unpack317 = load i64, ptr %.elt316, align 8
  %36 = insertvalue [2 x i64] %34, i64 %.unpack317, 1
  %call23 = call ptr @ceph_osdc_new_request(ptr noundef %osdc3, ptr noundef %i_layout, [2 x i64] %36, i64 noundef %off.0362, ptr noundef nonnull %len, i32 noundef 0, i32 noundef 1, i32 noundef 4609, i32 noundef 16, ptr noundef null, i32 noundef %30, i64 noundef %32, i1 noundef zeroext false) #12
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end27

if.then25:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %call23 to i32
  br label %while.end172

if.end27:                                         ; preds = %while.body
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %len, align 8
  %40 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %count.i, align 8
  %conv29 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %conv29)
  %cmp30 = icmp ult i64 %39, %conv29
  %add.i = add i64 %off.0362, 4095
  %sub.i = add i64 %add.i, %39
  %shr.i = lshr i64 %sub.i, 12
  %shr2.i = lshr i64 %off.0362, 12
  %sub3.i = sub nsw i64 %shr.i, %shr2.i
  %conv.i = trunc i64 %sub3.i to i32
  %42 = trunc i64 %off.0362 to i32
  %conv35 = and i32 %42, 4095
  %call36 = call ptr @ceph_alloc_page_vector(i32 noundef %conv.i, i32 noundef 3264) #12
  %cmp.i332 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i332, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  call void @ceph_osdc_put_request(ptr noundef %call23) #12
  %43 = ptrtoint ptr %call36 to i32
  br label %while.end172

if.end40:                                         ; preds = %if.end27
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %len, align 8
  call void @osd_req_op_extent_osd_data_pages(ptr noundef %call23, i32 noundef 0, ptr noundef %call36, i64 noundef %45, i32 noundef %conv35, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %call41 = call i32 @ceph_osdc_start_request(ptr noundef %osdc3, ptr noundef %call23, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %if.end40.if.end45_crit_edge

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %call44 = call i32 @ceph_osdc_wait_request(ptr noundef %osdc3, ptr noundef %call23) #12
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end40.if.end45_crit_edge
  %ret.1 = phi i32 [ %call41, %if.end40.if.end45_crit_edge ], [ %call44, %if.then43 ]
  %46 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mdsc, align 8
  %r_start_latency = getelementptr inbounds %struct.ceph_osd_request, ptr %call23, i32 0, i32 26
  %48 = ptrtoint ptr %r_start_latency to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %r_start_latency, align 8
  %r_end_latency = getelementptr inbounds %struct.ceph_osd_request, ptr %call23, i32 0, i32 27
  %50 = ptrtoint ptr %r_end_latency to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %r_end_latency, align 8
  %52 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %len, align 8
  %conv46 = trunc i64 %53 to i32
  %metric.i = getelementptr inbounds %struct.ceph_mds_client, ptr %47, i32 0, i32 49, i32 6
  call void @ceph_update_metrics(ptr noundef %metric.i, i64 noundef %49, i64 noundef %51, i32 noundef %conv46, i32 noundef %ret.1) #12
  call void @ceph_osdc_put_request(ptr noundef %call23) #12
  %call47 = call fastcc i64 @i_size_read(ptr noundef %3)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_sync_read.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_sync_read, %if.then60)) #12
          to label %do.end67 [label %if.then60], !srcloc !303

if.then60:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %len, align 8
  %cond64 = select i1 %cmp30, ptr @.str.103, ptr @.str.100
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_sync_read.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.102, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 940, i64 noundef %off.0362, i64 noundef %55, i32 noundef %ret.1, i64 noundef %call47, ptr noundef nonnull %cond64) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then60, %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %ret.1)
  %cmp68 = icmp eq i32 %ret.1, -2
  %spec.select = select i1 %cmp68, i32 0, i32 %ret.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select)
  %cmp72 = icmp sgt i32 %spec.select, -1
  br i1 %cmp72, label %land.lhs.true, label %do.end67.if.end118_crit_edge

do.end67.if.end118_crit_edge:                     ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

land.lhs.true:                                    ; preds = %do.end67
  %conv74343 = zext i32 %spec.select to i64
  %56 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %len, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %57, i64 %conv74343)
  %cmp75 = icmp ugt i64 %57, %conv74343
  br i1 %cmp75, label %land.lhs.true77, label %land.lhs.true.if.end118_crit_edge

land.lhs.true.if.end118_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

land.lhs.true77:                                  ; preds = %land.lhs.true
  %add79 = add i64 %off.0362, %conv74343
  call void @__sanitizer_cov_trace_cmp8(i64 %call47, i64 %add79)
  %cmp80 = icmp ugt i64 %call47, %add79
  br i1 %cmp80, label %if.then82, label %land.lhs.true77.if.end118_crit_edge

land.lhs.true77.if.end118_crit_edge:              ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

if.then82:                                        ; preds = %land.lhs.true77
  %sub84 = sub i64 %57, %conv74343
  %sub87 = sub i64 %call47, %add79
  %58 = call i64 @llvm.umin.i64(i64 %sub84, i64 %sub87)
  %cond91.off0 = trunc i64 %58 to i32
  %add93 = add nuw i32 %spec.select, %conv35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_sync_read.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_sync_read, %if.then106)) #12
          to label %do.end116 [label %if.then106], !srcloc !303

if.then106:                                       ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #14
  %conv112 = sext i32 %cond91.off0 to i64
  %add113 = add i64 %add79, %conv112
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_sync_read.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.105, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 948, i64 noundef %add79, i64 noundef %add113) #12
  br label %do.end116

do.end116:                                        ; preds = %if.then106, %if.then82
  call void @ceph_zero_page_vector_range(i32 noundef %add93, i32 noundef %cond91.off0, ptr noundef %call36) #12
  %add117 = add i32 %spec.select, %cond91.off0
  br label %if.end118

if.end118:                                        ; preds = %do.end116, %land.lhs.true77.if.end118_crit_edge, %land.lhs.true.if.end118_crit_edge, %do.end67.if.end118_crit_edge
  %ret.3 = phi i32 [ %add117, %do.end116 ], [ %spec.select, %land.lhs.true77.if.end118_crit_edge ], [ %spec.select, %land.lhs.true.if.end118_crit_edge ], [ %ret.1, %do.end67.if.end118_crit_edge ]
  %59 = call i32 @llvm.smax.i32(i32 %ret.3, i32 0)
  br label %while.cond125

while.cond125:                                    ; preds = %SetPageUptodate.exit.while.cond125_crit_edge, %if.end118
  %idx.0 = phi i32 [ %inc, %SetPageUptodate.exit.while.cond125_crit_edge ], [ 0, %if.end118 ]
  %left.0 = phi i32 [ %sub144, %SetPageUptodate.exit.while.cond125_crit_edge ], [ %59, %if.end118 ]
  %off.1 = phi i64 [ %add143, %SetPageUptodate.exit.while.cond125_crit_edge ], [ %off.0362, %if.end118 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left.0)
  %cmp126.not = icmp eq i32 %left.0, 0
  br i1 %cmp126.not, label %while.end, label %while.body128

while.body128:                                    ; preds = %while.cond125
  %arrayidx = getelementptr ptr, ptr %call36, i32 %idx.0
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !332
  %62 = getelementptr inbounds %struct.page, ptr %61, i32 0, i32 1
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %62, align 4
  %and.i.i.i.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !306

if.then.i.i.i:                                    ; preds = %while.body128
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %61, ptr noundef nonnull @.str.108) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !333
  unreachable

SetPageUptodate.exit:                             ; preds = %while.body128
  %65 = trunc i64 %off.1 to i32
  %conv131 = and i32 %65, 4095
  %sub132 = sub nuw nsw i32 4096, %conv131
  %66 = call i32 @llvm.umin.i32(i32 %left.0, i32 %sub132)
  call void @_set_bit(i32 noundef 2, ptr noundef %61) #12
  %inc = add i32 %idx.0, 1
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx, align 4
  %call141 = call i32 @copy_page_to_iter(ptr noundef %68, i32 noundef %conv131, i32 noundef %66, ptr noundef %to) #12
  %conv142 = zext i32 %call141 to i64
  %add143 = add i64 %off.1, %conv142
  %sub144 = sub i32 %left.0, %call141
  %cmp145 = icmp ult i32 %call141, %66
  br i1 %cmp145, label %if.then152.thread, label %SetPageUptodate.exit.while.cond125_crit_edge

SetPageUptodate.exit.while.cond125_crit_edge:     ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond125

if.then152.thread:                                ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.le = trunc i64 %sub3.i to i32
  call void @ceph_release_page_vector(ptr noundef %call36, i32 noundef %conv.i.le) #12
  br label %while.end172

while.end:                                        ; preds = %while.cond125
  call void @ceph_release_page_vector(ptr noundef %call36, i32 noundef %conv.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %cmp150 = icmp slt i32 %ret.3, 0
  br i1 %cmp150, label %if.then152, label %if.end157

if.then152:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -108, i32 %ret.3)
  %cmp153 = icmp eq i32 %ret.3, -108
  br i1 %cmp153, label %if.then155, label %if.then152.while.end172_crit_edge

if.then152.while.end172_crit_edge:                ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end172

if.then155:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #14
  %blocklisted = getelementptr inbounds %struct.ceph_fs_client, ptr %7, i32 0, i32 5
  %69 = ptrtoint ptr %blocklisted to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %blocklisted, align 8
  br label %while.end172

if.end157:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_cmp8(i64 %off.1, i64 %call47)
  %cmp158.not = icmp uge i64 %off.1, %call47
  %cmp30.not = xor i1 %cmp30, true
  %brmerge = select i1 %cmp158.not, i1 true, i1 %cmp30.not
  br i1 %brmerge, label %if.end157.while.end172_crit_edge, label %while.cond

if.end157.while.end172_crit_edge:                 ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end172

while.end172:                                     ; preds = %if.end157.while.end172_crit_edge, %if.then155, %if.then152.while.end172_crit_edge, %if.then152.thread, %if.then38, %if.then25, %while.cond.while.end172_crit_edge, %while.cond.preheader.while.end172_crit_edge
  %i_size.2 = phi i64 [ %call47, %if.then152.while.end172_crit_edge ], [ %call47, %if.then155 ], [ %i_size.0361, %if.then38 ], [ %i_size.0361, %if.then25 ], [ %call5, %while.cond.preheader.while.end172_crit_edge ], [ %call47, %if.then152.thread ], [ %call47, %if.end157.while.end172_crit_edge ], [ %call47, %while.cond.while.end172_crit_edge ]
  %off.4 = phi i64 [ %off.1, %if.then152.while.end172_crit_edge ], [ %off.1, %if.then155 ], [ %off.0362, %if.then38 ], [ %off.0362, %if.then25 ], [ %11, %while.cond.preheader.while.end172_crit_edge ], [ %add143, %if.then152.thread ], [ %off.1, %if.end157.while.end172_crit_edge ], [ %off.1, %while.cond.while.end172_crit_edge ]
  %ret.8 = phi i32 [ %ret.3, %if.then152.while.end172_crit_edge ], [ -108, %if.then155 ], [ %43, %if.then38 ], [ %37, %if.then25 ], [ 0, %while.cond.preheader.while.end172_crit_edge ], [ -14, %if.then152.thread ], [ %ret.3, %if.end157.while.end172_crit_edge ], [ %ret.3, %while.cond.while.end172_crit_edge ]
  %70 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %ki_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %off.4, i64 %71)
  %cmp174 = icmp ugt i64 %off.4, %71
  br i1 %cmp174, label %if.then176, label %while.end172.do.body190_crit_edge

while.end172.do.body190_crit_edge:                ; preds = %while.end172
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body190

if.then176:                                       ; preds = %while.end172
  call void @__sanitizer_cov_trace_cmp8(i64 %off.4, i64 %i_size.2)
  %cmp177.not = icmp ult i64 %off.4, %i_size.2
  br i1 %cmp177.not, label %if.else, label %if.then179

if.then179:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %retry_op to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %retry_op, align 4
  %73 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %ki_pos, align 8
  %sub181 = sub i64 %i_size.2, %74
  %extract.t = trunc i64 %sub181 to i32
  br label %do.body190.sink.split

if.else:                                          ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #14
  %sub185 = sub i64 %off.4, %71
  %extract.t463 = trunc i64 %sub185 to i32
  br label %do.body190.sink.split

do.body190.sink.split:                            ; preds = %if.else, %if.then179
  %sub181.sink.off0 = phi i32 [ %extract.t, %if.then179 ], [ %extract.t463, %if.else ]
  %off.4.sink = phi i64 [ %i_size.2, %if.then179 ], [ %off.4, %if.else ]
  %75 = ptrtoint ptr %ki_pos to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %off.4.sink, ptr %ki_pos, align 8
  br label %do.body190

do.body190:                                       ; preds = %do.body190.sink.split, %while.end172.do.body190_crit_edge
  %ret.9 = phi i32 [ %ret.8, %while.end172.do.body190_crit_edge ], [ %sub181.sink.off0, %do.body190.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_sync_read.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_sync_read, %if.then202)) #12
          to label %cleanup207 [label %if.then202], !srcloc !303

if.then202:                                       ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %retry_op to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %retry_op, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_sync_read.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.107, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 992, i32 noundef %ret.9, i32 noundef %77) #12
  br label %cleanup207

cleanup207:                                       ; preds = %if.then202, %do.body190, %if.end14.cleanup207_crit_edge, %do.end.cleanup207_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup207_crit_edge ], [ %call15, %if.end14.cleanup207_crit_edge ], [ %ret.9, %if.then202 ], [ %ret.9, %do.body190 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_put_cap_refs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_to_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_zero(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_fscache_invalidate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_osdc_new_request(ptr noundef, ptr noundef, [2 x i64], i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_osdc_put_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @osd_req_op_extent_update(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @osd_req_op_extent_osd_data_bvecs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_aio_complete_req(ptr noundef %req) #0 align 64 {
entry:
  %i = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %r_result = getelementptr inbounds %struct.ceph_osd_request, ptr %req, i32 0, i32 10
  %0 = ptrtoint ptr %r_result to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r_result, align 8
  %r_inode = getelementptr inbounds %struct.ceph_osd_request, ptr %req, i32 0, i32 16
  %2 = ptrtoint ptr %r_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %r_inode, align 4
  %r_priv = getelementptr inbounds %struct.ceph_osd_request, ptr %req, i32 0, i32 18
  %4 = ptrtoint ptr %r_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %r_priv, align 8
  %call = tail call ptr @osd_req_op_extent_osd_data(ptr noundef %req, i32 noundef 0) #12
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  %mdsc.i = getelementptr inbounds %struct.ceph_fs_client, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %mdsc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdsc.i, align 8
  %12 = getelementptr inbounds %struct.ceph_osd_data, ptr %call, i32 0, i32 1
  %bi_size = getelementptr inbounds %struct.ceph_bvec_iter, ptr %12, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bi_size, align 4
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp.not = icmp eq i32 %16, 4
  br i1 %cmp.not, label %do.body10, label %do.body4, !prof !306

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1071, 0\0A.popsection", ""() #12, !srcloc !334
  unreachable

do.body10:                                        ; preds = %entry
  %num_bvecs = getelementptr inbounds %struct.ceph_osd_data, ptr %call, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %num_bvecs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_bvecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool11.not = icmp eq i32 %18, 0
  br i1 %tobool11.not, label %do.body21, label %do.body30, !prof !309

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1072, 0\0A.popsection", ""() #12, !srcloc !335
  unreachable

do.body30:                                        ; preds = %do.body10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_aio_complete_req.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_aio_complete_req, %if.then39)) #12
          to label %do.end43 [label %if.then39], !srcloc !303

if.then39:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_aio_complete_req.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.90, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1074, ptr noundef %3, i32 noundef %1, i32 noundef %14) #12
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %do.body30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -85, i32 %1)
  %cmp44 = icmp eq i32 %1, -85
  %write = getelementptr inbounds %struct.ceph_aio_request, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %write to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %write, align 8, !range !315
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool47.not = icmp eq i8 %20, 0
  br i1 %cmp44, label %if.then45, label %if.else

if.then45:                                        ; preds = %do.end43
  br i1 %tobool47.not, label %do.body57, label %do.end65, !prof !309

do.body57:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1078, 0\0A.popsection", ""() #12, !srcloc !336
  unreachable

do.end65:                                         ; preds = %if.then45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3136, i32 noundef 48) #17
  %tobool67.not = icmp eq ptr %call7.i, null
  br i1 %tobool67.not, label %do.end65.if.end110_crit_edge, label %cleanup

do.end65.if.end110_crit_edge:                     ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

cleanup:                                          ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__init_work(ptr noundef nonnull %call7.i, i32 noundef 0) #12
  %22 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %call7.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.91, ptr noundef nonnull @ceph_aio_complete_req.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry73 = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1
  %23 = ptrtoint ptr %entry73 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry73, ptr %entry73, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry73, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 2
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ceph_aio_retry_work, ptr %func, align 4
  %req77 = getelementptr inbounds %struct.ceph_aio_work, ptr %call7.i, i32 0, i32 1
  %26 = ptrtoint ptr %req77 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %req, ptr %req77, align 4
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 33
  %29 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i, align 16
  %inode_wq = getelementptr inbounds %struct.ceph_fs_client, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %inode_wq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %inode_wq, align 8
  %call.i218 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef nonnull %call7.i) #12
  br label %cleanup149

if.else:                                          ; preds = %do.end43
  br i1 %tobool47.not, label %if.then84, label %if.else.if.end110_crit_edge

if.else.if.end110_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

if.then84:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %1)
  %cmp85 = icmp eq i32 %1, -2
  %spec.store.select = select i1 %cmp85, i32 0, i32 %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.store.select)
  %cmp88 = icmp sgt i32 %spec.store.select, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %spec.store.select)
  %cmp89 = icmp ugt i32 %14, %spec.store.select
  %or.cond = select i1 %cmp88, i1 %cmp89, i1 false
  br i1 %or.cond, label %if.then90, label %if.then84.if.end110_crit_edge

if.then84.if.end110_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

if.then90:                                        ; preds = %if.then84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %i) #12
  %33 = call ptr @memset(ptr %i, i32 255, i32 24)
  %sub = sub i32 %14, %spec.store.select
  %num_reqs = getelementptr inbounds %struct.ceph_aio_request, ptr %5, i32 0, i32 6
  %34 = ptrtoint ptr %num_reqs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_reqs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp91 = icmp eq i32 %35, 1
  br i1 %cmp91, label %if.then92, label %if.then90.if.end104_crit_edge

if.then90.if.end104_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

if.then92:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  %call93 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %5, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ki_pos, align 8
  %conv221 = zext i32 %spec.store.select to i64
  %add = add i64 %39, %conv221
  call void @__sanitizer_cov_trace_cmp8(i64 %call93, i64 %add)
  %cmp94 = icmp sgt i64 %call93, %add
  %sub97 = sub i64 %call93, %add
  %conv98 = trunc i64 %sub97 to i32
  %40 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %conv98)
  %zlen.0 = select i1 %cmp94, i32 %40, i32 %sub
  %add103 = add i32 %zlen.0, %spec.store.select
  %total_len = getelementptr inbounds %struct.ceph_aio_request, ptr %5, i32 0, i32 1
  %41 = ptrtoint ptr %total_len to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add103, ptr %total_len, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then92, %if.then90.if.end104_crit_edge
  %zlen.1 = phi i32 [ %zlen.0, %if.then92 ], [ %sub, %if.then90.if.end104_crit_edge ]
  %42 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %12, align 8
  %44 = ptrtoint ptr %num_bvecs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_bvecs, align 8
  call void @iov_iter_bvec(ptr noundef nonnull %i, i32 noundef 0, ptr noundef %43, i32 noundef %45, i32 noundef %14) #12
  call void @iov_iter_advance(ptr noundef nonnull %i, i32 noundef %spec.store.select) #12
  %call107 = call i32 @iov_iter_zero(i32 noundef %zlen.1, ptr noundef nonnull %i) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %i) #12
  br label %if.end110

if.end110:                                        ; preds = %if.end104, %if.then84.if.end110_crit_edge, %if.else.if.end110_crit_edge, %do.end65.if.end110_crit_edge
  %rc.1 = phi i32 [ %1, %if.else.if.end110_crit_edge ], [ %spec.store.select, %if.end104 ], [ %spec.store.select, %if.then84.if.end110_crit_edge ], [ -12, %do.end65.if.end110_crit_edge ]
  %r_start_latency = getelementptr inbounds %struct.ceph_osd_request, ptr %req, i32 0, i32 26
  %46 = ptrtoint ptr %r_start_latency to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %r_start_latency, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %tobool111.not = icmp eq i64 %47, 0
  br i1 %tobool111.not, label %if.end110.if.end121_crit_edge, label %if.then112

if.end110.if.end121_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

if.then112:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  %write113 = getelementptr inbounds %struct.ceph_aio_request, ptr %5, i32 0, i32 2
  %48 = ptrtoint ptr %write113 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %write113, align 8, !range !315
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool114.not = icmp eq i8 %49, 0
  %r_end_latency119 = getelementptr inbounds %struct.ceph_osd_request, ptr %req, i32 0, i32 27
  %50 = ptrtoint ptr %r_end_latency119 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %r_end_latency119, align 8
  %arrayidx.i = getelementptr %struct.ceph_mds_client, ptr %11, i32 0, i32 49, i32 6, i32 1
  %metric.i = getelementptr inbounds %struct.ceph_mds_client, ptr %11, i32 0, i32 49, i32 6
  %arrayidx.i.sink = select i1 %tobool114.not, ptr %metric.i, ptr %arrayidx.i
  call void @ceph_update_metrics(ptr noundef %arrayidx.i.sink, i64 noundef %47, i64 noundef %51, i32 noundef %14, i32 noundef %rc.1) #12
  br label %if.end121

if.end121:                                        ; preds = %if.then112, %if.end110.if.end121_crit_edge
  %52 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %12, align 8
  %54 = ptrtoint ptr %num_bvecs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_bvecs, align 8
  %should_dirty = getelementptr inbounds %struct.ceph_aio_request, ptr %5, i32 0, i32 3
  %56 = ptrtoint ptr %should_dirty to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %should_dirty, align 1, !range !315
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool125 = icmp ne i8 %57, 0
  call fastcc void @put_bvecs(ptr noundef %53, i32 noundef %55, i1 noundef zeroext %tobool125)
  call void @ceph_osdc_put_request(ptr noundef %req) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %cmp126 = icmp slt i32 %rc.1, 0
  br i1 %cmp126, label %if.then128, label %if.end121.if.end148_crit_edge

if.end121.if.end148_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

if.then128:                                       ; preds = %if.end121
  %error = getelementptr inbounds %struct.ceph_aio_request, ptr %5, i32 0, i32 4
  %call.i = call zeroext i1 @__kasan_check_write(ptr noundef %error, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !337
  call void @llvm.prefetch.p0(ptr %error, i32 1, i32 3, i32 1) #12
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then128
  %58 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %error, i32 0, i32 %rc.1) #12, !srcloc !338
  %asmresult.i = extractvalue { i32, i32 } %58, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !339
  br label %if.end148

if.end148:                                        ; preds = %__cmpxchg.exit, %if.end121.if.end148_crit_edge
  call fastcc void @ceph_aio_complete(ptr noundef %3, ptr noundef %5)
  br label %cleanup149

cleanup149:                                       ; preds = %if.end148, %cleanup
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_osdc_start_request(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_osdc_wait_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_bvecs(ptr noundef %bvecs, i32 noundef %num_bvecs, i1 noundef zeroext %should_dirty) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_bvecs)
  %cmp15 = icmp sgt i32 %num_bvecs, 0
  br i1 %cmp15, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bio_vec, ptr %bvecs, i32 %i.016
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  br i1 %should_dirty, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @set_page_dirty_lock(ptr noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !306

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !309

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %11, ptr noundef nonnull @.str.95) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !340
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !341
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !342
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !343
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_bvecs, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !303

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc_crit_edge

folio_put_testzero.exit.i.i.for.inc_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %8) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %num_bvecs
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kvfree(ptr noundef %bvecs) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ceph_inode_set_size(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_get_cap_refs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_npages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_get_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @osd_req_op_extent_osd_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_aio_retry_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.ceph_aio_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %r_priv = getelementptr inbounds %struct.ceph_osd_request, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %r_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %r_priv, align 8
  %r_inode = getelementptr inbounds %struct.ceph_osd_request, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %r_inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %r_inode, align 4
  %i_ceph_lock = getelementptr i8, ptr %5, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #12
  %i_cap_snaps.i = getelementptr i8, ptr %5, i32 -404
  %6 = ptrtoint ptr %i_cap_snaps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %i_cap_snaps.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %i_cap_snaps.i
  br i1 %cmp.i.not.i, label %entry.do.body_crit_edge, label %__ceph_have_pending_cap_snap.exit

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

__ceph_have_pending_cap_snap.exit:                ; preds = %entry
  %prev.i = getelementptr i8, ptr %5, i32 -400
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %writing.i = getelementptr i8, ptr %9, i32 192
  %10 = ptrtoint ptr %writing.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %writing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.i.not = icmp eq i32 %11, 0
  br i1 %tobool2.i.not, label %__ceph_have_pending_cap_snap.exit.do.body_crit_edge, label %if.then

__ceph_have_pending_cap_snap.exit.do.body_crit_edge: ; preds = %__ceph_have_pending_cap_snap.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then:                                          ; preds = %__ceph_have_pending_cap_snap.exit
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %context = getelementptr i8, ptr %13, i32 60
  %14 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %context, align 8
  %call6 = tail call ptr @ceph_get_snap_context(ptr noundef %15) #12
  br label %if.end19

do.body:                                          ; preds = %__ceph_have_pending_cap_snap.exit.do.body_crit_edge, %entry.do.body_crit_edge
  %i_head_snapc = getelementptr i8, ptr %5, i32 -396
  %16 = ptrtoint ptr %i_head_snapc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_head_snapc, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %do.body11, label %do.end16, !prof !309

do.body11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1158, 0\0A.popsection", ""() #12, !srcloc !344
  unreachable

do.end16:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call18 = tail call ptr @ceph_get_snap_context(ptr noundef nonnull %17) #12
  br label %if.end19

if.end19:                                         ; preds = %do.end16, %if.then
  %snapc.0 = phi ptr [ %call6, %if.then ], [ %call18, %do.end16 ]
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #12
  %r_osdc = getelementptr inbounds %struct.ceph_osd_request, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %r_osdc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %r_osdc, align 4
  %call21 = tail call ptr @ceph_osdc_alloc_request(ptr noundef %19, ptr noundef %snapc.0, i32 noundef 1, i1 noundef zeroext false, i32 noundef 3136) #12
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end19.if.then43_crit_edge, label %if.end24

if.end19.if.then43_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then43

if.end24:                                         ; preds = %if.end19
  %r_t = getelementptr inbounds %struct.ceph_osd_request, ptr %call21, i32 0, i32 5
  %flags = getelementptr inbounds %struct.ceph_osd_request, ptr %call21, i32 0, i32 5, i32 14
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 32, ptr %flags, align 4
  %base_oloc = getelementptr inbounds %struct.ceph_osd_request, ptr %call21, i32 0, i32 5, i32 1
  %r_t26 = getelementptr inbounds %struct.ceph_osd_request, ptr %1, i32 0, i32 5
  %base_oloc27 = getelementptr inbounds %struct.ceph_osd_request, ptr %1, i32 0, i32 5, i32 1
  tail call void @ceph_oloc_copy(ptr noundef %base_oloc, ptr noundef %base_oloc27) #12
  tail call void @ceph_oid_copy(ptr noundef %r_t, ptr noundef %r_t26) #12
  %r_ops = getelementptr inbounds %struct.ceph_osd_request, ptr %call21, i32 0, i32 30
  %r_ops31 = getelementptr inbounds %struct.ceph_osd_request, ptr %1, i32 0, i32 30
  %21 = call ptr @memcpy(ptr %r_ops, ptr %r_ops31, i32 160)
  %r_mtime = getelementptr inbounds %struct.ceph_osd_request, ptr %call21, i32 0, i32 21
  %mtime = getelementptr inbounds %struct.ceph_aio_request, ptr %3, i32 0, i32 8
  %22 = call ptr @memcpy(ptr %r_mtime, ptr %mtime, i32 16)
  %23 = getelementptr inbounds %struct.ceph_osd_request, ptr %call21, i32 1, i32 2, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %23, align 8
  %r_data_offset = getelementptr inbounds %struct.ceph_osd_request, ptr %call21, i32 0, i32 22
  %26 = ptrtoint ptr %r_data_offset to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %r_data_offset, align 8
  %call35 = tail call i32 @ceph_osdc_alloc_messages(ptr noundef nonnull %call21, i32 noundef 3136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ceph_osdc_put_request(ptr noundef nonnull %call21) #12
  br label %out

if.end38:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ceph_osdc_put_request(ptr noundef %1) #12
  %r_callback = getelementptr inbounds %struct.ceph_osd_request, ptr %call21, i32 0, i32 15
  %27 = ptrtoint ptr %r_callback to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ceph_aio_complete_req, ptr %r_callback, align 8
  %r_inode39 = getelementptr inbounds %struct.ceph_osd_request, ptr %call21, i32 0, i32 16
  %28 = ptrtoint ptr %r_inode39 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %5, ptr %r_inode39, align 4
  %r_priv40 = getelementptr inbounds %struct.ceph_osd_request, ptr %call21, i32 0, i32 18
  %29 = ptrtoint ptr %r_priv40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %3, ptr %r_priv40, align 8
  %r_osdc41 = getelementptr inbounds %struct.ceph_osd_request, ptr %call21, i32 0, i32 11
  %30 = ptrtoint ptr %r_osdc41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %r_osdc41, align 4
  %call42 = tail call i32 @ceph_osdc_start_request(ptr noundef %31, ptr noundef nonnull %call21, i1 noundef zeroext false) #12
  br label %out

out:                                              ; preds = %if.end38, %if.then37
  %req1.0 = phi ptr [ %1, %if.then37 ], [ %call21, %if.end38 ]
  %ret.0 = phi i32 [ %call35, %if.then37 ], [ %call42, %if.end38 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  br i1 %cmp, label %out.if.then43_crit_edge, label %out.if.end44_crit_edge

out.if.end44_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

out.if.then43_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then43

if.then43:                                        ; preds = %out.if.then43_crit_edge, %if.end19.if.then43_crit_edge
  %ret.084 = phi i32 [ %ret.0, %out.if.then43_crit_edge ], [ -12, %if.end19.if.then43_crit_edge ]
  %req1.083 = phi ptr [ %req1.0, %out.if.then43_crit_edge ], [ %1, %if.end19.if.then43_crit_edge ]
  %r_result = getelementptr inbounds %struct.ceph_osd_request, ptr %req1.083, i32 0, i32 10
  %32 = ptrtoint ptr %r_result to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %ret.084, ptr %r_result, align 8
  tail call void @ceph_aio_complete_req(ptr noundef %req1.083)
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %out.if.end44_crit_edge
  tail call void @ceph_put_snap_context(ptr noundef %snapc.0) #12
  tail call void @kfree(ptr noundef %work) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ceph_aio_complete(ptr noundef %inode, ptr noundef %aio_req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %pending_reqs = getelementptr inbounds %struct.ceph_aio_request, ptr %aio_req, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_reqs, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !341
  tail call void @llvm.prefetch.p0(ptr %pending_reqs, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_reqs, ptr %pending_reqs, i32 1, ptr elementtype(i32) %pending_reqs) #12, !srcloc !342
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !343
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %aio_req to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %aio_req, align 8
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ki_flags, align 8
  %and = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %i_dio_count.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_dio_count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !341
  tail call void @llvm.prefetch.p0(ptr %i_dio_count.i, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_dio_count.i, ptr %i_dio_count.i, i32 1, ptr elementtype(i32) %i_dio_count.i) #12, !srcloc !342
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !343
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then2.if.end3_crit_edge

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %i_state.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  tail call void @wake_up_bit(ptr noundef %i_state.i, i32 noundef 9) #12
  br label %if.end3

if.end3:                                          ; preds = %if.then.i, %if.then2.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %error = getelementptr inbounds %struct.ceph_aio_request, ptr %aio_req, i32 0, i32 4
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.then5, label %if.end3.do.body_crit_edge

if.end3.do.body_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %total_len = getelementptr inbounds %struct.ceph_aio_request, ptr %aio_req, i32 0, i32 1
  %8 = ptrtoint ptr %total_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total_len, align 4
  br label %do.body

do.body:                                          ; preds = %if.then5, %if.end3.do.body_crit_edge
  %ret.0 = phi i32 [ %7, %if.end3.do.body_crit_edge ], [ %9, %if.then5 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_aio_complete.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_aio_complete, %if.then11)) #12
          to label %do.end [label %if.then11], !srcloc !303

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_aio_complete.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.94, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1032, ptr noundef %inode, i32 noundef %ret.0) #12
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp = icmp sgt i32 %ret.0, -1
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end31_crit_edge

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

land.lhs.true:                                    ; preds = %do.end
  %write = getelementptr inbounds %struct.ceph_aio_request, ptr %aio_req, i32 0, i32 2
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %write, align 8, !range !315
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool14.not = icmp eq i8 %11, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end31_crit_edge, label %if.then15

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then15:                                        ; preds = %land.lhs.true
  %12 = ptrtoint ptr %aio_req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aio_req, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ki_pos, align 8
  %total_len17 = getelementptr inbounds %struct.ceph_aio_request, ptr %aio_req, i32 0, i32 1
  %16 = ptrtoint ptr %total_len17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %total_len17, align 4
  %conv = zext i32 %17 to i64
  %add = add i64 %15, %conv
  %call18 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call18)
  %cmp19 = icmp sgt i64 %add, %call18
  br i1 %cmp19, label %if.then21, label %if.then15.if.end25_crit_edge

if.then15.if.end25_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then21:                                        ; preds = %if.then15
  %call22 = tail call zeroext i1 @ceph_inode_set_size(ptr noundef %inode, i64 noundef %add) #12
  br i1 %call22, label %if.then23, label %if.then21.if.end25_crit_edge

if.then21.if.end25_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ceph_check_caps(ptr noundef %add.ptr.i, i32 noundef 1, ptr noundef null) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then21.if.end25_crit_edge, %if.then15.if.end25_crit_edge
  %i_ceph_lock = getelementptr i8, ptr %inode, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #12
  %i_inline_version = getelementptr i8, ptr %inode, i32 -880
  %18 = ptrtoint ptr %i_inline_version to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 -1, ptr %i_inline_version, align 8
  %prealloc_cf = getelementptr inbounds %struct.ceph_aio_request, ptr %aio_req, i32 0, i32 9
  %call26 = tail call i32 @__ceph_mark_dirty_caps(ptr noundef %add.ptr.i, i32 noundef 4096, ptr noundef %prealloc_cf) #12
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool28.not = icmp eq i32 %call26, 0
  br i1 %tobool28.not, label %if.end25.if.end31_crit_edge, label %if.then29

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef %call26) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end25.if.end31_crit_edge, %land.lhs.true.if.end31_crit_edge, %do.end.if.end31_crit_edge
  %write32 = getelementptr inbounds %struct.ceph_aio_request, ptr %aio_req, i32 0, i32 2
  %19 = ptrtoint ptr %write32 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %write32, align 8, !range !315
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool33.not = icmp eq i8 %20, 0
  %cond = select i1 %tobool33.not, i32 2048, i32 4096
  tail call void @ceph_put_cap_refs(ptr noundef %add.ptr.i, i32 noundef %cond) #12
  %21 = ptrtoint ptr %aio_req to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %aio_req, align 8
  %ki_complete = getelementptr inbounds %struct.kiocb, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %ki_complete to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ki_complete, align 8
  tail call void %24(ptr noundef %22, i32 noundef %ret.0) #12
  %prealloc_cf37 = getelementptr inbounds %struct.ceph_aio_request, ptr %aio_req, i32 0, i32 9
  %25 = ptrtoint ptr %prealloc_cf37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prealloc_cf37, align 8
  tail call void @ceph_free_cap_flush(ptr noundef %26) #12
  tail call void @kfree(ptr noundef %aio_req) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_get_snap_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_osdc_alloc_request(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_oloc_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_oid_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_osdc_alloc_messages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_put_snap_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_mark_dirty_caps(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_free_cap_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_update_metrics(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_alloc_page_vector(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @osd_req_op_extent_osd_data_pages(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_zero_page_vector_range(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_release_page_vector(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__folio_alloc(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_alloc_cap_flush() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_start_io_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_checks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ceph_quota_is_max_bytes_exceeded(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ceph_pg_pool_flags(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_remove_privs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_uninline_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @inode_inc_iversion_raw(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %i_version = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %i_version) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ceph_sync_write(ptr nocapture noundef %iocb, ptr noundef %from, i64 noundef %pos, ptr noundef %snapc) unnamed_addr #0 align 64 {
entry:
  %len = alloca i64, align 8
  %mtime = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -952
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mtime) #12
  %8 = call ptr @memset(ptr %mtime, i32 255, i32 16)
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %mtime, ptr noundef %3) #12
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i, align 8
  %11 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_inode.i, align 8
  %snap.i = getelementptr i8, ptr %12, i32 -944
  %13 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %14)
  %cmp.not = icmp eq i64 %14, -2
  br i1 %cmp.not, label %do.body, label %entry.cleanup120_crit_edge

entry.cleanup120_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup120

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_sync_write.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_sync_write, %if.then9)) #12
          to label %do.end [label %if.then9], !srcloc !303

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %seq = getelementptr inbounds %struct.ceph_snap_context, ptr %snapc, i32 0, i32 1
  %15 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %seq, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_sync_write.__UNIQUE_ID_ddebug375, ptr noundef nonnull @.str.122, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1443, ptr noundef %1, i64 noundef %pos, i32 noundef %10, ptr noundef %snapc, i64 noundef %16) #12
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %17 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_mapping, align 8
  %conv = zext i32 %10 to i64
  %add = add i64 %pos, -1
  %sub = add i64 %add, %conv
  %call12 = call i32 @filemap_write_and_wait_range(ptr noundef %18, i64 noundef %pos, i64 noundef %sub) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end.cleanup120_crit_edge, label %if.end16

do.end.cleanup120_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup120

if.end16:                                         ; preds = %do.end
  call void @ceph_fscache_invalidate(ptr noundef %3, i1 noundef zeroext false) #12
  %19 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_mapping, align 8
  %21 = lshr i64 %pos, 12
  %conv18 = trunc i64 %21 to i32
  %22 = lshr i64 %sub, 12
  %conv23 = trunc i64 %22 to i32
  %call24 = call i32 @invalidate_inode_pages2_range(ptr noundef %20, i32 noundef %conv18, i32 noundef %conv23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.body28, label %if.end16.if.end45_crit_edge

if.end16.if.end45_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

do.body28:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_sync_write.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_sync_write, %if.then40)) #12
          to label %if.end45 [label %if.then40], !srcloc !303

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_sync_write.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.87, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1455, i32 noundef %call24) #12
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %do.body28, %if.end16.if.end45_crit_edge
  %23 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count.i, align 8
  %conv47249 = zext i32 %24 to i64
  %25 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv47249, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp48.not250 = icmp eq i32 %24, 0
  br i1 %cmp48.not250, label %if.end45.while.end_crit_edge, label %while.body.lr.ph

if.end45.while.end_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end45
  %tmp50.sroa.4.0.add.ptr.i.i.sroa_idx = getelementptr i8, ptr %3, i32 -944
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %7, i32 0, i32 3
  %i_layout = getelementptr i8, ptr %3, i32 -824
  %i_truncate_seq = getelementptr i8, ptr %3, i32 -272
  %i_truncate_size = getelementptr i8, ptr %3, i32 -264
  %mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %7, i32 0, i32 9
  %i_ceph_flags.i212 = getelementptr i8, ptr %3, i32 -868
  %i_ceph_lock.i215 = getelementptr i8, ptr %3, i32 -936
  br label %while.body

while.body:                                       ; preds = %cleanup110.while.body_crit_edge, %while.body.lr.ph
  %pos.addr.0253 = phi i64 [ %pos, %while.body.lr.ph ], [ %add95, %cleanup110.while.body_crit_edge ]
  %ret.0252 = phi i32 [ %call24, %while.body.lr.ph ], [ 0, %cleanup110.while.body_crit_edge ]
  %written.0251 = phi i32 [ 0, %while.body.lr.ph ], [ %conv98, %cleanup110.while.body_crit_edge ]
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %tmp50.sroa.0.0.copyload = load i64, ptr %add.ptr.i, align 8
  %27 = ptrtoint ptr %tmp50.sroa.4.0.add.ptr.i.i.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %27)
  %tmp50.sroa.4.0.copyload = load i64, ptr %tmp50.sroa.4.0.add.ptr.i.i.sroa_idx, align 8
  %28 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client, align 8
  %osdc = getelementptr inbounds %struct.ceph_client, ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %i_truncate_seq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_truncate_seq, align 8
  %32 = ptrtoint ptr %i_truncate_size to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %i_truncate_size, align 8
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %tmp50.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %tmp50.sroa.4.0.copyload, 1
  %call51 = call ptr @ceph_osdc_new_request(ptr noundef %osdc, ptr noundef %i_layout, [2 x i64] %.fca.1.insert, i64 noundef %pos.addr.0253, ptr noundef nonnull %len, i32 noundef 0, i32 noundef 1, i32 noundef 8705, i32 noundef 32, ptr noundef %snapc, i32 noundef %31, i64 noundef %33, i1 noundef zeroext false) #12
  %cmp.i = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then53, label %if.end55

if.then53:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %call51 to i32
  br label %while.end

if.end55:                                         ; preds = %while.body
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %len, align 8
  %sub57 = add i64 %36, 4095
  %shr58 = lshr i64 %sub57, 12
  %conv59 = trunc i64 %shr58 to i32
  %call60 = call ptr @ceph_alloc_page_vector(i32 noundef %conv59, i32 noundef 3264) #12
  %cmp.i211 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i211, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %call60 to i32
  br label %out

if.end64:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv59)
  %cmp66245 = icmp sgt i32 %conv59, 0
  br i1 %cmp66245, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end64
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %len, align 8
  %conv65 = trunc i64 %39 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %n.0247 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %left.0246 = phi i32 [ %sub76, %for.inc.for.body_crit_edge ], [ %conv65, %for.body.preheader ]
  %40 = call i32 @llvm.umin.i32(i32 %left.0246, i32 4096)
  %arrayidx = getelementptr ptr, ptr %call60, i32 %n.0247
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %call71 = call i32 @copy_page_from_iter(ptr noundef %42, i32 noundef 0, i32 noundef %40, ptr noundef %from) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call71, i32 %40)
  %cmp72.not = icmp eq i32 %call71, %40
  br i1 %cmp72.not, label %for.inc, label %for.body.out.thread_crit_edge

for.body.out.thread_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.thread

for.inc:                                          ; preds = %for.body
  %sub76 = sub i32 %left.0246, %40
  %inc = add nuw nsw i32 %n.0247, 1
  %exitcond.not = icmp eq i32 %inc, %conv59
  br i1 %exitcond.not, label %for.inc.if.end80_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end80_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

for.end:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0252)
  %cmp77 = icmp slt i32 %ret.0252, 0
  br i1 %cmp77, label %for.end.out.thread_crit_edge, label %for.end.if.end80_crit_edge

for.end.if.end80_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

for.end.out.thread_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.thread

out.thread:                                       ; preds = %for.end.out.thread_crit_edge, %for.body.out.thread_crit_edge
  %ret.3274 = phi i32 [ -14, %for.body.out.thread_crit_edge ], [ %ret.0252, %for.end.out.thread_crit_edge ]
  %conv59.le316 = trunc i64 %shr58 to i32
  call void @ceph_release_page_vector(ptr noundef %call60, i32 noundef %conv59.le316) #12
  call void @ceph_osdc_put_request(ptr noundef %call51) #12
  br label %if.then93

if.end80:                                         ; preds = %for.end.if.end80_crit_edge, %for.inc.if.end80_crit_edge
  %r_inode = getelementptr inbounds %struct.ceph_osd_request, ptr %call51, i32 0, i32 16
  %43 = ptrtoint ptr %r_inode to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %3, ptr %r_inode, align 4
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %len, align 8
  call void @osd_req_op_extent_osd_data_pages(ptr noundef %call51, i32 noundef 0, ptr noundef %call60, i64 noundef %45, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %r_mtime = getelementptr inbounds %struct.ceph_osd_request, ptr %call51, i32 0, i32 21
  %46 = call ptr @memcpy(ptr %r_mtime, ptr %mtime, i32 16)
  %47 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %client, align 8
  %osdc82 = getelementptr inbounds %struct.ceph_client, ptr %48, i32 0, i32 12
  %call83 = call i32 @ceph_osdc_start_request(ptr noundef %osdc82, ptr noundef %call51, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then85, label %if.end80.if.end89_crit_edge

if.end80.if.end89_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

if.then85:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %client, align 8
  %osdc87 = getelementptr inbounds %struct.ceph_client, ptr %50, i32 0, i32 12
  %call88 = call i32 @ceph_osdc_wait_request(ptr noundef %osdc87, ptr noundef %call51) #12
  br label %if.end89

if.end89:                                         ; preds = %if.then85, %if.end80.if.end89_crit_edge
  %ret.4 = phi i32 [ %call83, %if.end80.if.end89_crit_edge ], [ %call88, %if.then85 ]
  %51 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mdsc, align 8
  %r_start_latency = getelementptr inbounds %struct.ceph_osd_request, ptr %call51, i32 0, i32 26
  %53 = ptrtoint ptr %r_start_latency to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %r_start_latency, align 8
  %r_end_latency = getelementptr inbounds %struct.ceph_osd_request, ptr %call51, i32 0, i32 27
  %55 = ptrtoint ptr %r_end_latency to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %r_end_latency, align 8
  %57 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %len, align 8
  %conv90 = trunc i64 %58 to i32
  %arrayidx.i = getelementptr %struct.ceph_mds_client, ptr %52, i32 0, i32 49, i32 6, i32 1
  call void @ceph_update_metrics(ptr noundef %arrayidx.i, i64 noundef %54, i64 noundef %56, i32 noundef %conv90, i32 noundef %ret.4) #12
  br label %out

out:                                              ; preds = %if.end89, %if.then62
  %ret.5 = phi i32 [ %37, %if.then62 ], [ %ret.4, %if.end89 ]
  call void @ceph_osdc_put_request(ptr noundef %call51) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.5)
  %cmp91.not = icmp eq i32 %ret.5, 0
  br i1 %cmp91.not, label %if.end94, label %out.if.then93_crit_edge

out.if.then93_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then93

if.then93:                                        ; preds = %out.if.then93_crit_edge, %out.thread
  %ret.5222 = phi i32 [ %ret.3274, %out.thread ], [ %ret.5, %out.if.then93_crit_edge ]
  %59 = ptrtoint ptr %i_ceph_flags.i212 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %i_ceph_flags.i212, align 4
  %and.i = and i32 %60, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then93.while.end_crit_edge

if.then93.while.end_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.then.i:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_lock(ptr noundef %i_ceph_lock.i215) #12
  %61 = ptrtoint ptr %i_ceph_flags.i212 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %i_ceph_flags.i212, align 4
  %or.i = or i32 %62, 512
  store i32 %or.i, ptr %i_ceph_flags.i212, align 4
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock.i215) #12
  br label %while.end

if.end94:                                         ; preds = %out
  %63 = ptrtoint ptr %i_ceph_flags.i212 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %i_ceph_flags.i212, align 4
  %and.i213 = and i32 %64, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i213)
  %tobool.not.i214 = icmp eq i32 %and.i213, 0
  br i1 %tobool.not.i214, label %if.end94.ceph_clear_error_write.exit_crit_edge, label %if.then.i216

if.end94.ceph_clear_error_write.exit_crit_edge:   ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceph_clear_error_write.exit

if.then.i216:                                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_lock(ptr noundef %i_ceph_lock.i215) #12
  %65 = ptrtoint ptr %i_ceph_flags.i212 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %i_ceph_flags.i212, align 4
  %and2.i = and i32 %66, -513
  store i32 %and2.i, ptr %i_ceph_flags.i212, align 4
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock.i215) #12
  br label %ceph_clear_error_write.exit

ceph_clear_error_write.exit:                      ; preds = %if.then.i216, %if.end94.ceph_clear_error_write.exit_crit_edge
  %67 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %len, align 8
  %add95 = add i64 %68, %pos.addr.0253
  %69 = trunc i64 %68 to i32
  %conv98 = add i32 %written.0251, %69
  %call99 = call fastcc i64 @i_size_read(ptr noundef %3)
  call void @__sanitizer_cov_trace_cmp8(i64 %add95, i64 %call99)
  %cmp100 = icmp sgt i64 %add95, %call99
  br i1 %cmp100, label %if.then102, label %ceph_clear_error_write.exit.cleanup110_crit_edge

ceph_clear_error_write.exit.cleanup110_crit_edge: ; preds = %ceph_clear_error_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup110

if.then102:                                       ; preds = %ceph_clear_error_write.exit
  %call103 = call zeroext i1 @ceph_inode_set_size(ptr noundef %3, i64 noundef %add95) #12
  br i1 %call103, label %if.then106, label %if.then102.cleanup110_crit_edge

if.then102.cleanup110_crit_edge:                  ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup110

if.then106:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #14
  call void @ceph_check_caps(ptr noundef %add.ptr.i, i32 noundef 1, ptr noundef null) #12
  br label %cleanup110

cleanup110:                                       ; preds = %if.then106, %if.then102.cleanup110_crit_edge, %ceph_clear_error_write.exit.cleanup110_crit_edge
  %70 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %count.i, align 8
  %conv47 = zext i32 %71 to i64
  %72 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %conv47, ptr %len, align 8
  %cmp48.not = icmp eq i32 %71, 0
  br i1 %cmp48.not, label %cleanup110.land.lhs.true_crit_edge, label %cleanup110.while.body_crit_edge

cleanup110.while.body_crit_edge:                  ; preds = %cleanup110
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup110.land.lhs.true_crit_edge:               ; preds = %cleanup110
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

while.end:                                        ; preds = %if.then.i, %if.then93.while.end_crit_edge, %if.then53, %if.end45.while.end_crit_edge
  %written.0239 = phi i32 [ %written.0251, %if.then.i ], [ %written.0251, %if.then93.while.end_crit_edge ], [ %written.0251, %if.then53 ], [ 0, %if.end45.while.end_crit_edge ]
  %pos.addr.0231 = phi i64 [ %pos.addr.0253, %if.then.i ], [ %pos.addr.0253, %if.then93.while.end_crit_edge ], [ %pos.addr.0253, %if.then53 ], [ %pos, %if.end45.while.end_crit_edge ]
  %ret.7 = phi i32 [ %ret.5222, %if.then.i ], [ %ret.5222, %if.then93.while.end_crit_edge ], [ %34, %if.then53 ], [ %call24, %if.end45.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -85, i32 %ret.7)
  %cmp114.not = icmp eq i32 %ret.7, -85
  br i1 %cmp114.not, label %while.end.cleanup120_crit_edge, label %while.end.land.lhs.true_crit_edge

while.end.land.lhs.true_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

while.end.cleanup120_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup120

land.lhs.true:                                    ; preds = %while.end.land.lhs.true_crit_edge, %cleanup110.land.lhs.true_crit_edge
  %ret.7284 = phi i32 [ %ret.7, %while.end.land.lhs.true_crit_edge ], [ 0, %cleanup110.land.lhs.true_crit_edge ]
  %pos.addr.0231283 = phi i64 [ %pos.addr.0231, %while.end.land.lhs.true_crit_edge ], [ %add95, %cleanup110.land.lhs.true_crit_edge ]
  %written.0239282 = phi i32 [ %written.0239, %while.end.land.lhs.true_crit_edge ], [ %conv98, %cleanup110.land.lhs.true_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.0239282)
  %cmp116 = icmp sgt i32 %written.0239282, 0
  br i1 %cmp116, label %if.then118, label %land.lhs.true.cleanup120_crit_edge

land.lhs.true.cleanup120_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup120

if.then118:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %73 = ptrtoint ptr %ki_pos to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %pos.addr.0231283, ptr %ki_pos, align 8
  br label %cleanup120

cleanup120:                                       ; preds = %if.then118, %land.lhs.true.cleanup120_crit_edge, %while.end.cleanup120_crit_edge, %do.end.cleanup120_crit_edge, %entry.cleanup120_crit_edge
  %retval.0 = phi i32 [ -30, %entry.cleanup120_crit_edge ], [ %call12, %do.end.cleanup120_crit_edge ], [ %written.0239282, %if.then118 ], [ %ret.7284, %land.lhs.true.cleanup120_crit_edge ], [ -85, %while.end.cleanup120_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mtime) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_end_io_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_perform_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ceph_quota_is_max_bytes_approaching(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @generic_write_sync(ptr nocapture noundef readonly %iocb, i32 noundef %count) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %0 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ki_flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iocb, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %4 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ki_pos, align 8
  %conv = sext i32 %count to i64
  %sub = sub i64 %5, %conv
  %sub2 = add i64 %5, -1
  %and4 = lshr i32 %1, 2
  %and4.lobit = and i32 %and4, 1
  %6 = xor i32 %and4.lobit, 1
  %call = tail call i32 @vfs_fsync_range(ptr noundef %3, i64 noundef %sub, i64 noundef %sub2, i32 noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then.if.end8_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  br label %return

return:                                           ; preds = %if.end8, %if.then.return_crit_edge
  %retval.1 = phi i32 [ %call, %if.then.return_crit_edge ], [ %count, %if.end8 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_from_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ceph_zero_pagecache_range(ptr noundef %inode, i64 noundef %offset, i64 noundef %length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i64 %offset, -1
  %or = or i64 %sub, 4095
  %add = add i64 %or, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %offset)
  %cmp = icmp sgt i64 %add, %offset
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub1 = sub i64 %add, %offset
  %0 = tail call i64 @llvm.smin.i64(i64 %sub1, i64 %length)
  %conv = trunc i64 %0 to i32
  tail call fastcc void @ceph_zero_partial_page(ptr noundef %inode, i64 noundef %offset, i32 noundef %conv)
  %add4 = add i64 %0, %offset
  %sub5 = sub i64 %length, %0
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry.if.end6_crit_edge
  %length.addr.0 = phi i64 [ %sub5, %if.then ], [ %length, %entry.if.end6_crit_edge ]
  %offset.addr.0 = phi i64 [ %add4, %if.then ], [ %offset, %entry.if.end6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4095, i64 %length.addr.0)
  %cmp7 = icmp sgt i64 %length.addr.0, 4095
  br i1 %cmp7, label %if.then9, label %if.end6.if.end15_crit_edge

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i64 %length.addr.0, -4096
  %add11 = add i64 %offset.addr.0, %and
  %sub12 = add i64 %add11, -1
  tail call void @truncate_pagecache_range(ptr noundef %inode, i64 noundef %offset.addr.0, i64 noundef %sub12) #12
  %sub14 = and i64 %length.addr.0, 4095
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.end6.if.end15_crit_edge
  %length.addr.1 = phi i64 [ %sub14, %if.then9 ], [ %length.addr.0, %if.end6.if.end15_crit_edge ]
  %offset.addr.1 = phi i64 [ %add11, %if.then9 ], [ %offset.addr.0, %if.end6.if.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %length.addr.1)
  %tobool.not = icmp eq i64 %length.addr.1, 0
  br i1 %tobool.not, label %if.end15.if.end18_crit_edge, label %if.then16

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then16:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %conv17 = trunc i64 %length.addr.1 to i32
  tail call fastcc void @ceph_zero_partial_page(ptr noundef %inode, i64 noundef %offset.addr.1, i32 noundef %conv17)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end15.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ceph_zero_objects(ptr noundef %inode, i64 noundef %offset, i64 noundef %length) unnamed_addr #0 align 64 {
entry:
  %size = alloca i64, align 8
  %size227 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_layout = getelementptr i8, ptr %inode, i32 -824
  %0 = ptrtoint ptr %i_layout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_layout, align 8
  %stripe_count3 = getelementptr i8, ptr %inode, i32 -820
  %2 = ptrtoint ptr %stripe_count3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stripe_count3, align 4
  %object_size5 = getelementptr i8, ptr %inode, i32 -816
  %4 = ptrtoint ptr %object_size5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %object_size5, align 8
  %mul = mul i32 %5, %3
  %conv = sext i32 %mul to i64
  %add = add i64 %offset, -1
  %sub = add i64 %add, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp176 = icmp ult i64 %sub, 4294967296
  br i1 %cmp176, label %if.then180, label %if.else186, !prof !306

if.then180:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv181 = trunc i64 %sub to i32
  %rem182 = urem i32 %conv181, %mul
  br label %if.end190

if.else186:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %sub) #18, !srcloc !345
  %asmresult.i367 = extractvalue { i64, i64 } %6, 0
  %shr.i = lshr i64 %asmresult.i367, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end190

if.end190:                                        ; preds = %if.else186, %if.then180
  %__rem.0 = phi i32 [ %rem182, %if.then180 ], [ %conv.i, %if.else186 ]
  %conv192 = zext i32 %__rem.0 to i64
  %sub193 = sub i64 %sub, %conv192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %length)
  %tobool194.not409 = icmp ne i64 %length, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub193, i64 %offset)
  %cmp195410 = icmp ugt i64 %sub193, %offset
  %or.cond411 = select i1 %tobool194.not409, i1 %cmp195410, i1 false
  br i1 %or.cond411, label %if.end190.while.body_crit_edge, label %if.end190.while.cond204.preheader_crit_edge

if.end190.while.cond204.preheader_crit_edge:      ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond204.preheader

if.end190.while.body_crit_edge:                   ; preds = %if.end190
  br label %while.body

while.cond204.preheader:                          ; preds = %cleanup.while.cond204.preheader_crit_edge, %if.end190.while.cond204.preheader_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %if.end190.while.cond204.preheader_crit_edge ], [ %call197, %cleanup.while.cond204.preheader_crit_edge ]
  %length.addr.0.lcssa = phi i64 [ %length, %if.end190.while.cond204.preheader_crit_edge ], [ %sub203, %cleanup.while.cond204.preheader_crit_edge ]
  %offset.addr.0.lcssa = phi i64 [ %offset, %if.end190.while.cond204.preheader_crit_edge ], [ %add202, %cleanup.while.cond204.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %length.addr.0.lcssa, i64 %conv)
  %cmp205.not420 = icmp ult i64 %length.addr.0.lcssa, %conv
  br i1 %cmp205.not420, label %while.cond204.preheader.while.cond224.preheader_crit_edge, label %for.cond.preheader.lr.ph

while.cond204.preheader.while.cond224.preheader_crit_edge: ; preds = %while.cond204.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond224.preheader

for.cond.preheader.lr.ph:                         ; preds = %while.cond204.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp208416 = icmp sgt i32 %3, 0
  %conv215 = sext i32 %1 to i64
  br label %for.cond.preheader

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end190.while.body_crit_edge
  %offset.addr.0413 = phi i64 [ %add202, %cleanup.while.body_crit_edge ], [ %offset, %if.end190.while.body_crit_edge ]
  %length.addr.0412 = phi i64 [ %sub203, %cleanup.while.body_crit_edge ], [ %length, %if.end190.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size) #12
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %length.addr.0412, ptr %size, align 8
  %call197 = call fastcc i32 @ceph_zero_partial_object(ptr noundef %inode, i64 noundef %offset.addr.0413, ptr noundef nonnull %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %cmp198 = icmp slt i32 %call197, 0
  br i1 %cmp198, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size) #12
  br label %cleanup239

cleanup:                                          ; preds = %while.body
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size, align 8
  %add202 = add i64 %9, %offset.addr.0413
  %sub203 = sub i64 %length.addr.0412, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub203)
  %tobool194.not = icmp ne i64 %sub203, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add202, i64 %sub193)
  %cmp195 = icmp ult i64 %add202, %sub193
  %or.cond = select i1 %tobool194.not, i1 %cmp195, i1 false
  br i1 %or.cond, label %cleanup.while.body_crit_edge, label %cleanup.while.cond204.preheader_crit_edge

cleanup.while.cond204.preheader_crit_edge:        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond204.preheader

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

for.cond.preheader:                               ; preds = %cleanup219.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %offset.addr.2423 = phi i64 [ %offset.addr.0.lcssa, %for.cond.preheader.lr.ph ], [ %add217, %cleanup219.for.cond.preheader_crit_edge ]
  %length.addr.2422 = phi i64 [ %length.addr.0.lcssa, %for.cond.preheader.lr.ph ], [ %sub218, %cleanup219.for.cond.preheader_crit_edge ]
  %ret.1421 = phi i32 [ %ret.0.lcssa, %for.cond.preheader.lr.ph ], [ %ret.2.lcssa, %cleanup219.for.cond.preheader_crit_edge ]
  br i1 %cmp208416, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup219_crit_edge

for.cond.preheader.cleanup219_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup219

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

while.cond224.preheader:                          ; preds = %cleanup219.while.cond224.preheader_crit_edge, %while.cond204.preheader.while.cond224.preheader_crit_edge
  %ret.1.lcssa = phi i32 [ %ret.0.lcssa, %while.cond204.preheader.while.cond224.preheader_crit_edge ], [ %ret.2.lcssa, %cleanup219.while.cond224.preheader_crit_edge ]
  %length.addr.2.lcssa = phi i64 [ %length.addr.0.lcssa, %while.cond204.preheader.while.cond224.preheader_crit_edge ], [ %sub218, %cleanup219.while.cond224.preheader_crit_edge ]
  %offset.addr.2.lcssa = phi i64 [ %offset.addr.0.lcssa, %while.cond204.preheader.while.cond224.preheader_crit_edge ], [ %add217, %cleanup219.while.cond224.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %length.addr.2.lcssa)
  %tobool225.not428 = icmp eq i64 %length.addr.2.lcssa, 0
  br i1 %tobool225.not428, label %while.cond224.preheader.cleanup239_crit_edge, label %while.cond224.preheader.while.body226_crit_edge

while.cond224.preheader.while.body226_crit_edge:  ; preds = %while.cond224.preheader
  br label %while.body226

while.cond224.preheader.cleanup239_crit_edge:     ; preds = %while.cond224.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup239

for.body:                                         ; preds = %if.end214.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %pos.0418 = phi i64 [ %add216, %if.end214.for.body_crit_edge ], [ %offset.addr.2423, %for.cond.preheader.for.body_crit_edge ]
  %i.0417 = phi i32 [ %inc, %if.end214.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call210 = call fastcc i32 @ceph_zero_partial_object(ptr noundef %inode, i64 noundef %pos.0418, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %cmp211 = icmp slt i32 %call210, 0
  br i1 %cmp211, label %for.body.cleanup239_crit_edge, label %if.end214

for.body.cleanup239_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup239

if.end214:                                        ; preds = %for.body
  %add216 = add i64 %pos.0418, %conv215
  %inc = add nuw nsw i32 %i.0417, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %if.end214.cleanup219_crit_edge, label %if.end214.for.body_crit_edge

if.end214.for.body_crit_edge:                     ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end214.cleanup219_crit_edge:                   ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup219

cleanup219:                                       ; preds = %if.end214.cleanup219_crit_edge, %for.cond.preheader.cleanup219_crit_edge
  %ret.2.lcssa = phi i32 [ %ret.1421, %for.cond.preheader.cleanup219_crit_edge ], [ %call210, %if.end214.cleanup219_crit_edge ]
  %add217 = add i64 %offset.addr.2423, %conv
  %sub218 = sub i64 %length.addr.2422, %conv
  %cmp205.not = icmp ult i64 %sub218, %conv
  br i1 %cmp205.not, label %cleanup219.while.cond224.preheader_crit_edge, label %cleanup219.for.cond.preheader_crit_edge

cleanup219.for.cond.preheader_crit_edge:          ; preds = %cleanup219
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader

cleanup219.while.cond224.preheader_crit_edge:     ; preds = %cleanup219
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond224.preheader

while.body226:                                    ; preds = %cleanup235.while.body226_crit_edge, %while.cond224.preheader.while.body226_crit_edge
  %offset.addr.4430 = phi i64 [ %add233, %cleanup235.while.body226_crit_edge ], [ %offset.addr.2.lcssa, %while.cond224.preheader.while.body226_crit_edge ]
  %length.addr.4429 = phi i64 [ %sub234, %cleanup235.while.body226_crit_edge ], [ %length.addr.2.lcssa, %while.cond224.preheader.while.body226_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size227) #12
  %10 = ptrtoint ptr %size227 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %length.addr.4429, ptr %size227, align 8
  %call228 = call fastcc i32 @ceph_zero_partial_object(ptr noundef %inode, i64 noundef %offset.addr.4430, ptr noundef nonnull %size227)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %cmp229 = icmp slt i32 %call228, 0
  br i1 %cmp229, label %cleanup235.thread, label %cleanup235

cleanup235.thread:                                ; preds = %while.body226
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size227) #12
  br label %cleanup239

cleanup235:                                       ; preds = %while.body226
  %11 = ptrtoint ptr %size227 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size227, align 8
  %add233 = add i64 %12, %offset.addr.4430
  %sub234 = sub i64 %length.addr.4429, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size227) #12
  %tobool225.not = icmp eq i64 %sub234, 0
  br i1 %tobool225.not, label %cleanup235.cleanup239_crit_edge, label %cleanup235.while.body226_crit_edge

cleanup235.while.body226_crit_edge:               ; preds = %cleanup235
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body226

cleanup235.cleanup239_crit_edge:                  ; preds = %cleanup235
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup239

cleanup239:                                       ; preds = %cleanup235.cleanup239_crit_edge, %cleanup235.thread, %for.body.cleanup239_crit_edge, %while.cond224.preheader.cleanup239_crit_edge, %cleanup.thread
  %retval.6 = phi i32 [ %call197, %cleanup.thread ], [ %call228, %cleanup235.thread ], [ %ret.1.lcssa, %while.cond224.preheader.cleanup239_crit_edge ], [ %call228, %cleanup235.cleanup239_crit_edge ], [ %call210, %for.body.cleanup239_crit_edge ]
  ret i32 %retval.6
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ceph_zero_partial_page(ptr nocapture noundef readonly %inode, i64 noundef %offset, i32 noundef %size) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = lshr i64 %offset, 12
  %conv = trunc i64 %0 to i32
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %1 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %2, i32 noundef %conv, i32 noundef 2, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @wait_on_page_writeback(ptr noundef nonnull %call.i) #12
  %3 = trunc i64 %offset to i32
  %conv1 = and i32 %3, 4095
  %add.i = add i32 %conv1, %size
  tail call void @zero_user_segments(ptr noundef nonnull %call.i, i32 noundef %conv1, i32 noundef %add.i, i32 noundef 0, i32 noundef 0) #12
  tail call void @unlock_page(ptr noundef nonnull %call.i) #12
  %4 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !306

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !309

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.95) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !340
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !341
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !342
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !343
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ceph_zero_partial_page, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !303

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end_crit_edge

folio_put_testzero.exit.i.i.if.end_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %8) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ceph_zero_partial_object(ptr noundef %inode, i64 noundef %offset, ptr noundef %length) unnamed_addr #0 align 64 {
entry:
  %zero = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %zero) #12
  %4 = ptrtoint ptr %zero to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %zero, align 8
  %tobool.not = icmp eq ptr %length, null
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %offset)
  %tobool2.not = icmp eq i64 %offset, 0
  %cond = select i1 %tobool2.not, i32 8707, i32 8709
  %length.addr.0 = select i1 %tobool.not, ptr %zero, ptr %length
  %op.0 = select i1 %tobool.not, i32 %cond, i32 8708
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 8
  %osdc = getelementptr inbounds %struct.ceph_client, ptr %6, i32 0, i32 12
  %i_layout = getelementptr i8, ptr %inode, i32 -824
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %agg.tmp.sroa.0.0.copyload = load i64, ptr %add.ptr.i, align 8
  %agg.tmp.sroa.2.0.add.ptr.i.i.sroa_idx = getelementptr i8, ptr %inode, i32 -944
  %8 = ptrtoint ptr %agg.tmp.sroa.2.0.add.ptr.i.i.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %8)
  %agg.tmp.sroa.2.0.copyload = load i64, ptr %agg.tmp.sroa.2.0.add.ptr.i.i.sroa_idx, align 8
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %agg.tmp.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %agg.tmp.sroa.2.0.copyload, 1
  %call3 = call ptr @ceph_osdc_new_request(ptr noundef %osdc, ptr noundef %i_layout, [2 x i64] %.fca.1.insert, i64 noundef %offset, ptr noundef nonnull %length.addr.0, i32 noundef 0, i32 noundef 1, i32 noundef %op.0, i32 noundef 32, ptr noundef null, i32 noundef 0, i64 noundef 0, i1 noundef zeroext false) #12
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %call3 to i32
  br label %out

if.end7:                                          ; preds = %entry
  %r_mtime = getelementptr inbounds %struct.ceph_osd_request, ptr %call3, i32 0, i32 21
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %10 = call ptr @memcpy(ptr %r_mtime, ptr %i_mtime, i32 16)
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client, align 8
  %osdc9 = getelementptr inbounds %struct.ceph_client, ptr %12, i32 0, i32 12
  %call10 = call i32 @ceph_osdc_start_request(ptr noundef %osdc9, ptr noundef %call3, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end7.if.end18_crit_edge

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client, align 8
  %osdc14 = getelementptr inbounds %struct.ceph_client, ptr %14, i32 0, i32 12
  %call15 = call i32 @ceph_osdc_wait_request(ptr noundef %osdc14, ptr noundef %call3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call15)
  %cmp = icmp eq i32 %call15, -2
  %spec.store.select = select i1 %cmp, i32 0, i32 %call15
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end7.if.end18_crit_edge
  %ret.0 = phi i32 [ %call10, %if.end7.if.end18_crit_edge ], [ %spec.store.select, %if.then12 ]
  call void @ceph_osdc_put_request(ptr noundef %call3) #12
  br label %out

out:                                              ; preds = %if.end18, %if.then5
  %ret.1 = phi i32 [ %9, %if.then5 ], [ %ret.0, %if.end18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %zero) #12
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ceph_copy_file_range(ptr noundef %src_file, i64 noundef %src_off, ptr noundef %dst_file, i64 noundef %dst_off, i32 noundef %len, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %src_off.addr = alloca i64, align 8
  %dst_off.addr = alloca i64, align 8
  %prealloc_cf = alloca ptr, align 4
  %src_objnum = alloca i64, align 8
  %dst_objnum = alloca i64, align 8
  %src_objoff = alloca i64, align 8
  %dst_objoff = alloca i64, align 8
  %src_objlen = alloca i32, align 4
  %dst_objlen = alloca i32, align 4
  %src_got = alloca i32, align 4
  %dst_got = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src_off.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %src_off, ptr %src_off.addr, align 8
  %1 = ptrtoint ptr %dst_off.addr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %dst_off, ptr %dst_off.addr, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %src_file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %f_inode.i482 = getelementptr inbounds %struct.file, ptr %dst_file, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i482 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i482, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -952
  %add.ptr.i483 = getelementptr i8, ptr %5, i32 -952
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prealloc_cf) #12
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src_objnum) #12
  %10 = ptrtoint ptr %src_objnum to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %src_objnum, align 8, !annotation !319
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dst_objnum) #12
  %11 = ptrtoint ptr %dst_objnum to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %dst_objnum, align 8, !annotation !319
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src_objoff) #12
  %12 = ptrtoint ptr %src_objoff to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %src_objoff, align 8, !annotation !319
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dst_objoff) #12
  %13 = ptrtoint ptr %dst_objoff to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %dst_objoff, align 8, !annotation !319
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src_objlen) #12
  %14 = ptrtoint ptr %src_objlen to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %src_objlen, align 4, !annotation !319
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst_objlen) #12
  %15 = ptrtoint ptr %dst_objlen to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %dst_objlen, align 4, !annotation !319
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src_got) #12
  %16 = ptrtoint ptr %src_got to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %src_got, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst_got) #12
  %17 = ptrtoint ptr %dst_got to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %dst_got, align 4
  %i_sb5 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb5, align 4
  %cmp.not = icmp eq ptr %7, %19
  br i1 %cmp.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then:                                          ; preds = %entry
  %s_fs_info.i485 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i485 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i485, align 16
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %9, i32 0, i32 3
  %22 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client, align 8
  %client7 = getelementptr inbounds %struct.ceph_fs_client, ptr %21, i32 0, i32 3
  %24 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client7, align 8
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %23, ptr noundef dereferenceable(16) %25, i32 16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then.if.end22_crit_edge, label %do.body

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_copy_file_range.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_copy_file_range, %if.then15)) #12
          to label %cleanup336 [label %if.then15], !srcloc !303

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client, align 8
  %28 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client7, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_copy_file_range.__UNIQUE_ID_ddebug404, ptr noundef nonnull @.str.125, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2390, ptr noundef %27, ptr noundef %29) #12
  br label %cleanup336

if.end22:                                         ; preds = %if.then.if.end22_crit_edge, %entry.if.end22_crit_edge
  %snap.i = getelementptr i8, ptr %5, i32 -944
  %30 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %31)
  %cmp24.not = icmp eq i64 %31, -2
  br i1 %cmp24.not, label %if.end26, label %if.end22.cleanup336_crit_edge

if.end22.cleanup336_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup336

if.end26:                                         ; preds = %if.end22
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %9, i32 0, i32 2
  %32 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mount_options, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %and = and i32 %35, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup336_crit_edge

if.end26.cleanup336_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup336

if.end30:                                         ; preds = %if.end26
  %have_copy_from2 = getelementptr inbounds %struct.ceph_fs_client, ptr %9, i32 0, i32 6
  %36 = ptrtoint ptr %have_copy_from2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %have_copy_from2, align 1, !range !315
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool31.not = icmp eq i8 %37, 0
  br i1 %tobool31.not, label %if.end30.cleanup336_crit_edge, label %if.end33

if.end30.cleanup336_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup336

if.end33:                                         ; preds = %if.end30
  %i_layout = getelementptr i8, ptr %3, i32 -824
  %38 = ptrtoint ptr %i_layout to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_layout, align 8
  %i_layout34 = getelementptr i8, ptr %5, i32 -824
  %40 = ptrtoint ptr %i_layout34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_layout34, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp36.not = icmp eq i32 %39, %41
  br i1 %cmp36.not, label %lor.lhs.false, label %if.end33.do.body49_crit_edge

if.end33.do.body49_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body49

lor.lhs.false:                                    ; preds = %if.end33
  %stripe_count = getelementptr i8, ptr %3, i32 -820
  %42 = ptrtoint ptr %stripe_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %stripe_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp38.not = icmp eq i32 %43, 1
  br i1 %cmp38.not, label %lor.lhs.false39, label %lor.lhs.false.do.body49_crit_edge

lor.lhs.false.do.body49_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body49

lor.lhs.false39:                                  ; preds = %lor.lhs.false
  %stripe_count41 = getelementptr i8, ptr %5, i32 -820
  %44 = ptrtoint ptr %stripe_count41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %stripe_count41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp42.not = icmp eq i32 %45, 1
  br i1 %cmp42.not, label %lor.lhs.false43, label %lor.lhs.false39.do.body49_crit_edge

lor.lhs.false39.do.body49_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body49

lor.lhs.false43:                                  ; preds = %lor.lhs.false39
  %object_size = getelementptr i8, ptr %3, i32 -816
  %46 = ptrtoint ptr %object_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %object_size, align 8
  %object_size46 = getelementptr i8, ptr %5, i32 -816
  %48 = ptrtoint ptr %object_size46 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %object_size46, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp47.not = icmp eq i32 %47, %49
  br i1 %cmp47.not, label %if.end66, label %lor.lhs.false43.do.body49_crit_edge

lor.lhs.false43.do.body49_crit_edge:              ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body49

do.body49:                                        ; preds = %lor.lhs.false43.do.body49_crit_edge, %lor.lhs.false39.do.body49_crit_edge, %lor.lhs.false.do.body49_crit_edge, %if.end33.do.body49_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_copy_file_range.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_copy_file_range, %if.then61)) #12
          to label %cleanup336 [label %if.then61], !srcloc !303

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_copy_file_range.__UNIQUE_ID_ddebug405, ptr noundef nonnull @.str.127, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2420) #12
  br label %cleanup336

if.end66:                                         ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %len)
  %cmp69 = icmp ugt i32 %47, %len
  br i1 %cmp69, label %if.end66.cleanup336_crit_edge, label %if.end71

if.end66.cleanup336_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup336

if.end71:                                         ; preds = %if.end66
  %call72 = tail call ptr @ceph_alloc_cap_flush() #12
  %50 = ptrtoint ptr %prealloc_cf to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call72, ptr %prealloc_cf, align 4
  %tobool73.not = icmp eq ptr %call72, null
  br i1 %tobool73.not, label %if.end71.cleanup336_crit_edge, label %if.end75

if.end71.cleanup336_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup336

if.end75:                                         ; preds = %if.end71
  %51 = ptrtoint ptr %src_off.addr to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %src_off.addr, align 8
  %conv = zext i32 %len to i64
  %add = add i64 %52, %conv
  %call76 = tail call i32 @file_write_and_wait_range(ptr noundef %src_file, i64 noundef %52, i64 noundef %add) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %do.body80, label %if.end97

do.body80:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_copy_file_range.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_copy_file_range, %if.then92)) #12
          to label %out [label %if.then92], !srcloc !303

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_copy_file_range.__UNIQUE_ID_ddebug406, ptr noundef nonnull @.str.129, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2434, i32 noundef %call76) #12
  br label %out

if.end97:                                         ; preds = %if.end75
  %53 = ptrtoint ptr %dst_off.addr to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %dst_off.addr, align 8
  %add99 = add i64 %54, %conv
  %call100 = tail call i32 @file_write_and_wait_range(ptr noundef %dst_file, i64 noundef %54, i64 noundef %add99) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %do.body104, label %if.end121

do.body104:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_copy_file_range.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_copy_file_range, %if.then116)) #12
          to label %out [label %if.then116], !srcloc !303

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_copy_file_range.__UNIQUE_ID_ddebug407, ptr noundef nonnull @.str.131, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2439, i32 noundef %call100) #12
  br label %out

if.end121:                                        ; preds = %if.end97
  %55 = ptrtoint ptr %dst_off.addr to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %dst_off.addr, align 8
  %add123 = add i64 %56, %conv
  %call124 = call fastcc i32 @get_rd_wr_caps(ptr noundef %src_file, ptr noundef nonnull %src_got, ptr noundef %dst_file, i64 noundef %add123, ptr noundef nonnull %dst_got)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp125 = icmp slt i32 %call124, 0
  br i1 %cmp125, label %do.body128, label %if.end145

do.body128:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_copy_file_range.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_copy_file_range, %if.then140)) #12
          to label %out [label %if.then140], !srcloc !303

if.then140:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_copy_file_range.__UNIQUE_ID_ddebug408, ptr noundef nonnull @.str.133, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2451, i32 noundef %call124) #12
  br label %out

if.end145:                                        ; preds = %if.end121
  %57 = ptrtoint ptr %src_off.addr to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %src_off.addr, align 8
  %59 = ptrtoint ptr %dst_off.addr to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %dst_off.addr, align 8
  %call146 = call fastcc i32 @is_file_size_ok(ptr noundef %3, ptr noundef %5, i64 noundef %58, i64 noundef %60, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %cmp147 = icmp slt i32 %call146, 0
  br i1 %cmp147, label %if.end145.out_caps_crit_edge, label %if.end150

if.end145.out_caps_crit_edge:                     ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_caps

if.end150:                                        ; preds = %if.end145
  call void @ceph_fscache_invalidate(ptr noundef %5, i1 noundef zeroext false) #12
  %i_mapping = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %61 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_mapping, align 8
  %63 = ptrtoint ptr %dst_off.addr to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %dst_off.addr, align 8
  %65 = lshr i64 %64, 12
  %conv151 = trunc i64 %65 to i32
  %add153 = add i64 %64, %conv
  %66 = lshr i64 %add153, 12
  %conv155 = trunc i64 %66 to i32
  %call156 = call i32 @invalidate_inode_pages2_range(ptr noundef %62, i32 noundef %conv151, i32 noundef %conv155) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %do.body160, label %if.end150.if.end177_crit_edge

if.end150.if.end177_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end177

do.body160:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_copy_file_range.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_copy_file_range, %if.then172)) #12
          to label %if.end177 [label %if.then172], !srcloc !303

if.then172:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_copy_file_range.__UNIQUE_ID_ddebug409, ptr noundef nonnull @.str.135, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2466, i32 noundef %call156) #12
  br label %if.end177

if.end177:                                        ; preds = %if.then172, %do.body160, %if.end150.if.end177_crit_edge
  %ret.0 = phi i32 [ %call156, %if.end150.if.end177_crit_edge ], [ 0, %if.then172 ], [ 0, %do.body160 ]
  %67 = ptrtoint ptr %src_off.addr to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %src_off.addr, align 8
  %69 = ptrtoint ptr %object_size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %object_size, align 8
  %conv181 = zext i32 %70 to i64
  call void @ceph_calc_file_object_mapping(ptr noundef %i_layout, i64 noundef %68, i64 noundef %conv181, ptr noundef nonnull %src_objnum, ptr noundef nonnull %src_objoff, ptr noundef nonnull %src_objlen) #12
  %71 = ptrtoint ptr %dst_off.addr to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %dst_off.addr, align 8
  %73 = ptrtoint ptr %object_size46 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %object_size46, align 8
  %conv185 = zext i32 %74 to i64
  call void @ceph_calc_file_object_mapping(ptr noundef %i_layout34, i64 noundef %72, i64 noundef %conv185, ptr noundef nonnull %dst_objnum, ptr noundef nonnull %dst_objoff, ptr noundef nonnull %dst_objlen) #12
  %75 = ptrtoint ptr %src_objoff to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %src_objoff, align 8
  %77 = ptrtoint ptr %dst_objoff to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %dst_objoff, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %76, i64 %78)
  %cmp186.not = icmp eq i64 %76, %78
  br i1 %cmp186.not, label %if.end189, label %if.end177.out_caps_crit_edge

if.end177.out_caps_crit_edge:                     ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_caps

if.end189:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %76)
  %tobool190.not = icmp eq i64 %76, 0
  br i1 %tobool190.not, label %if.end189.if.end243_crit_edge, label %do.body192

if.end189.if.end243_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end243

do.body192:                                       ; preds = %if.end189
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_copy_file_range.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_copy_file_range, %if.then204)) #12
          to label %do.end208 [label %if.then204], !srcloc !303

if.then204:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %src_objlen to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %src_objlen, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_copy_file_range.__UNIQUE_ID_ddebug410, ptr noundef nonnull @.str.137, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2487, i32 noundef %80) #12
  br label %do.end208

do.end208:                                        ; preds = %if.then204, %do.body192
  %81 = ptrtoint ptr %src_got to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %src_got, align 4
  %83 = ptrtoint ptr %dst_got to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dst_got, align 4
  call void @ceph_put_cap_refs(ptr noundef %add.ptr.i, i32 noundef %82) #12
  call void @ceph_put_cap_refs(ptr noundef %add.ptr.i483, i32 noundef %84) #12
  %85 = ptrtoint ptr %src_objlen to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %src_objlen, align 4
  %call209 = call i32 @do_splice_direct(ptr noundef %src_file, ptr noundef nonnull %src_off.addr, ptr noundef %dst_file, ptr noundef nonnull %dst_off.addr, i32 noundef %86, i32 noundef %flags) #12
  %87 = ptrtoint ptr %src_objlen to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %src_objlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call209, i32 %88)
  %cmp210 = icmp ult i32 %call209, %88
  br i1 %cmp210, label %do.body213, label %if.end230

do.body213:                                       ; preds = %do.end208
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_copy_file_range.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_copy_file_range, %if.then225)) #12
          to label %out [label %if.then225], !srcloc !303

if.then225:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_copy_file_range.__UNIQUE_ID_ddebug411, ptr noundef nonnull @.str.139, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2498, i32 noundef %call209) #12
  br label %out

if.end230:                                        ; preds = %do.end208
  %sub = sub i32 %len, %call209
  %89 = ptrtoint ptr %dst_off.addr to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %dst_off.addr, align 8
  %conv231 = zext i32 %sub to i64
  %add232 = add i64 %90, %conv231
  %call233 = call fastcc i32 @get_rd_wr_caps(ptr noundef %src_file, ptr noundef nonnull %src_got, ptr noundef %dst_file, i64 noundef %add232, ptr noundef nonnull %dst_got)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %cmp234 = icmp slt i32 %call233, 0
  br i1 %cmp234, label %if.end230.out_crit_edge, label %if.end237

if.end230.out_crit_edge:                          ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end237:                                        ; preds = %if.end230
  %91 = ptrtoint ptr %src_off.addr to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %src_off.addr, align 8
  %93 = ptrtoint ptr %dst_off.addr to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %dst_off.addr, align 8
  %call238 = call fastcc i32 @is_file_size_ok(ptr noundef %3, ptr noundef %5, i64 noundef %92, i64 noundef %94, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %cmp239 = icmp slt i32 %call238, 0
  br i1 %cmp239, label %if.end237.out_caps_crit_edge, label %if.end237.if.end243_crit_edge

if.end237.if.end243_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end243

if.end237.out_caps_crit_edge:                     ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_caps

if.end243:                                        ; preds = %if.end237.if.end243_crit_edge, %if.end189.if.end243_crit_edge
  %ret.1 = phi i32 [ %call209, %if.end237.if.end243_crit_edge ], [ %ret.0, %if.end189.if.end243_crit_edge ]
  %len.addr.0 = phi i32 [ %sub, %if.end237.if.end243_crit_edge ], [ %len, %if.end189.if.end243_crit_edge ]
  %call244 = call fastcc i64 @i_size_read(ptr noundef %5)
  %call245 = call fastcc i32 @ceph_do_objects_copy(ptr noundef %add.ptr.i, ptr noundef nonnull %src_off.addr, ptr noundef %add.ptr.i483, ptr noundef nonnull %dst_off.addr, ptr noundef %9, i32 noundef %len.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call245)
  %cmp246 = icmp slt i32 %call245, 1
  br i1 %cmp246, label %if.then248, label %do.body253

if.then248:                                       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool249.not = icmp eq i32 %ret.1, 0
  %spec.select = select i1 %tobool249.not, i32 %call245, i32 %ret.1
  br label %out_caps

do.body253:                                       ; preds = %if.end243
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_copy_file_range.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_copy_file_range, %if.then265)) #12
          to label %do.end269 [label %if.then265], !srcloc !303

if.then265:                                       ; preds = %do.body253
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_copy_file_range.__UNIQUE_ID_ddebug412, ptr noundef nonnull @.str.141, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2520, i32 noundef %call245, i32 noundef %len.addr.0) #12
  br label %do.end269

do.end269:                                        ; preds = %if.then265, %do.body253
  %sub270 = sub i32 %len.addr.0, %call245
  %add271 = add i32 %call245, %ret.1
  %call272 = call i32 @file_update_time(ptr noundef %dst_file) #12
  call fastcc void @inode_inc_iversion_raw(ptr noundef %5)
  %95 = ptrtoint ptr %dst_off.addr to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %dst_off.addr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %96, i64 %call244)
  %cmp273 = icmp sgt i64 %96, %call244
  br i1 %cmp273, label %if.then275, label %do.end269.if.end283_crit_edge

do.end269.if.end283_crit_edge:                    ; preds = %do.end269
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end283

if.then275:                                       ; preds = %do.end269
  %call276 = call zeroext i1 @ceph_inode_set_size(ptr noundef %5, i64 noundef %96) #12
  br i1 %call276, label %if.then275.if.then281_crit_edge, label %lor.lhs.false278

if.then275.if.then281_crit_edge:                  ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then281

lor.lhs.false278:                                 ; preds = %if.then275
  %97 = ptrtoint ptr %dst_off.addr to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %dst_off.addr, align 8
  %call279 = call zeroext i1 @ceph_quota_is_max_bytes_approaching(ptr noundef %5, i64 noundef %98) #12
  br i1 %call279, label %lor.lhs.false278.if.then281_crit_edge, label %lor.lhs.false278.if.end283_crit_edge

lor.lhs.false278.if.end283_crit_edge:             ; preds = %lor.lhs.false278
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end283

lor.lhs.false278.if.then281_crit_edge:            ; preds = %lor.lhs.false278
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then281

if.then281:                                       ; preds = %lor.lhs.false278.if.then281_crit_edge, %if.then275.if.then281_crit_edge
  call void @ceph_check_caps(ptr noundef %add.ptr.i483, i32 noundef 1, ptr noundef null) #12
  br label %if.end283

if.end283:                                        ; preds = %if.then281, %lor.lhs.false278.if.end283_crit_edge, %do.end269.if.end283_crit_edge
  %i_ceph_lock = getelementptr i8, ptr %5, i32 -936
  call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #12
  %i_inline_version = getelementptr i8, ptr %5, i32 -880
  %99 = ptrtoint ptr %i_inline_version to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 -1, ptr %i_inline_version, align 8
  %call284 = call i32 @__ceph_mark_dirty_caps(ptr noundef %add.ptr.i483, i32 noundef 4096, ptr noundef nonnull %prealloc_cf) #12
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call284)
  %tobool286.not = icmp eq i32 %call284, 0
  br i1 %tobool286.not, label %if.end283.out_caps_crit_edge, label %if.then287

if.end283.out_caps_crit_edge:                     ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_caps

if.then287:                                       ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #14
  call void @__mark_inode_dirty(ptr noundef %5, i32 noundef %call284) #12
  br label %out_caps

out_caps:                                         ; preds = %if.then287, %if.end283.out_caps_crit_edge, %if.then248, %if.end237.out_caps_crit_edge, %if.end177.out_caps_crit_edge, %if.end145.out_caps_crit_edge
  %ret.2 = phi i32 [ %call146, %if.end145.out_caps_crit_edge ], [ %call209, %if.end237.out_caps_crit_edge ], [ %add271, %if.then287 ], [ %add271, %if.end283.out_caps_crit_edge ], [ -95, %if.end177.out_caps_crit_edge ], [ %spec.select, %if.then248 ]
  %len.addr.1 = phi i32 [ %len, %if.end145.out_caps_crit_edge ], [ %sub, %if.end237.out_caps_crit_edge ], [ %sub270, %if.then287 ], [ %sub270, %if.end283.out_caps_crit_edge ], [ %len, %if.end177.out_caps_crit_edge ], [ %len.addr.0, %if.then248 ]
  %100 = ptrtoint ptr %src_got to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %src_got, align 4
  %102 = ptrtoint ptr %dst_got to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dst_got, align 4
  call void @ceph_put_cap_refs(ptr noundef %add.ptr.i, i32 noundef %101) #12
  call void @ceph_put_cap_refs(ptr noundef %add.ptr.i483, i32 noundef %103) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1)
  %tobool289.not = icmp eq i32 %len.addr.1, 0
  br i1 %tobool289.not, label %out_caps.out_crit_edge, label %land.lhs.true

out_caps.out_crit_edge:                           ; preds = %out_caps
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true:                                    ; preds = %out_caps
  %104 = ptrtoint ptr %object_size to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %object_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.1, i32 %105)
  %cmp292 = icmp ult i32 %len.addr.1, %105
  br i1 %cmp292, label %do.body295, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body295:                                       ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_copy_file_range.__UNIQUE_ID_ddebug413, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_copy_file_range, %if.then307)) #12
          to label %do.end311 [label %if.then307], !srcloc !303

if.then307:                                       ; preds = %do.body295
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_copy_file_range.__UNIQUE_ID_ddebug413, ptr noundef nonnull @.str.143, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2549, i32 noundef %len.addr.1) #12
  br label %do.end311

do.end311:                                        ; preds = %if.then307, %do.body295
  %call312 = call i32 @do_splice_direct(ptr noundef %src_file, ptr noundef nonnull %src_off.addr, ptr noundef %dst_file, ptr noundef nonnull %dst_off.addr, i32 noundef %len.addr.1, i32 noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call312)
  %cmp313 = icmp sgt i32 %call312, 0
  br i1 %cmp313, label %if.then315, label %do.body317

if.then315:                                       ; preds = %do.end311
  call void @__sanitizer_cov_trace_pc() #14
  %add316 = add i32 %call312, %ret.2
  br label %out

do.body317:                                       ; preds = %do.end311
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_copy_file_range.__UNIQUE_ID_ddebug414, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_copy_file_range, %if.then329)) #12
          to label %out [label %if.then329], !srcloc !303

if.then329:                                       ; preds = %do.body317
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_copy_file_range.__UNIQUE_ID_ddebug414, ptr noundef nonnull @.str.139, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2555, i32 noundef %call312) #12
  br label %out

out:                                              ; preds = %if.then329, %do.body317, %if.then315, %land.lhs.true.out_crit_edge, %out_caps.out_crit_edge, %if.end230.out_crit_edge, %if.then225, %do.body213, %if.then140, %do.body128, %if.then116, %do.body104, %if.then92, %do.body80
  %ret.3 = phi i32 [ %call76, %if.then92 ], [ %call100, %if.then116 ], [ %add316, %if.then315 ], [ %ret.2, %if.then329 ], [ %ret.2, %land.lhs.true.out_crit_edge ], [ %ret.2, %out_caps.out_crit_edge ], [ %call209, %if.then225 ], [ %call209, %if.end230.out_crit_edge ], [ -95, %if.then140 ], [ %call76, %do.body80 ], [ %call100, %do.body104 ], [ -95, %do.body128 ], [ %call209, %do.body213 ], [ %ret.2, %do.body317 ]
  %106 = ptrtoint ptr %prealloc_cf to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prealloc_cf, align 4
  call void @ceph_free_cap_flush(ptr noundef %107) #12
  br label %cleanup336

cleanup336:                                       ; preds = %out, %if.end71.cleanup336_crit_edge, %if.end66.cleanup336_crit_edge, %if.then61, %do.body49, %if.end30.cleanup336_crit_edge, %if.end26.cleanup336_crit_edge, %if.end22.cleanup336_crit_edge, %if.then15, %do.body
  %retval.1 = phi i32 [ %ret.3, %out ], [ -18, %if.then15 ], [ -30, %if.end22.cleanup336_crit_edge ], [ -95, %if.end26.cleanup336_crit_edge ], [ -95, %if.end30.cleanup336_crit_edge ], [ -95, %if.then61 ], [ -95, %if.end66.cleanup336_crit_edge ], [ -12, %if.end71.cleanup336_crit_edge ], [ -18, %do.body ], [ -95, %do.body49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst_got) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src_got) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst_objlen) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src_objlen) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dst_objoff) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_objoff) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dst_objnum) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_objnum) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prealloc_cf) #12
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_copy_file_range(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_rd_wr_caps(ptr noundef %src_filp, ptr noundef %src_got, ptr noundef %dst_filp, i64 noundef %dst_endoff, ptr noundef %dst_got) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call36 = tail call i32 @ceph_get_caps(ptr noundef %dst_filp, i32 noundef 4096, i32 noundef 8192, i64 noundef %dst_endoff, ptr noundef %dst_got) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %entry.cleanup_crit_edge, label %if.end.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %f_inode.i = getelementptr inbounds %struct.file, ptr %src_filp, i32 0, i32 2
  %f_inode.i33 = getelementptr inbounds %struct.file, ptr %dst_filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %call2 = tail call i32 @ceph_try_get_caps(ptr noundef %1, i32 noundef 2048, i32 noundef 256, i1 noundef zeroext false, ptr noundef %src_got) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %if.then4, label %if.end.lr.ph.cleanup_crit_edge

if.end.lr.ph.cleanup_crit_edge:                   ; preds = %if.end.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %if.end.lr.ph
  %2 = ptrtoint ptr %f_inode.i33 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i33, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -952
  %4 = ptrtoint ptr %dst_got to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst_got, align 4
  tail call void @ceph_put_cap_refs(ptr noundef %add.ptr.i, i32 noundef %5) #12
  %call12 = tail call i32 @ceph_get_caps(ptr noundef %src_filp, i32 noundef 2048, i32 noundef 256, i64 noundef -1, ptr noundef %src_got) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then4.cleanup_crit_edge, label %if.end15

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %f_inode.i33 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i33, align 8
  %add.ptr.i.1 = getelementptr i8, ptr %7, i32 -952
  %8 = ptrtoint ptr %dst_got to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dst_got, align 4
  tail call void @ceph_put_cap_refs(ptr noundef %add.ptr.i.1, i32 noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %tobool8.not = icmp eq i32 %call2.1, 0
  %spec.store.select = select i1 %tobool8.not, i32 -11, i32 %call2.1
  br label %cleanup

if.end15:                                         ; preds = %if.then4
  %10 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i35 = getelementptr i8, ptr %11, i32 -952
  %12 = ptrtoint ptr %src_got to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %src_got, align 4
  tail call void @ceph_put_cap_refs(ptr noundef %add.ptr.i35, i32 noundef %13) #12
  %call = tail call i32 @ceph_get_caps(ptr noundef %dst_filp, i32 noundef 4096, i32 noundef 8192, i64 noundef %dst_endoff, ptr noundef %dst_got) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end15.cleanup_crit_edge, label %if.end.1

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.1:                                         ; preds = %if.end15
  %14 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f_inode.i, align 8
  %call2.1 = tail call i32 @ceph_try_get_caps(ptr noundef %15, i32 noundef 2048, i32 noundef 256, i1 noundef zeroext false, ptr noundef %src_got) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.1)
  %cmp3.1 = icmp slt i32 %call2.1, 1
  br i1 %cmp3.1, label %if.then7, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.1.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then7, %if.then4.cleanup_crit_edge, %if.end.lr.ph.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.then7 ], [ %call36, %entry.cleanup_crit_edge ], [ %call2, %if.end.lr.ph.cleanup_crit_edge ], [ %call12, %if.then4.cleanup_crit_edge ], [ %call, %if.end15.cleanup_crit_edge ], [ %call2.1, %if.end.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @is_file_size_ok(ptr noundef %src_inode, ptr noundef %dst_inode, i64 noundef %src_off, i64 noundef %dst_off, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i64 @i_size_read(ptr noundef %src_inode)
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %src_off
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call)
  %cmp = icmp sgt i64 %add, %call
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_file_size_ok.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_file_size_ok, %if.then5)) #12
          to label %cleanup [label %if.then5], !srcloc !303

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_file_size_ok.__UNIQUE_ID_ddebug398, ptr noundef nonnull @.str.146, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2232, i64 noundef %src_off, i32 noundef %len, i64 noundef %call) #12
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call8 = tail call fastcc i64 @i_size_read(ptr noundef %dst_inode)
  %add10 = add i64 %conv, %dst_off
  %call11 = tail call i32 @inode_newsize_ok(ptr noundef %dst_inode, i64 noundef %add10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = tail call zeroext i1 @ceph_quota_is_max_bytes_exceeded(ptr noundef %dst_inode, i64 noundef %add10) #12
  %. = select i1 %call15, i32 -122, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end7.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ -95, %if.then5 ], [ -95, %if.end7.cleanup_crit_edge ], [ %., %if.end14 ], [ -95, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_calc_file_object_mapping(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_splice_direct(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ceph_do_objects_copy(ptr noundef %src_ci, ptr nocapture noundef %src_off, ptr noundef %dst_ci, ptr nocapture noundef %dst_off, ptr nocapture noundef %fsc, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i23 = alloca i32, align 4
  %old.i.i.i.i = alloca i32, align 4
  %src_oloc = alloca %struct.ceph_object_locator, align 8
  %dst_oloc = alloca %struct.ceph_object_locator, align 8
  %src_oid = alloca %struct.ceph_object_id, align 4
  %dst_oid = alloca %struct.ceph_object_id, align 4
  %src_objnum = alloca i64, align 8
  %src_objoff = alloca i64, align 8
  %dst_objnum = alloca i64, align 8
  %dst_objoff = alloca i64, align 8
  %src_objlen = alloca i32, align 4
  %dst_objlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %src_oloc) #12
  %0 = getelementptr inbounds i8, ptr %src_oloc, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dst_oloc) #12
  %2 = call ptr @memset(ptr %dst_oloc, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %src_oid) #12
  %3 = call ptr @memset(ptr %src_oid, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %dst_oid) #12
  %4 = call ptr @memset(ptr %dst_oid, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src_objnum) #12
  %5 = ptrtoint ptr %src_objnum to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %src_objnum, align 8, !annotation !319
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src_objoff) #12
  %6 = ptrtoint ptr %src_objoff to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %src_objoff, align 8, !annotation !319
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dst_objnum) #12
  %7 = ptrtoint ptr %dst_objnum to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %dst_objnum, align 8, !annotation !319
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dst_objoff) #12
  %8 = ptrtoint ptr %dst_objoff to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %dst_objoff, align 8, !annotation !319
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src_objlen) #12
  %9 = ptrtoint ptr %src_objlen to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %src_objlen, align 4, !annotation !319
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst_objlen) #12
  %10 = ptrtoint ptr %dst_objlen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %dst_objlen, align 4, !annotation !319
  %i_layout = getelementptr inbounds %struct.ceph_inode_info, ptr %src_ci, i32 0, i32 10
  %object_size1 = getelementptr inbounds %struct.ceph_inode_info, ptr %src_ci, i32 0, i32 10, i32 2
  %11 = ptrtoint ptr %object_size1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %object_size1, align 8
  %pool_id = getelementptr inbounds %struct.ceph_inode_info, ptr %src_ci, i32 0, i32 10, i32 3
  %13 = ptrtoint ptr %pool_id to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %pool_id, align 8
  %15 = ptrtoint ptr %src_oloc to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %src_oloc, align 8
  %16 = tail call i32 @llvm.read_register.i32(metadata !293) #12
  %and.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !311
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 696, ptr noundef nonnull @.str.51) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %pool_ns = getelementptr inbounds %struct.ceph_inode_info, ptr %src_ci, i32 0, i32 10, i32 4
  br label %for.cond

for.cond:                                         ; preds = %kref_get_unless_zero.exit.for.cond_crit_edge, %rcu_read_lock.exit
  %20 = ptrtoint ptr %pool_ns to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %pool_ns, align 8
  %call = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.cond.do.end10_crit_edge

for.cond.do.end10_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true:                                    ; preds = %for.cond
  %call5 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b2 = load i1, ptr @ceph_do_objects_copy.__warned, align 1
  br i1 %.b2, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ceph_do_objects_copy.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2311, ptr noundef nonnull @.str.49) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %for.cond.do.end10_crit_edge
  %tobool12.not = icmp eq ptr %21, null
  br i1 %tobool12.not, label %do.end10.for.end_crit_edge, label %lor.lhs.false

do.end10.for.end_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

lor.lhs.false:                                    ; preds = %do.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %21, i32 noundef 4) #12
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %lor.lhs.false
  %24 = phi i32 [ %23, %lor.lhs.false ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %25 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %24, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %21, i32 noundef 4) #12
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #12
  %26 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %21, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %28 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %21, ptr nonnull %21, i32 %27, i32 %add.i.i.i.i, ptr nonnull elementtype(i32) %21) #12, !srcloc !312
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %28, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %28, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %27
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !306

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %29 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %30, 1
  %31 = or i32 %add5.i.i.i.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %.not.i.i.i.i = icmp sgt i32 %31, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !306

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %21, i32 noundef 0) #12
  %32 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %33 = phi i32 [ %30, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  %tobool12.i.i.i.i.not = icmp eq i32 %33, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.cond_crit_edge, label %kref_get_unless_zero.exit.for.end_crit_edge

kref_get_unless_zero.exit.for.end_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

kref_get_unless_zero.exit.for.cond_crit_edge:     ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %kref_get_unless_zero.exit.for.end_crit_edge, %do.end10.for.end_crit_edge
  %call.i14 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i14, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i17

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i17:                                ; preds = %for.end
  %call1.i15 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 724, ptr noundef nonnull @.str.52) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !313
  %34 = call i32 @llvm.read_register.i32(metadata !293) #12
  %and.i.i.i.i.i21 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i21 to ptr
  %preempt_count.i.i.i.i22 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i22, align 4
  %sub.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i22, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %pool_ns18 = getelementptr inbounds %struct.ceph_object_locator, ptr %src_oloc, i32 0, i32 1
  %38 = ptrtoint ptr %pool_ns18 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %21, ptr %pool_ns18, align 8
  %i_layout19 = getelementptr inbounds %struct.ceph_inode_info, ptr %dst_ci, i32 0, i32 10
  %pool_id20 = getelementptr inbounds %struct.ceph_inode_info, ptr %dst_ci, i32 0, i32 10, i32 3
  %39 = ptrtoint ptr %pool_id20 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %pool_id20, align 8
  %41 = ptrtoint ptr %dst_oloc to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %dst_oloc, align 8
  %42 = call i32 @llvm.read_register.i32(metadata !293) #12
  %and.i.i.i.i.i3 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i3 to ptr
  %preempt_count.i.i.i.i4 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i4, align 4
  %add.i.i.i5 = add i32 %45, 1
  store volatile i32 %add.i.i.i5, ptr %preempt_count.i.i.i.i4, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !311
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i6 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i6, label %rcu_read_unlock.exit.rcu_read_lock.exit13_crit_edge, label %land.lhs.true.i9

rcu_read_unlock.exit.rcu_read_lock.exit13_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit13

land.lhs.true.i9:                                 ; preds = %rcu_read_unlock.exit
  %call1.i7 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9.rcu_read_lock.exit13_crit_edge, label %land.lhs.true2.i11

land.lhs.true.i9.rcu_read_lock.exit13_crit_edge:  ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit13

land.lhs.true2.i11:                               ; preds = %land.lhs.true.i9
  %.b4.i10 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i10, label %land.lhs.true2.i11.rcu_read_lock.exit13_crit_edge, label %if.then.i12

land.lhs.true2.i11.rcu_read_lock.exit13_crit_edge: ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit13

if.then.i12:                                      ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 696, ptr noundef nonnull @.str.51) #12
  br label %rcu_read_lock.exit13

rcu_read_lock.exit13:                             ; preds = %if.then.i12, %land.lhs.true2.i11.rcu_read_lock.exit13_crit_edge, %land.lhs.true.i9.rcu_read_lock.exit13_crit_edge, %rcu_read_unlock.exit.rcu_read_lock.exit13_crit_edge
  %pool_ns29 = getelementptr inbounds %struct.ceph_inode_info, ptr %dst_ci, i32 0, i32 10, i32 4
  br label %for.cond23

for.cond23:                                       ; preds = %kref_get_unless_zero.exit43.for.cond23_crit_edge, %rcu_read_lock.exit13
  %46 = ptrtoint ptr %pool_ns29 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %pool_ns29, align 8
  %call31 = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true33, label %for.cond23.do.end41_crit_edge

for.cond23.do.end41_crit_edge:                    ; preds = %for.cond23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end41

land.lhs.true33:                                  ; preds = %for.cond23
  %call34 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true33.do.end41_crit_edge, label %land.lhs.true36

land.lhs.true33.do.end41_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end41

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %.b1391 = load i1, ptr @ceph_do_objects_copy.__warned.147, align 1
  br i1 %.b1391, label %land.lhs.true36.do.end41_crit_edge, label %if.then38

land.lhs.true36.do.end41_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end41

if.then38:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ceph_do_objects_copy.__warned.147, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2313, ptr noundef nonnull @.str.49) #12
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %land.lhs.true36.do.end41_crit_edge, %land.lhs.true33.do.end41_crit_edge, %for.cond23.do.end41_crit_edge
  %tobool43.not = icmp eq ptr %47, null
  br i1 %tobool43.not, label %do.end41.for.end50_crit_edge, label %lor.lhs.false44

do.end41.for.end50_crit_edge:                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end50

lor.lhs.false44:                                  ; preds = %do.end41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i23) #12
  %call.i.i.i.i.i.i.i24 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %47, i32 noundef 4) #12
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  br label %do.body.i.i.i.i26

do.body.i.i.i.i26:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i36.do.body.i.i.i.i26_crit_edge, %lor.lhs.false44
  %50 = phi i32 [ %49, %lor.lhs.false44 ], [ %asmresult3.i.i.i.i.i.i.i34, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i36.do.body.i.i.i.i26_crit_edge ]
  %51 = ptrtoint ptr %old.i.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %old.i.i.i.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i.i.i25 = icmp eq i32 %50, 0
  br i1 %tobool.not.i.i.i.i25, label %do.body.i.i.i.i26.if.end4.i.i.i.i39_crit_edge, label %do.cond.i.i.i.i30

do.body.i.i.i.i26.if.end4.i.i.i.i39_crit_edge:    ; preds = %do.body.i.i.i.i26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i39

do.cond.i.i.i.i30:                                ; preds = %do.body.i.i.i.i26
  %add.i.i.i.i27 = add i32 %50, 1
  %call.i.i.i.i.i.i28 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %47, i32 noundef 4) #12
  %call.i3.i.i.i.i.i29 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i23, i32 noundef 4) #12
  %52 = ptrtoint ptr %old.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %old.i.i.i.i23, align 4
  call void @llvm.prefetch.p0(ptr nonnull %47, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i33

do.body.i.i.i.i.i.i.i33:                          ; preds = %do.body.i.i.i.i.i.i.i33.do.body.i.i.i.i.i.i.i33_crit_edge, %do.cond.i.i.i.i30
  %54 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %47, ptr nonnull %47, i32 %53, i32 %add.i.i.i.i27, ptr nonnull elementtype(i32) %47) #12, !srcloc !312
  %asmresult.i.i.i.i.i.i.i31 = extractvalue { i32, i32 } %54, 0
  %tobool.not.i.i.i.i.i.i.i32 = icmp eq i32 %asmresult.i.i.i.i.i.i.i31, 0
  br i1 %tobool.not.i.i.i.i.i.i.i32, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i36, label %do.body.i.i.i.i.i.i.i33.do.body.i.i.i.i.i.i.i33_crit_edge

do.body.i.i.i.i.i.i.i33.do.body.i.i.i.i.i.i.i33_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i33

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i36:   ; preds = %do.body.i.i.i.i.i.i.i33
  %asmresult3.i.i.i.i.i.i.i34 = extractvalue { i32, i32 } %54, 1
  %cmp.not.i.i.i.i.i.i35 = icmp eq i32 %asmresult3.i.i.i.i.i.i.i34, %53
  br i1 %cmp.not.i.i.i.i.i.i35, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i36.if.end4.i.i.i.i39_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i36.do.body.i.i.i.i26_crit_edge, !prof !306

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i36.do.body.i.i.i.i26_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i26

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i36.if.end4.i.i.i.i39_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i39

if.end4.i.i.i.i39:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i36.if.end4.i.i.i.i39_crit_edge, %do.body.i.i.i.i26.if.end4.i.i.i.i39_crit_edge
  %55 = ptrtoint ptr %old.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %old.i.i.i.i23, align 4
  %add5.i.i.i.i37 = add i32 %56, 1
  %57 = or i32 %add5.i.i.i.i37, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %.not.i.i.i.i38 = icmp sgt i32 %57, -1
  br i1 %.not.i.i.i.i38, label %if.end4.i.i.i.i39.kref_get_unless_zero.exit43_crit_edge, label %if.then10.i.i.i.i40, !prof !306

if.end4.i.i.i.i39.kref_get_unless_zero.exit43_crit_edge: ; preds = %if.end4.i.i.i.i39
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get_unless_zero.exit43

if.then10.i.i.i.i40:                              ; preds = %if.end4.i.i.i.i39
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %47, i32 noundef 0) #12
  %58 = ptrtoint ptr %old.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr83 = load i32, ptr %old.i.i.i.i23, align 4
  br label %kref_get_unless_zero.exit43

kref_get_unless_zero.exit43:                      ; preds = %if.then10.i.i.i.i40, %if.end4.i.i.i.i39.kref_get_unless_zero.exit43_crit_edge
  %59 = phi i32 [ %56, %if.end4.i.i.i.i39.kref_get_unless_zero.exit43_crit_edge ], [ %.pr83, %if.then10.i.i.i.i40 ]
  %tobool12.i.i.i.i41.not = icmp eq i32 %59, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i23) #12
  br i1 %tobool12.i.i.i.i41.not, label %kref_get_unless_zero.exit43.for.cond23_crit_edge, label %kref_get_unless_zero.exit43.for.end50_crit_edge

kref_get_unless_zero.exit43.for.end50_crit_edge:  ; preds = %kref_get_unless_zero.exit43
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end50

kref_get_unless_zero.exit43.for.cond23_crit_edge: ; preds = %kref_get_unless_zero.exit43
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond23

for.end50:                                        ; preds = %kref_get_unless_zero.exit43.for.end50_crit_edge, %do.end41.for.end50_crit_edge
  %call.i44 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i44, label %for.end50.rcu_read_unlock.exit54_crit_edge, label %land.lhs.true.i47

for.end50.rcu_read_unlock.exit54_crit_edge:       ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit54

land.lhs.true.i47:                                ; preds = %for.end50
  %call1.i45 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %tobool.not.i46 = icmp eq i32 %call1.i45, 0
  br i1 %tobool.not.i46, label %land.lhs.true.i47.rcu_read_unlock.exit54_crit_edge, label %land.lhs.true2.i49

land.lhs.true.i47.rcu_read_unlock.exit54_crit_edge: ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit54

land.lhs.true2.i49:                               ; preds = %land.lhs.true.i47
  %.b4.i48 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i48, label %land.lhs.true2.i49.rcu_read_unlock.exit54_crit_edge, label %if.then.i50

land.lhs.true2.i49.rcu_read_unlock.exit54_crit_edge: ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit54

if.then.i50:                                      ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 724, ptr noundef nonnull @.str.52) #12
  br label %rcu_read_unlock.exit54

rcu_read_unlock.exit54:                           ; preds = %if.then.i50, %land.lhs.true2.i49.rcu_read_unlock.exit54_crit_edge, %land.lhs.true.i47.rcu_read_unlock.exit54_crit_edge, %for.end50.rcu_read_unlock.exit54_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !313
  %60 = call i32 @llvm.read_register.i32(metadata !293) #12
  %and.i.i.i.i.i51 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i51 to ptr
  %preempt_count.i.i.i.i52 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i52, align 4
  %sub.i.i.i53 = add i32 %63, -1
  store volatile i32 %sub.i.i.i53, ptr %preempt_count.i.i.i.i52, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %pool_ns52 = getelementptr inbounds %struct.ceph_object_locator, ptr %dst_oloc, i32 0, i32 1
  %64 = ptrtoint ptr %pool_ns52 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %47, ptr %pool_ns52, align 8
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 3
  %65 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %client, align 8
  %osdc53 = getelementptr inbounds %struct.ceph_client, ptr %66, i32 0, i32 12
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %len)
  %cmp.not71 = icmp ugt i32 %12, %len
  br i1 %cmp.not71, label %rcu_read_unlock.exit54.out_crit_edge, label %while.body.lr.ph

rcu_read_unlock.exit54.out_crit_edge:             ; preds = %rcu_read_unlock.exit54
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

while.body.lr.ph:                                 ; preds = %rcu_read_unlock.exit54
  %conv = zext i32 %12 to i64
  %inline_name.i = getelementptr inbounds %struct.ceph_object_id, ptr %src_oid, i32 0, i32 1
  %inline_name.i55 = getelementptr inbounds %struct.ceph_object_id, ptr %dst_oid, i32 0, i32 1
  %snap = getelementptr inbounds %struct.ceph_vino, ptr %src_ci, i32 0, i32 1
  %i_truncate_seq = getelementptr inbounds %struct.ceph_inode_info, ptr %dst_ci, i32 0, i32 46
  %i_truncate_size = getelementptr inbounds %struct.ceph_inode_info, ptr %dst_ci, i32 0, i32 47
  %mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %if.end92.while.body_crit_edge, %while.body.lr.ph
  %len.addr.073 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %if.end92.while.body_crit_edge ]
  %bytes.072 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %if.end92.while.body_crit_edge ]
  %67 = ptrtoint ptr %src_off to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %src_off, align 8
  call void @ceph_calc_file_object_mapping(ptr noundef %i_layout, i64 noundef %68, i64 noundef %conv, ptr noundef nonnull %src_objnum, ptr noundef nonnull %src_objoff, ptr noundef nonnull %src_objlen) #12
  %69 = ptrtoint ptr %dst_off to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %dst_off, align 8
  call void @ceph_calc_file_object_mapping(ptr noundef %i_layout19, i64 noundef %70, i64 noundef %conv, ptr noundef nonnull %dst_objnum, ptr noundef nonnull %dst_objoff, ptr noundef nonnull %dst_objlen) #12
  %71 = ptrtoint ptr %src_oid to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %inline_name.i, ptr %src_oid, align 4
  %72 = call ptr @memset(ptr %inline_name.i, i32 0, i32 56)
  %73 = ptrtoint ptr %src_ci to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %src_ci, align 8
  %75 = ptrtoint ptr %src_objnum to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %src_objnum, align 8
  call void (ptr, ptr, ...) @ceph_oid_printf(ptr noundef nonnull %src_oid, ptr noundef nonnull @.str.148, i64 noundef %74, i64 noundef %76) #12
  %77 = ptrtoint ptr %dst_oid to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %inline_name.i55, ptr %dst_oid, align 4
  %78 = call ptr @memset(ptr %inline_name.i55, i32 0, i32 56)
  %79 = ptrtoint ptr %dst_ci to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %dst_ci, align 8
  %81 = ptrtoint ptr %dst_objnum to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %dst_objnum, align 8
  call void (ptr, ptr, ...) @ceph_oid_printf(ptr noundef nonnull %dst_oid, ptr noundef nonnull @.str.148, i64 noundef %80, i64 noundef %82) #12
  %83 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %snap, align 8
  %85 = ptrtoint ptr %i_truncate_seq to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %i_truncate_seq, align 8
  %87 = ptrtoint ptr %i_truncate_size to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %i_truncate_size, align 8
  %call.i56 = call ptr @ceph_osdc_alloc_request(ptr noundef %osdc53, ptr noundef null, i32 noundef 1, i1 noundef zeroext false, i32 noundef 3264) #12
  %tobool.not.i57 = icmp eq ptr %call.i56, null
  br i1 %tobool.not.i57, label %while.body.if.then62_crit_edge, label %if.end.i

while.body.if.then62_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then62

if.end.i:                                         ; preds = %while.body
  %r_t.i = getelementptr inbounds %struct.ceph_osd_request, ptr %call.i56, i32 0, i32 5
  %flags.i = getelementptr inbounds %struct.ceph_osd_request, ptr %call.i56, i32 0, i32 5, i32 14
  %89 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 32, ptr %flags.i, align 4
  %base_oloc.i = getelementptr inbounds %struct.ceph_osd_request, ptr %call.i56, i32 0, i32 5, i32 1
  call void @ceph_oloc_copy(ptr noundef %base_oloc.i, ptr noundef nonnull %dst_oloc) #12
  call void @ceph_oid_copy(ptr noundef %r_t.i, ptr noundef nonnull %dst_oid) #12
  %call4.i = call i32 @osd_req_op_copy_from_init(ptr noundef nonnull %call.i56, i64 noundef %84, i64 noundef 0, ptr noundef nonnull %src_oid, ptr noundef nonnull %src_oloc, i32 noundef 72, i32 noundef 40, i32 noundef %86, i64 noundef %88, i8 noundef zeroext 32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = call i32 @ceph_osdc_alloc_messages(ptr noundef nonnull %call.i56, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.ceph_alloc_copyfrom_request.exit_crit_edge, label %if.end7.i.out.i_crit_edge

if.end7.i.out.i_crit_edge:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end7.i.ceph_alloc_copyfrom_request.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceph_alloc_copyfrom_request.exit

out.i:                                            ; preds = %if.end7.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call4.i, %if.end.i.out.i_crit_edge ], [ %call8.i, %if.end7.i.out.i_crit_edge ]
  call void @ceph_osdc_put_request(ptr noundef nonnull %call.i56) #12
  %90 = inttoptr i32 %ret.0.i to ptr
  br label %ceph_alloc_copyfrom_request.exit

ceph_alloc_copyfrom_request.exit:                 ; preds = %out.i, %if.end7.i.ceph_alloc_copyfrom_request.exit_crit_edge
  %retval.0.i58 = phi ptr [ %90, %out.i ], [ %call.i56, %if.end7.i.ceph_alloc_copyfrom_request.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ceph_alloc_copyfrom_request.exit.if.then62_crit_edge, label %if.else

ceph_alloc_copyfrom_request.exit.if.then62_crit_edge: ; preds = %ceph_alloc_copyfrom_request.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then62

if.then62:                                        ; preds = %ceph_alloc_copyfrom_request.exit.if.then62_crit_edge, %while.body.if.then62_crit_edge
  %retval.0.i5861 = phi ptr [ %retval.0.i58, %ceph_alloc_copyfrom_request.exit.if.then62_crit_edge ], [ inttoptr (i32 -12 to ptr), %while.body.if.then62_crit_edge ]
  %91 = ptrtoint ptr %retval.0.i5861 to i32
  br label %if.end66

if.else:                                          ; preds = %ceph_alloc_copyfrom_request.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call64 = call i32 @ceph_osdc_start_request(ptr noundef %osdc53, ptr noundef %retval.0.i58, i1 noundef zeroext false) #12
  %call65 = call i32 @ceph_osdc_wait_request(ptr noundef %osdc53, ptr noundef %retval.0.i58) #12
  %92 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mdsc, align 8
  %r_start_latency = getelementptr inbounds %struct.ceph_osd_request, ptr %retval.0.i58, i32 0, i32 26
  %94 = ptrtoint ptr %r_start_latency to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %r_start_latency, align 8
  %r_end_latency = getelementptr inbounds %struct.ceph_osd_request, ptr %retval.0.i58, i32 0, i32 27
  %96 = ptrtoint ptr %r_end_latency to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %r_end_latency, align 8
  %arrayidx.i = getelementptr %struct.ceph_mds_client, ptr %93, i32 0, i32 49, i32 6, i32 3
  call void @ceph_update_metrics(ptr noundef %arrayidx.i, i64 noundef %95, i64 noundef %97, i32 noundef %12, i32 noundef %call65) #12
  call void @ceph_osdc_put_request(ptr noundef %retval.0.i58) #12
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then62
  %ret.0 = phi i32 [ %91, %if.then62 ], [ %call65, %if.else ]
  %98 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %ret.0, label %if.end66.do.body78_crit_edge [
    i32 0, label %if.end92
    i32 -95, label %if.then71
  ]

if.end66.do.body78_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body78

if.then71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  %have_copy_from2 = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 6
  %99 = ptrtoint ptr %have_copy_from2 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %have_copy_from2, align 1
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149) #15
  br label %do.body78

do.body78:                                        ; preds = %if.then71, %if.end66.do.body78_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_do_objects_copy.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_do_objects_copy, %if.then84)) #12
          to label %do.end88 [label %if.then84], !srcloc !303

if.then84:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_do_objects_copy.__UNIQUE_ID_ddebug403, ptr noundef nonnull @.str.152, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2351, i32 noundef %ret.0) #12
  br label %do.end88

do.end88:                                         ; preds = %if.then84, %do.body78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.072)
  %tobool89.not = icmp eq i32 %bytes.072, 0
  %spec.select = select i1 %tobool89.not, i32 %ret.0, i32 %bytes.072
  br label %out

if.end92:                                         ; preds = %if.end66
  %sub = sub i32 %len.addr.073, %12
  %add = add i32 %bytes.072, %12
  %100 = ptrtoint ptr %src_off to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %src_off, align 8
  %add94 = add i64 %101, %conv
  store i64 %add94, ptr %src_off, align 8
  %102 = ptrtoint ptr %dst_off to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %dst_off, align 8
  %add96 = add i64 %103, %conv
  store i64 %add96, ptr %dst_off, align 8
  %cmp.not = icmp ult i32 %sub, %12
  br i1 %cmp.not, label %if.end92.out_crit_edge, label %if.end92.while.body_crit_edge

if.end92.while.body_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end92.out_crit_edge:                           ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %if.end92.out_crit_edge, %do.end88, %rcu_read_unlock.exit54.out_crit_edge
  %bytes.1 = phi i32 [ %spec.select, %do.end88 ], [ 0, %rcu_read_unlock.exit54.out_crit_edge ], [ %add, %if.end92.out_crit_edge ]
  call void @ceph_oloc_destroy(ptr noundef nonnull %src_oloc) #12
  call void @ceph_oloc_destroy(ptr noundef nonnull %dst_oloc) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst_objlen) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src_objlen) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dst_objoff) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dst_objnum) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_objoff) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_objnum) #12
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %dst_oid) #12
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %src_oid) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dst_oloc) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %src_oloc) #12
  ret i32 %bytes.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_try_get_caps(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_newsize_ok(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_oid_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_oloc_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @osd_req_op_copy_from_init(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !83, !84, !86, !87, !89, !90, !92, !93, !94, !96, !97, !99, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !115, !117, !118, !119, !120, !122, !123, !124, !126, !128, !129, !130, !131, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !175, !176, !177, !178, !180, !182, !183, !184, !185, !186, !187, !189, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !204, !206, !208, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !228, !230, !232, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !275, !276, !277, !278, !280, !282, !284, !286, !287, !288, !289, !291, !292}
!llvm.named.register.sp = !{!293}
!llvm.module.flags = !{!294, !295, !296, !297, !298, !299, !300, !301}
!llvm.ident = !{!302}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ceph/file.c", i32 300, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ceph_renew_caps.__UNIQUE_ID_ddebug323, !1, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ceph/file.c", i32 332, i32 2}
!10 = !{ptr @ceph_renew_caps.__UNIQUE_ID_ddebug324, !9, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ceph/file.c", i32 353, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ceph_open.__UNIQUE_ID_ddebug325, !13, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!16 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ceph/file.c", i32 362, i32 2}
!19 = !{ptr @ceph_open.__UNIQUE_ID_ddebug326, !18, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!20 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ceph/file.c", i32 387, i32 3}
!23 = !{ptr @ceph_open.__UNIQUE_ID_ddebug327, !22, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!24 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ceph/file.c", i32 409, i32 2}
!27 = !{ptr @ceph_open.__UNIQUE_ID_ddebug328, !26, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!28 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ceph/file.c", i32 423, i32 2}
!31 = !{ptr @ceph_open.__UNIQUE_ID_ddebug329, !30, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!32 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ceph/file.c", i32 699, i32 2}
!35 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ceph_atomic_open.__UNIQUE_ID_ddebug345, !34, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!37 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.23, !34, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ceph/file.c", i32 796, i32 3}
!42 = !{ptr @ceph_atomic_open.__UNIQUE_ID_ddebug350, !41, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!43 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ceph/file.c", i32 799, i32 3}
!46 = !{ptr @ceph_atomic_open.__UNIQUE_ID_ddebug351, !45, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!47 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ceph/file.c", i32 813, i32 2}
!50 = !{ptr @ceph_atomic_open.__UNIQUE_ID_ddebug352, !49, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!51 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ceph/file.c", i32 823, i32 3}
!54 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ceph_release.__UNIQUE_ID_ddebug353, !53, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!56 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ceph/file.c", i32 835, i32 3}
!59 = !{ptr @ceph_release.__UNIQUE_ID_ddebug354, !58, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!60 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ceph_file_fops, !62, !"ceph_file_fops", i1 false, i1 false}
!62 = !{!"../fs/ceph/file.c", i32 2579, i32 30}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ceph/file.c", i32 51, i32 3}
!65 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ceph_flags_sys2wire.__UNIQUE_ID_ddebug316, !64, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!67 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ceph/file.c", i32 264, i32 3}
!70 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ceph_init_file.__UNIQUE_ID_ddebug321, !69, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!72 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ceph/file.c", i32 269, i32 3}
!75 = !{ptr @ceph_init_file.__UNIQUE_ID_ddebug322, !74, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!76 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ceph/file.c", i32 211, i32 2}
!79 = !{ptr @.str.44, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @ceph_init_file_info.__UNIQUE_ID_ddebug319, !78, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!81 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.47, !78, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ceph_init_file_info.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../fs/ceph/file.c", i32 239, i32 2}
!86 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../fs/ceph/file.c", i32 493, i32 2}
!89 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!92 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!96 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/ceph/file.c", i32 544, i32 3}
!99 = !{ptr @.str.54, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ceph_async_create_cb._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @ceph_async_create_cb._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.57, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/ceph/file.c", i32 554, i32 4}
!105 = !{ptr @ceph_async_create_cb._entry.56, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @ceph_async_create_cb._entry_ptr.58, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.60, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/ceph/file.c", i32 566, i32 3}
!109 = !{ptr @ceph_async_create_cb._entry.59, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @ceph_async_create_cb._entry_ptr.61, !108, !"_entry_ptr", i1 false, i1 false}
!111 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!112 = !{!"../fs/ceph/file.c", i32 616, i32 11}
!113 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!114 = !{!"../fs/ceph/file.c", i32 628, i32 12}
!115 = !{ptr @.str.63, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/ceph/file.c", i32 648, i32 3}
!117 = !{ptr @.str.64, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @ceph_finish_async_create.__UNIQUE_ID_ddebug343, !116, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!119 = !{ptr @.str.65, !116, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/ceph/file.c", i32 657, i32 3}
!122 = !{ptr @ceph_finish_async_create.__UNIQUE_ID_ddebug344, !121, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!123 = !{ptr @.str.67, !121, !"<string literal>", i1 false, i1 false}
!124 = distinct !{null, !125, !"__already_done", i1 false, i1 false}
!125 = !{!"../fs/ceph/file.c", i32 675, i32 4}
!126 = !{ptr @.str.68, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/ceph/file.c", i32 513, i32 4}
!128 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @restore_deleg_ino._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @restore_deleg_ino._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = distinct !{null, !132, !"__warned", i1 false, i1 false}
!132 = !{!"../fs/ceph/file.c", i32 440, i32 3}
!133 = !{ptr @.str.70, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/ceph/file.c", i32 1562, i32 2}
!135 = !{ptr @.str.71, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @ceph_read_iter.__UNIQUE_ID_ddebug379, !134, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!137 = !{ptr @.str.72, !134, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.73, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/ceph/file.c", i32 1591, i32 3}
!140 = !{ptr @ceph_read_iter.__UNIQUE_ID_ddebug380, !139, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!141 = !{ptr @.str.74, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.75, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/ceph/file.c", i32 1609, i32 3}
!144 = !{ptr @ceph_read_iter.__UNIQUE_ID_ddebug381, !143, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!145 = !{ptr @.str.76, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.77, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/ceph/file.c", i32 1617, i32 2}
!148 = !{ptr @ceph_read_iter.__UNIQUE_ID_ddebug382, !147, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!149 = !{ptr @.str.78, !147, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.79, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/ceph/file.c", i32 1678, i32 4}
!152 = !{ptr @ceph_read_iter.__UNIQUE_ID_ddebug389, !151, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!153 = !{ptr @.str.80, !151, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.81, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/ceph/file.c", i32 1230, i32 2}
!156 = !{ptr @.str.82, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @ceph_direct_read_write.__UNIQUE_ID_ddebug367, !155, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!158 = !{ptr @.str.83, !155, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.84, !155, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.85, !155, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.86, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/ceph/file.c", i32 1243, i32 4}
!163 = !{ptr @ceph_direct_read_write.__UNIQUE_ID_ddebug368, !162, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!164 = !{ptr @.str.87, !162, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.88, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/ceph/file.c", i32 1074, i32 2}
!167 = !{ptr @.str.89, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @ceph_aio_complete_req.__UNIQUE_ID_ddebug364, !166, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!169 = !{ptr @.str.90, !166, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @ceph_aio_complete_req.__key, !171, !"__key", i1 false, i1 false}
!171 = !{!"../fs/ceph/file.c", i32 1082, i32 4}
!172 = !{ptr @.str.91, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.92, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/ceph/file.c", i32 1032, i32 2}
!175 = !{ptr @.str.93, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @ceph_aio_complete.__UNIQUE_ID_ddebug363, !174, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!177 = !{ptr @.str.94, !174, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.95, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../include/linux/mm.h", i32 717, i32 2}
!180 = !{ptr @.str.96, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/ceph/file.c", i32 878, i32 2}
!182 = !{ptr @.str.97, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @ceph_sync_read.__UNIQUE_ID_ddebug355, !181, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!184 = !{ptr @.str.98, !181, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.99, !181, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.100, !181, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.101, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/ceph/file.c", i32 939, i32 3}
!189 = !{ptr @ceph_sync_read.__UNIQUE_ID_ddebug356, !188, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!190 = !{ptr @.str.102, !188, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.103, !188, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.104, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/ceph/file.c", i32 947, i32 4}
!194 = !{ptr @ceph_sync_read.__UNIQUE_ID_ddebug359, !193, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!195 = !{ptr @.str.105, !193, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.106, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../fs/ceph/file.c", i32 992, i32 2}
!198 = !{ptr @ceph_sync_read.__UNIQUE_ID_ddebug362, !197, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!199 = !{ptr @.str.107, !197, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.108, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!202 = distinct !{null, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!204 = distinct !{null, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../include/linux/gfp.h", i32 579, i32 2}
!206 = !{ptr @.str.111, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/ceph/file.c", i32 1787, i32 2}
!208 = !{ptr @.str.112, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @ceph_write_iter.__UNIQUE_ID_ddebug392, !207, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!210 = !{ptr @.str.113, !207, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.114, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/ceph/file.c", i32 1804, i32 2}
!213 = !{ptr @ceph_write_iter.__UNIQUE_ID_ddebug393, !212, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!214 = !{ptr @.str.115, !212, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.116, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/ceph/file.c", i32 1868, i32 2}
!217 = !{ptr @ceph_write_iter.__UNIQUE_ID_ddebug394, !216, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!218 = !{ptr @.str.117, !216, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.118, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/ceph/file.c", i32 1874, i32 3}
!221 = !{ptr @ceph_write_iter.__UNIQUE_ID_ddebug395, !220, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!222 = !{ptr @.str.119, !220, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.120, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/ceph/file.c", i32 1442, i32 2}
!225 = !{ptr @.str.121, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @ceph_sync_write.__UNIQUE_ID_ddebug375, !224, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!227 = !{ptr @.str.122, !224, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @ceph_sync_write.__UNIQUE_ID_ddebug376, !229, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!229 = !{!"../fs/ceph/file.c", i32 1455, i32 3}
!230 = !{ptr @.str.123, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../fs/ceph/file.c", i32 2389, i32 4}
!232 = !{ptr @.str.124, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @__ceph_copy_file_range.__UNIQUE_ID_ddebug404, !231, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!234 = !{ptr @.str.125, !231, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.126, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/ceph/file.c", i32 2420, i32 3}
!237 = !{ptr @__ceph_copy_file_range.__UNIQUE_ID_ddebug405, !236, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!238 = !{ptr @.str.127, !236, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.128, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../fs/ceph/file.c", i32 2434, i32 3}
!241 = !{ptr @__ceph_copy_file_range.__UNIQUE_ID_ddebug406, !240, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!242 = !{ptr @.str.129, !240, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.130, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../fs/ceph/file.c", i32 2439, i32 3}
!245 = !{ptr @__ceph_copy_file_range.__UNIQUE_ID_ddebug407, !244, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!246 = !{ptr @.str.131, !244, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.132, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../fs/ceph/file.c", i32 2451, i32 3}
!249 = !{ptr @__ceph_copy_file_range.__UNIQUE_ID_ddebug408, !248, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!250 = !{ptr @.str.133, !248, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.134, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../fs/ceph/file.c", i32 2466, i32 3}
!253 = !{ptr @__ceph_copy_file_range.__UNIQUE_ID_ddebug409, !252, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!254 = !{ptr @.str.135, !252, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @.str.136, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../fs/ceph/file.c", i32 2487, i32 3}
!257 = !{ptr @__ceph_copy_file_range.__UNIQUE_ID_ddebug410, !256, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!258 = !{ptr @.str.137, !256, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.138, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../fs/ceph/file.c", i32 2498, i32 4}
!261 = !{ptr @__ceph_copy_file_range.__UNIQUE_ID_ddebug411, !260, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!262 = !{ptr @.str.139, !260, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.140, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../fs/ceph/file.c", i32 2520, i32 2}
!265 = !{ptr @__ceph_copy_file_range.__UNIQUE_ID_ddebug412, !264, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!266 = !{ptr @.str.141, !264, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.142, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../fs/ceph/file.c", i32 2549, i32 3}
!269 = !{ptr @__ceph_copy_file_range.__UNIQUE_ID_ddebug413, !268, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!270 = !{ptr @.str.143, !268, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @__ceph_copy_file_range.__UNIQUE_ID_ddebug414, !272, !"__UNIQUE_ID_ddebug414", i1 false, i1 false}
!272 = !{!"../fs/ceph/file.c", i32 2555, i32 4}
!273 = !{ptr @.str.144, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../fs/ceph/file.c", i32 2231, i32 3}
!275 = !{ptr @.str.145, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @is_file_size_ok.__UNIQUE_ID_ddebug398, !274, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!277 = !{ptr @.str.146, !274, !"<string literal>", i1 false, i1 false}
!278 = distinct !{null, !279, !"__warned", i1 false, i1 false}
!279 = !{!"../fs/ceph/file.c", i32 2311, i32 21}
!280 = distinct !{null, !281, !"__warned", i1 false, i1 false}
!281 = !{!"../fs/ceph/file.c", i32 2313, i32 21}
!282 = !{ptr @.str.148, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../fs/ceph/file.c", i32 2324, i32 29}
!284 = !{ptr @.str.149, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../fs/ceph/file.c", i32 2349, i32 5}
!286 = !{ptr @.str.150, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @ceph_do_objects_copy._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @ceph_do_objects_copy._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.151, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../fs/ceph/file.c", i32 2351, i32 4}
!291 = !{ptr @ceph_do_objects_copy.__UNIQUE_ID_ddebug403, !290, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!292 = !{ptr @.str.152, !290, !"<string literal>", i1 false, i1 false}
!293 = !{!"sp"}
!294 = !{i32 1, !"wchar_size", i32 2}
!295 = !{i32 1, !"min_enum_size", i32 4}
!296 = !{i32 8, !"branch-target-enforcement", i32 0}
!297 = !{i32 8, !"sign-return-address", i32 0}
!298 = !{i32 8, !"sign-return-address-all", i32 0}
!299 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!300 = !{i32 7, !"uwtable", i32 1}
!301 = !{i32 7, !"frame-pointer", i32 2}
!302 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!303 = !{i64 2149038867, i64 2149038872, i64 2149038885, i64 2149038929, i64 2149038963, i64 2149038984}
!304 = !{i64 2148515359}
!305 = !{i64 2148429799, i64 2148429831, i64 2148429860, i64 2148429894, i64 2148429925, i64 2148429948}
!306 = !{!"branch_weights", i32 2000, i32 1}
!307 = !{i64 2149375810}
!308 = !{ptr @ceph_mdsc_release_request, ptr @ceph_release_string}
!309 = !{!"branch_weights", i32 1, i32 2000}
!310 = !{i64 2155974374, i64 2155974853, i64 2155974411, i64 2155974467, i64 2155974501, i64 2155974525, i64 2155974566, i64 2155974587, i64 2155974615, i64 2155974649}
!311 = !{i64 2149426300}
!312 = !{i64 910337, i64 910361, i64 910382, i64 910399, i64 910416}
!313 = !{i64 2149426566}
!314 = !{i64 2156034418}
!315 = !{i8 0, i8 2}
!316 = !{i64 2156014403}
!317 = !{i64 2156170840, i64 2156171320, i64 2156170877, i64 2156170933, i64 2156170967, i64 2156170991, i64 2156171032, i64 2156171053, i64 2156171081, i64 2156171115}
!318 = !{i64 2156172422, i64 2156172902, i64 2156172459, i64 2156172515, i64 2156172549, i64 2156172573, i64 2156172614, i64 2156172635, i64 2156172663, i64 2156172697}
!319 = !{!"auto-init"}
!320 = !{i64 2156198335, i64 2156198815, i64 2156198372, i64 2156198428, i64 2156198462, i64 2156198486, i64 2156198527, i64 2156198548, i64 2156198576, i64 2156198610}
!321 = !{i64 2155962154, i64 2155962633, i64 2155962191, i64 2155962247, i64 2155962281, i64 2155962305, i64 2155962346, i64 2155962367, i64 2155962395, i64 2155962429}
!322 = !{i64 829504, i64 829565}
!323 = !{i64 832236}
!324 = !{i64 832521}
!325 = !{i64 2153182513}
!326 = !{i64 2153182355}
!327 = !{i64 2153182683}
!328 = !{i64 2150041967}
!329 = distinct !{!329, !330}
!330 = !{!"llvm.loop.peeled.count", i32 1}
!331 = !{i64 2148425804, i64 2148425830, i64 2148425859, i64 2148425893, i64 2148425924, i64 2148425947}
!332 = !{i64 2150987120}
!333 = !{i64 2150232096, i64 2150232587, i64 2150232133, i64 2150232189, i64 2150232223, i64 2150232247, i64 2150232288, i64 2150232309, i64 2150232337, i64 2150232371}
!334 = !{i64 2156115040, i64 2156115520, i64 2156115077, i64 2156115133, i64 2156115167, i64 2156115191, i64 2156115232, i64 2156115253, i64 2156115281, i64 2156115315}
!335 = !{i64 2156116624, i64 2156117104, i64 2156116661, i64 2156116717, i64 2156116751, i64 2156116775, i64 2156116816, i64 2156116837, i64 2156116865, i64 2156116899}
!336 = !{i64 2156121401, i64 2156121881, i64 2156121438, i64 2156121494, i64 2156121528, i64 2156121552, i64 2156121593, i64 2156121614, i64 2156121642, i64 2156121676}
!337 = !{i64 2156126174}
!338 = !{i64 935296, i64 935317, i64 935340, i64 935359, i64 935378}
!339 = !{i64 2156126576}
!340 = !{i64 2153519235, i64 2153519718, i64 2153519272, i64 2153519328, i64 2153519362, i64 2153519386, i64 2153519427, i64 2153519448, i64 2153519476, i64 2153519510}
!341 = !{i64 2148514280}
!342 = !{i64 2148428989, i64 2148429021, i64 2148429050, i64 2148429084, i64 2148429115, i64 2148429138}
!343 = !{i64 2148514509}
!344 = !{i64 2156129716, i64 2156130196, i64 2156129753, i64 2156129809, i64 2156129843, i64 2156129867, i64 2156129908, i64 2156129929, i64 2156129957, i64 2156129991}
!345 = !{i64 2148272228, i64 2148272508, i64 2148272842, i64 2148273176}
