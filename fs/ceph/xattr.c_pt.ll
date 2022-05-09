; ModuleID = '/llk/IR_all_yes/fs/ceph/xattr.c_pt.bc'
source_filename = "../fs/ceph/xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.ceph_vxattr = type { ptr, i32, ptr, ptr, i32 }
%struct.ceph_inode_info = type { %struct.ceph_vino, %struct.spinlock, i64, i64, i32, i32, %struct.atomic64_t, %struct.atomic64_t, [2 x %struct.atomic64_t], %struct.ceph_dir_layout, %struct.ceph_file_layout, %struct.ceph_file_layout, ptr, %struct.timespec64, i64, i64, i64, i64, i64, i64, i64, i64, i32, %struct.rb_root, i32, %struct.mutex, %struct.ceph_inode_xattrs_info, %struct.rb_root, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.wait_queue_head, i32, %struct.list_head, %struct.ceph_cap_reservation, %struct.list_head, ptr, i32, i32, i32, [4 x i32], %struct.mutex, i32, i64, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %union.anon.131, %struct.list_head, %struct.list_head, %struct.timespec64, %struct.timespec64, %struct.work_struct, i32, ptr, %struct.inode }
%struct.ceph_vino = type { i64, i64 }
%struct.atomic64_t = type { i64 }
%struct.ceph_dir_layout = type { i8, i8, i16, i32 }
%struct.ceph_file_layout = type { i32, i32, i32, i64, ptr }
%struct.ceph_inode_xattrs_info = type { ptr, ptr, %struct.rb_root, i8, i32, i32, i32, i64, i64 }
%struct.rb_root = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ceph_cap_reservation = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%union.anon.131 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.100, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.101, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.102, ptr, %struct.address_space, %struct.list_head, %union.anon.103, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.100 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.101 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.102 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.103 = type { ptr }
%struct.ceph_inode_xattr = type { %struct.rb_node, ptr, i32, ptr, i32, i32, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ceph_buffer = type { %struct.kref, %struct.kvec, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.kvec = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.84, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32 }
%struct.llist_node = type { ptr }
%union.anon.32 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.84 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ceph_mds_request = type { i64, %struct.rb_node, ptr, %struct.kref, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ceph_vino, %struct.ceph_vino, ptr, ptr, i32, %struct.mutex, %union.ceph_mds_request_args, i32, ptr, i32, %struct.timespec64, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.ceph_mds_reply_info_parsed, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, i32, i64, %struct.list_head, %struct.completion, %struct.completion, ptr, ptr, %struct.list_head, i64, i64, i32, %struct.ceph_cap_reservation }
%union.ceph_mds_request_args = type { %struct.anon.141, [16 x i8] }
%struct.anon.141 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ceph_mds_reply_info_parsed = type { ptr, %struct.ceph_mds_reply_info_in, %struct.ceph_mds_reply_info_in, ptr, ptr, i32, ptr, %union.anon.146, ptr, i32 }
%struct.ceph_mds_reply_info_in = type { ptr, %struct.ceph_dir_layout, i32, ptr, i32, ptr, i64, i32, ptr, i32, ptr, i64, i64, i32, %struct.ceph_timespec, %struct.ceph_timespec, i64, i64 }
%struct.ceph_timespec = type { i32, i32 }
%union.anon.146 = type { %struct.anon.148, [8 x i8] }
%struct.anon.148 = type { i8, i64 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.106, %struct.list_head, %struct.list_head, %union.anon.107 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.104 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { %struct.spinlock, i32 }
%union.anon.106 = type { %struct.list_head }
%union.anon.107 = type { %struct.hlist_node }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.ceph_fs_client = type { ptr, %struct.list_head, ptr, ptr, i32, i8, i8, i32, i64, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ceph_mds_client = type { ptr, %struct.mutex, ptr, %struct.completion, %struct.wait_queue_head, %struct.list_head, i32, ptr, %struct.atomic_t, i32, i32, %struct.atomic64_t, %struct.rb_root, %struct.mutex, i64, %struct.rw_semaphore, %struct.rb_root, %struct.list_head, i32, %struct.spinlock, i64, i64, %struct.rb_root, %struct.delayed_work, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.ceph_client_metric, %struct.spinlock, %struct.rb_root, %struct.list_head, %struct.rw_semaphore, %struct.rb_root, [65 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ceph_client_metric = type { %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, [4 x %struct.ceph_metric], %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, ptr, %struct.delayed_work }
%struct.ceph_metric = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ceph_client = type { %struct.ceph_fsid, i8, ptr, ptr, %struct.mutex, %struct.wait_queue_head, i32, ptr, i64, i64, %struct.ceph_messenger, %struct.ceph_mon_client, %struct.ceph_osd_client, ptr, ptr, ptr, ptr }
%struct.ceph_fsid = type { [16 x i8] }
%struct.ceph_messenger = type <{ %struct.ceph_entity_inst, %struct.ceph_entity_addr, [3 x i8], %struct.atomic_t, %struct.possible_net_t, i32, %struct.spinlock }>
%struct.ceph_entity_inst = type <{ %struct.ceph_entity_name, %struct.ceph_entity_addr }>
%struct.ceph_entity_name = type <{ i8, i64 }>
%struct.ceph_entity_addr = type { i32, i32, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.112 }
%union.anon.112 = type { ptr, [124 x i8] }
%struct.possible_net_t = type { ptr }
%struct.ceph_mon_client = type { ptr, ptr, %struct.mutex, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.ceph_connection, i8, i32, %struct.rb_root, i64, [4 x %struct.anon.127], i32, ptr }
%struct.ceph_connection = type <{ ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32, ptr, %struct.ceph_entity_name, %struct.ceph_entity_addr, [7 x i8], i64, %struct.mutex, %struct.list_head, %struct.list_head, [4 x i8], i64, i64, i64, ptr, ptr, ptr, i32, i32, i32, %struct.timespec64, %struct.delayed_work, i32, %union.anon.123 }>
%union.anon.123 = type { %struct.ceph_connection_v2_info }
%struct.ceph_connection_v2_info = type { %struct.iov_iter, [5 x %struct.kvec], %struct.bio_vec, i32, i32, %struct.iov_iter, [8 x %struct.kvec], %struct.bio_vec, i32, i32, i32, i8, %struct.ceph_frame_desc, %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor, ptr, ptr, ptr, %struct.crypto_wait, %struct.ceph_gcm_nonce, %struct.ceph_gcm_nonce, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, [16 x ptr], i32, [8 x %struct.kvec], [8 x %struct.kvec], i32, i32, i64, i64, i64, i64, i64, [96 x i8], [96 x i8], %struct.anon.124 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.93, %union.anon.94 }
%union.anon.93 = type { ptr }
%union.anon.94 = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ceph_frame_desc = type { i32, i32, [4 x i32], [4 x i32] }
%struct.ceph_msg_data_cursor = type { i32, ptr, i32, i8, i8, %union.anon.118 }
%union.anon.118 = type { %struct.ceph_bio_iter }
%struct.ceph_bio_iter = type { ptr, %struct.bvec_iter }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.ceph_gcm_nonce = type <{ i32, i64 }>
%struct.anon.124 = type { i8, %union.anon.125 }
%union.anon.125 = type <{ %struct.anon.126, [3 x i8] }>
%struct.anon.126 = type { i32, i32, i32 }
%struct.anon.127 = type { %struct.ceph_mon_subscribe_item, i8, i32 }
%struct.ceph_mon_subscribe_item = type <{ i64, i8 }>
%struct.ceph_osd_client = type { ptr, ptr, %struct.rw_semaphore, %struct.rb_root, %struct.list_head, %struct.spinlock, i32, [4 x i8], %struct.ceph_osd, %struct.atomic64_t, i64, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.atomic_t, %struct.atomic_t, i32, %struct.delayed_work, %struct.delayed_work, ptr, ptr, %struct.ceph_msgpool, %struct.ceph_msgpool, ptr, ptr }
%struct.ceph_osd = type { %struct.refcount_struct, ptr, i32, i32, %struct.rb_node, [4 x i8], %struct.ceph_connection, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.ceph_auth_handshake, i32, %struct.list_head, %struct.mutex, [4 x i8] }
%struct.ceph_auth_handshake = type { ptr, ptr, i32, ptr, i32, ptr, ptr }
%struct.ceph_msgpool = type { ptr, ptr, i32, i32, i32 }
%struct.ceph_osdmap = type { %struct.ceph_fsid, i32, %struct.ceph_timespec, %struct.ceph_timespec, i32, i32, ptr, ptr, ptr, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, ptr, %struct.rb_root, i32, ptr, %struct.workspace_manager }
%struct.workspace_manager = type { %struct.list_head, %struct.spinlock, i32, %struct.atomic_t, %struct.wait_queue_head }
%struct.ceph_acl_sec_ctx = type { ptr, ptr, ptr, i32, ptr }
%struct.ceph_pagelist = type { %struct.list_head, ptr, i32, i32, %struct.list_head, i32, %struct.refcount_struct }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.kuid_t }
%struct.ceph_string = type { %struct.kref, %union.anon.2, i32, [0 x i8] }
%union.anon.2 = type { %struct.rb_node }
%struct.__va_list = type { ptr }
%struct.ceph_cap = type { ptr, %struct.rb_node, ptr, %struct.list_head, i64, %union.anon.128, i32, i32, i32, i32, i32, %struct.list_head }
%union.anon.128 = type { %struct.anon.130 }
%struct.anon.130 = type { i64, i32 }
%struct.ceph_mds_session = type { ptr, i32, i32, i32, i32, i64, %struct.mutex, [4 x i8], %struct.ceph_connection, %struct.ceph_auth_handshake, %struct.atomic_t, i32, %struct.spinlock, %struct.refcount_struct, %struct.list_head, ptr, i32, i32, i32, i32, %struct.list_head, %struct.work_struct, %struct.list_head, %struct.list_head, i32, i64, %struct.list_head, %struct.list_head, %struct.xarray }

@__ceph_destroy_xattrs.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ceph\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__ceph_destroy_xattrs\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ceph/xattr.c\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%.*s %12.12s:%-4d : __ceph_destroy_xattrs p=%p\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ceph: %.*s %12.12s:%-4d : __ceph_destroy_xattrs p=%p\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@__ceph_destroy_xattrs.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%.*s %12.12s:%-4d : __ceph_destroy_xattrs next p=%p (%.*s)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"ceph: %.*s %12.12s:%-4d : __ceph_destroy_xattrs next p=%p (%.*s)\0A\00", [62 x i8] zeroinitializer }, align 32
@__ceph_build_xattrs_blob.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__ceph_build_xattrs_blob\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%.*s %12.12s:%-4d : __build_xattrs_blob %p\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ceph: %.*s %12.12s:%-4d : __build_xattrs_blob %p\0A\00", [46 x i8] zeroinitializer }, align 32
@__ceph_getxattr.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__ceph_getxattr\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%.*s %12.12s:%-4d : getxattr %p name '%s' ver=%lld index_ver=%lld\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"ceph: %.*s %12.12s:%-4d : getxattr %p name '%s' ver=%lld index_ver=%lld\0A\00", [55 x i8] zeroinitializer }, align 32
@__ceph_getxattr._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__ceph_getxattr._entry = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.2, i32 964, ptr null, ptr null }, align 1
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014ceph: sync getxattr %p during filling trace\0A\00", [49 x i8] zeroinitializer }, align 32
@__ceph_getxattr._entry_ptr = internal global ptr @__ceph_getxattr._entry, section ".printk_index", align 4
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"security.\00", [22 x i8] zeroinitializer }, align 32
@ceph_listxattr.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 -3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ceph_listxattr\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%.*s %12.12s:%-4d : listxattr %p ver=%lld index_ver=%lld\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"ceph: %.*s %12.12s:%-4d : listxattr %p ver=%lld index_ver=%lld\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ceph.quota\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ceph.\00", [26 x i8] zeroinitializer }, align 32
@__ceph_setxattr.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 1, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__ceph_setxattr\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%.*s %12.12s:%-4d : setxattr %p name '%s' issued %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ceph: %.*s %12.12s:%-4d : setxattr %p name '%s' issued %s\0A\00", [37 x i8] zeroinitializer }, align 32
@__ceph_setxattr.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.25, i8 1, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%.*s %12.12s:%-4d :  pre-allocating new blob size=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ceph: %.*s %12.12s:%-4d :  pre-allocating new blob size=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@__ceph_setxattr._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__ceph_setxattr._entry = internal constant %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 1235, ptr null, ptr null }, align 1
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014ceph: sync setxattr %p during filling trace\0A\00", [49 x i8] zeroinitializer }, align 32
@__ceph_setxattr._entry_ptr = internal global ptr @__ceph_setxattr._entry, section ".printk_index", align 4
@ceph_security_init_secctx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@posix_acl_access_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@posix_acl_default_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@ceph_other_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.96, i32 0, ptr null, ptr @ceph_get_xattr_handler, ptr @ceph_set_xattr_handler }, [40 x i8] zeroinitializer }, align 32
@ceph_xattr_handlers = dso_local global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @posix_acl_access_xattr_handler, ptr @posix_acl_default_xattr_handler, ptr @ceph_other_xattr_handler, ptr null], [16 x i8] zeroinitializer }, align 32
@__get_required_blob_size.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__get_required_blob_size\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%.*s %12.12s:%-4d : __get_required_blob_size c=%d names.size=%d vals.size=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"ceph: %.*s %12.12s:%-4d : __get_required_blob_size c=%d names.size=%d vals.size=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@ceph_common_vxattrs = internal constant { [4 x %struct.ceph_vxattr], [48 x i8] } { [4 x %struct.ceph_vxattr] [%struct.ceph_vxattr { ptr @.str.75, i32 18, ptr @ceph_vxattrcb_cluster_fsid, ptr null, i32 1 }, %struct.ceph_vxattr { ptr @.str.76, i32 15, ptr @ceph_vxattrcb_client_id, ptr null, i32 1 }, %struct.ceph_vxattr { ptr @.str.77, i32 14, ptr @ceph_vxattrcb_auth_mds, ptr null, i32 1 }, %struct.ceph_vxattr zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ceph_dir_vxattrs = internal constant { [22 x %struct.ceph_vxattr], [104 x i8] } { [22 x %struct.ceph_vxattr] [%struct.ceph_vxattr { ptr @.str.31, i32 16, ptr @ceph_vxattrcb_layout, ptr @ceph_vxattrcb_layout_exists, i32 2 }, %struct.ceph_vxattr { ptr @.str.32, i32 28, ptr @ceph_vxattrcb_layout_stripe_unit, ptr @ceph_vxattrcb_layout_exists, i32 2 }, %struct.ceph_vxattr { ptr @.str.33, i32 29, ptr @ceph_vxattrcb_layout_stripe_count, ptr @ceph_vxattrcb_layout_exists, i32 2 }, %struct.ceph_vxattr { ptr @.str.34, i32 28, ptr @ceph_vxattrcb_layout_object_size, ptr @ceph_vxattrcb_layout_exists, i32 2 }, %struct.ceph_vxattr { ptr @.str.35, i32 21, ptr @ceph_vxattrcb_layout_pool, ptr @ceph_vxattrcb_layout_exists, i32 2 }, %struct.ceph_vxattr { ptr @.str.36, i32 31, ptr @ceph_vxattrcb_layout_pool_namespace, ptr @ceph_vxattrcb_layout_exists, i32 2 }, %struct.ceph_vxattr { ptr @.str.37, i32 17, ptr @ceph_vxattrcb_dir_entries, ptr null, i32 9 }, %struct.ceph_vxattr { ptr @.str.38, i32 15, ptr @ceph_vxattrcb_dir_files, ptr null, i32 9 }, %struct.ceph_vxattr { ptr @.str.39, i32 17, ptr @ceph_vxattrcb_dir_subdirs, ptr null, i32 9 }, %struct.ceph_vxattr { ptr @.str.40, i32 18, ptr @ceph_vxattrcb_dir_rentries, ptr null, i32 5 }, %struct.ceph_vxattr { ptr @.str.41, i32 16, ptr @ceph_vxattrcb_dir_rfiles, ptr null, i32 5 }, %struct.ceph_vxattr { ptr @.str.42, i32 18, ptr @ceph_vxattrcb_dir_rsubdirs, ptr null, i32 5 }, %struct.ceph_vxattr { ptr @.str.43, i32 16, ptr @ceph_vxattrcb_dir_rsnaps, ptr null, i32 5 }, %struct.ceph_vxattr { ptr @.str.44, i32 16, ptr @ceph_vxattrcb_dir_rbytes, ptr null, i32 5 }, %struct.ceph_vxattr { ptr @.str.45, i32 16, ptr @ceph_vxattrcb_dir_rctime, ptr null, i32 5 }, %struct.ceph_vxattr { ptr @.str.46, i32 13, ptr @ceph_vxattrcb_dir_pin, ptr @ceph_vxattrcb_dir_pin_exists, i32 2 }, %struct.ceph_vxattr { ptr @.str.20, i32 11, ptr @ceph_vxattrcb_quota, ptr @ceph_vxattrcb_quota_exists, i32 2 }, %struct.ceph_vxattr { ptr @.str.47, i32 21, ptr @ceph_vxattrcb_quota_max_bytes, ptr @ceph_vxattrcb_quota_exists, i32 2 }, %struct.ceph_vxattr { ptr @.str.48, i32 21, ptr @ceph_vxattrcb_quota_max_files, ptr @ceph_vxattrcb_quota_exists, i32 2 }, %struct.ceph_vxattr { ptr @.str.49, i32 16, ptr @ceph_vxattrcb_snap_btime, ptr @ceph_vxattrcb_snap_btime_exists, i32 1 }, %struct.ceph_vxattr { ptr @.str.50, i32 10, ptr @ceph_vxattrcb_caps, ptr null, i32 2 }, %struct.ceph_vxattr zeroinitializer], [104 x i8] zeroinitializer }, align 32
@ceph_file_vxattrs = internal constant { [9 x %struct.ceph_vxattr], [44 x i8] } { [9 x %struct.ceph_vxattr] [%struct.ceph_vxattr { ptr @.str.69, i32 17, ptr @ceph_vxattrcb_layout, ptr @ceph_vxattrcb_layout_exists, i32 2 }, %struct.ceph_vxattr { ptr @.str.70, i32 29, ptr @ceph_vxattrcb_layout_stripe_unit, ptr @ceph_vxattrcb_layout_exists, i32 2 }, %struct.ceph_vxattr { ptr @.str.71, i32 30, ptr @ceph_vxattrcb_layout_stripe_count, ptr @ceph_vxattrcb_layout_exists, i32 2 }, %struct.ceph_vxattr { ptr @.str.72, i32 29, ptr @ceph_vxattrcb_layout_object_size, ptr @ceph_vxattrcb_layout_exists, i32 2 }, %struct.ceph_vxattr { ptr @.str.73, i32 22, ptr @ceph_vxattrcb_layout_pool, ptr @ceph_vxattrcb_layout_exists, i32 2 }, %struct.ceph_vxattr { ptr @.str.74, i32 32, ptr @ceph_vxattrcb_layout_pool_namespace, ptr @ceph_vxattrcb_layout_exists, i32 2 }, %struct.ceph_vxattr { ptr @.str.49, i32 16, ptr @ceph_vxattrcb_snap_btime, ptr @ceph_vxattrcb_snap_btime_exists, i32 1 }, %struct.ceph_vxattr { ptr @.str.50, i32 10, ptr @ceph_vxattrcb_caps, ptr null, i32 2 }, %struct.ceph_vxattr zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceph.dir.layout\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ceph.dir.layout.stripe_unit\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ceph.dir.layout.stripe_count\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ceph.dir.layout.object_size\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ceph.dir.layout.pool\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ceph.dir.layout.pool_namespace\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ceph.dir.entries\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ceph.dir.files\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ceph.dir.subdirs\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ceph.dir.rentries\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceph.dir.rfiles\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ceph.dir.rsubdirs\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceph.dir.rsnaps\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceph.dir.rbytes\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceph.dir.rctime\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ceph.dir.pin\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ceph.quota.max_bytes\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ceph.quota.max_files\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceph.snap.btime\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ceph.caps\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" pool_namespace=\00", [47 x i8] zeroinitializer }, align 32
@ceph_vxattrcb_layout.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ceph_vxattrcb_layout.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ceph_vxattrcb_layout\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d : ceph_vxattrcb_layout %p\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ceph: %.*s %12.12s:%-4d : ceph_vxattrcb_layout %p\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"stripe_unit=%u stripe_count=%u object_size=%u pool=\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"stripe_unit=%u stripe_count=%u object_size=%u pool=%lld\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.60 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@ceph_fmt_xattr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Returned length too big (%d)\00", [35 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lld\00", [27 x i8] zeroinitializer }, align 32
@ceph_vxattrcb_layout_pool_namespace.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%lld.%09ld\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"max_bytes=%llu max_files=%llu\00", [34 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llu\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s/0x%x\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ceph.file.layout\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ceph.file.layout.stripe_unit\00", [35 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ceph.file.layout.stripe_count\00", [34 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ceph.file.layout.object_size\00", [35 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ceph.file.layout.pool\00", [42 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ceph.file.layout.pool_namespace\00", [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ceph.cluster_fsid\00", [46 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ceph.client_id\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ceph.auth_mds\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pU\00", [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"client%lld\00", [21 x i8] zeroinitializer }, align 32
@__build_xattrs.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.81, i8 0, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__build_xattrs\00", [17 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d : __build_xattrs() len=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ceph: %.*s %12.12s:%-4d : __build_xattrs() len=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@__get_xattr.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 0, i8 -94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__get_xattr\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%.*s %12.12s:%-4d : __get_xattr %s: found %.*s\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ceph: %.*s %12.12s:%-4d : __get_xattr %s: found %.*s\0A\00", [42 x i8] zeroinitializer }, align 32
@__get_xattr.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.86, i8 0, i8 -92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%.*s %12.12s:%-4d : __get_xattr %s: not found\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ceph: %.*s %12.12s:%-4d : __get_xattr %s: not found\0A\00", [43 x i8] zeroinitializer }, align 32
@__copy_xattr_names.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.89, i8 0, i8 -81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__copy_xattr_names\00", [45 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%.*s %12.12s:%-4d : __copy_xattr_names count=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ceph: %.*s %12.12s:%-4d : __copy_xattr_names count=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@__copy_xattr_names.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.91, i8 0, i8 -79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d : dest=%s %p (%s) (%d/%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ceph: %.*s %12.12s:%-4d : dest=%s %p (%s) (%d/%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__set_xattr.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.94, i8 0, i8 -108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__set_xattr\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%.*s %12.12s:%-4d : __set_xattr count=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ceph: %.*s %12.12s:%-4d : __set_xattr count=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__set_xattr.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.97, i8 0, i8 -101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%.*s %12.12s:%-4d : __set_xattr_val p=%p\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ceph: %.*s %12.12s:%-4d : __set_xattr_val p=%p\0A\00", [48 x i8] zeroinitializer }, align 32
@__set_xattr.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.99, i8 0, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%.*s %12.12s:%-4d : __set_xattr_val added %llx.%llx xattr %p %.*s=%.*s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"ceph: %.*s %12.12s:%-4d : __set_xattr_val added %llx.%llx xattr %p %.*s=%.*s\0A\00", [50 x i8] zeroinitializer }, align 32
@ceph_sync_setxattr.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.2, ptr @.str.102, i8 1, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ceph_sync_setxattr\00", [45 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%.*s %12.12s:%-4d : setxattr value=%.*s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ceph: %.*s %12.12s:%-4d : setxattr value=%.*s\0A\00", [49 x i8] zeroinitializer }, align 32
@ceph_sync_setxattr.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.2, ptr @.str.104, i8 1, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%.*s %12.12s:%-4d : xattr.ver (before): %lld\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ceph: %.*s %12.12s:%-4d : xattr.ver (before): %lld\0A\00", [44 x i8] zeroinitializer }, align 32
@ceph_sync_setxattr.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.2, ptr @.str.106, i8 1, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d : xattr.ver (after): %lld\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ceph: %.*s %12.12s:%-4d : xattr.ver (after): %lld\0A\00", [45 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trusted.\00", [23 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"user.\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 256, i64 257, i64 259, i64 260, i64 770, i64 4865]
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 725, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 731, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 866, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 953, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 963, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 995, i32 21 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1012, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1139, i32 39 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1144, i32 21 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1183, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1195, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1234, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [25 x i8] c"ceph_other_xattr_handler\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1277, i32 35 }
@___asan_gen_.197 = private unnamed_addr constant [20 x i8] c"ceph_xattr_handlers\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1392, i32 29 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 843, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [20 x i8] c"ceph_common_vxattrs\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 473, i32 27 }
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"ceph_dir_vxattrs\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 386, i32 27 }
@___asan_gen_.215 = private unnamed_addr constant [18 x i8] c"ceph_file_vxattrs\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 443, i32 27 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 388, i32 11 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 394, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 395, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 396, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 397, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 398, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 399, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 400, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 401, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 402, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 403, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 404, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 405, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 406, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 407, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 409, i32 11 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 422, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 423, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 425, i32 11 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 432, i32 11 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 65, i32 25 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 70, i32 12 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 72, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 77, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 83, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 695, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 723, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 145, i32 35 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 133, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 176, i32 35 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 251, i32 35 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 264, i32 35 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 284, i32 35 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 291, i32 35 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 339, i32 35 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 445, i32 11 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 451, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 452, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 453, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 454, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 455, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 475, i32 11 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 482, i32 11 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 489, i32 11 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 318, i32 35 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 326, i32 35 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 760, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 650, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 656, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 701, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 708, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 592, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 611, i32 16 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 620, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 623, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1072, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1101, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1104, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 25, i32 24 }
@___asan_gen_.452 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.453 = private constant [19 x i8] c"../fs/ceph/xattr.c\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 26, i32 24 }
@llvm.compiler.used = appending global [119 x ptr] [ptr @__ceph_getxattr._entry, ptr @__ceph_getxattr._entry_ptr, ptr @__ceph_setxattr._entry, ptr @__ceph_setxattr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @ceph_other_xattr_handler, ptr @ceph_xattr_handlers, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @ceph_common_vxattrs, ptr @ceph_dir_vxattrs, ptr @ceph_file_vxattrs, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], section "llvm.metadata"
@0 = internal global [115 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_other_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_xattr_handlers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_common_vxattrs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_dir_vxattrs to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_file_vxattrs to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ceph_destroy_xattrs(ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 2
  %call = tail call ptr @rb_first(ptr noundef %index) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_destroy_xattrs.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_destroy_xattrs, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !237

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_destroy_xattrs.__UNIQUE_ID_ddebug330, ptr noundef nonnull @.str.4, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 725, ptr noundef %call) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool6.not52 = icmp eq ptr %call, null
  br i1 %tobool6.not52, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %__free_xattr.exit.while.body_crit_edge, %do.end.while.body_crit_edge
  %p.053 = phi ptr [ %call8, %__free_xattr.exit.while.body_crit_edge ], [ %call, %do.end.while.body_crit_edge ]
  %call8 = tail call ptr @rb_next(ptr noundef nonnull %p.053) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_destroy_xattrs.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_destroy_xattrs, %if.then21)) #15
          to label %do.end7.i [label %if.then21], !srcloc !237

if.then21:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %name_len = getelementptr inbounds %struct.ceph_inode_xattr, ptr %p.053, i32 0, i32 2
  %0 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %name_len, align 4
  %name = getelementptr inbounds %struct.ceph_inode_xattr, ptr %p.053, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_destroy_xattrs.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.7, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 732, ptr noundef %call8, i32 noundef %1, ptr noundef %3) #15
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then21, %while.body
  tail call void @rb_erase(ptr noundef nonnull %p.053, ptr noundef %index) #15
  %should_free_name.i = getelementptr inbounds %struct.ceph_inode_xattr, ptr %p.053, i32 0, i32 6
  %4 = ptrtoint ptr %should_free_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %should_free_name.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not.i = icmp eq i32 %5, 0
  br i1 %tobool8.not.i, label %do.end7.i.if.end10.i_crit_edge, label %if.then9.i

do.end7.i.if.end10.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

if.then9.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i = getelementptr inbounds %struct.ceph_inode_xattr, ptr %p.053, i32 0, i32 1
  %6 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i, align 4
  tail call void @kfree(ptr noundef %7) #15
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %do.end7.i.if.end10.i_crit_edge
  %should_free_val.i = getelementptr inbounds %struct.ceph_inode_xattr, ptr %p.053, i32 0, i32 7
  %8 = ptrtoint ptr %should_free_val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %should_free_val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not.i = icmp eq i32 %9, 0
  br i1 %tobool11.not.i, label %if.end10.i.__free_xattr.exit_crit_edge, label %if.then12.i

if.end10.i.__free_xattr.exit_crit_edge:           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__free_xattr.exit

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %val.i = getelementptr inbounds %struct.ceph_inode_xattr, ptr %p.053, i32 0, i32 3
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %val.i, align 4
  tail call void @kfree(ptr noundef %11) #15
  br label %__free_xattr.exit

__free_xattr.exit:                                ; preds = %if.then12.i, %if.end10.i.__free_xattr.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %p.053) #15
  %tobool6.not = icmp eq ptr %call8, null
  br i1 %tobool6.not, label %__free_xattr.exit.while.end_crit_edge, label %__free_xattr.exit.while.body_crit_edge

__free_xattr.exit.while.body_crit_edge:           ; preds = %__free_xattr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

__free_xattr.exit.while.end_crit_edge:            ; preds = %__free_xattr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %__free_xattr.exit.while.end_crit_edge, %do.end.while.end_crit_edge
  %names_size = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 5
  %12 = ptrtoint ptr %names_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %names_size, align 4
  %vals_size = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 6
  %13 = ptrtoint ptr %vals_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %vals_size, align 8
  %index_version = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 8
  %14 = ptrtoint ptr %index_version to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %index_version, align 8
  %count = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 4
  %15 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %count, align 8
  %16 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %index, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__ceph_build_xattrs_blob(ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_build_xattrs_blob.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_build_xattrs_blob, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !237

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %vfs_inode = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 76
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_build_xattrs_blob.__UNIQUE_ID_ddebug334, ptr noundef nonnull @.str.10, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 866, ptr noundef %vfs_inode) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i_xattrs = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26
  %dirty = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 3
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dirty, align 4, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool4.not = icmp eq i8 %1, 0
  br i1 %tobool4.not, label %do.end.if.end61_crit_edge, label %if.then5

do.end.if.end61_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

if.then5:                                         ; preds = %do.end
  %count.i = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 4
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 8
  %names_size.i = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 5
  %4 = ptrtoint ptr %names_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %names_size.i, align 4
  %vals_size.i = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 6
  %6 = ptrtoint ptr %vals_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vals_size.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__get_required_blob_size.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_build_xattrs_blob, %if.then.i)) #15
          to label %__get_required_blob_size.exit [label %if.then.i], !srcloc !237

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 8
  %10 = ptrtoint ptr %names_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %names_size.i, align 4
  %12 = ptrtoint ptr %vals_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vals_size.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__get_required_blob_size.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.30, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 845, i32 noundef %9, i32 noundef %11, i32 noundef %13) #15
  br label %__get_required_blob_size.exit

__get_required_blob_size.exit:                    ; preds = %if.then.i, %if.then5
  %mul.i = shl i32 %3, 3
  %add2.i = or i32 %mul.i, 4
  %add4.i = add i32 %add2.i, %5
  %size.0.i = add i32 %add4.i, %7
  %prealloc_blob = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 1
  %14 = ptrtoint ptr %prealloc_blob to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prealloc_blob, align 4
  %alloc_len = getelementptr inbounds %struct.ceph_buffer, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %alloc_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %alloc_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.i, i32 %17)
  %cmp = icmp ugt i32 %size.0.i, %17
  br i1 %cmp, label %do.body16, label %do.end24, !prof !239

do.body16:                                        ; preds = %__get_required_blob_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 870, 0\0A.popsection", ""() #15, !srcloc !240
  unreachable

do.end24:                                         ; preds = %__get_required_blob_size.exit
  %index = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 2
  %call26 = tail call ptr @rb_first(ptr noundef %index) #15
  %18 = ptrtoint ptr %prealloc_blob to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prealloc_blob, align 4
  %vec = getelementptr inbounds %struct.ceph_buffer, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vec, align 4
  %22 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count.i, align 8
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #15
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %21, align 1
  %add.ptr.i = getelementptr i8, ptr %21, i32 4
  %tobool30.not99 = icmp eq ptr %call26, null
  br i1 %tobool30.not99, label %do.end24.while.end_crit_edge, label %do.end24.while.body_crit_edge

do.end24.while.body_crit_edge:                    ; preds = %do.end24
  br label %while.body

do.end24.while.end_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end24.while.body_crit_edge
  %p.0101 = phi ptr [ %call38, %while.body.while.body_crit_edge ], [ %call26, %do.end24.while.body_crit_edge ]
  %dest.0100 = phi ptr [ %add.ptr37, %while.body.while.body_crit_edge ], [ %add.ptr.i, %do.end24.while.body_crit_edge ]
  %name_len = getelementptr inbounds %struct.ceph_inode_xattr, ptr %p.0101, i32 0, i32 2
  %26 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %name_len, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #15
  %29 = ptrtoint ptr %dest.0100 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %dest.0100, align 1
  %add.ptr.i86 = getelementptr i8, ptr %dest.0100, i32 4
  %name = getelementptr inbounds %struct.ceph_inode_xattr, ptr %p.0101, i32 0, i32 1
  %30 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name, align 4
  %32 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %name_len, align 4
  %34 = call ptr @memcpy(ptr %add.ptr.i86, ptr %31, i32 %33)
  %35 = load i32, ptr %name_len, align 4
  %add.ptr34 = getelementptr i8, ptr %add.ptr.i86, i32 %35
  %val_len = getelementptr inbounds %struct.ceph_inode_xattr, ptr %p.0101, i32 0, i32 4
  %36 = ptrtoint ptr %val_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val_len, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #15
  %39 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %add.ptr34, align 1
  %add.ptr.i87 = getelementptr i8, ptr %add.ptr34, i32 4
  %val = getelementptr inbounds %struct.ceph_inode_xattr, ptr %p.0101, i32 0, i32 3
  %40 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %val, align 4
  %42 = ptrtoint ptr %val_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val_len, align 4
  %44 = call ptr @memcpy(ptr %add.ptr.i87, ptr %41, i32 %43)
  %45 = load i32, ptr %val_len, align 4
  %add.ptr37 = getelementptr i8, ptr %add.ptr.i87, i32 %45
  %call38 = tail call ptr @rb_next(ptr noundef nonnull %p.0101) #15
  %tobool30.not = icmp eq ptr %call38, null
  br i1 %tobool30.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end24.while.end_crit_edge
  %dest.0.lcssa = phi ptr [ %add.ptr.i, %do.end24.while.end_crit_edge ], [ %add.ptr37, %while.body.while.end_crit_edge ]
  %46 = ptrtoint ptr %prealloc_blob to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prealloc_blob, align 4
  %vec41 = getelementptr inbounds %struct.ceph_buffer, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %vec41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vec41, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %dest.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %49 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %iov_len = getelementptr inbounds %struct.ceph_buffer, ptr %47, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub.ptr.sub, ptr %iov_len, align 4
  %51 = ptrtoint ptr %i_xattrs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_xattrs, align 8
  %53 = load ptr, ptr %prealloc_blob, align 4
  store ptr %53, ptr %i_xattrs, align 8
  store ptr null, ptr %prealloc_blob, align 4
  %54 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %dirty, align 4
  %version = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 7
  %55 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %version, align 8
  %inc = add i64 %56, 1
  store i64 %inc, ptr %version, align 8
  br label %if.end61

if.end61:                                         ; preds = %while.end, %do.end.if.end61_crit_edge
  %old_blob.1 = phi ptr [ %52, %while.end ], [ null, %do.end.if.end61_crit_edge ]
  ret ptr %old_blob.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ceph_getxattr(ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %2)
  %switch.selectcmp.i.i = icmp eq i16 %2, -32768
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr @ceph_file_vxattrs, ptr null
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %2)
  %switch.selectcmp10.i.i = icmp eq i16 %2, 16384
  %switch.select11.i.i = select i1 %switch.selectcmp10.i.i, ptr @ceph_dir_vxattrs, ptr %switch.select.i.i
  %tobool.not.i = icmp eq ptr %switch.select11.i.i, null
  br i1 %tobool.not.i, label %entry.while.body11.i_crit_edge, label %while.cond.preheader.i

entry.while.body11.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body11.i

while.cond.preheader.i:                           ; preds = %entry
  %3 = ptrtoint ptr %switch.select11.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %switch.select11.i.i, align 4
  %tobool2.not31.i = icmp eq ptr %4, null
  br i1 %tobool2.not31.i, label %while.cond.preheader.i.while.body11.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.while.body11.i_crit_edge:  ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body11.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %5 = phi ptr [ %7, %if.end.i.while.body.i_crit_edge ], [ %4, %while.cond.preheader.i.while.body.i_crit_edge ]
  %vxattr.032.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %switch.select11.i.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %call4.i = tail call i32 @strcmp(ptr noundef nonnull %5, ptr noundef %name) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %while.body.i.ceph_match_vxattr.exit_crit_edge, label %if.end.i

while.body.i.ceph_match_vxattr.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_match_vxattr.exit

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.ceph_vxattr, ptr %vxattr.032.i, i32 1
  %6 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %if.end.i.while.body11.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

if.end.i.while.body11.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body11.i

while.body11.i:                                   ; preds = %if.end.i.while.body11.i_crit_edge, %while.cond.preheader.i.while.body11.i_crit_edge, %entry.while.body11.i_crit_edge
  %call13.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(18) @.str.75, ptr noundef %name) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %while.body11.i.ceph_match_vxattr.exit_crit_edge, label %if.end16.i

while.body11.i.ceph_match_vxattr.exit_crit_edge:  ; preds = %while.body11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_match_vxattr.exit

if.end16.i:                                       ; preds = %while.body11.i
  %call13.i.1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(15) @.str.76, ptr noundef %name) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.1)
  %tobool14.not.i.1 = icmp eq i32 %call13.i.1, 0
  br i1 %tobool14.not.i.1, label %if.end16.i.ceph_match_vxattr.exit_crit_edge, label %if.end16.i.1

if.end16.i.ceph_match_vxattr.exit_crit_edge:      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_match_vxattr.exit

if.end16.i.1:                                     ; preds = %if.end16.i
  %call13.i.2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(14) @.str.77, ptr noundef %name) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.2)
  %tobool14.not.i.2 = icmp eq i32 %call13.i.2, 0
  br i1 %tobool14.not.i.2, label %if.end16.i.1.ceph_match_vxattr.exit_crit_edge, label %if.end16.i.1.if.end24_crit_edge

if.end16.i.1.if.end24_crit_edge:                  ; preds = %if.end16.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.end16.i.1.ceph_match_vxattr.exit_crit_edge:    ; preds = %if.end16.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_match_vxattr.exit

ceph_match_vxattr.exit:                           ; preds = %if.end16.i.1.ceph_match_vxattr.exit_crit_edge, %if.end16.i.ceph_match_vxattr.exit_crit_edge, %while.body11.i.ceph_match_vxattr.exit_crit_edge, %while.body.i.ceph_match_vxattr.exit_crit_edge
  %retval.0.i146 = phi ptr [ @ceph_common_vxattrs, %while.body11.i.ceph_match_vxattr.exit_crit_edge ], [ getelementptr inbounds ([4 x %struct.ceph_vxattr], ptr @ceph_common_vxattrs, i32 0, i32 1), %if.end16.i.ceph_match_vxattr.exit_crit_edge ], [ getelementptr inbounds ([4 x %struct.ceph_vxattr], ptr @ceph_common_vxattrs, i32 0, i32 2), %if.end16.i.1.ceph_match_vxattr.exit_crit_edge ], [ %vxattr.032.i, %while.body.i.ceph_match_vxattr.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i146, null
  br i1 %tobool.not, label %ceph_match_vxattr.exit.if.end24_crit_edge, label %if.then

ceph_match_vxattr.exit.if.end24_crit_edge:        ; preds = %ceph_match_vxattr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then:                                          ; preds = %ceph_match_vxattr.exit
  %flags = getelementptr inbounds %struct.ceph_vxattr, ptr %retval.0.i146, i32 0, i32 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = shl i32 %9, 12
  %10 = and i32 %and, 16384
  %and5 = shl i32 %9, 5
  %11 = and i32 %and5, 256
  %12 = or i32 %11, %10
  %call.i = tail call i32 @__ceph_do_getattr(ptr noundef %inode, ptr noundef null, i32 noundef %12, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end13, label %if.then.cleanup95_crit_edge

if.then.cleanup95_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup95

if.end13:                                         ; preds = %if.then
  %exists_cb = getelementptr inbounds %struct.ceph_vxattr, ptr %retval.0.i146, i32 0, i32 3
  %13 = ptrtoint ptr %exists_cb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %exists_cb, align 4
  %tobool14.not = icmp eq ptr %14, null
  br i1 %tobool14.not, label %if.end13.if.then17_crit_edge, label %land.lhs.true

if.end13.if.then17_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then17

land.lhs.true:                                    ; preds = %if.end13
  %call16 = tail call zeroext i1 %14(ptr noundef %add.ptr.i) #15
  br i1 %call16, label %land.lhs.true.if.then17_crit_edge, label %land.lhs.true.cleanup95_crit_edge

land.lhs.true.cleanup95_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup95

land.lhs.true.if.then17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then17

if.then17:                                        ; preds = %land.lhs.true.if.then17_crit_edge, %if.end13.if.then17_crit_edge
  %getxattr_cb = getelementptr inbounds %struct.ceph_vxattr, ptr %retval.0.i146, i32 0, i32 2
  %15 = ptrtoint ptr %getxattr_cb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %getxattr_cb, align 4
  %call18 = tail call i32 %16(ptr noundef %add.ptr.i, ptr noundef %value, i32 noundef %size) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool19.not = icmp eq i32 %size, 0
  br i1 %tobool19.not, label %if.then17.cleanup95_crit_edge, label %land.lhs.true20

if.then17.cleanup95_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup95

land.lhs.true20:                                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call18, i32 %size)
  %cmp = icmp ugt i32 %call18, %size
  %spec.store.select = select i1 %cmp, i32 -34, i32 %call18
  br label %cleanup95

if.end24:                                         ; preds = %ceph_match_vxattr.exit.if.end24_crit_edge, %if.end16.i.1.if.end24_crit_edge
  %17 = tail call i32 @llvm.read_register.i32(metadata !227) #15
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 146
  %21 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %journal_info.i, align 4
  %tobool.not.i147 = icmp eq ptr %22, null
  br i1 %tobool.not.i147, label %if.end24.__get_request_mask.exit_crit_edge, label %land.lhs.true.i

if.end24.__get_request_mask.exit_crit_edge:       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %__get_request_mask.exit

land.lhs.true.i:                                  ; preds = %if.end24
  %r_target_inode.i = getelementptr inbounds %struct.ceph_mds_request, ptr %22, i32 0, i32 14
  %23 = ptrtoint ptr %r_target_inode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %r_target_inode.i, align 4
  %cmp.i = icmp eq ptr %24, %inode
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.__get_request_mask.exit_crit_edge

land.lhs.true.i.__get_request_mask.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__get_request_mask.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %r_op.i = getelementptr inbounds %struct.ceph_mds_request, ptr %22, i32 0, i32 4
  %25 = ptrtoint ptr %r_op.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %r_op.i, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %26, label %if.then.i.__get_request_mask.exit_crit_edge [
    i32 256, label %if.then.i.if.then10.i_crit_edge
    i32 260, label %if.then.i.if.then10.i_crit_edge170
    i32 259, label %if.then.i.if.then10.i_crit_edge171
    i32 257, label %if.then.i.if.then10.i_crit_edge172
    i32 770, label %if.then.i.if.then17.i_crit_edge
    i32 4865, label %if.then.i.if.then17.i_crit_edge173
  ]

if.then.i.if.then17.i_crit_edge173:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then17.i

if.then.i.if.then17.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then17.i

if.then.i.if.then10.i_crit_edge172:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then10.i

if.then.i.if.then10.i_crit_edge171:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then10.i

if.then.i.if.then10.i_crit_edge170:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then10.i

if.then.i.if.then10.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then10.i

if.then.i.__get_request_mask.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__get_request_mask.exit

if.then10.i:                                      ; preds = %if.then.i.if.then10.i_crit_edge, %if.then.i.if.then10.i_crit_edge170, %if.then.i.if.then10.i_crit_edge171, %if.then.i.if.then10.i_crit_edge172
  %r_args.i = getelementptr inbounds %struct.ceph_mds_request, ptr %22, i32 0, i32 17
  br label %if.end21.sink.split.i

if.then17.i:                                      ; preds = %if.then.i.if.then17.i_crit_edge, %if.then.i.if.then17.i_crit_edge173
  %mask19.i = getelementptr inbounds %struct.ceph_mds_request, ptr %22, i32 0, i32 17, i32 0, i32 6
  br label %if.end21.sink.split.i

if.end21.sink.split.i:                            ; preds = %if.then17.i, %if.then10.i
  %r_args.sink.i = phi ptr [ %r_args.i, %if.then10.i ], [ %mask19.i, %if.then17.i ]
  %28 = ptrtoint ptr %r_args.sink.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %r_args.sink.i, align 8
  %30 = lshr i32 %29, 24
  %phi.bo = and i32 %30, 64
  br label %__get_request_mask.exit

__get_request_mask.exit:                          ; preds = %if.end21.sink.split.i, %if.then.i.__get_request_mask.exit_crit_edge, %land.lhs.true.i.__get_request_mask.exit_crit_edge, %if.end24.__get_request_mask.exit_crit_edge
  %mask.0.i = phi i32 [ 0, %land.lhs.true.i.__get_request_mask.exit_crit_edge ], [ 0, %if.end24.__get_request_mask.exit_crit_edge ], [ 0, %if.then.i.__get_request_mask.exit_crit_edge ], [ %phi.bo, %if.end21.sink.split.i ]
  %i_ceph_lock = getelementptr i8, ptr %inode, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_getxattr.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_getxattr, %if.then30)) #15
          to label %do.end [label %if.then30], !srcloc !237

if.then30:                                        ; preds = %__get_request_mask.exit
  call void @__sanitizer_cov_trace_pc() #17
  %version = getelementptr i8, ptr %inode, i32 -536
  %31 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %version, align 8
  %index_version = getelementptr i8, ptr %inode, i32 -528
  %33 = ptrtoint ptr %index_version to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %index_version, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_getxattr.__UNIQUE_ID_ddebug335, ptr noundef nonnull @.str.13, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 954, ptr noundef %inode, ptr noundef %name, i64 noundef %32, i64 noundef %34) #15
  br label %do.end

do.end:                                           ; preds = %if.then30, %__get_request_mask.exit
  %version35 = getelementptr i8, ptr %inode, i32 -536
  %35 = ptrtoint ptr %version35 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %version35, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %cmp36 = icmp eq i64 %36, 0
  br i1 %cmp36, label %do.end.if.then42_crit_edge, label %lor.lhs.false

do.end.if.then42_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then42

lor.lhs.false:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.0.i)
  %tobool38.not = icmp eq i32 %mask.0.i, 0
  br i1 %tobool38.not, label %lor.lhs.false39, label %lor.lhs.false.if.end62_crit_edge

lor.lhs.false.if.end62_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

lor.lhs.false39:                                  ; preds = %lor.lhs.false
  %call40 = tail call i32 @__ceph_caps_issued_mask_metric(ptr noundef %add.ptr.i, i32 noundef 64, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %lor.lhs.false39.if.then42_crit_edge, label %lor.lhs.false39.if.end62_crit_edge

lor.lhs.false39.if.end62_crit_edge:               ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

lor.lhs.false39.if.then42_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then42

if.then42:                                        ; preds = %lor.lhs.false39.if.then42_crit_edge, %do.end.if.then42_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #15
  %37 = tail call i32 @llvm.read_register.i32(metadata !227) #15
  %and.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 146
  %41 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %journal_info, align 4
  %tobool45.not = icmp eq ptr %42, null
  br i1 %tobool45.not, label %if.end56, label %if.then46

if.then46:                                        ; preds = %if.then42
  %call47 = tail call i32 @___ratelimit(ptr noundef nonnull @__ceph_getxattr._rs, ptr noundef nonnull @.str.11) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then46.cleanup95_crit_edge, label %do.end52

if.then46.cleanup95_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup95

do.end52:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %inode) #19
  br label %cleanup95

if.end56:                                         ; preds = %if.then42
  %call.i148 = tail call i32 @__ceph_do_getattr(ptr noundef %inode, ptr noundef null, i32 noundef 64, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %tobool58.not = icmp eq i32 %call.i148, 0
  br i1 %tobool58.not, label %if.end60, label %if.end56.cleanup95_crit_edge

if.end56.cleanup95_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup95

if.end60:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #15
  br label %if.end62

if.end62:                                         ; preds = %if.end60, %lor.lhs.false39.if.end62_crit_edge, %lor.lhs.false.if.end62_crit_edge
  %call63 = tail call fastcc i32 @__build_xattrs(ptr noundef %inode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end62.out_crit_edge, label %if.end66

if.end62.out_crit_edge:                           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end66:                                         ; preds = %if.end62
  %call67 = tail call fastcc ptr @__get_xattr(ptr noundef %add.ptr.i, ptr noundef %name)
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %if.end66.out_crit_edge, label %if.end70

if.end66.out_crit_edge:                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end70:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool71.not = icmp eq i32 %size, 0
  %val_len76153 = getelementptr inbounds %struct.ceph_inode_xattr, ptr %call67, i32 0, i32 4
  %43 = ptrtoint ptr %val_len76153 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val_len76153, align 4
  br i1 %tobool71.not, label %if.end70.out_crit_edge, label %land.lhs.true72

if.end70.out_crit_edge:                           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true72:                                  ; preds = %if.end70
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %size)
  %cmp73 = icmp ugt i32 %44, %size
  br i1 %cmp73, label %land.lhs.true72.out_crit_edge, label %if.end79

land.lhs.true72.out_crit_edge:                    ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end79:                                         ; preds = %land.lhs.true72
  %45 = ptrtoint ptr %val_len76153 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val_len76153, align 4
  %val = getelementptr inbounds %struct.ceph_inode_xattr, ptr %call67, i32 0, i32 3
  %47 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %val, align 4
  %49 = call ptr @memcpy(ptr %value, ptr %48, i32 %46)
  %50 = tail call i32 @llvm.read_register.i32(metadata !227) #15
  %and.i149 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i149 to ptr
  %task82 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task82 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task82, align 8
  %journal_info83 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 146
  %54 = ptrtoint ptr %journal_info83 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %journal_info83, align 4
  %tobool84.not = icmp eq ptr %55, null
  br i1 %tobool84.not, label %if.end79.out_crit_edge, label %land.lhs.true85

if.end79.out_crit_edge:                           ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true85:                                  ; preds = %if.end79
  %call86 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(10) @.str.16, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %land.lhs.true88, label %land.lhs.true85.out_crit_edge

land.lhs.true85.out_crit_edge:                    ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true88:                                  ; preds = %land.lhs.true85
  %add.ptr = getelementptr i8, ptr %name, i32 9
  %call89 = tail call i32 @security_ismaclabel(ptr noundef %add.ptr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %land.lhs.true88.out_crit_edge, label %if.then91

land.lhs.true88.out_crit_edge:                    ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then91:                                        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #17
  %i_ceph_flags = getelementptr i8, ptr %inode, i32 -868
  %56 = ptrtoint ptr %i_ceph_flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %i_ceph_flags, align 4
  %or92 = or i32 %57, 64
  store i32 %or92, ptr %i_ceph_flags, align 4
  br label %out

out:                                              ; preds = %if.then91, %land.lhs.true88.out_crit_edge, %land.lhs.true85.out_crit_edge, %if.end79.out_crit_edge, %land.lhs.true72.out_crit_edge, %if.end70.out_crit_edge, %if.end66.out_crit_edge, %if.end62.out_crit_edge
  %err.1 = phi i32 [ %call63, %if.end62.out_crit_edge ], [ -34, %land.lhs.true72.out_crit_edge ], [ %46, %land.lhs.true85.out_crit_edge ], [ %46, %if.then91 ], [ %46, %land.lhs.true88.out_crit_edge ], [ %46, %if.end79.out_crit_edge ], [ -61, %if.end66.out_crit_edge ], [ %44, %if.end70.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #15
  br label %cleanup95

cleanup95:                                        ; preds = %out, %if.end56.cleanup95_crit_edge, %do.end52, %if.then46.cleanup95_crit_edge, %land.lhs.true20, %if.then17.cleanup95_crit_edge, %land.lhs.true.cleanup95_crit_edge, %if.then.cleanup95_crit_edge
  %retval.1 = phi i32 [ %err.1, %out ], [ %call.i, %if.then.cleanup95_crit_edge ], [ %spec.store.select, %land.lhs.true20 ], [ %call18, %if.then17.cleanup95_crit_edge ], [ -61, %land.lhs.true.cleanup95_crit_edge ], [ -16, %do.end52 ], [ -16, %if.then46.cleanup95_crit_edge ], [ %call.i148, %if.end56.cleanup95_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_caps_issued_mask_metric(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__build_xattrs(ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__build_xattrs.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__build_xattrs, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !237

if.then:                                          ; preds = %entry
  %i_xattrs = getelementptr i8, ptr %inode, i32 -568
  %0 = ptrtoint ptr %i_xattrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_xattrs, align 8
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %iov_len = getelementptr inbounds %struct.ceph_buffer, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iov_len, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.true ], [ 0, %if.then.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__build_xattrs.__UNIQUE_ID_ddebug332, ptr noundef nonnull @.str.82, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 761, i32 noundef %cond) #15
  br label %do.end

do.end:                                           ; preds = %cond.end, %entry
  %i_xattrs8 = getelementptr i8, ptr %inode, i32 -568
  %index_version = getelementptr i8, ptr %inode, i32 -528
  %4 = ptrtoint ptr %index_version to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %index_version, align 8
  %version = getelementptr i8, ptr %inode, i32 -536
  %6 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %version, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp.not = icmp ult i64 %5, %7
  br i1 %cmp.not, label %if.end11, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11:                                         ; preds = %do.end
  tail call void @__ceph_destroy_xattrs(ptr noundef %add.ptr.i)
  %8 = ptrtoint ptr %i_xattrs8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_xattrs8, align 8
  %tobool14.not242 = icmp eq ptr %9, null
  br i1 %tobool14.not242, label %if.end11.if.end109_crit_edge, label %land.lhs.true.lr.ph

if.end11.if.end109_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end109

land.lhs.true.lr.ph:                              ; preds = %if.end11
  %i_ceph_lock = getelementptr i8, ptr %inode, i32 -936
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end67.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %10 = phi ptr [ %9, %land.lhs.true.lr.ph ], [ %32, %for.end67.land.lhs.true_crit_edge ]
  %err.0243 = phi i32 [ 0, %land.lhs.true.lr.ph ], [ -12, %for.end67.land.lhs.true_crit_edge ]
  %iov_len18 = getelementptr inbounds %struct.ceph_buffer, ptr %10, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %iov_len18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iov_len18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp19 = icmp ugt i32 %12, 4
  br i1 %cmp19, label %if.then20, label %land.lhs.true.if.end109_crit_edge

land.lhs.true.if.end109_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end109

if.then20:                                        ; preds = %land.lhs.true
  %vec17 = getelementptr inbounds %struct.ceph_buffer, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %vec17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vec17, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %12
  %cmp.not.i.not = icmp ugt ptr %14, %add.ptr
  br i1 %cmp.not.i.not, label %if.then20.if.end125_crit_edge, label %do.end40, !prof !239

if.then20.if.end125_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

do.end40:                                         ; preds = %if.then20
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %14, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #15
  %18 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %version, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #15
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 4) #15
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %do.end40.bad_lock_crit_edge, label %if.end7.i.i, !prof !239

do.end40.bad_lock_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %bad_lock

if.end7.i.i:                                      ; preds = %do.end40
  %22 = extractvalue { i32, i1 } %20, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3392) #20
  %tobool47.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool47.not, label %if.end7.i.i.bad_lock_crit_edge, label %for.cond.preheader

if.end7.i.i.bad_lock_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bad_lock

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp50237.not = icmp eq i32 %16, 0
  br i1 %cmp50237.not, label %for.end.thread, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %17, i32 1)
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0238, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0238 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3136, i32 noundef 40) #21
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %i.0238
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i, ptr %arrayidx, align 4
  %tobool53.not = icmp eq ptr %call7.i, null
  br i1 %tobool53.not, label %for.body.bad_lock_crit_edge, label %for.cond

for.body.bad_lock_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %bad_lock

for.end:                                          ; preds = %for.cond
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #15
  %25 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %version, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %19)
  %cmp59.not = icmp eq i64 %26, %19
  br i1 %cmp59.not, label %for.end.while.cond.preheader_crit_edge, label %for.cond61.preheader

for.end.while.cond.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.preheader

for.end.thread:                                   ; preds = %for.cond.preheader
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #15
  %27 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %version, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %19)
  %cmp59.not271 = icmp eq i64 %28, %19
  br i1 %cmp59.not271, label %for.end.thread.while.cond.preheader_crit_edge, label %for.end.thread.for.end67_crit_edge

for.end.thread.for.end67_crit_edge:               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end67

for.end.thread.while.cond.preheader_crit_edge:    ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.preheader

for.cond61.preheader:                             ; preds = %for.end
  br i1 %cmp50237.not, label %for.cond61.preheader.for.end67_crit_edge, label %for.body63.preheader

for.cond61.preheader.for.end67_crit_edge:         ; preds = %for.cond61.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end67

for.body63.preheader:                             ; preds = %for.cond61.preheader
  %umax264 = call i32 @llvm.umax.i32(i32 %17, i32 1)
  br label %for.body63

while.cond.preheader:                             ; preds = %for.end.thread.while.cond.preheader_crit_edge, %for.end.while.cond.preheader_crit_edge
  %sub.ptr.lhs.cast.i.le = ptrtoint ptr %add.ptr to i32
  %add.ptr.i187.le = getelementptr i8, ptr %14, i32 4
  br label %while.cond

for.body63:                                       ; preds = %for.body63.for.body63_crit_edge, %for.body63.preheader
  %i.1240 = phi i32 [ %inc66, %for.body63.for.body63_crit_edge ], [ 0, %for.body63.preheader ]
  %arrayidx64 = getelementptr ptr, ptr %call8.i.i, i32 %i.1240
  %29 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx64, align 4
  tail call void @kfree(ptr noundef %30) #15
  %inc66 = add nuw i32 %i.1240, 1
  %exitcond265.not = icmp eq i32 %inc66, %umax264
  br i1 %exitcond265.not, label %for.body63.for.end67_crit_edge, label %for.body63.for.body63_crit_edge

for.body63.for.body63_crit_edge:                  ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body63

for.body63.for.end67_crit_edge:                   ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end67

for.end67:                                        ; preds = %for.body63.for.end67_crit_edge, %for.cond61.preheader.for.end67_crit_edge, %for.end.thread.for.end67_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #15
  %31 = ptrtoint ptr %i_xattrs8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_xattrs8, align 8
  %tobool14.not = icmp eq ptr %32, null
  br i1 %tobool14.not, label %for.end67.if.end109_crit_edge, label %for.end67.land.lhs.true_crit_edge

for.end67.land.lhs.true_crit_edge:                ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

for.end67.if.end109_crit_edge:                    ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end109

while.cond:                                       ; preds = %do.end99.while.cond_crit_edge, %while.cond.preheader
  %p.0 = phi ptr [ %add.ptr103, %do.end99.while.cond_crit_edge ], [ %add.ptr.i187.le, %while.cond.preheader ]
  %numattr.1 = phi i32 [ %dec, %do.end99.while.cond_crit_edge ], [ %17, %while.cond.preheader ]
  %err.1 = phi i32 [ 0, %do.end99.while.cond_crit_edge ], [ -5, %while.cond.preheader ]
  %dec = add i32 %numattr.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %numattr.1)
  %tobool69.not = icmp eq i32 %numattr.1, 0
  br i1 %tobool69.not, label %while.end, label %do.body71

do.body71:                                        ; preds = %while.cond
  %cmp.not.i188 = icmp ule ptr %p.0, %add.ptr
  %sub.ptr.rhs.cast.i190 = ptrtoint ptr %p.0 to i32
  %sub.ptr.sub.i191 = sub i32 %sub.ptr.lhs.cast.i.le, %sub.ptr.rhs.cast.i190
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i191)
  %cmp1.i192 = icmp ugt i32 %sub.ptr.sub.i191, 3
  %33 = select i1 %cmp.not.i188, i1 %cmp1.i192, i1 false
  br i1 %33, label %do.end82, label %do.body71.bad_crit_edge, !prof !241

do.body71.bad_crit_edge:                          ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #17
  br label %bad

do.end82:                                         ; preds = %do.body71
  %34 = ptrtoint ptr %p.0 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %p.0, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #15
  %add.ptr.i193 = getelementptr i8, ptr %p.0, i32 4
  %add.ptr86 = getelementptr i8, ptr %add.ptr.i193, i32 %36
  %cmp.not.i194 = icmp ule ptr %add.ptr86, %add.ptr
  %sub.ptr.rhs.cast.i196 = ptrtoint ptr %add.ptr86 to i32
  %sub.ptr.sub.i197 = sub i32 %sub.ptr.lhs.cast.i.le, %sub.ptr.rhs.cast.i196
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i197)
  %cmp1.i198 = icmp ugt i32 %sub.ptr.sub.i197, 3
  %37 = select i1 %cmp.not.i194, i1 %cmp1.i198, i1 false
  br i1 %37, label %do.end99, label %do.end82.bad_crit_edge, !prof !241

do.end82.bad_crit_edge:                           ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #17
  br label %bad

do.end99:                                         ; preds = %do.end82
  %38 = ptrtoint ptr %add.ptr86 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %add.ptr86, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #15
  %add.ptr.i199 = getelementptr i8, ptr %add.ptr86, i32 4
  %add.ptr103 = getelementptr i8, ptr %add.ptr.i199, i32 %40
  %arrayidx104 = getelementptr ptr, ptr %call8.i.i, i32 %dec
  %call105 = tail call fastcc i32 @__set_xattr(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i193, i32 noundef %36, ptr noundef %add.ptr.i199, i32 noundef %40, i32 noundef 0, i32 noundef 0, ptr noundef %arrayidx104)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %do.end99.bad_crit_edge, label %do.end99.while.cond_crit_edge

do.end99.while.cond_crit_edge:                    ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond

do.end99.bad_crit_edge:                           ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #17
  br label %bad

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #15
  br label %if.end109

if.end109:                                        ; preds = %while.end, %for.end67.if.end109_crit_edge, %land.lhs.true.if.end109_crit_edge, %if.end11.if.end109_crit_edge
  %err.2 = phi i32 [ %err.1, %while.end ], [ 0, %if.end11.if.end109_crit_edge ], [ -12, %for.end67.if.end109_crit_edge ], [ %err.0243, %land.lhs.true.if.end109_crit_edge ]
  %41 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %version, align 8
  %43 = ptrtoint ptr %index_version to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %index_version, align 8
  %dirty = getelementptr i8, ptr %inode, i32 -556
  %44 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %dirty, align 4
  br label %cleanup

bad_lock:                                         ; preds = %for.body.bad_lock_crit_edge, %if.end7.i.i.bad_lock_crit_edge, %do.end40.bad_lock_crit_edge
  %retval.0.i.i210 = phi ptr [ %call8.i.i, %for.body.bad_lock_crit_edge ], [ null, %if.end7.i.i.bad_lock_crit_edge ], [ null, %do.end40.bad_lock_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #15
  br label %bad

bad:                                              ; preds = %bad_lock, %do.end99.bad_crit_edge, %do.end82.bad_crit_edge, %do.body71.bad_crit_edge
  %numattr.2 = phi i32 [ %17, %bad_lock ], [ %dec, %do.body71.bad_crit_edge ], [ %dec, %do.end82.bad_crit_edge ], [ %dec, %do.end99.bad_crit_edge ]
  %xattrs.1 = phi ptr [ %retval.0.i.i210, %bad_lock ], [ %call8.i.i, %do.body71.bad_crit_edge ], [ %call8.i.i, %do.end82.bad_crit_edge ], [ %call8.i.i, %do.end99.bad_crit_edge ]
  %err.3 = phi i32 [ -12, %bad_lock ], [ %call105, %do.end99.bad_crit_edge ], [ %err.1, %do.end82.bad_crit_edge ], [ %err.1, %do.body71.bad_crit_edge ]
  %tobool116.not = icmp eq ptr %xattrs.1, null
  br i1 %tobool116.not, label %bad.if.end125_crit_edge, label %for.cond118.preheader

bad.if.end125_crit_edge:                          ; preds = %bad
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

for.cond118.preheader:                            ; preds = %bad
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %numattr.2)
  %cmp119245.not = icmp eq i32 %numattr.2, 0
  br i1 %cmp119245.not, label %for.cond118.preheader.for.end124_crit_edge, label %for.cond118.preheader.for.body120_crit_edge

for.cond118.preheader.for.body120_crit_edge:      ; preds = %for.cond118.preheader
  br label %for.body120

for.cond118.preheader.for.end124_crit_edge:       ; preds = %for.cond118.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end124

for.body120:                                      ; preds = %for.body120.for.body120_crit_edge, %for.cond118.preheader.for.body120_crit_edge
  %i.2246 = phi i32 [ %inc123, %for.body120.for.body120_crit_edge ], [ 0, %for.cond118.preheader.for.body120_crit_edge ]
  %arrayidx121 = getelementptr ptr, ptr %xattrs.1, i32 %i.2246
  %45 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx121, align 4
  tail call void @kfree(ptr noundef %46) #15
  %inc123 = add nuw i32 %i.2246, 1
  %exitcond266.not = icmp eq i32 %inc123, %numattr.2
  br i1 %exitcond266.not, label %for.body120.for.end124_crit_edge, label %for.body120.for.body120_crit_edge

for.body120.for.body120_crit_edge:                ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body120

for.body120.for.end124_crit_edge:                 ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end124

for.end124:                                       ; preds = %for.body120.for.end124_crit_edge, %for.cond118.preheader.for.end124_crit_edge
  tail call void @kfree(ptr noundef nonnull %xattrs.1) #15
  br label %if.end125

if.end125:                                        ; preds = %for.end124, %bad.if.end125_crit_edge, %if.then20.if.end125_crit_edge
  %err.3215 = phi i32 [ %err.3, %for.end124 ], [ %err.3, %bad.if.end125_crit_edge ], [ %err.0243, %if.then20.if.end125_crit_edge ]
  %names_size = getelementptr i8, ptr %inode, i32 -548
  %47 = ptrtoint ptr %names_size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %names_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end125, %if.end109, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3215, %if.end125 ], [ %err.2, %if.end109 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__get_xattr(ptr nocapture noundef readonly %ci, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %name) #22
  %index = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 2
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %index, align 4
  %tobool.not61 = icmp eq ptr %1, null
  br i1 %tobool.not61, label %entry.do.body21_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.do.body21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body21

while.body:                                       ; preds = %if.end20.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %12, %if.end20.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %name1 = getelementptr inbounds %struct.ceph_inode_xattr, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name1, align 4
  %name_len2 = getelementptr inbounds %struct.ceph_inode_xattr, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %name_len2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %name_len2, align 4
  %call3 = tail call i32 @strncmp(ptr noundef %name, ptr noundef %4, i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %6)
  %cmp5 = icmp sgt i32 %call, %6
  %spec.select = zext i1 %cmp5 to i32
  %c.0 = select i1 %cmp, i32 %spec.select, i32 %call3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0)
  %cmp6 = icmp slt i32 %c.0, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2
  br label %if.end20

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0)
  %cmp8.not = icmp eq i32 %c.0, 0
  br i1 %cmp8.not, label %do.body, label %if.then9

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 1
  br label %if.end20

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__get_xattr.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__get_xattr, %if.then16)) #15
          to label %cleanup [label %if.then16], !srcloc !237

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %val_len = getelementptr inbounds %struct.ceph_inode_xattr, ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %val_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val_len, align 4
  %val = getelementptr inbounds %struct.ceph_inode_xattr, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %val, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__get_xattr.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.85, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 651, ptr noundef %name, i32 noundef %8, ptr noundef %10) #15
  br label %cleanup

if.end20:                                         ; preds = %if.then9, %if.then7
  %p.1 = phi ptr [ %rb_left, %if.then7 ], [ %rb_right, %if.then9 ]
  %11 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end20.do.body21_crit_edge, label %if.end20.while.body_crit_edge

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end20.do.body21_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body21

do.body21:                                        ; preds = %if.end20.do.body21_crit_edge, %entry.do.body21_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__get_xattr.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__get_xattr, %if.then33)) #15
          to label %cleanup [label %if.then33], !srcloc !237

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__get_xattr.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.87, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 656, ptr noundef %name) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %do.body21, %if.then16, %do.body
  %13 = phi ptr [ null, %do.body21 ], [ %2, %do.body ], [ null, %if.then33 ], [ %2, %if.then16 ]
  ret ptr %13
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_ismaclabel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_listxattr(ptr nocapture noundef readonly %dentry, ptr noundef %names, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -952
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  %i_ceph_lock = getelementptr i8, ptr %1, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_listxattr.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_listxattr, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !237

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %version = getelementptr i8, ptr %1, i32 -536
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %version, align 8
  %index_version = getelementptr i8, ptr %1, i32 -528
  %4 = ptrtoint ptr %index_version to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %index_version, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_listxattr.__UNIQUE_ID_ddebug336, ptr noundef nonnull @.str.19, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1013, ptr noundef %1, i64 noundef %3, i64 noundef %5) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %version9 = getelementptr i8, ptr %1, i32 -536
  %6 = ptrtoint ptr %version9 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %version9, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp10 = icmp eq i64 %7, 0
  br i1 %cmp10, label %do.end.if.then13_crit_edge, label %lor.lhs.false

do.end.if.then13_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

lor.lhs.false:                                    ; preds = %do.end
  %call11 = tail call i32 @__ceph_caps_issued_mask_metric(ptr noundef %add.ptr.i, i32 noundef 64, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %lor.lhs.false.if.then13_crit_edge, label %lor.lhs.false.if.end20_crit_edge

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %do.end.if.then13_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #15
  %call.i = tail call i32 @__ceph_do_getattr(ptr noundef %1, ptr noundef null, i32 noundef 64, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.end18, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end18:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #15
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %lor.lhs.false.if.end20_crit_edge
  %call21 = tail call fastcc i32 @__build_xattrs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.out_crit_edge, label %if.end24

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end24:                                         ; preds = %if.end20
  %names_size = getelementptr i8, ptr %1, i32 -548
  %8 = ptrtoint ptr %names_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %names_size, align 4
  %count = getelementptr i8, ptr %1, i32 -552
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 8
  %add = add i32 %11, %9
  br i1 %cmp, label %if.end24.out_crit_edge, label %if.then28

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %size)
  %cmp29 = icmp ugt i32 %add, %size
  br i1 %cmp29, label %if.then28.out_crit_edge, label %if.end31

if.then28.out_crit_edge:                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end31:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__copy_xattr_names(ptr noundef %add.ptr.i, ptr noundef %names)
  br label %out

out:                                              ; preds = %if.end31, %if.then28.out_crit_edge, %if.end24.out_crit_edge, %if.end20.out_crit_edge
  %err.0 = phi i32 [ %call21, %if.end20.out_crit_edge ], [ -34, %if.then28.out_crit_edge ], [ %add, %if.end31 ], [ %add, %if.end24.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then13.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ %call.i, %if.then13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__copy_xattr_names(ptr noundef %ci, ptr noundef %dest) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 2
  %call = tail call ptr @rb_first(ptr noundef %index) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__copy_xattr_names.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__copy_xattr_names, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !237

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %count = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 4
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__copy_xattr_names.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.90, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 701, i32 noundef %1) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool6.not6 = icmp eq ptr %call, null
  br i1 %tobool6.not6, label %do.end.while.end_crit_edge, label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %names_size = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 5
  br label %while.body

while.body:                                       ; preds = %do.end28.while.body_crit_edge, %while.body.lr.ph
  %dest.addr.09 = phi ptr [ %dest, %while.body.lr.ph ], [ %add.ptr30, %do.end28.while.body_crit_edge ]
  %p.07 = phi ptr [ %call, %while.body.lr.ph ], [ %call31, %do.end28.while.body_crit_edge ]
  %name = getelementptr inbounds %struct.ceph_inode_xattr, ptr %p.07, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %name_len = getelementptr inbounds %struct.ceph_inode_xattr, ptr %p.07, i32 0, i32 2
  %4 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %name_len, align 4
  %6 = call ptr @memcpy(ptr %dest.addr.09, ptr %3, i32 %5)
  %7 = load i32, ptr %name_len, align 4
  %arrayidx = getelementptr i8, ptr %dest.addr.09, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__copy_xattr_names.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__copy_xattr_names, %if.then21)) #15
          to label %do.end28 [label %if.then21], !srcloc !237

if.then21:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %11 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %name_len, align 4
  %13 = ptrtoint ptr %names_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %names_size, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__copy_xattr_names.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.92, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 709, ptr noundef %dest.addr.09, ptr noundef nonnull %p.07, ptr noundef %10, i32 noundef %12, i32 noundef %14) #15
  br label %do.end28

do.end28:                                         ; preds = %if.then21, %while.body
  %15 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %name_len, align 4
  %add = add i32 %16, 1
  %add.ptr30 = getelementptr i8, ptr %dest.addr.09, i32 %add
  %call31 = tail call ptr @rb_next(ptr noundef nonnull %p.07) #15
  %tobool6.not = icmp eq ptr %call31, null
  br i1 %tobool6.not, label %do.end28.while.end_crit_edge, label %do.end28.while.body_crit_edge

do.end28.while.body_crit_edge:                    ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

do.end28.while.end_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %do.end28.while.end_crit_edge, %do.end.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ceph_setxattr(ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %prealloc_cf = alloca ptr, align 4
  %xattr = alloca ptr, align 4
  %tmp116 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prealloc_cf) #15
  %6 = ptrtoint ptr %prealloc_cf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %prealloc_cf, align 4
  %call3 = tail call i32 @strlen(ptr noundef %name) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xattr) #15
  %7 = ptrtoint ptr %xattr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %xattr, align 4
  %snap.i = getelementptr i8, ptr %inode, i32 -944
  %8 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %9)
  %cmp.not = icmp eq i64 %9, -2
  br i1 %cmp.not, label %if.end, label %entry.cleanup162_crit_edge

entry.cleanup162_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup162

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %inode, align 8
  %12 = and i16 %11, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %12)
  %switch.selectcmp.i.i = icmp eq i16 %12, -32768
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr @ceph_file_vxattrs, ptr null
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %12)
  %switch.selectcmp10.i.i = icmp eq i16 %12, 16384
  %switch.select11.i.i = select i1 %switch.selectcmp10.i.i, ptr @ceph_dir_vxattrs, ptr %switch.select.i.i
  %tobool.not.i = icmp eq ptr %switch.select11.i.i, null
  br i1 %tobool.not.i, label %if.end.while.body11.i_crit_edge, label %while.cond.preheader.i

if.end.while.body11.i_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body11.i

while.cond.preheader.i:                           ; preds = %if.end
  %13 = ptrtoint ptr %switch.select11.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %switch.select11.i.i, align 4
  %tobool2.not31.i = icmp eq ptr %14, null
  br i1 %tobool2.not31.i, label %while.cond.preheader.i.while.body11.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.while.body11.i_crit_edge:  ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body11.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %15 = phi ptr [ %17, %if.end.i.while.body.i_crit_edge ], [ %14, %while.cond.preheader.i.while.body.i_crit_edge ]
  %vxattr.032.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %switch.select11.i.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %call4.i = tail call i32 @strcmp(ptr noundef nonnull %15, ptr noundef %name) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %while.body.i.ceph_match_vxattr.exit_crit_edge, label %if.end.i

while.body.i.ceph_match_vxattr.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_match_vxattr.exit

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.ceph_vxattr, ptr %vxattr.032.i, i32 1
  %16 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool2.not.i = icmp eq ptr %17, null
  br i1 %tobool2.not.i, label %if.end.i.while.body11.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

if.end.i.while.body11.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body11.i

while.body11.i:                                   ; preds = %if.end.i.while.body11.i_crit_edge, %while.cond.preheader.i.while.body11.i_crit_edge, %if.end.while.body11.i_crit_edge
  %call13.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(18) @.str.75, ptr noundef %name) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %while.body11.i.ceph_match_vxattr.exit_crit_edge, label %if.end16.i

while.body11.i.ceph_match_vxattr.exit_crit_edge:  ; preds = %while.body11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_match_vxattr.exit

if.end16.i:                                       ; preds = %while.body11.i
  %call13.i.1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(15) @.str.76, ptr noundef %name) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.1)
  %tobool14.not.i.1 = icmp eq i32 %call13.i.1, 0
  br i1 %tobool14.not.i.1, label %if.end16.i.ceph_match_vxattr.exit_crit_edge, label %if.end16.i.1

if.end16.i.ceph_match_vxattr.exit_crit_edge:      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_match_vxattr.exit

if.end16.i.1:                                     ; preds = %if.end16.i
  %call13.i.2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(14) @.str.77, ptr noundef %name) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.2)
  %tobool14.not.i.2 = icmp eq i32 %call13.i.2, 0
  br i1 %tobool14.not.i.2, label %if.end16.i.1.ceph_match_vxattr.exit_crit_edge, label %if.end16.i.1.if.end17_crit_edge

if.end16.i.1.if.end17_crit_edge:                  ; preds = %if.end16.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.end16.i.1.ceph_match_vxattr.exit_crit_edge:    ; preds = %if.end16.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_match_vxattr.exit

ceph_match_vxattr.exit:                           ; preds = %if.end16.i.1.ceph_match_vxattr.exit_crit_edge, %if.end16.i.ceph_match_vxattr.exit_crit_edge, %while.body11.i.ceph_match_vxattr.exit_crit_edge, %while.body.i.ceph_match_vxattr.exit_crit_edge
  %retval.0.i255 = phi ptr [ @ceph_common_vxattrs, %while.body11.i.ceph_match_vxattr.exit_crit_edge ], [ getelementptr inbounds ([4 x %struct.ceph_vxattr], ptr @ceph_common_vxattrs, i32 0, i32 1), %if.end16.i.ceph_match_vxattr.exit_crit_edge ], [ getelementptr inbounds ([4 x %struct.ceph_vxattr], ptr @ceph_common_vxattrs, i32 0, i32 2), %if.end16.i.1.ceph_match_vxattr.exit_crit_edge ], [ %vxattr.032.i, %while.body.i.ceph_match_vxattr.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i255, null
  br i1 %tobool.not, label %ceph_match_vxattr.exit.if.end17_crit_edge, label %if.then6

ceph_match_vxattr.exit.if.end17_crit_edge:        ; preds = %ceph_match_vxattr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then6:                                         ; preds = %ceph_match_vxattr.exit
  %flags7 = getelementptr inbounds %struct.ceph_vxattr, ptr %retval.0.i255, i32 0, i32 4
  %18 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags7, align 4
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end10, label %if.then6.cleanup162_crit_edge

if.then6.cleanup162_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup162

if.end10:                                         ; preds = %if.then6
  %tobool11.not = icmp eq ptr %value, null
  br i1 %tobool11.not, label %if.end10.if.end17_crit_edge, label %land.lhs.true

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %retval.0.i255 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %retval.0.i255, align 4
  %call13 = tail call i32 @strncmp(ptr noundef %21, ptr noundef nonnull dereferenceable(11) @.str.20, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp ne i32 %call13, 0
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true, %if.end10.if.end17_crit_edge, %ceph_match_vxattr.exit.if.end17_crit_edge, %if.end16.i.1.if.end17_crit_edge
  %check_realm.0.off0 = phi i1 [ true, %if.end10.if.end17_crit_edge ], [ true, %ceph_match_vxattr.exit.if.end17_crit_edge ], [ %tobool14.not, %land.lhs.true ], [ true, %if.end16.i.1.if.end17_crit_edge ]
  %call18 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.21, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.if.end130_crit_edge, label %if.end21

if.end17.if.end130_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end130

if.end21:                                         ; preds = %if.end17
  %add = add i32 %call3, 1
  %call22 = tail call ptr @kmemdup(ptr noundef %name, i32 noundef %add, i32 noundef 3136) #15
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.out_crit_edge, label %if.end25

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool26.not = icmp eq i32 %size, 0
  br i1 %tobool26.not, label %if.end25.if.end32_crit_edge, label %if.then27

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then27:                                        ; preds = %if.end25
  %call28 = tail call ptr @kmemdup(ptr noundef %value, i32 noundef %size, i32 noundef 3136) #15
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.then27.out_crit_edge, label %if.then27.if.end32_crit_edge

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then27.out_crit_edge:                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end32:                                         ; preds = %if.then27.if.end32_crit_edge, %if.end25.if.end32_crit_edge
  %newval.0 = phi ptr [ %call28, %if.then27.if.end32_crit_edge ], [ null, %if.end25.if.end32_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3136, i32 noundef 40) #21
  %23 = ptrtoint ptr %xattr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i, ptr %xattr, align 4
  %tobool34.not = icmp eq ptr %call7.i, null
  br i1 %tobool34.not, label %if.end32.out_crit_edge, label %if.end36

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end36:                                         ; preds = %if.end32
  %call37 = tail call ptr @ceph_alloc_cap_flush() #15
  %24 = ptrtoint ptr %prealloc_cf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call37, ptr %prealloc_cf, align 4
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end36.out_crit_edge, label %if.end40

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end40:                                         ; preds = %if.end36
  %i_ceph_lock = getelementptr i8, ptr %inode, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #15
  %call41282290 = tail call i32 @__ceph_caps_issued(ptr noundef %add.ptr.i, ptr noundef null) #15
  %version = getelementptr i8, ptr %inode, i32 -536
  %25 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %cmp42283291 = icmp eq i64 %26, 0
  %and43284292 = and i32 %call41282290, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43284292)
  %tobool44.not285293 = icmp eq i32 %and43284292, 0
  %or.cond286294 = select i1 %cmp42283291, i1 true, i1 %tobool44.not285293
  br i1 %or.cond286294, label %do_sync.thread, label %if.end46.lr.ph.lr.ph

do_sync.thread:                                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #15
  br label %if.end130

if.end46.lr.ph.lr.ph:                             ; preds = %if.end40
  %i_head_snapc = getelementptr i8, ptr %inode, i32 -396
  %snap_rwsem = getelementptr inbounds %struct.ceph_mds_client, ptr %5, i32 0, i32 15
  %count.i = getelementptr i8, ptr %inode, i32 -552
  %names_size.i = getelementptr i8, ptr %inode, i32 -548
  %vals_size.i = getelementptr i8, ptr %inode, i32 -544
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool14.not.i256 = icmp eq i32 %call3, 0
  %add17.i = add i32 %size, 12
  %add17.op.i = add i32 %add17.i, %call3
  %add.i = select i1 %tobool14.not.i256, i32 4, i32 %add17.op.i
  %prealloc_blob = getelementptr i8, ptr %inode, i32 -564
  br label %if.end46.lr.ph

if.end46.lr.ph:                                   ; preds = %cleanup.if.end46.lr.ph_crit_edge, %if.end46.lr.ph.lr.ph
  %call41282298 = phi i32 [ %call41282290, %if.end46.lr.ph.lr.ph ], [ %call41282, %cleanup.if.end46.lr.ph_crit_edge ]
  %old_blob.0.ph296 = phi ptr [ null, %if.end46.lr.ph.lr.ph ], [ %spec.select251, %cleanup.if.end46.lr.ph_crit_edge ]
  %lock_snap_rwsem.0.ph295 = phi i8 [ 0, %if.end46.lr.ph.lr.ph ], [ %lock_snap_rwsem.1, %cleanup.if.end46.lr.ph_crit_edge ]
  %27 = and i8 %lock_snap_rwsem.0.ph295, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool47.not333 = icmp eq i8 %27, 0
  br i1 %tobool47.not333, label %land.lhs.true48, label %if.end46.lr.ph.do.body_crit_edge

if.end46.lr.ph.do.body_crit_edge:                 ; preds = %if.end46.lr.ph
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

land.lhs.true48:                                  ; preds = %if.end46.lr.ph
  %28 = ptrtoint ptr %i_head_snapc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_head_snapc, align 4
  %tobool49.not = icmp eq ptr %29, null
  br i1 %tobool49.not, label %if.then50, label %land.lhs.true48.do.body_crit_edge

land.lhs.true48.do.body_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.then50:                                        ; preds = %land.lhs.true48
  %call51 = tail call i32 @down_read_trylock(ptr noundef %snap_rwsem) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then53, label %if.then50.do.body_crit_edge

if.then50.do.body_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.then53:                                        ; preds = %if.then50
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #15
  tail call void @down_read(ptr noundef %snap_rwsem) #15
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #15
  %call41 = tail call i32 @__ceph_caps_issued(ptr noundef %add.ptr.i, ptr noundef null) #15
  %30 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %cmp42 = icmp eq i64 %31, 0
  %and43 = and i32 %call41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %or.cond = select i1 %cmp42, i1 true, i1 %tobool44.not
  br i1 %or.cond, label %do_sync.thread312, label %if.then53.do.body_crit_edge

if.then53.do.body_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do_sync.thread312:                                ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #15
  br label %if.then128

do.body:                                          ; preds = %if.then53.do.body_crit_edge, %if.then50.do.body_crit_edge, %land.lhs.true48.do.body_crit_edge, %if.end46.lr.ph.do.body_crit_edge
  %call41288.lcssa = phi i32 [ %call41282298, %if.end46.lr.ph.do.body_crit_edge ], [ %call41, %if.then53.do.body_crit_edge ], [ %call41282298, %land.lhs.true48.do.body_crit_edge ], [ %call41282298, %if.then50.do.body_crit_edge ]
  %lock_snap_rwsem.1 = phi i8 [ %lock_snap_rwsem.0.ph295, %if.end46.lr.ph.do.body_crit_edge ], [ 1, %if.then53.do.body_crit_edge ], [ %lock_snap_rwsem.0.ph295, %land.lhs.true48.do.body_crit_edge ], [ 1, %if.then50.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_setxattr.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_setxattr, %if.then63)) #15
          to label %do.end [label %if.then63], !srcloc !237

if.then63:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call65 = tail call ptr @ceph_cap_string(i32 noundef %call41288.lcssa) #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_setxattr.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.24, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1184, ptr noundef %inode, ptr noundef %name, ptr noundef %call65) #15
  br label %do.end

do.end:                                           ; preds = %if.then63, %do.body
  %call67 = tail call fastcc i32 @__build_xattrs(ptr noundef %inode)
  %32 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count.i, align 8
  %34 = ptrtoint ptr %names_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %names_size.i, align 4
  %36 = ptrtoint ptr %vals_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vals_size.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__get_required_blob_size.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_setxattr, %if.then.i)) #15
          to label %__get_required_blob_size.exit [label %if.then.i], !srcloc !237

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count.i, align 8
  %40 = ptrtoint ptr %names_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %names_size.i, align 4
  %42 = ptrtoint ptr %vals_size.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vals_size.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__get_required_blob_size.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.30, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 845, i32 noundef %39, i32 noundef %41, i32 noundef %43) #15
  br label %__get_required_blob_size.exit

__get_required_blob_size.exit:                    ; preds = %if.then.i, %do.end
  %mul.i = shl i32 %33, 3
  %add2.i = add i32 %mul.i, %add.i
  %add4.i = add i32 %add2.i, %35
  %size.0.i = add i32 %add4.i, %37
  %44 = ptrtoint ptr %prealloc_blob to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prealloc_blob, align 4
  %tobool70.not = icmp eq ptr %45, null
  br i1 %tobool70.not, label %__get_required_blob_size.exit.if.then75_crit_edge, label %lor.lhs.false71

__get_required_blob_size.exit.if.then75_crit_edge: ; preds = %__get_required_blob_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then75

lor.lhs.false71:                                  ; preds = %__get_required_blob_size.exit
  %alloc_len = getelementptr inbounds %struct.ceph_buffer, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %alloc_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %alloc_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.i, i32 %47)
  %cmp74 = icmp ugt i32 %size.0.i, %47
  br i1 %cmp74, label %lor.lhs.false71.if.then75_crit_edge, label %if.end108

lor.lhs.false71.if.then75_crit_edge:              ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then75

if.then75:                                        ; preds = %lor.lhs.false71.if.then75_crit_edge, %__get_required_blob_size.exit.if.then75_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #15
  %tobool.not.i257 = icmp eq ptr %old_blob.0.ph296, null
  br i1 %tobool.not.i257, label %if.then75.ceph_buffer_put.exit_crit_edge, label %if.then.i258

if.then75.ceph_buffer_put.exit_crit_edge:         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_buffer_put.exit

if.then.i258:                                     ; preds = %if.then75
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old_blob.0.ph296, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !242
  tail call void @llvm.prefetch.p0(ptr nonnull %old_blob.0.ph296, i32 1, i32 3, i32 1) #15
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %old_blob.0.ph296, ptr nonnull %old_blob.0.ph296, i32 1, ptr nonnull elementtype(i32) %old_blob.0.ph296) #15, !srcloc !243
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ceph_buffer_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.ceph_buffer_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_buffer_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %old_blob.0.ph296, i32 noundef 3) #15
  br label %ceph_buffer_put.exit

if.then.i.i:                                      ; preds = %if.then.i258
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !244
  tail call void @ceph_buffer_release(ptr noundef nonnull %old_blob.0.ph296) #15, !callees !245
  br label %ceph_buffer_put.exit

ceph_buffer_put.exit:                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ceph_buffer_put.exit_crit_edge, %if.then75.ceph_buffer_put.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_setxattr.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_setxattr, %if.then89)) #15
          to label %do.end93 [label %if.then89], !srcloc !237

if.then89:                                        ; preds = %ceph_buffer_put.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_setxattr.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.26, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1195, i32 noundef %size.0.i) #15
  br label %do.end93

do.end93:                                         ; preds = %if.then89, %ceph_buffer_put.exit
  %call94 = tail call ptr @ceph_buffer_new(i32 noundef %size.0.i, i32 noundef 3136) #15
  %tobool95.not = icmp eq ptr %call94, null
  br i1 %tobool95.not, label %do_sync_unlocked, label %cleanup

cleanup:                                          ; preds = %do.end93
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #15
  %49 = ptrtoint ptr %prealloc_blob to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prealloc_blob, align 4
  %tobool101.not = icmp eq ptr %50, null
  %spec.select251 = select i1 %tobool101.not, ptr %old_blob.0.ph296, ptr %50
  store ptr %call94, ptr %prealloc_blob, align 4
  %call41282 = tail call i32 @__ceph_caps_issued(ptr noundef %add.ptr.i, ptr noundef null) #15
  %51 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %52)
  %cmp42283 = icmp eq i64 %52, 0
  %and43284 = and i32 %call41282, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43284)
  %tobool44.not285 = icmp eq i32 %and43284, 0
  %or.cond286 = select i1 %cmp42283, i1 true, i1 %tobool44.not285
  br i1 %or.cond286, label %do_sync, label %cleanup.if.end46.lr.ph_crit_edge

cleanup.if.end46.lr.ph_crit_edge:                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46.lr.ph

if.end108:                                        ; preds = %lor.lhs.false71
  %tobool109.not = icmp eq ptr %value, null
  %cond = select i1 %tobool109.not, i32 -1, i32 1
  %call110 = call fastcc i32 @__set_xattr(ptr noundef %add.ptr.i, ptr noundef nonnull %call22, i32 noundef %call3, ptr noundef %newval.0, i32 noundef %size, i32 noundef %flags, i32 noundef %cond, ptr noundef nonnull %xattr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.then112, label %if.end108.if.end117_crit_edge

if.end108.if.end117_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end117

if.then112:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #17
  %call113 = call i32 @__ceph_mark_dirty_caps(ptr noundef %add.ptr.i, i32 noundef 128, ptr noundef nonnull %prealloc_cf) #15
  %dirty115 = getelementptr i8, ptr %inode, i32 -556
  %53 = ptrtoint ptr %dirty115 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %dirty115, align 4
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp116) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp116, ptr noundef %inode) #15
  %54 = call ptr @memcpy(ptr %i_ctime, ptr %tmp116, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp116) #15
  br label %if.end117

if.end117:                                        ; preds = %if.then112, %if.end108.if.end117_crit_edge
  %dirty.0 = phi i32 [ 0, %if.end108.if.end117_crit_edge ], [ %call113, %if.then112 ]
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #15
  call fastcc void @ceph_buffer_put(ptr noundef %old_blob.0.ph296)
  %55 = and i8 %lock_snap_rwsem.1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool119.not = icmp eq i8 %55, 0
  br i1 %tobool119.not, label %if.end117.if.end122_crit_edge, label %if.then120

if.end117.if.end122_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end122

if.then120:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #17
  call void @up_read(ptr noundef %snap_rwsem) #15
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.end117.if.end122_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dirty.0)
  %tobool123.not = icmp eq i32 %dirty.0, 0
  br i1 %tobool123.not, label %if.end122.if.end125_crit_edge, label %if.then124

if.end122.if.end125_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

if.then124:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #17
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef %dirty.0) #15
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %if.end122.if.end125_crit_edge
  %56 = ptrtoint ptr %prealloc_cf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prealloc_cf, align 4
  call void @ceph_free_cap_flush(ptr noundef %57) #15
  br label %cleanup162

do_sync:                                          ; preds = %cleanup
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #15
  %58 = and i8 %lock_snap_rwsem.1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %extract.t.not = icmp eq i8 %58, 0
  br i1 %extract.t.not, label %do_sync.if.end130_crit_edge, label %do_sync.if.then128_crit_edge

do_sync.if.then128_crit_edge:                     ; preds = %do_sync
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then128

do_sync.if.end130_crit_edge:                      ; preds = %do_sync
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end130

do_sync_unlocked:                                 ; preds = %do.end93
  %59 = and i8 %lock_snap_rwsem.1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %extract.t250266.not = icmp eq i8 %59, 0
  br i1 %extract.t250266.not, label %do_sync_unlocked.if.end130_crit_edge, label %do_sync_unlocked.if.then128_crit_edge

do_sync_unlocked.if.then128_crit_edge:            ; preds = %do_sync_unlocked
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then128

do_sync_unlocked.if.end130_crit_edge:             ; preds = %do_sync_unlocked
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end130

if.then128:                                       ; preds = %do_sync_unlocked.if.then128_crit_edge, %do_sync.if.then128_crit_edge, %do_sync.thread312
  %snap_rwsem129 = getelementptr inbounds %struct.ceph_mds_client, ptr %5, i32 0, i32 15
  tail call void @up_read(ptr noundef %snap_rwsem129) #15
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %do_sync_unlocked.if.end130_crit_edge, %do_sync.if.end130_crit_edge, %do_sync.thread, %if.end17.if.end130_crit_edge
  %newval.1271 = phi ptr [ %newval.0, %if.then128 ], [ %newval.0, %do_sync_unlocked.if.end130_crit_edge ], [ %newval.0, %do_sync.if.end130_crit_edge ], [ null, %if.end17.if.end130_crit_edge ], [ %newval.0, %do_sync.thread ]
  %newname.0270 = phi ptr [ %call22, %if.then128 ], [ %call22, %do_sync_unlocked.if.end130_crit_edge ], [ %call22, %do_sync.if.end130_crit_edge ], [ null, %if.end17.if.end130_crit_edge ], [ %call22, %do_sync.thread ]
  %60 = tail call i32 @llvm.read_register.i32(metadata !227) #15
  %and.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 146
  %64 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %journal_info, align 4
  %tobool132.not = icmp eq ptr %65, null
  br i1 %tobool132.not, label %if.else, label %if.then133

if.then133:                                       ; preds = %if.end130
  %call134 = tail call i32 @___ratelimit(ptr noundef nonnull @__ceph_setxattr._rs, ptr noundef nonnull @.str.22) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.then133.out_crit_edge, label %do.end139

if.then133.out_crit_edge:                         ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.end139:                                        ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #17
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %inode) #19
  br label %out

if.else:                                          ; preds = %if.end130
  %call143 = tail call fastcc i32 @ceph_sync_setxattr(ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp144 = icmp slt i32 %call143, 0
  %brmerge = select i1 %cmp144, i1 true, i1 %check_realm.0.off0
  br i1 %brmerge, label %if.else.out_crit_edge, label %if.then147

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then147:                                       ; preds = %if.else
  %i_ceph_lock148 = getelementptr i8, ptr %inode, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock148) #15
  %i_max_files = getelementptr i8, ptr %inode, i32 -680
  %66 = ptrtoint ptr %i_max_files to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %i_max_files, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %67)
  %tobool149.not = icmp eq i64 %67, 0
  br i1 %tobool149.not, label %lor.lhs.false150, label %if.then147.land.lhs.true152_crit_edge

if.then147.land.lhs.true152_crit_edge:            ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true152

lor.lhs.false150:                                 ; preds = %if.then147
  %i_max_bytes = getelementptr i8, ptr %inode, i32 -688
  %68 = ptrtoint ptr %i_max_bytes to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %i_max_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %69)
  %tobool151.not = icmp eq i64 %69, 0
  br i1 %tobool151.not, label %lor.lhs.false150.if.end158_crit_edge, label %lor.lhs.false150.land.lhs.true152_crit_edge

lor.lhs.false150.land.lhs.true152_crit_edge:      ; preds = %lor.lhs.false150
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true152

lor.lhs.false150.if.end158_crit_edge:             ; preds = %lor.lhs.false150
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end158

land.lhs.true152:                                 ; preds = %lor.lhs.false150.land.lhs.true152_crit_edge, %if.then147.land.lhs.true152_crit_edge
  %70 = getelementptr i8, ptr %inode, i32 -108
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %tobool153.not = icmp eq ptr %72, null
  br i1 %tobool153.not, label %land.lhs.true152.if.then157_crit_edge, label %land.lhs.true154

land.lhs.true152.if.then157_crit_edge:            ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then157

land.lhs.true154:                                 ; preds = %land.lhs.true152
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %72, align 8
  %75 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %74, i64 %76)
  %cmp156 = icmp eq i64 %74, %76
  br i1 %cmp156, label %land.lhs.true154.if.end158_crit_edge, label %land.lhs.true154.if.then157_crit_edge

land.lhs.true154.if.then157_crit_edge:            ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then157

land.lhs.true154.if.end158_crit_edge:             ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end158

if.then157:                                       ; preds = %land.lhs.true154.if.then157_crit_edge, %land.lhs.true152.if.then157_crit_edge
  br label %if.end158

if.end158:                                        ; preds = %if.then157, %land.lhs.true154.if.end158_crit_edge, %lor.lhs.false150.if.end158_crit_edge
  %err.0 = phi i32 [ %call143, %land.lhs.true154.if.end158_crit_edge ], [ -95, %if.then157 ], [ %call143, %lor.lhs.false150.if.end158_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock148) #15
  br label %out

out:                                              ; preds = %if.end158, %if.else.out_crit_edge, %do.end139, %if.then133.out_crit_edge, %if.end36.out_crit_edge, %if.end32.out_crit_edge, %if.then27.out_crit_edge, %if.end21.out_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end158 ], [ %call143, %if.else.out_crit_edge ], [ -12, %if.end36.out_crit_edge ], [ -12, %if.end32.out_crit_edge ], [ -12, %if.then27.out_crit_edge ], [ -12, %if.end21.out_crit_edge ], [ -16, %do.end139 ], [ -16, %if.then133.out_crit_edge ]
  %newname.1 = phi ptr [ %newname.0270, %if.end158 ], [ %newname.0270, %if.else.out_crit_edge ], [ %call22, %if.end36.out_crit_edge ], [ %call22, %if.end32.out_crit_edge ], [ %call22, %if.then27.out_crit_edge ], [ null, %if.end21.out_crit_edge ], [ %newname.0270, %do.end139 ], [ %newname.0270, %if.then133.out_crit_edge ]
  %newval.2 = phi ptr [ %newval.1271, %if.end158 ], [ %newval.1271, %if.else.out_crit_edge ], [ %newval.0, %if.end36.out_crit_edge ], [ %newval.0, %if.end32.out_crit_edge ], [ null, %if.then27.out_crit_edge ], [ null, %if.end21.out_crit_edge ], [ %newval.1271, %do.end139 ], [ %newval.1271, %if.then133.out_crit_edge ]
  %77 = ptrtoint ptr %prealloc_cf to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prealloc_cf, align 4
  tail call void @ceph_free_cap_flush(ptr noundef %78) #15
  tail call void @kfree(ptr noundef %newname.1) #15
  tail call void @kfree(ptr noundef %newval.2) #15
  %79 = ptrtoint ptr %xattr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %xattr, align 4
  tail call void @kfree(ptr noundef %80) #15
  br label %cleanup162

cleanup162:                                       ; preds = %out, %if.end125, %if.then6.cleanup162_crit_edge, %entry.cleanup162_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ %call110, %if.end125 ], [ -30, %entry.cleanup162_crit_edge ], [ -95, %if.then6.cleanup162_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xattr) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prealloc_cf) #15
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_alloc_cap_flush() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_caps_issued(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_cap_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ceph_buffer_put(ptr noundef %b) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %tobool.not = icmp eq ptr %b, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %b, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !242
  tail call void @llvm.prefetch.p0(ptr nonnull %b, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %b, ptr nonnull %b, i32 1, ptr nonnull elementtype(i32) %b) #15, !srcloc !243
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !241

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %b, i32 noundef 3) #15
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !244
  tail call void @ceph_buffer_release(ptr noundef nonnull %b) #15, !callees !245
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_buffer_new(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__set_xattr(ptr noundef %ci, ptr noundef %name, i32 noundef %name_len, ptr noundef %val, i32 noundef %val_len, i32 noundef %flags, i32 noundef %update_xattr, ptr nocapture noundef %newxattr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 2
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %index, align 4
  %tobool.not230 = icmp eq ptr %1, null
  br i1 %tobool.not230, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %if.end20.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %9, %if.end20.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %p.0231 = phi ptr [ %p.1, %if.end20.while.body_crit_edge ], [ %index, %entry.while.body_crit_edge ]
  %name1 = getelementptr inbounds %struct.ceph_inode_xattr, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name1, align 4
  %name_len2 = getelementptr inbounds %struct.ceph_inode_xattr, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %name_len2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %name_len2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %name_len)
  %cmp = icmp sgt i32 %6, %name_len
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 %name_len)
  %call = tail call i32 @strncmp(ptr noundef %name, ptr noundef %4, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2
  br label %if.end20

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5.not = icmp eq i32 %call, 0
  br i1 %cmp5.not, label %if.else7, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 1
  br label %if.end20

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %name_len)
  %cmp9 = icmp eq i32 %6, %name_len
  br i1 %cmp9, label %if.else7.while.end_crit_edge, label %if.else11

if.else7.while.end_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.else11:                                        ; preds = %if.else7
  br i1 %cmp, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #17
  %rb_left15 = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2
  br label %if.end20

if.else16:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #17
  %rb_right17 = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 1
  br label %if.end20

if.end20:                                         ; preds = %if.else16, %if.then14, %if.then6, %if.then
  %p.1 = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then6 ], [ %rb_left15, %if.then14 ], [ %rb_right17, %if.else16 ]
  %8 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end20.while.end_crit_edge, label %if.end20.while.body_crit_edge

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end20.while.end_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end20.while.end_crit_edge, %if.else7.while.end_crit_edge, %entry.while.end_crit_edge
  %p.0.lcssa = phi ptr [ %index, %entry.while.end_crit_edge ], [ %p.0231, %if.else7.while.end_crit_edge ], [ %p.1, %if.end20.while.end_crit_edge ]
  %.lcssa = phi ptr [ null, %entry.while.end_crit_edge ], [ %2, %if.else7.while.end_crit_edge ], [ null, %if.end20.while.end_crit_edge ]
  %parent.1 = phi ptr [ null, %entry.while.end_crit_edge ], [ %2, %if.else7.while.end_crit_edge ], [ %2, %if.end20.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %update_xattr)
  %tobool21 = icmp ne i32 %update_xattr, 0
  br i1 %tobool21, label %if.then22, label %while.end.if.end44_crit_edge

while.end.if.end44_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then22:                                        ; preds = %while.end
  %tobool23.not = icmp eq ptr %.lcssa, null
  br i1 %tobool23.not, label %land.lhs.true28, label %if.end33

land.lhs.true28:                                  ; preds = %if.then22
  %and29 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end36, label %land.lhs.true28.if.then35_crit_edge

land.lhs.true28.if.then35_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then35

if.end33:                                         ; preds = %if.then22
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end36.thread, label %if.end33.if.then35_crit_edge

if.end33.if.then35_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then35

if.then35:                                        ; preds = %if.end33.if.then35_crit_edge, %land.lhs.true28.if.then35_crit_edge
  %err.0224 = phi i32 [ -61, %land.lhs.true28.if.then35_crit_edge ], [ -17, %if.end33.if.then35_crit_edge ]
  tail call void @kfree(ptr noundef %name) #15
  tail call void @kfree(ptr noundef %val) #15
  %10 = ptrtoint ptr %newxattr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %newxattr, align 4
  tail call void @kfree(ptr noundef %11) #15
  br label %cleanup134

if.end36:                                         ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %update_xattr)
  %cmp37 = icmp slt i32 %update_xattr, 0
  br i1 %cmp37, label %if.end36.if.end42_crit_edge, label %if.end36.if.end44_crit_edge

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.end36.thread:                                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %update_xattr)
  %cmp37238 = icmp slt i32 %update_xattr, 0
  br i1 %cmp37238, label %if.end.i, label %if.end36.thread.if.else60_crit_edge

if.end36.thread.if.else60_crit_edge:              ; preds = %if.end36.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else60

if.end.i:                                         ; preds = %if.end36.thread
  tail call void @rb_erase(ptr noundef nonnull %.lcssa, ptr noundef %index) #15
  %should_free_name.i = getelementptr inbounds %struct.ceph_inode_xattr, ptr %.lcssa, i32 0, i32 6
  %12 = ptrtoint ptr %should_free_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %should_free_name.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not.i = icmp eq i32 %13, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i = getelementptr inbounds %struct.ceph_inode_xattr, ptr %.lcssa, i32 0, i32 1
  %14 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name.i, align 4
  tail call void @kfree(ptr noundef %15) #15
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %should_free_val.i = getelementptr inbounds %struct.ceph_inode_xattr, ptr %.lcssa, i32 0, i32 7
  %16 = ptrtoint ptr %should_free_val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %should_free_val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4.not.i = icmp eq i32 %17, 0
  br i1 %tobool4.not.i, label %if.end3.i.__remove_xattr.exit_crit_edge, label %if.then5.i

if.end3.i.__remove_xattr.exit_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__remove_xattr.exit

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  %val.i = getelementptr inbounds %struct.ceph_inode_xattr, ptr %.lcssa, i32 0, i32 3
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %val.i, align 4
  tail call void @kfree(ptr noundef %19) #15
  br label %__remove_xattr.exit

__remove_xattr.exit:                              ; preds = %if.then5.i, %if.end3.i.__remove_xattr.exit_crit_edge
  %name_len.i = getelementptr inbounds %struct.ceph_inode_xattr, ptr %.lcssa, i32 0, i32 2
  %20 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %name_len.i, align 4
  %names_size.i = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 5
  %22 = ptrtoint ptr %names_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %names_size.i, align 4
  %sub.i = sub i32 %23, %21
  store i32 %sub.i, ptr %names_size.i, align 4
  %val_len.i = getelementptr inbounds %struct.ceph_inode_xattr, ptr %.lcssa, i32 0, i32 4
  %24 = ptrtoint ptr %val_len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val_len.i, align 4
  %vals_size.i = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 6
  %26 = ptrtoint ptr %vals_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vals_size.i, align 8
  %sub9.i = sub i32 %27, %25
  store i32 %sub9.i, ptr %vals_size.i, align 8
  %count.i = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 4
  %28 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count.i, align 8
  %dec.i = add i32 %29, -1
  store i32 %dec.i, ptr %count.i, align 8
  tail call void @kfree(ptr noundef nonnull %.lcssa) #15
  br label %if.end42

if.end42:                                         ; preds = %__remove_xattr.exit, %if.end36.if.end42_crit_edge
  tail call void @kfree(ptr noundef %name) #15
  %30 = ptrtoint ptr %newxattr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %newxattr, align 4
  tail call void @kfree(ptr noundef %31) #15
  br label %cleanup134

if.end44:                                         ; preds = %if.end36.if.end44_crit_edge, %while.end.if.end44_crit_edge
  %tobool45.not = icmp eq ptr %.lcssa, null
  br i1 %tobool45.not, label %if.then46, label %if.end44.if.else60_crit_edge

if.end44.if.else60_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else60

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %newxattr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %newxattr, align 4
  %name47 = getelementptr inbounds %struct.ceph_inode_xattr, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %name47 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %name, ptr %name47, align 4
  %name_len48 = getelementptr inbounds %struct.ceph_inode_xattr, ptr %33, i32 0, i32 2
  %35 = ptrtoint ptr %name_len48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %name_len, ptr %name_len48, align 4
  %should_free_name = getelementptr inbounds %struct.ceph_inode_xattr, ptr %33, i32 0, i32 6
  %36 = ptrtoint ptr %should_free_name to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %update_xattr, ptr %should_free_name, align 4
  %count = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 4
  %37 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %count, align 8
  %inc = add i32 %38, 1
  store i32 %inc, ptr %count, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__set_xattr.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__set_xattr, %if.then55)) #15
          to label %if.end74 [label %if.then55], !srcloc !237

if.then55:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__set_xattr.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.95, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 592, i32 noundef %40) #15
  br label %if.end74

if.else60:                                        ; preds = %if.end44.if.else60_crit_edge, %if.end36.thread.if.else60_crit_edge
  %41 = ptrtoint ptr %newxattr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %newxattr, align 4
  tail call void @kfree(ptr noundef %42) #15
  %43 = ptrtoint ptr %newxattr to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %newxattr, align 4
  %should_free_val = getelementptr inbounds %struct.ceph_inode_xattr, ptr %.lcssa, i32 0, i32 7
  %44 = ptrtoint ptr %should_free_val to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %should_free_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool61.not = icmp eq i32 %45, 0
  br i1 %tobool61.not, label %if.else60.if.end64_crit_edge, label %if.then62

if.else60.if.end64_crit_edge:                     ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.then62:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #17
  %val63 = getelementptr inbounds %struct.ceph_inode_xattr, ptr %.lcssa, i32 0, i32 3
  %46 = ptrtoint ptr %val63 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %val63, align 4
  tail call void @kfree(ptr noundef %47) #15
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.else60.if.end64_crit_edge
  br i1 %tobool21, label %if.then66, label %if.end64.if.end68_crit_edge

if.end64.if.end68_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end68

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %name) #15
  %name67 = getelementptr inbounds %struct.ceph_inode_xattr, ptr %.lcssa, i32 0, i32 1
  %48 = ptrtoint ptr %name67 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name67, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end64.if.end68_crit_edge
  %name.addr.0 = phi ptr [ %49, %if.then66 ], [ %name, %if.end64.if.end68_crit_edge ]
  %name_len69 = getelementptr inbounds %struct.ceph_inode_xattr, ptr %.lcssa, i32 0, i32 2
  %50 = ptrtoint ptr %name_len69 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %name_len69, align 4
  %names_size = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 5
  %52 = ptrtoint ptr %names_size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %names_size, align 4
  %sub = sub i32 %53, %51
  store i32 %sub, ptr %names_size, align 4
  %val_len71 = getelementptr inbounds %struct.ceph_inode_xattr, ptr %.lcssa, i32 0, i32 4
  %54 = ptrtoint ptr %val_len71 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val_len71, align 4
  %vals_size = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 6
  %56 = ptrtoint ptr %vals_size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vals_size, align 8
  %sub73 = sub i32 %57, %55
  store i32 %sub73, ptr %vals_size, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.end68, %if.then55, %if.then46
  %tobool45.not240 = phi i1 [ false, %if.end68 ], [ true, %if.then55 ], [ true, %if.then46 ]
  %xattr.2 = phi ptr [ %.lcssa, %if.end68 ], [ %33, %if.then55 ], [ %33, %if.then46 ]
  %name.addr.1 = phi ptr [ %name.addr.0, %if.end68 ], [ %name, %if.then55 ], [ %name, %if.then46 ]
  %names_size76 = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 5
  %58 = ptrtoint ptr %names_size76 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %names_size76, align 4
  %add = add i32 %59, %name_len
  store i32 %add, ptr %names_size76, align 4
  %vals_size78 = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 6
  %60 = ptrtoint ptr %vals_size78 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vals_size78, align 8
  %add79 = add i32 %61, %val_len
  store i32 %add79, ptr %vals_size78, align 8
  %tobool80.not = icmp eq ptr %val, null
  %spec.select = select i1 %tobool80.not, ptr @.str.96, ptr %val
  %62 = getelementptr inbounds %struct.ceph_inode_xattr, ptr %xattr.2, i32 0, i32 3
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %spec.select, ptr %62, align 4
  %val_len86 = getelementptr inbounds %struct.ceph_inode_xattr, ptr %xattr.2, i32 0, i32 4
  %64 = ptrtoint ptr %val_len86 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %val_len, ptr %val_len86, align 4
  %dirty = getelementptr inbounds %struct.ceph_inode_xattr, ptr %xattr.2, i32 0, i32 5
  %65 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %update_xattr, ptr %dirty, align 4
  %not.tobool80.not = xor i1 %tobool80.not, true
  %narrow = and i1 %tobool21, %not.tobool80.not
  %spec.select216 = zext i1 %narrow to i32
  %should_free_val89 = getelementptr inbounds %struct.ceph_inode_xattr, ptr %xattr.2, i32 0, i32 7
  %66 = ptrtoint ptr %should_free_val89 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %spec.select216, ptr %should_free_val89, align 4
  br i1 %tobool45.not240, label %if.then91, label %if.end74.do.body113_crit_edge

if.end74.do.body113_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body113

if.then91:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #17
  %67 = ptrtoint ptr %parent.1 to i32
  %68 = ptrtoint ptr %xattr.2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %xattr.2, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %xattr.2, i32 0, i32 1
  %69 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %xattr.2, i32 0, i32 2
  %70 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %rb_left.i, align 4
  %71 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %xattr.2, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %xattr.2, ptr noundef %index) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__set_xattr.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__set_xattr, %if.then107)) #15
          to label %do.body113 [label %if.then107], !srcloc !237

if.then107:                                       ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__set_xattr.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.98, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 620, ptr noundef %p.0.lcssa) #15
  br label %do.body113

do.body113:                                       ; preds = %if.then107, %if.then91, %if.end74.do.body113_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__set_xattr.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__set_xattr, %if.then125)) #15
          to label %cleanup134 [label %if.then125], !srcloc !237

if.then125:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #17
  %72 = ptrtoint ptr %ci to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %ci, align 8
  %snap = getelementptr inbounds %struct.ceph_vino, ptr %ci, i32 0, i32 1
  %74 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %snap, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__set_xattr.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.100, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 624, i64 noundef %73, i64 noundef %75, ptr noundef %xattr.2, i32 noundef %name_len, ptr noundef %name.addr.1, i32 noundef %val_len, ptr noundef %val) #15
  br label %cleanup134

cleanup134:                                       ; preds = %if.then125, %do.body113, %if.end42, %if.then35
  %retval.1 = phi i32 [ 0, %if.then125 ], [ 0, %do.body113 ], [ %err.0224, %if.then35 ], [ 0, %if.end42 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_mark_dirty_caps(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_free_cap_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ceph_sync_setxattr(ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
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
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.not = icmp eq i32 %size, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call4 = tail call ptr @ceph_pagelist_alloc(i32 noundef 3136) #15
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call6 = tail call i32 @ceph_pagelist_append(ptr noundef nonnull %call4, ptr noundef %value, i32 noundef %size) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.do.body_crit_edge, label %if.end.if.then78_crit_edge

if.end.if.then78_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then78

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.else:                                          ; preds = %entry
  %tobool10.not = icmp eq ptr %value, null
  br i1 %tobool10.not, label %if.then11, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.then11:                                        ; preds = %if.else
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.else14, label %if.then11.do.body_crit_edge

if.then11.do.body_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.else14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  %or = or i32 %flags, -2147483648
  br label %do.body

do.body:                                          ; preds = %if.else14, %if.then11.do.body_crit_edge, %if.else.do.body_crit_edge, %if.end.do.body_crit_edge
  %pagelist.0 = phi ptr [ %call4, %if.end.do.body_crit_edge ], [ null, %if.else.do.body_crit_edge ], [ null, %if.else14 ], [ null, %if.then11.do.body_crit_edge ]
  %cmp35 = phi i1 [ true, %if.end.do.body_crit_edge ], [ true, %if.else.do.body_crit_edge ], [ true, %if.else14 ], [ false, %if.then11.do.body_crit_edge ]
  %op.0 = phi i32 [ 4357, %if.end.do.body_crit_edge ], [ 4357, %if.else.do.body_crit_edge ], [ 4357, %if.else14 ], [ 4358, %if.then11.do.body_crit_edge ]
  %flags.addr.0 = phi i32 [ %flags, %if.end.do.body_crit_edge ], [ %flags, %if.else.do.body_crit_edge ], [ %or, %if.else14 ], [ %flags, %if.then11.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_sync_setxattr.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_sync_setxattr, %if.then22)) #15
          to label %do.end [label %if.then22], !srcloc !237

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_sync_setxattr.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.103, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1072, i32 noundef %size, ptr noundef %value) #15
  br label %do.end

do.end:                                           ; preds = %if.then22, %do.body
  %call25 = tail call ptr @ceph_mdsc_create_request(ptr noundef %5, i32 noundef %op.0, i32 noundef 2) #15
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end29

if.then27:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %call25 to i32
  br label %out

if.end29:                                         ; preds = %do.end
  %call30 = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3136) #15
  %r_path2 = getelementptr inbounds %struct.ceph_mds_request, ptr %call25, i32 0, i32 10
  %9 = ptrtoint ptr %r_path2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call30, ptr %r_path2, align 4
  %tobool32.not = icmp eq ptr %call30, null
  br i1 %tobool32.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call25, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !242
  tail call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #15
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #15, !srcloc !243
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.out_crit_edge:                  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #15
  br label %out

if.then.i.i:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !244
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #15, !callees !245
  br label %out

if.end34:                                         ; preds = %if.end29
  br i1 %cmp35, label %if.then36, label %if.end34.if.end39_crit_edge

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  %11 = tail call i32 @llvm.bswap.i32(i32 %flags.addr.0)
  %r_args = getelementptr inbounds %struct.ceph_mds_request, ptr %call25, i32 0, i32 17
  %12 = ptrtoint ptr %r_args to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %r_args, align 8
  %osdmap = getelementptr inbounds %struct.ceph_client, ptr %7, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %osdmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %osdmap, align 4
  %epoch = getelementptr inbounds %struct.ceph_osdmap, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %epoch to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %epoch, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %osdmap_epoch = getelementptr inbounds %struct.ceph_mds_request, ptr %call25, i32 0, i32 17, i32 0, i32 1
  %18 = ptrtoint ptr %osdmap_epoch to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %osdmap_epoch, align 4
  %r_pagelist = getelementptr inbounds %struct.ceph_mds_request, ptr %call25, i32 0, i32 24
  %19 = ptrtoint ptr %r_pagelist to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pagelist.0, ptr %r_pagelist, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end34.if.end39_crit_edge
  %pagelist.1 = phi ptr [ null, %if.then36 ], [ %pagelist.0, %if.end34.if.end39_crit_edge ]
  %r_inode = getelementptr inbounds %struct.ceph_mds_request, ptr %call25, i32 0, i32 5
  %20 = ptrtoint ptr %r_inode to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %inode, ptr %r_inode, align 8
  tail call void @ihold(ptr noundef %inode) #15
  %r_num_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call25, i32 0, i32 40
  %21 = ptrtoint ptr %r_num_caps to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %r_num_caps, align 4
  %r_inode_drop = getelementptr inbounds %struct.ceph_mds_request, ptr %call25, i32 0, i32 25
  %22 = ptrtoint ptr %r_inode_drop to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 64, ptr %r_inode_drop, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_sync_setxattr.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_sync_setxattr, %if.then52)) #15
          to label %do.end56 [label %if.then52], !srcloc !237

if.then52:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  %version = getelementptr i8, ptr %inode, i32 -536
  %23 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %version, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_sync_setxattr.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.105, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1101, i64 noundef %24) #15
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %if.end39
  %call57 = tail call i32 @ceph_mdsc_do_request(ptr noundef %5, ptr noundef null, ptr noundef %call25) #15
  %r_kref.i123 = getelementptr inbounds %struct.ceph_mds_request, ptr %call25, i32 0, i32 3
  %call.i.i.i.i.i.i.i124 = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i123, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !242
  tail call void @llvm.prefetch.p0(ptr %r_kref.i123, i32 1, i32 3, i32 1) #15
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i123, ptr %r_kref.i123, i32 1, ptr elementtype(i32) %r_kref.i123) #15, !srcloc !243
  %asmresult.i.i.i.i.i.i.i.i125 = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i125)
  %cmp.i.i.i.i.i126 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i125, 1
  br i1 %cmp.i.i.i.i.i126, label %if.then.i.i130, label %if.end5.i.i.i.i.i128

if.end5.i.i.i.i.i128:                             ; preds = %do.end56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i125)
  %.not.i.i.i.i.i127 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i125, 0
  br i1 %.not.i.i.i.i.i127, label %if.end5.i.i.i.i.i128.ceph_mdsc_put_request.exit131_crit_edge, label %if.then10.i.i.i.i.i129, !prof !241

if.end5.i.i.i.i.i128.ceph_mdsc_put_request.exit131_crit_edge: ; preds = %if.end5.i.i.i.i.i128
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_mdsc_put_request.exit131

if.then10.i.i.i.i.i129:                           ; preds = %if.end5.i.i.i.i.i128
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i123, i32 noundef 3) #15
  br label %ceph_mdsc_put_request.exit131

if.then.i.i130:                                   ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !244
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i123) #15, !callees !245
  br label %ceph_mdsc_put_request.exit131

ceph_mdsc_put_request.exit131:                    ; preds = %if.then.i.i130, %if.then10.i.i.i.i.i129, %if.end5.i.i.i.i.i128.ceph_mdsc_put_request.exit131_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_sync_setxattr.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_sync_setxattr, %if.then70)) #15
          to label %out [label %if.then70], !srcloc !237

if.then70:                                        ; preds = %ceph_mdsc_put_request.exit131
  call void @__sanitizer_cov_trace_pc() #17
  %version73 = getelementptr i8, ptr %inode, i32 -536
  %26 = ptrtoint ptr %version73 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %version73, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_sync_setxattr.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.107, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1104, i64 noundef %27) #15
  br label %out

out:                                              ; preds = %if.then70, %ceph_mdsc_put_request.exit131, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.out_crit_edge, %if.then27
  %pagelist.2 = phi ptr [ %pagelist.0, %if.then27 ], [ %pagelist.1, %if.then70 ], [ %pagelist.0, %if.end5.i.i.i.i.i.out_crit_edge ], [ %pagelist.0, %if.then10.i.i.i.i.i ], [ %pagelist.0, %if.then.i.i ], [ %pagelist.1, %ceph_mdsc_put_request.exit131 ]
  %err.0 = phi i32 [ %8, %if.then27 ], [ %call57, %if.then70 ], [ -12, %if.end5.i.i.i.i.i.out_crit_edge ], [ -12, %if.then10.i.i.i.i.i ], [ -12, %if.then.i.i ], [ %call57, %ceph_mdsc_put_request.exit131 ]
  %tobool77.not = icmp eq ptr %pagelist.2, null
  br i1 %tobool77.not, label %out.cleanup_crit_edge, label %out.if.then78_crit_edge

out.if.then78_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then78

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then78:                                        ; preds = %out.if.then78_crit_edge, %if.end.if.then78_crit_edge
  %err.0139 = phi i32 [ %err.0, %out.if.then78_crit_edge ], [ %call6, %if.end.if.then78_crit_edge ]
  %pagelist.2138 = phi ptr [ %pagelist.2, %out.if.then78_crit_edge ], [ %call4, %if.end.if.then78_crit_edge ]
  tail call void @ceph_pagelist_release(ptr noundef nonnull %pagelist.2138) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %out.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ %err.0139, %if.then78 ], [ %err.0, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ceph_security_xattr_wanted(ptr nocapture noundef readonly %in) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_security = getelementptr inbounds %struct.inode, ptr %in, i32 0, i32 10
  %0 = ptrtoint ptr %i_security to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_security, align 4
  %cmp = icmp ne ptr %1, null
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ceph_security_xattr_deadlock(ptr noundef %in) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_security = getelementptr inbounds %struct.inode, ptr %in, i32 0, i32 10
  %0 = ptrtoint ptr %i_security to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_security, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %in, i32 -952
  %i_ceph_lock = getelementptr i8, ptr %in, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #15
  %i_ceph_flags = getelementptr i8, ptr %in, i32 -868
  %2 = ptrtoint ptr %i_ceph_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ceph_flags, align 4
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.rhs, label %if.end.land.end5_crit_edge

if.end.land.end5_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end5

land.rhs:                                         ; preds = %if.end
  %version = getelementptr i8, ptr %in, i32 -536
  %4 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp.not = icmp eq i64 %5, 0
  br i1 %cmp.not, label %land.rhs.land.end5_crit_edge, label %land.rhs2

land.rhs.land.end5_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end5

land.rhs2:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 @__ceph_caps_issued_mask(ptr noundef %add.ptr.i, i32 noundef 64, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4 = icmp eq i32 %call3, 0
  br label %land.end5

land.end5:                                        ; preds = %land.rhs2, %land.rhs.land.end5_crit_edge, %if.end.land.end5_crit_edge
  %6 = phi i1 [ false, %if.end.land.end5_crit_edge ], [ true, %land.rhs.land.end5_crit_edge ], [ %tobool4, %land.rhs2 ]
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %land.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %6, %land.end5 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_caps_issued_mask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_security_init_secctx(ptr noundef %dentry, i16 noundef zeroext %mode, ptr noundef %as_ctx) local_unnamed_addr #0 align 64 {
entry:
  %ev.i149 = alloca i32, align 4
  %ev.i147 = alloca i32, align 4
  %ev.i = alloca i32, align 4
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pagelist1 = getelementptr inbounds %struct.ceph_acl_sec_ctx, ptr %as_ctx, i32 0, i32 4
  %0 = ptrtoint ptr %pagelist1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pagelist1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #15
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !246
  %conv = zext i16 %mode to i32
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %sec_ctx = getelementptr inbounds %struct.ceph_acl_sec_ctx, ptr %as_ctx, i32 0, i32 2
  %sec_ctxlen = getelementptr inbounds %struct.ceph_acl_sec_ctx, ptr %as_ctx, i32 0, i32 3
  %call = call i32 @security_dentry_init_security(ptr noundef %dentry, i32 noundef %conv, ptr noundef %d_name, ptr noundef nonnull %name, ptr noundef %sec_ctx, ptr noundef %sec_ctxlen) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end41

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call)
  %cmp3.not = icmp eq i32 %call, -95
  br i1 %cmp3.not, label %if.then.out_crit_edge, label %land.rhs

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.rhs:                                         ; preds = %if.then
  %.b145 = load i1, ptr @ceph_security_init_secctx.__already_done, align 1
  br i1 %.b145, label %land.rhs.out_crit_edge, label %if.then12, !prof !241

land.rhs.out_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ceph_security_init_secctx.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1317, i32 noundef 9, ptr noundef null) #15
  br label %out

if.end41:                                         ; preds = %entry
  %tobool42.not = icmp eq ptr %1, null
  br i1 %tobool42.not, label %if.then43, label %if.end41.if.end53_crit_edge

if.end41.if.end53_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

if.then43:                                        ; preds = %if.end41
  %call44 = call ptr @ceph_pagelist_alloc(i32 noundef 3264) #15
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.then43.if.end110_crit_edge, label %if.end47

if.then43.if.end110_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end110

if.end47:                                         ; preds = %if.then43
  %call48 = call i32 @ceph_pagelist_reserve(ptr noundef nonnull %call44, i32 noundef 4096) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.land.lhs.true_crit_edge

if.end47.land.lhs.true_crit_edge:                 ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

if.end51:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ev.i) #15
  %3 = ptrtoint ptr %ev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16777216, ptr %ev.i, align 4
  %call.i = call i32 @ceph_pagelist_append(ptr noundef nonnull %call44, ptr noundef nonnull %ev.i, i32 noundef 4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ev.i) #15
  br label %if.end53

if.end53:                                         ; preds = %if.end51, %if.end41.if.end53_crit_edge
  %pagelist.0 = phi ptr [ %1, %if.end41.if.end53_crit_edge ], [ %call44, %if.end51 ]
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call54 = call i32 @strlen(ptr noundef %5) #22
  %add = add i32 %call54, 8
  %6 = ptrtoint ptr %sec_ctxlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sec_ctxlen, align 4
  %add56 = add i32 %add, %7
  %call57 = call i32 @ceph_pagelist_reserve(ptr noundef nonnull %pagelist.0, i32 noundef %add56) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end53.land.lhs.true_crit_edge

if.end53.land.lhs.true_crit_edge:                 ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

if.end60:                                         ; preds = %if.end53
  %8 = ptrtoint ptr %pagelist1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pagelist1, align 4
  %tobool62.not = icmp eq ptr %9, null
  br i1 %tobool62.not, label %if.else96, label %do.body64

do.body64:                                        ; preds = %if.end60
  %length = getelementptr inbounds %struct.ceph_pagelist, ptr %pagelist.0, i32 0, i32 2
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %cmp65 = icmp ult i32 %11, 5
  br i1 %cmp65, label %do.body74, label %do.end82, !prof !239

do.body74:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1346, 0\0A.popsection", ""() #15, !srcloc !247
  unreachable

do.end82:                                         ; preds = %do.body64
  %12 = ptrtoint ptr %pagelist.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %pagelist.0, align 4
  %cmp.i.not.i = icmp eq ptr %13, %pagelist.0
  br i1 %cmp.i.not.i, label %do.end82.if.else_crit_edge, label %list_is_singular.exit

do.end82.if.else_crit_edge:                       ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

list_is_singular.exit:                            ; preds = %do.end82
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pagelist.0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %13, %15
  br i1 %cmp.i.not, label %if.then85, label %list_is_singular.exit.if.else_crit_edge

list_is_singular.exit.if.else_crit_edge:          ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then85:                                        ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #17
  %mapped_tail = getelementptr inbounds %struct.ceph_pagelist, ptr %pagelist.0, i32 0, i32 1
  %16 = ptrtoint ptr %mapped_tail to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mapped_tail, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19) #15
  %add.i = add i32 %20, 1
  %21 = call i32 @llvm.bswap.i32(i32 %add.i) #15
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %17, align 4
  br label %if.end98

if.else:                                          ; preds = %list_is_singular.exit.if.else_crit_edge, %do.end82.if.else_crit_edge
  %add.ptr = getelementptr i8, ptr %13, i32 -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %23 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %23, 512
  %24 = call i32 @llvm.read_register.i32(metadata !227) #15
  %and.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %27, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !248
  %28 = call i32 @llvm.read_register.i32(metadata !227) #15
  %and.i.i.i1.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 213
  %32 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %33, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !249
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #15
  %34 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call.i.i, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35) #15
  %add.i146 = add i32 %36, 1
  %37 = call i32 @llvm.bswap.i32(i32 %add.i146) #15
  %38 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %call.i.i, align 4
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !250
  %39 = call i32 @llvm.read_register.i32(metadata !227) #15
  %and.i.i.i1.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 213
  %43 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %44, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !251
  %45 = call i32 @llvm.read_register.i32(metadata !227) #15
  %and.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %if.end98

if.else96:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  %49 = ptrtoint ptr %pagelist1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %pagelist.0, ptr %pagelist1, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.else96, %if.else, %if.then85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ev.i147) #15
  %50 = call i32 @llvm.bswap.i32(i32 %call54) #15
  %51 = ptrtoint ptr %ev.i147 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %ev.i147, align 4
  %call.i148 = call i32 @ceph_pagelist_append(ptr noundef nonnull %pagelist.0, ptr noundef nonnull %ev.i147, i32 noundef 4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ev.i147) #15
  %52 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name, align 4
  %call100 = call i32 @ceph_pagelist_append(ptr noundef nonnull %pagelist.0, ptr noundef %53, i32 noundef %call54) #15
  %54 = ptrtoint ptr %sec_ctxlen to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sec_ctxlen, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ev.i149) #15
  %56 = call i32 @llvm.bswap.i32(i32 %55) #15
  %57 = ptrtoint ptr %ev.i149 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %ev.i149, align 4
  %call.i150 = call i32 @ceph_pagelist_append(ptr noundef nonnull %pagelist.0, ptr noundef nonnull %ev.i149, i32 noundef 4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ev.i149) #15
  %58 = ptrtoint ptr %sec_ctx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sec_ctx, align 4
  %60 = ptrtoint ptr %sec_ctxlen to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sec_ctxlen, align 4
  %call105 = call i32 @ceph_pagelist_append(ptr noundef nonnull %pagelist.0, ptr noundef %59, i32 noundef %61) #15
  br label %land.lhs.true

out:                                              ; preds = %if.then12, %land.rhs.out_crit_edge, %if.then.out_crit_edge
  %tobool106.not = icmp eq ptr %1, null
  br i1 %tobool106.not, label %out.if.end110_crit_edge, label %out.land.lhs.true_crit_edge

out.land.lhs.true_crit_edge:                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

out.if.end110_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end110

land.lhs.true:                                    ; preds = %out.land.lhs.true_crit_edge, %if.end98, %if.end53.land.lhs.true_crit_edge, %if.end47.land.lhs.true_crit_edge
  %pagelist.1157 = phi ptr [ %1, %out.land.lhs.true_crit_edge ], [ %call44, %if.end47.land.lhs.true_crit_edge ], [ %pagelist.0, %if.end98 ], [ %pagelist.0, %if.end53.land.lhs.true_crit_edge ]
  %err.0155 = phi i32 [ 0, %out.land.lhs.true_crit_edge ], [ %call48, %if.end47.land.lhs.true_crit_edge ], [ 0, %if.end98 ], [ %call57, %if.end53.land.lhs.true_crit_edge ]
  %62 = ptrtoint ptr %pagelist1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pagelist1, align 4
  %tobool108.not = icmp eq ptr %63, null
  br i1 %tobool108.not, label %if.then109, label %land.lhs.true.if.end110_crit_edge

land.lhs.true.if.end110_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end110

if.then109:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  call void @ceph_pagelist_release(ptr noundef nonnull %pagelist.1157) #15
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %land.lhs.true.if.end110_crit_edge, %out.if.end110_crit_edge, %if.then43.if.end110_crit_edge
  %err.0156 = phi i32 [ %err.0155, %if.then109 ], [ %err.0155, %land.lhs.true.if.end110_crit_edge ], [ 0, %out.if.end110_crit_edge ], [ -12, %if.then43.if.end110_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #15
  ret i32 %err.0156
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_dentry_init_security(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_pagelist_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_pagelist_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_pagelist_append(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_pagelist_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_release_acl_sec_ctx(ptr nocapture noundef readonly %as_ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %acl = getelementptr inbounds %struct.ceph_acl_sec_ctx, ptr %as_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.posix_acl_release.exit_crit_edge, label %land.lhs.true.i

entry.posix_acl_release.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %posix_acl_release.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !242
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #15, !srcloc !243
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !241

if.end5.i.i.i.i.posix_acl_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %posix_acl_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #15
  br label %posix_acl_release.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !244
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %1, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #15
  br label %posix_acl_release.exit

posix_acl_release.exit:                           ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, %entry.posix_acl_release.exit_crit_edge
  %3 = ptrtoint ptr %as_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %as_ctx, align 4
  %tobool.not.i7 = icmp eq ptr %4, null
  br i1 %tobool.not.i7, label %posix_acl_release.exit.posix_acl_release.exit17_crit_edge, label %land.lhs.true.i11

posix_acl_release.exit.posix_acl_release.exit17_crit_edge: ; preds = %posix_acl_release.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %posix_acl_release.exit17

land.lhs.true.i11:                                ; preds = %posix_acl_release.exit
  %call.i.i.i.i.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %4, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !242
  tail call void @llvm.prefetch.p0(ptr nonnull %4, i32 1, i32 3, i32 1) #15
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #15, !srcloc !243
  %asmresult.i.i.i.i.i.i.i9 = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i9)
  %cmp.i.i.i.i10 = icmp eq i32 %asmresult.i.i.i.i.i.i.i9, 1
  br i1 %cmp.i.i.i.i10, label %do.end.i16, label %if.end5.i.i.i.i13

if.end5.i.i.i.i13:                                ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i9)
  %.not.i.i.i.i12 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i9, 0
  br i1 %.not.i.i.i.i12, label %if.end5.i.i.i.i13.posix_acl_release.exit17_crit_edge, label %if.then10.i.i.i.i14, !prof !241

if.end5.i.i.i.i13.posix_acl_release.exit17_crit_edge: ; preds = %if.end5.i.i.i.i13
  call void @__sanitizer_cov_trace_pc() #17
  br label %posix_acl_release.exit17

if.then10.i.i.i.i14:                              ; preds = %if.end5.i.i.i.i13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %4, i32 noundef 3) #15
  br label %posix_acl_release.exit17

do.end.i16:                                       ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !244
  %a_rcu.i15 = getelementptr inbounds %struct.posix_acl, ptr %4, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i15, ptr noundef nonnull inttoptr (i32 4 to ptr)) #15
  br label %posix_acl_release.exit17

posix_acl_release.exit17:                         ; preds = %do.end.i16, %if.then10.i.i.i.i14, %if.end5.i.i.i.i13.posix_acl_release.exit17_crit_edge, %posix_acl_release.exit.posix_acl_release.exit17_crit_edge
  %sec_ctx = getelementptr inbounds %struct.ceph_acl_sec_ctx, ptr %as_ctx, i32 0, i32 2
  %6 = ptrtoint ptr %sec_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sec_ctx, align 4
  %sec_ctxlen = getelementptr inbounds %struct.ceph_acl_sec_ctx, ptr %as_ctx, i32 0, i32 3
  %8 = ptrtoint ptr %sec_ctxlen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sec_ctxlen, align 4
  tail call void @security_release_secctx(ptr noundef %7, i32 noundef %9) #15
  %pagelist = getelementptr inbounds %struct.ceph_acl_sec_ctx, ptr %as_ctx, i32 0, i32 4
  %10 = ptrtoint ptr %pagelist to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pagelist, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %posix_acl_release.exit17.if.end_crit_edge, label %if.then

posix_acl_release.exit17.if.end_crit_edge:        ; preds = %posix_acl_release.exit17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %posix_acl_release.exit17
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ceph_pagelist_release(ptr noundef nonnull %11) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %posix_acl_release.exit17.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_release_secctx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_layout(ptr noundef %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  %buf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 76
  %i_sb = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 76, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 8
  %i_layout = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 10
  %pool_id = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 10, i32 3
  %6 = ptrtoint ptr %pool_id to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pool_id, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #15
  %8 = call ptr @memset(ptr %buf, i32 255, i32 128)
  %9 = tail call i32 @llvm.read_register.i32(metadata !227) #15
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !252
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 696, ptr noundef nonnull @.str.59) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %pool_ns3 = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 10, i32 4
  br label %for.cond

for.cond:                                         ; preds = %kref_get_unless_zero.exit.for.cond_crit_edge, %rcu_read_lock.exit
  %13 = ptrtoint ptr %pool_ns3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %pool_ns3, align 8
  %call5 = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.cond.do.end11_crit_edge

for.cond.do.end11_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end11

land.lhs.true:                                    ; preds = %for.cond
  %call6 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true8

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end11

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b119 = load i1, ptr @ceph_vxattrcb_layout.__warned, align 1
  br i1 %.b119, label %land.lhs.true8.do.end11_crit_edge, label %if.then

land.lhs.true8.do.end11_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end11

if.then:                                          ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ceph_vxattrcb_layout.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 70, ptr noundef nonnull @.str.52) #15
  br label %do.end11

do.end11:                                         ; preds = %if.then, %land.lhs.true8.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %for.cond.do.end11_crit_edge
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %do.end11.for.end_crit_edge, label %lor.lhs.false

do.end11.for.end_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

lor.lhs.false:                                    ; preds = %do.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #15
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %14, i32 noundef 4) #15
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %lor.lhs.false
  %17 = phi i32 [ %16, %lor.lhs.false ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %18 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %17, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %14, i32 noundef 4) #15
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #15
  %19 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %14, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %21 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %14, ptr nonnull %14, i32 %20, i32 %add.i.i.i.i, ptr nonnull elementtype(i32) %14) #15, !srcloc !253
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %20
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !241

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %22 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %23, 1
  %24 = or i32 %add5.i.i.i.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !241

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef nonnull %14, i32 noundef 0) #15
  %25 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %26 = phi i32 [ %23, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  %tobool12.i.i.i.i.not = icmp eq i32 %26, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #15
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.cond_crit_edge, label %kref_get_unless_zero.exit.for.end_crit_edge

kref_get_unless_zero.exit.for.end_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

kref_get_unless_zero.exit.for.cond_crit_edge:     ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

for.end:                                          ; preds = %kref_get_unless_zero.exit.for.end_crit_edge, %do.end11.for.end_crit_edge
  %call.i120 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i120, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i123

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i123:                               ; preds = %for.end
  %call1.i121 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i121)
  %tobool.not.i122 = icmp eq i32 %call1.i121, 0
  br i1 %tobool.not.i122, label %land.lhs.true.i123.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i125

land.lhs.true.i123.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i123
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i125:                              ; preds = %land.lhs.true.i123
  %.b4.i124 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i124, label %land.lhs.true2.i125.rcu_read_unlock.exit_crit_edge, label %if.then.i126

land.lhs.true2.i125.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i125
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i126:                                     ; preds = %land.lhs.true2.i125
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 724, ptr noundef nonnull @.str.60) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i126, %land.lhs.true2.i125.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i123.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !254
  %27 = call i32 @llvm.read_register.i32(metadata !227) #15
  %and.i.i.i.i.i127 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i127 to ptr
  %preempt_count.i.i.i.i128 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i128, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i128, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_vxattrcb_layout.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_vxattrcb_layout, %if.then25)) #15
          to label %do.end30 [label %if.then25], !srcloc !237

if.then25:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_vxattrcb_layout.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.55, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 72, ptr noundef %vfs_inode) #15
  br label %do.end30

do.end30:                                         ; preds = %if.then25, %rcu_read_unlock.exit
  %lock = getelementptr inbounds %struct.ceph_client, ptr %5, i32 0, i32 12, i32 2
  call void @down_read(ptr noundef %lock) #15
  %osdmap = getelementptr inbounds %struct.ceph_client, ptr %5, i32 0, i32 12, i32 1
  %31 = ptrtoint ptr %osdmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %osdmap, align 4
  %call31 = call ptr @ceph_pg_pool_name_by_id(ptr noundef %32, i64 noundef %7) #15
  %tobool32.not = icmp eq ptr %call31, null
  %33 = ptrtoint ptr %i_layout to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_layout, align 8
  %stripe_count43 = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 10, i32 1
  %35 = ptrtoint ptr %stripe_count43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stripe_count43, align 4
  %object_size45 = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 10, i32 2
  %37 = ptrtoint ptr %object_size45 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %object_size45, align 8
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #17
  %call37 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 128, ptr noundef nonnull @.str.56, i32 noundef %34, i32 noundef %36, i32 noundef %38)
  %call38 = call i32 @strlen(ptr noundef nonnull %call31) #22
  %add = add i32 %call38, %call37
  br label %if.end47

if.else:                                          ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #17
  %call46 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 128, ptr noundef nonnull @.str.57, i32 noundef %34, i32 noundef %36, i32 noundef %38, i64 noundef %7)
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then33
  %len.0 = phi i32 [ %call37, %if.then33 ], [ %call46, %if.else ]
  %total_len.0 = phi i32 [ %add, %if.then33 ], [ %call46, %if.else ]
  br i1 %tobool13.not, label %if.end54, label %if.end54.thread

if.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_cmp4(i32 %total_len.0, i32 %size)
  %cmp.not = icmp ugt i32 %total_len.0, %size
  br i1 %cmp.not, label %if.end73, label %if.end54.if.then55_crit_edge

if.end54.if.then55_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then55

if.end54.thread:                                  ; preds = %if.end47
  %len51 = getelementptr inbounds %struct.ceph_string, ptr %14, i32 0, i32 2
  %39 = ptrtoint ptr %len51 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len51, align 4
  %add52 = add i32 %total_len.0, 16
  %add53 = add i32 %add52, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %add53, i32 %size)
  %cmp.not138 = icmp ugt i32 %add53, %size
  br i1 %cmp.not138, label %if.end54.thread.if.end.i_crit_edge, label %if.end54.thread.if.then55_crit_edge

if.end54.thread.if.then55_crit_edge:              ; preds = %if.end54.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then55

if.end54.thread.if.end.i_crit_edge:               ; preds = %if.end54.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then55:                                        ; preds = %if.end54.thread.if.then55_crit_edge, %if.end54.if.then55_crit_edge
  %41 = call ptr @memcpy(ptr %val, ptr %buf, i32 %len.0)
  br i1 %tobool32.not, label %if.then55.if.end61_crit_edge, label %if.then58

if.then55.if.end61_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

if.then58:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #17
  %call59 = call i32 @strlen(ptr noundef nonnull %call31) #22
  %add.ptr = getelementptr i8, ptr %val, i32 %len.0
  %42 = call ptr @memcpy(ptr %add.ptr, ptr %call31, i32 %call59)
  %add60 = add i32 %call59, %len.0
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.then55.if.end61_crit_edge
  %ret.0 = phi i32 [ %add60, %if.then58 ], [ %len.0, %if.then55.if.end61_crit_edge ]
  br i1 %tobool13.not, label %if.end73.thread, label %if.end73.thread134

if.end73.thread:                                  ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  call void @up_read(ptr noundef %lock) #15
  br label %ceph_put_string.exit

if.end73.thread134:                               ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr65 = getelementptr i8, ptr %val, i32 %ret.0
  %43 = call ptr @memcpy(ptr %add.ptr65, ptr @.str.51, i32 16)
  %add66 = add i32 %ret.0, 16
  %add.ptr67 = getelementptr i8, ptr %val, i32 %add66
  %str = getelementptr inbounds %struct.ceph_string, ptr %14, i32 0, i32 3
  %len69 = getelementptr inbounds %struct.ceph_string, ptr %14, i32 0, i32 2
  %44 = ptrtoint ptr %len69 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len69, align 4
  %46 = call ptr @memcpy(ptr %add.ptr67, ptr %str, i32 %45)
  %47 = load i32, ptr %len69, align 4
  %add71 = add i32 %47, %add66
  br label %if.end.i

if.end73:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  call void @up_read(ptr noundef %lock) #15
  br label %ceph_put_string.exit

if.end.i:                                         ; preds = %if.end73.thread134, %if.end54.thread.if.end.i_crit_edge
  %ret.1136 = phi i32 [ %add71, %if.end73.thread134 ], [ %add53, %if.end54.thread.if.end.i_crit_edge ]
  call void @up_read(ptr noundef %lock) #15
  %call.i.i.i.i.i.i.i130 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %14, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !242
  call void @llvm.prefetch.p0(ptr nonnull %14, i32 1, i32 3, i32 1) #15
  %48 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %14, ptr nonnull %14, i32 1, ptr nonnull elementtype(i32) %14) #15, !srcloc !243
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ceph_put_string.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.ceph_put_string.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_put_string.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef nonnull %14, i32 noundef 3) #15
  br label %ceph_put_string.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !244
  call void @ceph_release_string(ptr noundef nonnull %14) #15, !callees !245
  br label %ceph_put_string.exit

ceph_put_string.exit:                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ceph_put_string.exit_crit_edge, %if.end73, %if.end73.thread
  %ret.1133 = phi i32 [ %ret.0, %if.end73.thread ], [ %total_len.0, %if.end73 ], [ %ret.1136, %if.end5.i.i.i.i.i.ceph_put_string.exit_crit_edge ], [ %ret.1136, %if.then10.i.i.i.i.i ], [ %ret.1136, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #15
  ret i32 %ret.1133
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ceph_vxattrcb_layout_exists(ptr noundef %ci) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_layout = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 10
  %0 = ptrtoint ptr %i_layout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_layout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %stripe_count = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %stripe_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stripe_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %lor.lhs.false2, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %object_size = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 10, i32 2
  %4 = ptrtoint ptr %object_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %object_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3.not = icmp eq i32 %5, 0
  br i1 %cmp3.not, label %lor.lhs.false4, label %lor.lhs.false2.lor.end_crit_edge

lor.lhs.false2.lor.end_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %pool_id = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 10, i32 3
  %6 = ptrtoint ptr %pool_id to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pool_id, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %7)
  %cmp5 = icmp sgt i64 %7, -1
  br i1 %cmp5, label %lor.lhs.false4.lor.end_crit_edge, label %lor.rhs

lor.lhs.false4.lor.end_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #17
  %pool_ns = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 10, i32 4
  %8 = ptrtoint ptr %pool_ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %pool_ns, align 8
  %cmp7 = icmp ne ptr %9, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false4.lor.end_crit_edge, %lor.lhs.false2.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge, %entry.lor.end_crit_edge
  %10 = phi i1 [ true, %lor.lhs.false4.lor.end_crit_edge ], [ true, %lor.lhs.false2.lor.end_crit_edge ], [ true, %lor.lhs.false.lor.end_crit_edge ], [ true, %entry.lor.end_crit_edge ], [ %cmp7, %lor.rhs ]
  ret i1 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_layout_stripe_unit(ptr nocapture noundef readonly %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_layout = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 10
  %0 = ptrtoint ptr %i_layout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_layout, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @ceph_fmt_xattr(ptr noundef %val, i32 noundef %size, ptr noundef nonnull @.str.61, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_layout_stripe_count(ptr nocapture noundef readonly %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %stripe_count = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %stripe_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stripe_count, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @ceph_fmt_xattr(ptr noundef %val, i32 noundef %size, ptr noundef nonnull @.str.61, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_layout_object_size(ptr nocapture noundef readonly %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %object_size = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 10, i32 2
  %0 = ptrtoint ptr %object_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %object_size, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @ceph_fmt_xattr(ptr noundef %val, i32 noundef %size, ptr noundef nonnull @.str.61, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_layout_pool(ptr nocapture noundef readonly %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 76, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 8
  %pool_id = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 10, i32 3
  %6 = ptrtoint ptr %pool_id to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pool_id, align 8
  %lock = getelementptr inbounds %struct.ceph_client, ptr %5, i32 0, i32 12, i32 2
  tail call void @down_read(ptr noundef %lock) #15
  %osdmap = getelementptr inbounds %struct.ceph_client, ptr %5, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %osdmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %osdmap, align 4
  %call2 = tail call ptr @ceph_pg_pool_name_by_id(ptr noundef %9, i64 noundef %7) #15
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @strlen(ptr noundef nonnull %call2) #22
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %size)
  %cmp.not = icmp ugt i32 %call3, %size
  br i1 %cmp.not, label %if.then.if.end6_crit_edge, label %if.then4

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %10 = call ptr @memcpy(ptr %val, ptr %call2, i32 %call3)
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 (ptr, i32, ptr, ...) @ceph_fmt_xattr(ptr noundef %val, i32 noundef %size, ptr noundef nonnull @.str.63, i64 noundef %7)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4, %if.then.if.end6_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then4 ], [ %call3, %if.then.if.end6_crit_edge ], [ %call5, %if.else ]
  tail call void @up_read(ptr noundef %lock) #15
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_layout_pool_namespace(ptr noundef %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !227) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !252
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 696, ptr noundef nonnull @.str.59) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %pool_ns = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 10, i32 4
  br label %for.cond

for.cond:                                         ; preds = %kref_get_unless_zero.exit.for.cond_crit_edge, %rcu_read_lock.exit
  %4 = ptrtoint ptr %pool_ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pool_ns, align 8
  %call = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.cond.do.end7_crit_edge

for.cond.do.end7_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true:                                    ; preds = %for.cond
  %call2 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b28 = load i1, ptr @ceph_vxattrcb_layout_pool_namespace.__warned, align 1
  br i1 %.b28, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ceph_vxattrcb_layout_pool_namespace.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 186, ptr noundef nonnull @.str.52) #15
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %for.cond.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.end19.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #15
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %5, i32 noundef 4) #15
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %lor.lhs.false
  %8 = phi i32 [ %7, %lor.lhs.false ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #15
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #15
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 %11, i32 %add.i.i.i.i, ptr nonnull elementtype(i32) %5) #15, !srcloc !253
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !241

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !241

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 0) #15
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %17 = phi i32 [ %14, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  %tobool12.i.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #15
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.cond_crit_edge, label %if.then16.critedge

kref_get_unless_zero.exit.for.cond_crit_edge:     ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

if.then16.critedge:                               ; preds = %kref_get_unless_zero.exit
  %call.i29 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i29, label %if.then16.critedge.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i32

if.then16.critedge.rcu_read_unlock.exit_crit_edge: ; preds = %if.then16.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i32:                                ; preds = %if.then16.critedge
  %call1.i30 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 724, ptr noundef nonnull @.str.60) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, %if.then16.critedge.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !254
  %18 = call i32 @llvm.read_register.i32(metadata !227) #15
  %and.i.i.i.i.i36 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i37, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %len = getelementptr inbounds %struct.ceph_string, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %size)
  %cmp.not = icmp ugt i32 %23, %size
  br i1 %cmp.not, label %rcu_read_unlock.exit.if.end.i_crit_edge, label %if.then17

rcu_read_unlock.exit.if.end.i_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then17:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  %str = getelementptr inbounds %struct.ceph_string, ptr %5, i32 0, i32 3
  %24 = call ptr @memcpy(ptr %val, ptr %str, i32 %23)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then17, %rcu_read_unlock.exit.if.end.i_crit_edge
  %call.i.i.i.i.i.i.i39 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !242
  call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #15
  %25 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #15, !srcloc !243
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end19_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.if.end19_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #15
  br label %if.end19

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !244
  call void @ceph_release_string(ptr noundef nonnull %5) #15, !callees !245
  br label %if.end19

if.end19.critedge:                                ; preds = %do.end7
  %call.i40 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i40, label %if.end19.critedge.rcu_read_unlock.exit50_crit_edge, label %land.lhs.true.i43

if.end19.critedge.rcu_read_unlock.exit50_crit_edge: ; preds = %if.end19.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit50

land.lhs.true.i43:                                ; preds = %if.end19.critedge
  %call1.i41 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool.not.i42 = icmp eq i32 %call1.i41, 0
  br i1 %tobool.not.i42, label %land.lhs.true.i43.rcu_read_unlock.exit50_crit_edge, label %land.lhs.true2.i45

land.lhs.true.i43.rcu_read_unlock.exit50_crit_edge: ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit50

land.lhs.true2.i45:                               ; preds = %land.lhs.true.i43
  %.b4.i44 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44, label %land.lhs.true2.i45.rcu_read_unlock.exit50_crit_edge, label %if.then.i46

land.lhs.true2.i45.rcu_read_unlock.exit50_crit_edge: ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit50

if.then.i46:                                      ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 724, ptr noundef nonnull @.str.60) #15
  br label %rcu_read_unlock.exit50

rcu_read_unlock.exit50:                           ; preds = %if.then.i46, %land.lhs.true2.i45.rcu_read_unlock.exit50_crit_edge, %land.lhs.true.i43.rcu_read_unlock.exit50_crit_edge, %if.end19.critedge.rcu_read_unlock.exit50_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !254
  %26 = call i32 @llvm.read_register.i32(metadata !227) #15
  %and.i.i.i.i.i47 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i47 to ptr
  %preempt_count.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i48, align 4
  %sub.i.i.i49 = add i32 %29, -1
  store volatile i32 %sub.i.i.i49, ptr %preempt_count.i.i.i.i48, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %if.end19

if.end19:                                         ; preds = %rcu_read_unlock.exit50, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end19_crit_edge
  %ret.0 = phi i32 [ 0, %rcu_read_unlock.exit50 ], [ %23, %if.end5.i.i.i.i.i.if.end19_crit_edge ], [ %23, %if.then10.i.i.i.i.i ], [ %23, %if.then.i.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_dir_entries(ptr nocapture noundef readonly %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_files = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 18
  %0 = ptrtoint ptr %i_files to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_files, align 8
  %i_subdirs = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 19
  %2 = ptrtoint ptr %i_subdirs to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_subdirs, align 8
  %add = add i64 %3, %1
  %call = tail call i32 (ptr, i32, ptr, ...) @ceph_fmt_xattr(ptr noundef %val, i32 noundef %size, ptr noundef nonnull @.str.63, i64 noundef %add)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_dir_files(ptr nocapture noundef readonly %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_files = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 18
  %0 = ptrtoint ptr %i_files to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_files, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @ceph_fmt_xattr(ptr noundef %val, i32 noundef %size, ptr noundef nonnull @.str.63, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_dir_subdirs(ptr nocapture noundef readonly %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_subdirs = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 19
  %0 = ptrtoint ptr %i_subdirs to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_subdirs, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @ceph_fmt_xattr(ptr noundef %val, i32 noundef %size, ptr noundef nonnull @.str.63, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_dir_rentries(ptr nocapture noundef readonly %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rfiles = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 15
  %0 = ptrtoint ptr %i_rfiles to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_rfiles, align 8
  %i_rsubdirs = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 16
  %2 = ptrtoint ptr %i_rsubdirs to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_rsubdirs, align 8
  %add = add i64 %3, %1
  %call = tail call i32 (ptr, i32, ptr, ...) @ceph_fmt_xattr(ptr noundef %val, i32 noundef %size, ptr noundef nonnull @.str.63, i64 noundef %add)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_dir_rfiles(ptr nocapture noundef readonly %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rfiles = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 15
  %0 = ptrtoint ptr %i_rfiles to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_rfiles, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @ceph_fmt_xattr(ptr noundef %val, i32 noundef %size, ptr noundef nonnull @.str.63, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_dir_rsubdirs(ptr nocapture noundef readonly %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rsubdirs = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 16
  %0 = ptrtoint ptr %i_rsubdirs to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_rsubdirs, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @ceph_fmt_xattr(ptr noundef %val, i32 noundef %size, ptr noundef nonnull @.str.63, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_dir_rsnaps(ptr nocapture noundef readonly %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rsnaps = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 17
  %0 = ptrtoint ptr %i_rsnaps to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_rsnaps, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @ceph_fmt_xattr(ptr noundef %val, i32 noundef %size, ptr noundef nonnull @.str.63, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_dir_rbytes(ptr nocapture noundef readonly %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rbytes = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 14
  %0 = ptrtoint ptr %i_rbytes to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_rbytes, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @ceph_fmt_xattr(ptr noundef %val, i32 noundef %size, ptr noundef nonnull @.str.63, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_dir_rctime(ptr nocapture noundef readonly %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rctime = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 13
  %0 = ptrtoint ptr %i_rctime to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_rctime, align 8
  %tv_nsec = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @ceph_fmt_xattr(ptr noundef %val, i32 noundef %size, ptr noundef nonnull @.str.64, i64 noundef %1, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_dir_pin(ptr nocapture noundef readonly %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_dir_pin = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 22
  %0 = ptrtoint ptr %i_dir_pin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_dir_pin, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @ceph_fmt_xattr(ptr noundef %val, i32 noundef %size, ptr noundef nonnull @.str.65, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ceph_vxattrcb_dir_pin_exists(ptr nocapture noundef readonly %ci) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_dir_pin = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 22
  %0 = ptrtoint ptr %i_dir_pin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_dir_pin, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %1)
  %cmp = icmp ne i32 %1, -61
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_quota(ptr nocapture noundef readonly %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_max_bytes = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 20
  %0 = ptrtoint ptr %i_max_bytes to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_max_bytes, align 8
  %i_max_files = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 21
  %2 = ptrtoint ptr %i_max_files to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_max_files, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @ceph_fmt_xattr(ptr noundef %val, i32 noundef %size, ptr noundef nonnull @.str.66, i64 noundef %1, i64 noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ceph_vxattrcb_quota_exists(ptr noundef %ci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ceph_lock = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #15
  %i_max_files = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 21
  %0 = ptrtoint ptr %i_max_files to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_max_files, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %i_max_bytes = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 20
  %2 = ptrtoint ptr %i_max_bytes to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_max_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool1.not = icmp eq i64 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %snap = getelementptr inbounds %struct.ceph_vino, ptr %ci, i32 0, i32 1
  %4 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %snap, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %5)
  %cmp = icmp eq i64 %5, -2
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %6 = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 68
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %land.lhs.true2.if.end_crit_edge, label %land.lhs.true4

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %8, align 8
  %11 = ptrtoint ptr %ci to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ci, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp7 = icmp eq i64 %10, %12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true4, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %ret.0.off0 = phi i1 [ false, %land.lhs.true2.if.end_crit_edge ], [ false, %land.lhs.true.if.end_crit_edge ], [ false, %lor.lhs.false.if.end_crit_edge ], [ %cmp7, %land.lhs.true4 ]
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #15
  ret i1 %ret.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_quota_max_bytes(ptr nocapture noundef readonly %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_max_bytes = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 20
  %0 = ptrtoint ptr %i_max_bytes to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_max_bytes, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @ceph_fmt_xattr(ptr noundef %val, i32 noundef %size, ptr noundef nonnull @.str.67, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_quota_max_files(ptr nocapture noundef readonly %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_max_files = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 21
  %0 = ptrtoint ptr %i_max_files to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_max_files, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @ceph_fmt_xattr(ptr noundef %val, i32 noundef %size, ptr noundef nonnull @.str.67, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_snap_btime(ptr nocapture noundef readonly %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_snap_btime = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 72
  %0 = ptrtoint ptr %i_snap_btime to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_snap_btime, align 8
  %tv_nsec = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 72, i32 1
  %2 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @ceph_fmt_xattr(ptr noundef %val, i32 noundef %size, ptr noundef nonnull @.str.64, i64 noundef %1, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ceph_vxattrcb_snap_btime_exists(ptr nocapture noundef readonly %ci) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_snap_btime = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 72
  %0 = ptrtoint ptr %i_snap_btime to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_snap_btime, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not = icmp eq i64 %1, 0
  br i1 %cmp.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %tv_nsec = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 72, i32 1
  %2 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp ne i32 %3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %4 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %cmp2, %lor.rhs ]
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_caps(ptr noundef %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ceph_lock = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #15
  %call = tail call i32 @__ceph_caps_issued(ptr noundef %ci, ptr noundef null) #15
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #15
  %call2 = tail call ptr @ceph_cap_string(i32 noundef %call) #15
  %call3 = tail call i32 (ptr, i32, ptr, ...) @ceph_fmt_xattr(ptr noundef %val, i32 noundef %size, ptr noundef nonnull @.str.68, ptr noundef %call2, i32 noundef %call)
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_pg_pool_name_by_id(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_release_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_fmt_xattr(ptr nocapture noundef writeonly %val, i32 noundef %size, ptr nocapture noundef readonly %fmt, ...) unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %buf = alloca [96 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #15
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !246
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %buf) #15
  %1 = call ptr @memset(ptr %buf, i32 255, i32 96)
  call void @llvm.va_start(ptr nonnull %args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  %cond = select i1 %tobool.not, i32 0, i32 96
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef nonnull %buf, i32 noundef %cond, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  %3 = add i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 97, i32 %3)
  %cmp = icmp ult i32 %3, 97
  %4 = or i1 %tobool.not, %cmp
  br i1 %4, label %if.end36, label %land.end

land.end:                                         ; preds = %entry
  %.b51 = load i1, ptr @ceph_fmt_xattr.__already_done, align 1
  br i1 %.b51, label %land.end.cleanup_crit_edge, label %if.then7, !prof !241

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ceph_fmt_xattr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 133, i32 noundef 9, ptr noundef nonnull @.str.62, i32 noundef %call) #15
  br label %cleanup

if.end36:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %size)
  %cmp37.not = icmp ugt i32 %call, %size
  br i1 %cmp37.not, label %if.end36.cleanup_crit_edge, label %if.then38

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  %5 = call ptr @memcpy(ptr %val, ptr %buf, i32 %call)
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end36.cleanup_crit_edge, %if.then7, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -7, %if.then7 ], [ -7, %land.end.cleanup_crit_edge ], [ %call, %if.then38 ], [ %call, %if.end36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %buf) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #15
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #11

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_cluster_fsid(ptr nocapture noundef readonly %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 76, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 8
  %call1 = tail call i32 (ptr, i32, ptr, ...) @ceph_fmt_xattr(ptr noundef %val, i32 noundef %size, ptr noundef nonnull @.str.78, ptr noundef %5)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_client_id(ptr nocapture noundef readonly %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 76, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 8
  %call1 = tail call i64 @ceph_client_gid(ptr noundef %5) #15
  %call2 = tail call i32 (ptr, i32, ptr, ...) @ceph_fmt_xattr(ptr noundef %val, i32 noundef %size, ptr noundef nonnull @.str.79, i64 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_vxattrcb_auth_mds(ptr noundef %ci, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ceph_lock = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #15
  %i_auth_cap = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 28
  %0 = ptrtoint ptr %i_auth_cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_auth_cap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %session = getelementptr inbounds %struct.ceph_cap, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %session, align 8
  %s_mds = getelementptr inbounds %struct.ceph_mds_session, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %s_mds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mds, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  %call = tail call i32 (ptr, i32, ptr, ...) @ceph_fmt_xattr(ptr noundef %val, i32 noundef %size, ptr noundef nonnull @.str.65, i32 noundef %cond)
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ceph_client_gid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_do_getattr(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_buffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_mdsc_create_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_mdsc_do_request(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_mdsc_release_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_get_xattr_handler(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %dentry, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(10) @.str.16, i32 noundef 9) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %call1.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.21, i32 noundef 5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(9) @.str.108, i32 noundef 8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false3.i.if.end_crit_edge, label %ceph_is_valid_xattr.exit

lor.lhs.false3.i.if.end_crit_edge:                ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

ceph_is_valid_xattr.exit:                         ; preds = %lor.lhs.false3.i
  %call6.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.109, i32 noundef 5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %ceph_is_valid_xattr.exit.if.end_crit_edge, label %ceph_is_valid_xattr.exit.return_crit_edge

ceph_is_valid_xattr.exit.return_crit_edge:        ; preds = %ceph_is_valid_xattr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

ceph_is_valid_xattr.exit.if.end_crit_edge:        ; preds = %ceph_is_valid_xattr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %ceph_is_valid_xattr.exit.if.end_crit_edge, %lor.lhs.false3.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call i32 @__ceph_getxattr(ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size)
  br label %return

return:                                           ; preds = %if.end, %ceph_is_valid_xattr.exit.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -95, %ceph_is_valid_xattr.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_set_xattr_handler(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(10) @.str.16, i32 noundef 9) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %call1.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.21, i32 noundef 5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(9) @.str.108, i32 noundef 8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false3.i.if.end_crit_edge, label %ceph_is_valid_xattr.exit

lor.lhs.false3.i.if.end_crit_edge:                ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

ceph_is_valid_xattr.exit:                         ; preds = %lor.lhs.false3.i
  %call6.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.109, i32 noundef 5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %ceph_is_valid_xattr.exit.if.end_crit_edge, label %ceph_is_valid_xattr.exit.return_crit_edge

ceph_is_valid_xattr.exit.return_crit_edge:        ; preds = %ceph_is_valid_xattr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

ceph_is_valid_xattr.exit.if.end_crit_edge:        ; preds = %ceph_is_valid_xattr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %ceph_is_valid_xattr.exit.if.end_crit_edge, %lor.lhs.false3.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call i32 @__ceph_setxattr(ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags)
  br label %return

return:                                           ; preds = %if.end, %ceph_is_valid_xattr.exit.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -95, %ceph_is_valid_xattr.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !32, !33, !34, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !57, !59, !60, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !109, !111, !112, !113, !114, !116, !118, !120, !121, !122, !124, !125, !127, !129, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197, !198, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !225}
!llvm.named.register.sp = !{!227}
!llvm.module.flags = !{!228, !229, !230, !231, !232, !233, !234, !235}
!llvm.ident = !{!236}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ceph/xattr.c", i32 725, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__ceph_destroy_xattrs.__UNIQUE_ID_ddebug330, !1, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ceph/xattr.c", i32 731, i32 3}
!10 = !{ptr @__ceph_destroy_xattrs.__UNIQUE_ID_ddebug331, !9, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ceph/xattr.c", i32 866, i32 2}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__ceph_build_xattrs_blob.__UNIQUE_ID_ddebug334, !13, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!16 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ceph/xattr.c", i32 953, i32 2}
!19 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__ceph_getxattr.__UNIQUE_ID_ddebug335, !18, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!21 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ceph/xattr.c", i32 963, i32 4}
!24 = !{ptr @__ceph_getxattr._rs, !23, !"_rs", i1 false, i1 false}
!25 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__ceph_getxattr._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @__ceph_getxattr._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ceph/xattr.c", i32 995, i32 21}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ceph/xattr.c", i32 1012, i32 2}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ceph_listxattr.__UNIQUE_ID_ddebug336, !31, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!34 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ceph/xattr.c", i32 1139, i32 39}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ceph/xattr.c", i32 1144, i32 21}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ceph/xattr.c", i32 1183, i32 2}
!41 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__ceph_setxattr.__UNIQUE_ID_ddebug340, !40, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!43 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ceph/xattr.c", i32 1195, i32 3}
!46 = !{ptr @__ceph_setxattr.__UNIQUE_ID_ddebug341, !45, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!47 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @__ceph_setxattr._rs, !49, !"_rs", i1 false, i1 false}
!49 = !{!"../fs/ceph/xattr.c", i32 1234, i32 3}
!50 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @__ceph_setxattr._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @__ceph_setxattr._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../fs/ceph/xattr.c", i32 1317, i32 3}
!55 = !{ptr @ceph_xattr_handlers, !56, !"ceph_xattr_handlers", i1 false, i1 false}
!56 = !{!"../fs/ceph/xattr.c", i32 1392, i32 29}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ceph/xattr.c", i32 843, i32 2}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @__get_required_blob_size.__UNIQUE_ID_ddebug333, !58, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!61 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ceph/xattr.c", i32 388, i32 11}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ceph/xattr.c", i32 394, i32 2}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ceph/xattr.c", i32 395, i32 2}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ceph/xattr.c", i32 396, i32 2}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ceph/xattr.c", i32 397, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ceph/xattr.c", i32 398, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ceph/xattr.c", i32 399, i32 2}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ceph/xattr.c", i32 400, i32 2}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ceph/xattr.c", i32 401, i32 2}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ceph/xattr.c", i32 402, i32 2}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ceph/xattr.c", i32 403, i32 2}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ceph/xattr.c", i32 404, i32 2}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/ceph/xattr.c", i32 405, i32 2}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/ceph/xattr.c", i32 406, i32 2}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/ceph/xattr.c", i32 407, i32 2}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/ceph/xattr.c", i32 409, i32 11}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/ceph/xattr.c", i32 422, i32 2}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/ceph/xattr.c", i32 423, i32 2}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/ceph/xattr.c", i32 425, i32 11}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/ceph/xattr.c", i32 432, i32 11}
!102 = !{ptr @ceph_dir_vxattrs, !103, !"ceph_dir_vxattrs", i1 false, i1 false}
!103 = !{!"../fs/ceph/xattr.c", i32 386, i32 27}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/ceph/xattr.c", i32 65, i32 25}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../fs/ceph/xattr.c", i32 70, i32 12}
!108 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/ceph/xattr.c", i32 72, i32 2}
!111 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @ceph_vxattrcb_layout.__UNIQUE_ID_ddebug318, !110, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!113 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ceph/xattr.c", i32 77, i32 3}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/ceph/xattr.c", i32 83, i32 3}
!118 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!119 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!120 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!122 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!123 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!124 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/ceph/xattr.c", i32 145, i32 35}
!127 = distinct !{null, !128, !"__already_done", i1 false, i1 false}
!128 = !{!"../fs/ceph/xattr.c", i32 133, i32 3}
!129 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/ceph/xattr.c", i32 176, i32 35}
!132 = distinct !{null, !133, !"__warned", i1 false, i1 false}
!133 = !{!"../fs/ceph/xattr.c", i32 186, i32 27}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/ceph/xattr.c", i32 251, i32 35}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/ceph/xattr.c", i32 264, i32 35}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/ceph/xattr.c", i32 284, i32 35}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/ceph/xattr.c", i32 291, i32 35}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/ceph/xattr.c", i32 339, i32 35}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/ceph/xattr.c", i32 445, i32 11}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/ceph/xattr.c", i32 451, i32 2}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/ceph/xattr.c", i32 452, i32 2}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/ceph/xattr.c", i32 453, i32 2}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/ceph/xattr.c", i32 454, i32 2}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/ceph/xattr.c", i32 455, i32 2}
!156 = !{ptr @ceph_file_vxattrs, !157, !"ceph_file_vxattrs", i1 false, i1 false}
!157 = !{!"../fs/ceph/xattr.c", i32 443, i32 27}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/ceph/xattr.c", i32 475, i32 11}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/ceph/xattr.c", i32 482, i32 11}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/ceph/xattr.c", i32 489, i32 11}
!164 = !{ptr @ceph_common_vxattrs, !165, !"ceph_common_vxattrs", i1 false, i1 false}
!165 = !{!"../fs/ceph/xattr.c", i32 473, i32 27}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/ceph/xattr.c", i32 318, i32 35}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/ceph/xattr.c", i32 326, i32 35}
!170 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/ceph/xattr.c", i32 760, i32 2}
!172 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @__build_xattrs.__UNIQUE_ID_ddebug332, !171, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!174 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.83, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/ceph/xattr.c", i32 650, i32 4}
!177 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @__get_xattr.__UNIQUE_ID_ddebug326, !176, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!179 = !{ptr @.str.85, !176, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.86, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/ceph/xattr.c", i32 656, i32 2}
!182 = !{ptr @__get_xattr.__UNIQUE_ID_ddebug327, !181, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!183 = !{ptr @.str.87, !181, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.88, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/ceph/xattr.c", i32 701, i32 2}
!186 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @__copy_xattr_names.__UNIQUE_ID_ddebug328, !185, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!188 = !{ptr @.str.90, !185, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.91, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/ceph/xattr.c", i32 708, i32 3}
!191 = !{ptr @__copy_xattr_names.__UNIQUE_ID_ddebug329, !190, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!192 = !{ptr @.str.92, !190, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.93, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/ceph/xattr.c", i32 592, i32 3}
!195 = !{ptr @.str.94, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @__set_xattr.__UNIQUE_ID_ddebug323, !194, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!197 = !{ptr @.str.95, !194, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.96, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/ceph/xattr.c", i32 611, i32 16}
!200 = !{ptr @.str.97, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/ceph/xattr.c", i32 620, i32 3}
!202 = !{ptr @__set_xattr.__UNIQUE_ID_ddebug324, !201, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!203 = !{ptr @.str.98, !201, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.99, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../fs/ceph/xattr.c", i32 623, i32 2}
!206 = !{ptr @__set_xattr.__UNIQUE_ID_ddebug325, !205, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!207 = !{ptr @.str.100, !205, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.101, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../fs/ceph/xattr.c", i32 1072, i32 2}
!210 = !{ptr @.str.102, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @ceph_sync_setxattr.__UNIQUE_ID_ddebug337, !209, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!212 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.104, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/ceph/xattr.c", i32 1101, i32 2}
!215 = !{ptr @ceph_sync_setxattr.__UNIQUE_ID_ddebug338, !214, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!216 = !{ptr @.str.105, !214, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.106, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../fs/ceph/xattr.c", i32 1104, i32 2}
!219 = !{ptr @ceph_sync_setxattr.__UNIQUE_ID_ddebug339, !218, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!220 = !{ptr @.str.107, !218, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @ceph_other_xattr_handler, !222, !"ceph_other_xattr_handler", i1 false, i1 false}
!222 = !{!"../fs/ceph/xattr.c", i32 1277, i32 35}
!223 = !{ptr @.str.108, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/ceph/xattr.c", i32 25, i32 24}
!225 = !{ptr @.str.109, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../fs/ceph/xattr.c", i32 26, i32 24}
!227 = !{!"sp"}
!228 = !{i32 1, !"wchar_size", i32 2}
!229 = !{i32 1, !"min_enum_size", i32 4}
!230 = !{i32 8, !"branch-target-enforcement", i32 0}
!231 = !{i32 8, !"sign-return-address", i32 0}
!232 = !{i32 8, !"sign-return-address-all", i32 0}
!233 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!234 = !{i32 7, !"uwtable", i32 1}
!235 = !{i32 7, !"frame-pointer", i32 2}
!236 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!237 = !{i64 2148653174, i64 2148653179, i64 2148653192, i64 2148653236, i64 2148653270, i64 2148653291}
!238 = !{i8 0, i8 2}
!239 = !{!"branch_weights", i32 1, i32 2000}
!240 = !{i64 2155984498, i64 2155984978, i64 2155984535, i64 2155984591, i64 2155984625, i64 2155984649, i64 2155984690, i64 2155984711, i64 2155984739, i64 2155984773}
!241 = !{!"branch_weights", i32 2000, i32 1}
!242 = !{i64 2148311642}
!243 = !{i64 2148226106, i64 2148226138, i64 2148226167, i64 2148226201, i64 2148226232, i64 2148226255}
!244 = !{i64 2148664371}
!245 = !{ptr @ceph_buffer_release, ptr @ceph_mdsc_release_request, ptr @ceph_release_string}
!246 = !{!"auto-init"}
!247 = !{i64 2156019458, i64 2156019939, i64 2156019495, i64 2156019551, i64 2156019585, i64 2156019609, i64 2156019650, i64 2156019671, i64 2156019699, i64 2156019733}
!248 = !{i64 2154108262}
!249 = !{i64 2152259808}
!250 = !{i64 2152260015}
!251 = !{i64 2154111033}
!252 = !{i64 2149585473}
!253 = !{i64 633106, i64 633130, i64 633151, i64 633168, i64 633185}
!254 = !{i64 2149585739}
