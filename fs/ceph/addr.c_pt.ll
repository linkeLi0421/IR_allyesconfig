; ModuleID = '/llk/IR_all_yes/fs/ceph/addr.c_pt.bc'
source_filename = "../fs/ceph/addr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.85 }
%union.anon.85 = type { i32 }
%struct.netfs_read_request_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.page = type { i32, %union.anon, %union.anon.105, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.105 = type { %struct.atomic_t }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.anon.99 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.anon.112 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.ceph_writeback_ctl = type { i64, i64, i32, i8, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.107, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.108, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.109, ptr, %struct.address_space, %struct.list_head, %union.anon.110, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.107 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.108 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.109 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.110 = type { ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fscache_cookie = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, %struct.hlist_bl_node, %struct.list_head, %struct.list_head, %struct.work_struct, i64, i32, i32, i8, i8, i8, i8, i32, %union.anon.135, %union.anon.136 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hlist_bl_node = type { ptr, ptr }
%union.anon.135 = type { ptr, [12 x i8] }
%union.anon.136 = type { ptr, [4 x i8] }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.ceph_fs_client = type { ptr, %struct.list_head, ptr, ptr, i32, i8, i8, i32, i64, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ceph_mount_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ceph_snap_context = type { %struct.refcount_struct, i64, i32, [0 x i64] }
%struct.ceph_client = type { %struct.ceph_fsid, i8, ptr, ptr, %struct.mutex, %struct.wait_queue_head, i32, ptr, i64, i64, %struct.ceph_messenger, %struct.ceph_mon_client, %struct.ceph_osd_client, ptr, ptr, ptr, ptr }
%struct.ceph_fsid = type { [16 x i8] }
%struct.ceph_messenger = type <{ %struct.ceph_entity_inst, %struct.ceph_entity_addr, [3 x i8], %struct.atomic_t, %struct.possible_net_t, i32, %struct.spinlock }>
%struct.ceph_entity_inst = type <{ %struct.ceph_entity_name, %struct.ceph_entity_addr }>
%struct.ceph_entity_name = type <{ i8, i64 }>
%struct.ceph_entity_addr = type { i32, i32, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.115 }
%union.anon.115 = type { ptr, [124 x i8] }
%struct.possible_net_t = type { ptr }
%struct.ceph_mon_client = type { ptr, ptr, %struct.mutex, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.ceph_connection, i8, i32, %struct.rb_root, i64, [4 x %struct.anon.130], i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ceph_connection = type <{ ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32, ptr, %struct.ceph_entity_name, %struct.ceph_entity_addr, [7 x i8], i64, %struct.mutex, %struct.list_head, %struct.list_head, [4 x i8], i64, i64, i64, ptr, ptr, ptr, i32, i32, i32, %struct.timespec64, %struct.delayed_work, i32, %union.anon.126 }>
%union.anon.126 = type { %struct.ceph_connection_v2_info }
%struct.ceph_connection_v2_info = type { %struct.iov_iter, [5 x %struct.kvec], %struct.bio_vec, i32, i32, %struct.iov_iter, [8 x %struct.kvec], %struct.bio_vec, i32, i32, i32, i8, %struct.ceph_frame_desc, %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor, ptr, ptr, ptr, %struct.crypto_wait, %struct.ceph_gcm_nonce, %struct.ceph_gcm_nonce, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, [16 x ptr], i32, [8 x %struct.kvec], [8 x %struct.kvec], i32, i32, i64, i64, i64, i64, i64, [96 x i8], [96 x i8], %struct.anon.127 }
%struct.kvec = type { ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.92, %union.anon.93 }
%union.anon.92 = type { ptr }
%union.anon.93 = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ceph_frame_desc = type { i32, i32, [4 x i32], [4 x i32] }
%struct.ceph_msg_data_cursor = type { i32, ptr, i32, i8, i8, %union.anon.121 }
%union.anon.121 = type { %struct.ceph_bio_iter }
%struct.ceph_bio_iter = type { ptr, %struct.bvec_iter }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ceph_gcm_nonce = type <{ i32, i64 }>
%struct.anon.127 = type { i8, %union.anon.128 }
%union.anon.128 = type <{ %struct.anon.129, [3 x i8] }>
%struct.anon.129 = type { i32, i32, i32 }
%struct.anon.130 = type { %struct.ceph_mon_subscribe_item, i8, i32 }
%struct.ceph_mon_subscribe_item = type <{ i64, i8 }>
%struct.ceph_osd_client = type { ptr, ptr, %struct.rw_semaphore, %struct.rb_root, %struct.list_head, %struct.spinlock, i32, [4 x i8], %struct.ceph_osd, %struct.atomic64_t, i64, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.atomic_t, %struct.atomic_t, i32, %struct.delayed_work, %struct.delayed_work, ptr, ptr, %struct.ceph_msgpool, %struct.ceph_msgpool, ptr, ptr }
%struct.ceph_osd = type { %struct.refcount_struct, ptr, i32, i32, %struct.rb_node, [4 x i8], %struct.ceph_connection, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.ceph_auth_handshake, i32, %struct.list_head, %struct.mutex, [4 x i8] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ceph_auth_handshake = type { ptr, ptr, i32, ptr, i32, ptr, ptr }
%struct.ceph_msgpool = type { ptr, ptr, i32, i32, i32 }
%struct.ceph_osd_request = type { i64, %struct.rb_node, %struct.rb_node, %struct.work_struct, ptr, %struct.ceph_osd_request_target, ptr, ptr, i32, i32, i32, ptr, %struct.kref, i8, %struct.completion, ptr, ptr, %struct.list_head, ptr, i64, ptr, %struct.timespec64, i64, i8, i32, i32, i64, i64, i32, i32, [0 x %struct.ceph_osd_req_op] }
%struct.ceph_osd_request_target = type { %struct.ceph_object_id, %struct.ceph_object_locator, %struct.ceph_object_id, %struct.ceph_object_locator, %struct.ceph_pg, %struct.ceph_spg, i32, i32, %struct.ceph_osds, %struct.ceph_osds, i32, i32, i8, i8, i32, i8, i8, i32, i32, i32 }
%struct.ceph_object_id = type { ptr, [52 x i8], i32 }
%struct.ceph_object_locator = type { i64, ptr }
%struct.ceph_pg = type { i64, i32 }
%struct.ceph_spg = type { %struct.ceph_pg, i8 }
%struct.ceph_osds = type { [32 x i32], i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.ceph_osd_req_op = type { i16, i32, i32, i32, i32, %union.anon.137 }
%union.anon.137 = type { %struct.anon.144 }
%struct.anon.144 = type { ptr, ptr, %struct.ceph_osd_data, %struct.ceph_osd_data, %struct.ceph_osd_data, i8, i8, i32 }
%struct.ceph_osd_data = type { i32, %union.anon.138 }
%union.anon.138 = type { %struct.anon.139, [8 x i8] }
%struct.anon.139 = type { ptr, i64, i32, i8, i8 }
%struct.ceph_file_info = type { i16, i16, %struct.spinlock, %struct.list_head, i32, %struct.atomic_t }
%struct.ceph_rw_context = type { %struct.list_head, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.76, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.76 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ceph_mds_client = type { ptr, %struct.mutex, ptr, %struct.completion, %struct.wait_queue_head, %struct.list_head, i32, ptr, %struct.atomic_t, i32, i32, %struct.atomic64_t, %struct.rb_root, %struct.mutex, i64, %struct.rw_semaphore, %struct.rb_root, %struct.list_head, i32, %struct.spinlock, i64, i64, %struct.rb_root, %struct.delayed_work, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.ceph_client_metric, %struct.spinlock, %struct.rb_root, %struct.list_head, %struct.rw_semaphore, %struct.rb_root, [65 x i8] }
%struct.ceph_client_metric = type { %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, [4 x %struct.ceph_metric], %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, ptr, %struct.delayed_work }
%struct.ceph_metric = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.82, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.ceph_inode_info = type { %struct.ceph_vino, %struct.spinlock, i64, i64, i32, i32, %struct.atomic64_t, %struct.atomic64_t, [2 x %struct.atomic64_t], %struct.ceph_dir_layout, %struct.ceph_file_layout, %struct.ceph_file_layout, ptr, %struct.timespec64, i64, i64, i64, i64, i64, i64, i64, i64, i32, %struct.rb_root, i32, %struct.mutex, %struct.ceph_inode_xattrs_info, %struct.rb_root, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.wait_queue_head, i32, %struct.list_head, %struct.ceph_cap_reservation, %struct.list_head, ptr, i32, i32, i32, [4 x i32], %struct.mutex, i32, i64, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %union.anon.134, %struct.list_head, %struct.list_head, %struct.timespec64, %struct.timespec64, %struct.work_struct, i32, ptr, %struct.inode }
%struct.ceph_vino = type { i64, i64 }
%struct.ceph_dir_layout = type { i8, i8, i16, i32 }
%struct.ceph_file_layout = type { i32, i32, i32, i64, ptr }
%struct.ceph_inode_xattrs_info = type { ptr, ptr, %struct.rb_root, i8, i32, i32, i32, i64, i64 }
%struct.ceph_cap_reservation = type { i32, i32 }
%union.anon.134 = type { ptr }
%struct.ceph_string = type { %struct.kref, %union.anon.114, i32, [0 x i8] }
%union.anon.114 = type { %struct.rb_node }
%struct.ceph_pool_perm = type { %struct.rb_node, i32, i64, i32, [0 x i8] }
%struct.netfs_read_request = type { %struct.work_struct, ptr, ptr, %struct.netfs_cache_resources, %struct.list_head, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i64, i64, i32, %struct.refcount_struct, i32, ptr }
%struct.netfs_cache_resources = type { ptr, ptr, ptr, i32, i32 }
%struct.netfs_read_subrequest = type { ptr, %struct.list_head, i64, i32, i32, %struct.refcount_struct, i16, i16, i8, i32 }
%struct.ceph_options = type { i32, %struct.ceph_fsid, %struct.ceph_entity_addr, i32, i32, i32, i32, i32, [2 x i32], ptr, i32, ptr, ptr, %struct.rb_root }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.anon.56 = type { ptr, i32, i32, i32 }
%struct.vm_fault = type { %struct.anon.56, i32, ptr, ptr, %union.anon.57, ptr, ptr, ptr, ptr, ptr }
%union.anon.57 = type { i32 }

@ceph_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @ceph_writepage, ptr @ceph_readpage, ptr @ceph_writepages_start, ptr @ceph_set_page_dirty, ptr null, ptr @ceph_readahead, ptr @ceph_write_begin, ptr @ceph_write_end, ptr null, ptr @ceph_invalidatepage, ptr @ceph_releasepage, ptr null, ptr @noop_direct_IO, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ceph_fill_inline_data.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 -105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ceph\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ceph_fill_inline_data\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ceph/addr.c\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%.*s %12.12s:%-4d : fill_inline_data %p %llx.%llx len %zu locked_page %p\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"ceph: %.*s %12.12s:%-4d : fill_inline_data %p %llx.%llx len %zu locked_page %p\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@ceph_uninline_data.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 1, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ceph_uninline_data\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%.*s %12.12s:%-4d : uninline_data %p %llx.%llx inline_version %llu\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"ceph: %.*s %12.12s:%-4d : uninline_data %p %llx.%llx inline_version %llu\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"inline_version\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llu\00", [27 x i8] zeroinitializer }, align 32
@ceph_uninline_data.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.11, i8 1, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%.*s %12.12s:%-4d : uninline_data %p %llx.%llx inline_version %llu = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"ceph: %.*s %12.12s:%-4d : uninline_data %p %llx.%llx inline_version %llu = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@ceph_vmops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ceph_filemap_fault, ptr null, ptr null, ptr null, ptr @ceph_page_mkwrite, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ceph_pool_perm_check.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 1, i8 -9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ceph_pool_perm_check\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%.*s %12.12s:%-4d : ceph_pool_perm_check pool %lld no read perm\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"ceph: %.*s %12.12s:%-4d : ceph_pool_perm_check pool %lld no read perm\0A\00", [57 x i8] zeroinitializer }, align 32
@ceph_pool_perm_check.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.16, i8 1, i8 -8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%.*s %12.12s:%-4d : ceph_pool_perm_check pool %lld no write perm\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"ceph: %.*s %12.12s:%-4d : ceph_pool_perm_check pool %lld no write perm\0A\00", [56 x i8] zeroinitializer }, align 32
@ceph_pool_perm_check.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@writepage_nounlock.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"writepage_nounlock\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%.*s %12.12s:%-4d : writepage %p idx %lu\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ceph: %.*s %12.12s:%-4d : writepage %p idx %lu\0A\00", [48 x i8] zeroinitializer }, align 32
@writepage_nounlock.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.22, i8 0, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%.*s %12.12s:%-4d : writepage %p page %p not dirty?\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ceph: %.*s %12.12s:%-4d : writepage %p page %p not dirty?\0A\00", [37 x i8] zeroinitializer }, align 32
@writepage_nounlock.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.24, i8 0, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%.*s %12.12s:%-4d : writepage %p page %p snapc %p not writeable - noop\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"ceph: %.*s %12.12s:%-4d : writepage %p page %p snapc %p not writeable - noop\0A\00", [50 x i8] zeroinitializer }, align 32
@writepage_nounlock.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.26, i8 0, i8 -118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%.*s %12.12s:%-4d : %p page eof %llu\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ceph: %.*s %12.12s:%-4d : %p page eof %llu\0A\00", [52 x i8] zeroinitializer }, align 32
@writepage_nounlock.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.28, i8 0, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"%.*s %12.12s:%-4d : writepage %p page %p index %lu on %llu~%llu snapc %p seq %lld\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"ceph: %.*s %12.12s:%-4d : writepage %p page %p index %lu on %llu~%llu snapc %p seq %lld\0A\00", [39 x i8] zeroinitializer }, align 32
@writepage_nounlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@writepage_nounlock.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.30, i8 0, i8 -111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%.*s %12.12s:%-4d : writepage %llu~%llu (%llu bytes)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ceph: %.*s %12.12s:%-4d : writepage %llu~%llu (%llu bytes)\0A\00", [36 x i8] zeroinitializer }, align 32
@writepage_nounlock.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.32, i8 0, i8 -106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%.*s %12.12s:%-4d : writepage interrupted page %p\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ceph: %.*s %12.12s:%-4d : writepage interrupted page %p\0A\00", [39 x i8] zeroinitializer }, align 32
@writepage_nounlock.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.34, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%.*s %12.12s:%-4d : writepage setting page/mapping error %d %p\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"ceph: %.*s %12.12s:%-4d : writepage setting page/mapping error %d %p\0A\00", [58 x i8] zeroinitializer }, align 32
@writepage_nounlock.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.36, i8 0, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%.*s %12.12s:%-4d : writepage cleaned page %p\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ceph: %.*s %12.12s:%-4d : writepage cleaned page %p\0A\00", [43 x i8] zeroinitializer }, align 32
@writepage_nounlock.__already_done.38 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@get_oldest_context.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get_oldest_context\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%.*s %12.12s:%-4d :  cap_snap %p snapc %p has %d dirty pages\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"ceph: %.*s %12.12s:%-4d :  cap_snap %p snapc %p has %d dirty pages\0A\00", [60 x i8] zeroinitializer }, align 32
@get_oldest_context.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.44, i8 0, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%.*s %12.12s:%-4d :  head snapc %p has %d dirty pages\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"ceph: %.*s %12.12s:%-4d :  head snapc %p has %d dirty pages\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"VM_BUG_ON_FOLIO(folio_test_private_2(folio))\00", [51 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.49 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@ceph_readpage.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ceph_readpage\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"%.*s %12.12s:%-4d : readpage ino %llx.%llx file %p off %llu len %zu folio %p index %lu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"ceph: %.*s %12.12s:%-4d : readpage ino %llx.%llx file %p off %llu len %zu folio %p index %lu\0A\00", [34 x i8] zeroinitializer }, align 32
@ceph_netfs_read_ops = internal constant { %struct.netfs_read_request_ops, [56 x i8] } { %struct.netfs_read_request_ops { ptr @ceph_is_cache_enabled, ptr null, ptr @ceph_begin_cache_operation, ptr @ceph_netfs_expand_readahead, ptr @ceph_netfs_clamp_length, ptr @ceph_netfs_issue_op, ptr null, ptr @ceph_netfs_check_write_begin, ptr null, ptr @ceph_readahead_cleanup }, [56 x i8] zeroinitializer }, align 32
@ceph_netfs_issue_op.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ceph_netfs_issue_op\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%.*s %12.12s:%-4d : %s: pos=%llu orig_len=%zu len=%llu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ceph: %.*s %12.12s:%-4d : %s: pos=%llu orig_len=%zu len=%llu\0A\00", [34 x i8] zeroinitializer }, align 32
@ceph_netfs_issue_op.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.56, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%.*s %12.12s:%-4d : %s: iov_ter_get_pages_alloc returned %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ceph: %.*s %12.12s:%-4d : %s: iov_ter_get_pages_alloc returned %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ceph_netfs_issue_op.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ceph_netfs_issue_op.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.58, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%.*s %12.12s:%-4d : %s: result %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ceph: %.*s %12.12s:%-4d : %s: result %d\0A\00", [55 x i8] zeroinitializer }, align 32
@finish_netfs_read.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"finish_netfs_read\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%.*s %12.12s:%-4d : %s: result %d subreq->len=%zu i_size=%lld\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"ceph: %.*s %12.12s:%-4d : %s: result %d subreq->len=%zu i_size=%lld\0A\00", [59 x i8] zeroinitializer }, align 32
@ceph_find_incompatible.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 1, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ceph_find_incompatible\00", [41 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%.*s %12.12s:%-4d :  page %p %llx:%llx is shutdown\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ceph: %.*s %12.12s:%-4d :  page %p %llx:%llx is shutdown\0A\00", [38 x i8] zeroinitializer }, align 32
@ceph_find_incompatible.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.66, i8 1, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%.*s %12.12s:%-4d :  page %p snapc %p not current or oldest\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ceph: %.*s %12.12s:%-4d :  page %p snapc %p not current or oldest\0A\00", [61 x i8] zeroinitializer }, align 32
@ceph_find_incompatible.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.68, i8 1, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%.*s %12.12s:%-4d :  page %p snapc %p not current, but oldest\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"ceph: %.*s %12.12s:%-4d :  page %p snapc %p not current, but oldest\0A\00", [59 x i8] zeroinitializer }, align 32
@ceph_writepages_start.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ceph_writepages_start\00", [42 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%.*s %12.12s:%-4d : writepages_start %p (mode=%s)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ceph: %.*s %12.12s:%-4d : writepages_start %p (mode=%s)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ALL\00", [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HOLD\00", [27 x i8] zeroinitializer }, align 32
@ceph_writepages_start._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.76, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@ceph_writepages_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.70, ptr @.str.2, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014ceph: writepage_start %p %lld forced umount\0A\00", [49 x i8] zeroinitializer }, align 32
@ceph_writepages_start._entry_ptr = internal global ptr @ceph_writepages_start._entry, section ".printk_index", align 4
@ceph_writepages_start.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.78, i8 0, i8 -59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%.*s %12.12s:%-4d :  no snap context with dirty data?\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"ceph: %.*s %12.12s:%-4d :  no snap context with dirty data?\0A\00", [35 x i8] zeroinitializer }, align 32
@ceph_writepages_start.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.80, i8 0, i8 -58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%.*s %12.12s:%-4d :  oldest snapc is %p seq %lld (%d snaps)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ceph: %.*s %12.12s:%-4d :  oldest snapc is %p seq %lld (%d snaps)\0A\00", [61 x i8] zeroinitializer }, align 32
@ceph_writepages_start.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.82, i8 0, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%.*s %12.12s:%-4d :  cyclic, start at %lu\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ceph: %.*s %12.12s:%-4d :  cyclic, start at %lu\0A\00", [47 x i8] zeroinitializer }, align 32
@ceph_writepages_start.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.84, i8 0, i8 -54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d :  not cyclic, %lu to %lu\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ceph: %.*s %12.12s:%-4d :  not cyclic, %lu to %lu\0A\00", [45 x i8] zeroinitializer }, align 32
@ceph_writepages_start.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.86, i8 0, i8 -52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%.*s %12.12s:%-4d :  non-head snapc, range whole\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ceph: %.*s %12.12s:%-4d :  non-head snapc, range whole\0A\00", [40 x i8] zeroinitializer }, align 32
@ceph_writepages_start.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.88, i8 0, i8 -47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%.*s %12.12s:%-4d : pagevec_lookup_range_tag got %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ceph: %.*s %12.12s:%-4d : pagevec_lookup_range_tag got %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ceph_writepages_start.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.90, i8 0, i8 -45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%.*s %12.12s:%-4d : ? %p idx %lu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ceph: %.*s %12.12s:%-4d : ? %p idx %lu\0A\00", [56 x i8] zeroinitializer }, align 32
@ceph_writepages_start.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.92, i8 0, i8 -43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%.*s %12.12s:%-4d : !dirty or !mapping %p\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ceph: %.*s %12.12s:%-4d : !dirty or !mapping %p\0A\00", [47 x i8] zeroinitializer }, align 32
@ceph_writepages_start.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.94, i8 0, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%.*s %12.12s:%-4d : page snapc %p %lld != oldest %p %lld\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"ceph: %.*s %12.12s:%-4d : page snapc %p %lld != oldest %p %lld\0A\00", [32 x i8] zeroinitializer }, align 32
@ceph_writepages_start.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.26, i8 0, i8 -39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ceph_writepages_start.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.96, i8 0, i8 -36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%.*s %12.12s:%-4d : end of strip unit %p\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ceph: %.*s %12.12s:%-4d : end of strip unit %p\0A\00", [48 x i8] zeroinitializer }, align 32
@ceph_writepages_start.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.98, i8 0, i8 -35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%.*s %12.12s:%-4d : %p under writeback\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ceph: %.*s %12.12s:%-4d : %p under writeback\0A\00", [50 x i8] zeroinitializer }, align 32
@ceph_writepages_start.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.100, i8 0, i8 -34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d : waiting on writeback %p\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ceph: %.*s %12.12s:%-4d : waiting on writeback %p\0A\00", [45 x i8] zeroinitializer }, align 32
@ceph_writepages_start.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.102, i8 0, i8 -32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%.*s %12.12s:%-4d : %p !clear_page_dirty_for_io\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ceph: %.*s %12.12s:%-4d : %p !clear_page_dirty_for_io\0A\00", [41 x i8] zeroinitializer }, align 32
@ceph_wb_pagevec_pool = external dso_local local_unnamed_addr global ptr, align 4
@ceph_writepages_start.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.104, i8 0, i8 -18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%.*s %12.12s:%-4d : %p will write page %p idx %lu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ceph: %.*s %12.12s:%-4d : %p will write page %p idx %lu\0A\00", [39 x i8] zeroinitializer }, align 32
@ceph_writepages_start.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.106, i8 0, i8 -10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%.*s %12.12s:%-4d : reached end pvec, trying for more\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"ceph: %.*s %12.12s:%-4d : reached end pvec, trying for more\0A\00", [35 x i8] zeroinitializer }, align 32
@ceph_writepages_start.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.108, i8 1, i8 4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%.*s %12.12s:%-4d : writepages got pages at %llu~%llu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"ceph: %.*s %12.12s:%-4d : writepages got pages at %llu~%llu\0A\00", [35 x i8] zeroinitializer }, align 32
@ceph_writepages_start.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.108, i8 1, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ceph_writepages_start.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.110, i8 1, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%.*s %12.12s:%-4d : pagevec_release on %d pages (%p)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ceph: %.*s %12.12s:%-4d : pagevec_release on %d pages (%p)\0A\00", [36 x i8] zeroinitializer }, align 32
@ceph_writepages_start.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.112, i8 1, i8 27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%.*s %12.12s:%-4d : writepages looping back to beginning of file\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"ceph: %.*s %12.12s:%-4d : writepages looping back to beginning of file\0A\00", [56 x i8] zeroinitializer }, align 32
@ceph_writepages_start.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.114, i8 1, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%.*s %12.12s:%-4d : writepages dend - startone, rc = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"ceph: %.*s %12.12s:%-4d : writepages dend - startone, rc = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@writepages_finish.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.2, ptr @.str.118, i8 0, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"writepages_finish\00", [46 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%.*s %12.12s:%-4d : writepages_finish %p rc %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ceph: %.*s %12.12s:%-4d : writepages_finish %p rc %d\0A\00", [42 x i8] zeroinitializer }, align 32
@writepages_finish.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.2, ptr @.str.120, i8 0, i8 -78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%.*s %12.12s:%-4d : unlocking %p\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ceph: %.*s %12.12s:%-4d : unlocking %p\0A\00", [56 x i8] zeroinitializer }, align 32
@writepages_finish.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.2, ptr @.str.122, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%.*s %12.12s:%-4d : writepages_finish %p wrote %llu bytes cleaned %d pages\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"ceph: %.*s %12.12s:%-4d : writepages_finish %p wrote %llu bytes cleaned %d pages\0A\00", [46 x i8] zeroinitializer }, align 32
@ceph_set_page_dirty.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.124, ptr @.str.2, ptr @.str.125, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ceph_set_page_dirty\00", [44 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%.*s %12.12s:%-4d : %p set_page_dirty %p idx %lu -- already dirty\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"ceph: %.*s %12.12s:%-4d : %p set_page_dirty %p idx %lu -- already dirty\0A\00", [55 x i8] zeroinitializer }, align 32
@ceph_set_page_dirty.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.124, ptr @.str.2, ptr @.str.127, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"%.*s %12.12s:%-4d : %p set_page_dirty %p idx %lu head %d/%d -> %d/%d snapc %p seq %lld (%d snaps)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"ceph: %.*s %12.12s:%-4d : %p set_page_dirty %p idx %lu head %d/%d -> %d/%d snapc %p seq %lld (%d snaps)\0A\00", [55 x i8] zeroinitializer }, align 32
@ceph_readahead.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.129, ptr @.str.2, ptr @.str.130, i8 0, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ceph_readahead\00", [17 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%.*s %12.12s:%-4d : start_read %p, error getting cap\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ceph: %.*s %12.12s:%-4d : start_read %p, error getting cap\0A\00", [36 x i8] zeroinitializer }, align 32
@ceph_readahead.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.129, ptr @.str.2, ptr @.str.132, i8 0, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%.*s %12.12s:%-4d : start_read %p, no cache cap\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ceph: %.*s %12.12s:%-4d : start_read %p, no cache cap\0A\00", [41 x i8] zeroinitializer }, align 32
@ceph_write_begin.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.134 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"ceph: write_begin called on still-inlined inode (inline_version %llu)!\0A\00", [56 x i8] zeroinitializer }, align 32
@ceph_write_begin.__already_done.135 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ceph_write_end.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.2, ptr @.str.137, i8 1, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ceph_write_end\00", [17 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%.*s %12.12s:%-4d : write_end file %p inode %p folio %p %d~%d (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"ceph: %.*s %12.12s:%-4d : write_end file %p inode %p folio %p %d~%d (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@ceph_invalidatepage.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.139, ptr @.str.2, ptr @.str.140, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ceph_invalidatepage\00", [44 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%.*s %12.12s:%-4d : %p invalidatepage %p idx %lu partial dirty page %u~%u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"ceph: %.*s %12.12s:%-4d : %p invalidatepage %p idx %lu partial dirty page %u~%u\0A\00", [47 x i8] zeroinitializer }, align 32
@ceph_invalidatepage.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.139, ptr @.str.2, ptr @.str.142, i8 0, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%.*s %12.12s:%-4d : %p invalidatepage %p idx %lu full dirty page\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"ceph: %.*s %12.12s:%-4d : %p invalidatepage %p idx %lu full dirty page\0A\00", [56 x i8] zeroinitializer }, align 32
@ceph_releasepage.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.2, ptr @.str.145, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ceph_releasepage\00", [47 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%.*s %12.12s:%-4d : %llx:%llx releasepage %p idx %lu (%sdirty)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"ceph: %.*s %12.12s:%-4d : %llx:%llx releasepage %p idx %lu (%sdirty)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"not \00", [27 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.149 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@ceph_filemap_fault.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.152, i8 1, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ceph_filemap_fault\00", [45 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%.*s %12.12s:%-4d : filemap_fault %p %llx.%llx %llu trying to get caps\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"ceph: %.*s %12.12s:%-4d : filemap_fault %p %llx.%llx %llu trying to get caps\0A\00", [50 x i8] zeroinitializer }, align 32
@ceph_filemap_fault.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.154, i8 1, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.154 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%.*s %12.12s:%-4d : filemap_fault %p %llu got cap refs on %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"ceph: %.*s %12.12s:%-4d : filemap_fault %p %llu got cap refs on %s\0A\00", [60 x i8] zeroinitializer }, align 32
@ceph_filemap_fault.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.156, i8 1, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%.*s %12.12s:%-4d : filemap_fault %p %llu drop cap refs %s ret %x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"ceph: %.*s %12.12s:%-4d : filemap_fault %p %llu drop cap refs %s ret %x\0A\00", [55 x i8] zeroinitializer }, align 32
@ceph_filemap_fault.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.158, i8 1, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.158 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%.*s %12.12s:%-4d : filemap_fault %p %llu read inline data ret %x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"ceph: %.*s %12.12s:%-4d : filemap_fault %p %llu read inline data ret %x\0A\00", [55 x i8] zeroinitializer }, align 32
@ceph_page_mkwrite.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.160, ptr @.str.2, ptr @.str.161, i8 1, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.160 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ceph_page_mkwrite\00", [46 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%.*s %12.12s:%-4d : page_mkwrite %p %llx.%llx %llu~%zd getting caps i_size %llu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"ceph: %.*s %12.12s:%-4d : page_mkwrite %p %llx.%llx %llu~%zd getting caps i_size %llu\0A\00", [41 x i8] zeroinitializer }, align 32
@ceph_page_mkwrite.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.160, ptr @.str.2, ptr @.str.163, i8 1, i8 -127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.163 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%.*s %12.12s:%-4d : page_mkwrite %p %llu~%zd got cap refs on %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"ceph: %.*s %12.12s:%-4d : page_mkwrite %p %llu~%zd got cap refs on %s\0A\00", [57 x i8] zeroinitializer }, align 32
@ceph_page_mkwrite.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.160, ptr @.str.2, ptr @.str.165, i8 1, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%.*s %12.12s:%-4d : page_mkwrite %p %llu~%zd dropping cap refs on %s ret %x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"ceph: %.*s %12.12s:%-4d : page_mkwrite %p %llu~%zd dropping cap refs on %s ret %x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.168 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.170 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.172 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__ceph_pool_perm_get.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.173, ptr @.str.2, ptr @.str.174, i8 1, i8 -51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.173 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__ceph_pool_perm_get\00", [43 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%.*s %12.12s:%-4d : __ceph_pool_perm_get pool %lld ns %.*s no perm cached\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"ceph: %.*s %12.12s:%-4d : __ceph_pool_perm_get pool %lld ns %.*s no perm cached\0A\00", [47 x i8] zeroinitializer }, align 32
@__ceph_pool_perm_get.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.173, ptr @.str.2, ptr @.str.176, i8 1, i8 -50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%.*s %12.12s:%-4d : __ceph_pool_perm_get pool %lld no perm cached\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"ceph: %.*s %12.12s:%-4d : __ceph_pool_perm_get pool %lld no perm cached\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%llx.00000000\00", [18 x i8] zeroinitializer }, align 32
@__ceph_pool_perm_get.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.173, ptr @.str.2, ptr @.str.179, i8 1, i8 -18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.179 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%.*s %12.12s:%-4d : __ceph_pool_perm_get pool %lld ns %.*s result = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"ceph: %.*s %12.12s:%-4d : __ceph_pool_perm_get pool %lld ns %.*s result = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@__ceph_pool_perm_get.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.173, ptr @.str.2, ptr @.str.181, i8 1, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.181 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%.*s %12.12s:%-4d : __ceph_pool_perm_get pool %lld result = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"ceph: %.*s %12.12s:%-4d : __ceph_pool_perm_get pool %lld result = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 1, i64 -1]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 32, i64 4294967188, i64 4294967295]
@__sancov_gen_cov_switch_values.184 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967279, i64 4294967295]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 32, i64 4294966784, i64 4294967188]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 32, i64 4294967188, i64 4294967294]
@___asan_gen_.187 = private unnamed_addr constant [10 x i8] c"ceph_aops\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1368, i32 39 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1627, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1663, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1740, i32 10 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1751, i32 7 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1780, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant [11 x i8] c"ceph_vmops\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1785, i32 42 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 2013, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 2018, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 2025, i32 12 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 531, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 536, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 541, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 553, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 561, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 583, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 603, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 610, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 615, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant [27 x i8] c"../include/linux/huge_mm.h\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 341, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 452, i32 1 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 437, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 470, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant [25 x i8] c"../include/linux/netfs.h\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 41, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1160, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 717, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 345, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [20 x i8] c"ceph_netfs_read_ops\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 310, i32 44 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 272, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 276, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 297, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 229, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1205, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1227, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1233, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 763, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.424 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 769, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 790, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 793, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 804, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 810, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 819, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 839, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 844, i32 4 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 853, i32 5 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 860, i32 5 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 881, i32 5 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 887, i32 6 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 891, i32 5 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 897, i32 5 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 952, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 986, i32 5 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1041, i32 5 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1125, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1132, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1168, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 420, i32 1 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 672, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 715, i32 4 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 723, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 87, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 114, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 372, i32 4 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 374, i32 4 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1302, i32 5 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1340, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 148, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 155, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 170, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 788, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1412, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1424, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1433, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1475, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1529, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1541, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1592, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 49, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 34, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.707, i32 695, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.707, i32 723, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1845, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1848, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1891, i32 39 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1975, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.737 = private constant [18 x i8] c"../fs/ceph/addr.c\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1978, i32 3 }
@llvm.compiler.used = appending global [185 x ptr] [ptr @ceph_writepages_start._entry, ptr @ceph_writepages_start._entry_ptr, ptr @ceph_aops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ceph_vmops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @ceph_netfs_read_ops, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @ceph_writepages_start._rs, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182], section "llvm.metadata"
@0 = internal global [184 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_vmops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_netfs_read_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_writepages_start._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_writepages_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !368

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/addr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 635, 0\0A.popsection", ""() #13, !srcloc !369
  unreachable

do.end9:                                          ; preds = %entry
  tail call void @ihold(ptr noundef nonnull %3) #13
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !370

if.then.i.i:                                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %6, -1
  br label %wait_on_page_fscache.exit

if.end.i.i:                                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %page to i32
  br label %wait_on_page_fscache.exit

wait_on_page_fscache.exit:                        ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @folio_wait_private_2(ptr noundef %8) #13
  %call = tail call fastcc i32 @writepage_nounlock(ptr noundef %page, ptr noundef %wbc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call)
  %cmp = icmp eq i32 %call, -512
  %spec.store.select = select i1 %cmp, i32 0, i32 %call
  tail call void @unlock_page(ptr noundef %page) #13
  tail call void @iput(ptr noundef nonnull %3) #13
  ret i32 %spec.store.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_readpage(ptr noundef %file, ptr noundef %subpage) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %subpage, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !370

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %subpage to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i35 = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i35 to ptr
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %5 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 -952
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %vino.sroa.0.0.copyload = load i64, ptr %add.ptr.i, align 8
  %vino.sroa.5.0.add.ptr.i.i.sroa_idx = getelementptr i8, ptr %6, i32 -944
  %8 = ptrtoint ptr %vino.sroa.5.0.add.ptr.i.i.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %8)
  %vino.sroa.5.0.copyload = load i64, ptr %vino.sroa.5.0.add.ptr.i.i.sroa_idx, align 8
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i.i.i.i = icmp eq i32 %10, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !368

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.40) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #13, !srcloc !371
  unreachable

PageHead.exit.i.i.i:                              ; preds = %_compound_head.exit
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %4, align 4
  %13 = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %folio_size.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %14 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.99, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %16 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.end.i.i.i ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i.i
  %17 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_size.exit._compound_head.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i, !prof !370

folio_size.exit._compound_head.exit.i.i.i.i_crit_edge: ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %_compound_head.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i.i.i = add i32 %19, -1
  %.pre = inttoptr i32 %sub.i.i.i.i.i to ptr
  br label %_compound_head.exit.i.i.i.i

_compound_head.exit.i.i.i.i:                      ; preds = %if.then.i.i.i.i.i, %folio_size.exit._compound_head.exit.i.i.i.i_crit_edge
  %.pre-phi = phi ptr [ %4, %folio_size.exit._compound_head.exit.i.i.i.i_crit_edge ], [ %.pre, %if.then.i.i.i.i.i ]
  %20 = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i.i.i.i.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i, !prof !370

if.then.i.i.i.i.i.i.i:                            ; preds = %_compound_head.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.39) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_test_swapbacked.exit.i.i.i.i.i:             ; preds = %_compound_head.exit.i.i.i.i
  %23 = ptrtoint ptr %.pre-phi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %.pre-phi, align 4
  %25 = and i32 %24, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i.i.if.end.i.i.i36_crit_edge, label %land.rhs.i.i.i.i.i

folio_test_swapbacked.exit.i.i.i.i.i.if.end.i.i.i36_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i36

land.rhs.i.i.i.i.i:                               ; preds = %folio_test_swapbacked.exit.i.i.i.i.i
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %20, align 4
  %and.i.i.i.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %PageSwapCache.exit.i.i.i, label %if.then.i.i.i.i.i.i, !prof !370

if.then.i.i.i.i.i.i:                              ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.39) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

PageSwapCache.exit.i.i.i:                         ; preds = %land.rhs.i.i.i.i.i
  %28 = ptrtoint ptr %.pre-phi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %.pre-phi, align 4
  %30 = and i32 %29, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.i.not.i.i.i = icmp eq i32 %30, 0
  br i1 %tobool.i.i.not.i.i.i, label %PageSwapCache.exit.i.i.i.if.end.i.i.i36_crit_edge, label %if.then.i.i.i, !prof !370

PageSwapCache.exit.i.i.i.if.end.i.i.i36_crit_edge: ; preds = %PageSwapCache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i36

if.then.i.i.i:                                    ; preds = %PageSwapCache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i.i.i = tail call i32 @__page_file_index(ptr noundef %4) #13
  br label %folio_file_pos.exit

if.end.i.i.i36:                                   ; preds = %PageSwapCache.exit.i.i.i.if.end.i.i.i36_crit_edge, %folio_test_swapbacked.exit.i.i.i.i.i.if.end.i.i.i36_crit_edge
  %index.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1, i32 0, i32 2
  %31 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index.i.i.i, align 4
  br label %folio_file_pos.exit

folio_file_pos.exit:                              ; preds = %if.end.i.i.i36, %if.then.i.i.i
  %retval.0.i.i.i37 = phi i32 [ %call2.i.i.i, %if.then.i.i.i ], [ %32, %if.end.i.i.i36 ]
  %conv.i.i = zext i32 %retval.0.i.i.i37 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %i_inline_version = getelementptr i8, ptr %6, i32 -880
  %33 = ptrtoint ptr %i_inline_version to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %i_inline_version, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %34)
  %cmp.not = icmp eq i64 %34, -1
  br i1 %cmp.not, label %do.body, label %if.then

if.then:                                          ; preds = %folio_file_pos.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i37)
  %cmp5 = icmp eq i32 %retval.0.i.i.i37, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @folio_unlock(ptr noundef %4) #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.i.not.i.i.i.i38 = icmp eq i32 %36, -1
  br i1 %cmp.i.not.i.i.i.i38, label %if.then.i.i.i.i39, label %PageHead.exit.i.i.i41, !prof !368

if.then.i.i.i.i39:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.40) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #13, !srcloc !371
  unreachable

PageHead.exit.i.i.i41:                            ; preds = %if.end
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %4, align 4
  %39 = and i32 %38, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i.i40 = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i.i40, label %PageHead.exit.i.i.i41.folio_size.exit47_crit_edge, label %if.end.i.i.i44

PageHead.exit.i.i.i41.folio_size.exit47_crit_edge: ; preds = %PageHead.exit.i.i.i41
  call void @__sanitizer_cov_trace_pc() #15
  br label %folio_size.exit47

if.end.i.i.i44:                                   ; preds = %PageHead.exit.i.i.i41
  call void @__sanitizer_cov_trace_pc() #15
  %40 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i42 = getelementptr inbounds %struct.anon.99, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %compound_order.i.i.i42 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %compound_order.i.i.i42, align 1
  %conv.i.i.i43 = zext i8 %42 to i32
  br label %folio_size.exit47

folio_size.exit47:                                ; preds = %if.end.i.i.i44, %PageHead.exit.i.i.i41.folio_size.exit47_crit_edge
  %retval.0.i.i.i45 = phi i32 [ %conv.i.i.i43, %if.end.i.i.i44 ], [ 0, %PageHead.exit.i.i.i41.folio_size.exit47_crit_edge ]
  %shl.i46 = shl i32 4096, %retval.0.i.i.i45
  tail call void @zero_user_segments(ptr noundef %4, i32 noundef 0, i32 noundef %shl.i46, i32 noundef 0, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !373
  %43 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %17, align 4
  %and.i.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_mark_uptodate.exit, label %if.then.i.i, !prof !370

if.then.i.i:                                      ; preds = %folio_size.exit47
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.39) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_mark_uptodate.exit:                         ; preds = %folio_size.exit47
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 2, ptr noundef %4) #13
  tail call void @folio_unlock(ptr noundef %4) #13
  br label %cleanup

do.body:                                          ; preds = %folio_file_pos.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readpage.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readpage, %if.then12)) #13
          to label %do.end [label %if.then12], !srcloc !374

if.then12:                                        ; preds = %do.body
  %45 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %17, align 4
  %and.i.i.i.i.i48 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i48)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i48, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i49, !prof !370

if.then.i.i.i.i49:                                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.39) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %if.then12
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %4, align 4
  %49 = and i32 %48, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.i.not.i.i = icmp eq i32 %49, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.end.i53_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.if.end.i53_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i53

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %50 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %17, align 4
  %and.i.i.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i50 = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i50, label %folio_test_swapcache.exit.i, label %if.then.i.i.i51, !prof !370

if.then.i.i.i51:                                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.39) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_test_swapcache.exit.i:                      ; preds = %land.rhs.i.i
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %4, align 4
  %54 = and i32 %53, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.i.not.i = icmp eq i32 %54, 0
  br i1 %tobool.i.not.i, label %folio_test_swapcache.exit.i.if.end.i53_crit_edge, label %if.then.i52, !prof !370

folio_test_swapcache.exit.i.if.end.i53_crit_edge: ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i53

if.then.i52:                                      ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i = tail call i32 @__page_file_index(ptr noundef %4) #13
  br label %folio_index.exit

if.end.i53:                                       ; preds = %folio_test_swapcache.exit.i.if.end.i53_crit_edge, %folio_test_swapbacked.exit.i.i.if.end.i53_crit_edge
  %index.i = getelementptr inbounds %struct.anon.112, ptr %4, i32 0, i32 3
  %55 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %index.i, align 4
  br label %folio_index.exit

folio_index.exit:                                 ; preds = %if.end.i53, %if.then.i52
  %retval.0.i54 = phi i32 [ %call2.i, %if.then.i52 ], [ %56, %if.end.i53 ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readpage.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.52, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 346, i64 noundef %vino.sroa.0.0.copyload, i64 noundef %vino.sroa.5.0.copyload, ptr noundef %file, i64 noundef %shl.i.i, i32 noundef %shl.i, ptr noundef %4, i32 noundef %retval.0.i54) #13
  br label %do.end

do.end:                                           ; preds = %folio_index.exit, %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call16 = tail call i32 @netfs_readpage(ptr noundef %file, ptr noundef %4, ptr noundef nonnull @ceph_netfs_read_ops, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %folio_mark_uptodate.exit, %if.then6
  %retval.0 = phi i32 [ -22, %if.then6 ], [ 0, %folio_mark_uptodate.exit ], [ %call16, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_writepages_start(ptr noundef %mapping, ptr noundef %wbc) #0 align 64 {
entry:
  %index = alloca i32, align 4
  %pvec = alloca %struct.pagevec, align 4
  %ceph_wbc = alloca %struct.ceph_writeback_ctl, align 8
  %len = alloca i64, align 8
  %objnum = alloca i64, align 8
  %objoff = alloca i64, align 8
  %xlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -952
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %vino.sroa.0.0.copyload = load i64, ptr %add.ptr.i, align 8
  %vino.sroa.6.0.add.ptr.i.i.sroa_idx = getelementptr i8, ptr %1, i32 -944
  %7 = ptrtoint ptr %vino.sroa.6.0.add.ptr.i.i.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %7)
  %vino.sroa.6.0.copyload = load i64, ptr %vino.sroa.6.0.add.ptr.i.i.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #13
  %8 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %index, align 4, !annotation !375
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pvec) #13
  %9 = call ptr @memset(ptr %pvec, i32 255, i32 64)
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %11 to i32
  %shl.i = shl nuw i32 1, %conv.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ceph_wbc) #13
  %12 = call ptr @memset(ptr %ceph_wbc, i32 255, i32 24)
  %fscache.i.i = getelementptr i8, ptr %1, i32 -8
  %13 = ptrtoint ptr %fscache.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fscache.i.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %entry.ceph_is_cache_enabled.exit_crit_edge, label %land.rhs.i

entry.ceph_is_cache_enabled.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ceph_is_cache_enabled.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %flags.i = getelementptr inbounds %struct.fscache_cookie, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i, align 4
  %17 = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not.i = icmp eq i32 %17, 0
  br label %ceph_is_cache_enabled.exit

ceph_is_cache_enabled.exit:                       ; preds = %land.rhs.i, %entry.ceph_is_cache_enabled.exit_crit_edge
  %18 = phi i1 [ false, %entry.ceph_is_cache_enabled.exit_crit_edge ], [ %tobool5.not.i, %land.rhs.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_writepages_start.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_writepages_start, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !374

if.then:                                          ; preds = %ceph_is_cache_enabled.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %19 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp eq i32 %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp10 = icmp eq i32 %20, 1
  %cond = select i1 %cmp10, ptr @.str.74, ptr @.str.75
  %cond11 = select i1 %cmp, ptr @.str.73, ptr %cond
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_writepages_start.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.72, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 765, ptr noundef %1, ptr noundef nonnull %cond11) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %ceph_is_cache_enabled.exit
  %i_ceph_flags.i = getelementptr i8, ptr %1, i32 -868
  %21 = ptrtoint ptr %i_ceph_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %i_ceph_flags.i, align 4
  %23 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 33
  %25 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i.i, align 16
  %mount_state.i = getelementptr inbounds %struct.ceph_fs_client, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %mount_state.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %mount_state.i, align 4
  %and.i = and i32 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i1445 = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp.i = icmp sgt i32 %28, 3
  %spec.select.i = select i1 %tobool.not.i1445, i1 true, i1 %cmp.i
  br i1 %spec.select.i, label %if.then13, label %if.end27

if.then13:                                        ; preds = %do.end
  %i_wrbuffer_ref = getelementptr i8, ptr %1, i32 -192
  %29 = ptrtoint ptr %i_wrbuffer_ref to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_wrbuffer_ref, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp14 = icmp sgt i32 %30, 0
  br i1 %cmp14, label %if.then15, label %if.then13.if.end26_crit_edge

if.then13.if.end26_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then15:                                        ; preds = %if.then13
  %call16 = tail call i32 @___ratelimit(ptr noundef nonnull @ceph_writepages_start._rs, ptr noundef nonnull @.str.70) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then15.if.end26_crit_edge, label %do.end21

if.then15.if.end26_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

do.end21:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %add.ptr.i, align 8
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %1, i64 noundef %32) #16
  br label %if.end26

if.end26:                                         ; preds = %do.end21, %if.then15.if.end26_crit_edge, %if.then13.if.end26_crit_edge
  tail call void @__filemap_set_wb_err(ptr noundef %mapping, i32 noundef -5) #13
  %33 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mapping, align 4
  %tobool4.not.i = icmp eq ptr %34, null
  br i1 %tobool4.not.i, label %if.end26.mapping_set_error.exit_crit_edge, label %if.then5.i

if.end26.mapping_set_error.exit_crit_edge:        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %mapping_set_error.exit

if.then5.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %i_sb.i1447 = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %i_sb.i1447 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb.i1447, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 50
  %call.i = tail call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef -5) #13
  br label %mapping_set_error.exit

mapping_set_error.exit:                           ; preds = %if.then5.i, %if.end26.mapping_set_error.exit_crit_edge
  %flags.i1448 = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i1448) #13
  br label %cleanup1026

if.end27:                                         ; preds = %do.end
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %5, i32 0, i32 2
  %37 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mount_options, align 4
  %wsize28 = getelementptr inbounds %struct.ceph_mount_options, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %wsize28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wsize28, align 4
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 %shl.i)
  %42 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %pvec, align 4
  %percpu_pvec_drained.i = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 1
  %43 = ptrtoint ptr %percpu_pvec_drained.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %percpu_pvec_drained.i, align 1
  %range_cyclic = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5
  %44 = ptrtoint ptr %range_cyclic to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load = load i16, ptr %range_cyclic, align 4
  %45 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool34.not = icmp eq i16 %45, 0
  br i1 %tobool34.not, label %if.end27.cond.end37_crit_edge, label %cond.true35

if.end27.cond.end37_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end37

cond.true35:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %writeback_index = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 8
  %46 = ptrtoint ptr %writeback_index to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %writeback_index, align 4
  br label %cond.end37

cond.end37:                                       ; preds = %cond.true35, %if.end27.cond.end37_crit_edge
  %cond38 = phi i32 [ %47, %cond.true35 ], [ 0, %if.end27.cond.end37_crit_edge ]
  %48 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %cond38, ptr %index, align 4
  %call392114 = call fastcc ptr @get_oldest_context(ptr noundef %1, ptr noundef nonnull %ceph_wbc, ptr noundef null)
  %tobool40.not2115 = icmp eq ptr %call392114, null
  br i1 %tobool40.not2115, label %cond.end37.do.body42_crit_edge, label %do.body60.lr.ph

cond.end37.do.body42_crit_edge:                   ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body42

do.body60.lr.ph:                                  ; preds = %cond.end37
  %head_snapc = getelementptr inbounds %struct.ceph_writeback_ctl, ptr %ceph_wbc, i32 0, i32 4
  %range_start = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 2
  %range_end = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 3
  %shr166 = lshr i32 %41, 12
  %sync_mode290 = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %size_stable = getelementptr inbounds %struct.ceph_writeback_ctl, ptr %ceph_wbc, i32 0, i32 3
  %a_ops = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 9
  %i_layout = getelementptr i8, ptr %1, i32 -824
  %conv426 = zext i32 %41 to i64
  %writeback_count = getelementptr inbounds %struct.ceph_fs_client, ptr %5, i32 0, i32 10
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %5, i32 0, i32 3
  %truncate_seq = getelementptr inbounds %struct.ceph_writeback_ctl, ptr %ceph_wbc, i32 0, i32 2
  %truncate_size = getelementptr inbounds %struct.ceph_writeback_ctl, ptr %ceph_wbc, i32 0, i32 1
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %vino.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %vino.sroa.6.0.copyload, 1
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %i_head_snapc.i = getelementptr i8, ptr %1, i32 -396
  %i_ceph_lock.i = getelementptr i8, ptr %1, i32 -936
  %i_cap_snaps.i = getelementptr i8, ptr %1, i32 -404
  %i_mtime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %pages907 = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 2
  br label %do.body60

do.body42:                                        ; preds = %if.end991.do.body42_crit_edge, %cond.end37.do.body42_crit_edge
  %last_snapc.0.lcssa = phi ptr [ null, %cond.end37.do.body42_crit_edge ], [ %call392121, %if.end991.do.body42_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_writepages_start.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_writepages_start, %if.then54)) #13
          to label %out [label %if.then54], !srcloc !374

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_writepages_start.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.79, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 790) #13
  br label %out

do.body60:                                        ; preds = %if.end991.do.body60_crit_edge, %do.body60.lr.ph
  %call392121 = phi ptr [ %call392114, %do.body60.lr.ph ], [ %call39, %if.end991.do.body60_crit_edge ]
  %start_index.02120 = phi i32 [ %cond38, %do.body60.lr.ph ], [ 0, %if.end991.do.body60_crit_edge ]
  %end.02119 = phi i32 [ -1, %do.body60.lr.ph ], [ %sub952, %if.end991.do.body60_crit_edge ]
  %last_snapc.02118 = phi ptr [ null, %do.body60.lr.ph ], [ %call392121, %if.end991.do.body60_crit_edge ]
  %range_whole.0.off02117 = phi i1 [ false, %do.body60.lr.ph ], [ %range_whole.2.off0, %if.end991.do.body60_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_writepages_start.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_writepages_start, %if.then72)) #13
          to label %do.end76 [label %if.then72], !srcloc !374

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #15
  %seq = getelementptr inbounds %struct.ceph_snap_context, ptr %call392121, i32 0, i32 1
  %49 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %seq, align 8
  %num_snaps = getelementptr inbounds %struct.ceph_snap_context, ptr %call392121, i32 0, i32 2
  %51 = ptrtoint ptr %num_snaps to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_snaps, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_writepages_start.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.81, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 794, ptr noundef nonnull %call392121, i64 noundef %50, i32 noundef %52) #13
  br label %do.end76

do.end76:                                         ; preds = %if.then72, %do.body60
  %53 = ptrtoint ptr %head_snapc to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %head_snapc, align 1, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool77.not = icmp eq i8 %54, 0
  %cmp78.not = icmp eq ptr %call392121, %last_snapc.02118
  %or.cond = select i1 %tobool77.not, i1 true, i1 %cmp78.not
  br i1 %or.cond, label %if.else136, label %if.then79

if.then79:                                        ; preds = %do.end76
  %55 = ptrtoint ptr %range_cyclic to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load81 = load i16, ptr %range_cyclic, align 4
  %56 = and i16 %bf.load81, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool85.not = icmp eq i16 %56, 0
  br i1 %tobool85.not, label %if.else, label %if.then86

if.then86:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %start_index.02120, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start_index.02120)
  %cmp87 = icmp ne i32 %start_index.02120, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_writepages_start.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_writepages_start, %if.then102)) #13
          to label %land.rhs.lr.ph [label %if.then102], !srcloc !374

if.then102:                                       ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %index, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_writepages_start.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.83, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 804, i32 noundef %59) #13
  br label %land.rhs.lr.ph

if.else:                                          ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %range_start to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %range_start, align 8
  %62 = lshr i64 %61, 12
  %conv = trunc i64 %62 to i32
  %63 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv, ptr %index, align 4
  %64 = ptrtoint ptr %range_end to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %range_end, align 8
  %66 = lshr i64 %65, 12
  %conv108 = trunc i64 %66 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %61)
  %cmp110 = icmp eq i64 %61, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %65)
  %cmp114 = icmp eq i64 %65, 9223372036854775807
  %or.cond1356 = select i1 %cmp110, i1 %cmp114, i1 false
  %spec.select1366 = select i1 %or.cond1356, i1 true, i1 %range_whole.0.off02117
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_writepages_start.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_writepages_start, %if.then130)) #13
          to label %land.rhs.lr.ph [label %if.then130], !srcloc !374

if.then130:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %67 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %index, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_writepages_start.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.85, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 810, i32 noundef %68, i32 noundef %conv108) #13
  br label %land.rhs.lr.ph

if.else136:                                       ; preds = %do.end76
  br i1 %tobool77.not, label %if.then139, label %if.else136.land.rhs.lr.ph_crit_edge

if.else136.land.rhs.lr.ph_crit_edge:              ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.lr.ph

if.then139:                                       ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp140.not = icmp ne i32 %70, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_writepages_start.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_writepages_start, %if.then156)) #13
          to label %land.rhs.lr.ph [label %if.then156], !srcloc !374

if.then156:                                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_writepages_start.__UNIQUE_ID_ddebug365, ptr noundef nonnull @.str.87, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 819) #13
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.then156, %if.then139, %if.else136.land.rhs.lr.ph_crit_edge, %if.then130, %if.else, %if.then102, %if.then86
  %range_whole.2.off0 = phi i1 [ %range_whole.0.off02117, %if.then102 ], [ %spec.select1366, %if.then130 ], [ %range_whole.0.off02117, %if.else136.land.rhs.lr.ph_crit_edge ], [ %range_whole.0.off02117, %if.then156 ], [ %range_whole.0.off02117, %if.then86 ], [ %spec.select1366, %if.else ], [ %range_whole.0.off02117, %if.then139 ]
  %should_loop.2.off0 = phi i1 [ %cmp87, %if.then102 ], [ false, %if.then130 ], [ false, %if.else136.land.rhs.lr.ph_crit_edge ], [ %cmp140.not, %if.then156 ], [ %cmp87, %if.then86 ], [ false, %if.else ], [ %cmp140.not, %if.then139 ]
  %end.1 = phi i32 [ -1, %if.then102 ], [ %conv108, %if.then130 ], [ %end.02119, %if.else136.land.rhs.lr.ph_crit_edge ], [ %end.02119, %if.then156 ], [ -1, %if.then86 ], [ %conv108, %if.else ], [ %end.02119, %if.then139 ]
  call void @ceph_put_snap_context(ptr noundef %last_snapc.02118) #13
  %seq281 = getelementptr inbounds %struct.ceph_snap_context, ptr %call392121, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup915.land.rhs_crit_edge, %land.rhs.lr.ph
  %should_loop.3.off02106 = phi i1 [ %should_loop.2.off0, %land.rhs.lr.ph ], [ %should_loop.5.off01696, %cleanup915.land.rhs_crit_edge ]
  %71 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %end.1)
  %cmp164.not = icmp ugt i32 %72, %end.1
  br i1 %cmp164.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #13
  %73 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 0, ptr %len, align 8
  br label %get_more_pages

get_more_pages:                                   ; preds = %get_more_pages.backedge, %while.body
  %from_pool.0.off0 = phi i1 [ false, %while.body ], [ %from_pool.1.off01831, %get_more_pages.backedge ]
  %offset.0 = phi i64 [ 0, %while.body ], [ %offset.11816, %get_more_pages.backedge ]
  %strip_unit_end.0 = phi i32 [ 0, %while.body ], [ %strip_unit_end.11801, %get_more_pages.backedge ]
  %page.0 = phi ptr [ inttoptr (i32 -1 to ptr), %while.body ], [ %page.21633, %get_more_pages.backedge ]
  %pages.0 = phi ptr [ null, %while.body ], [ %pages.11773, %get_more_pages.backedge ]
  %locked_pages.0 = phi i32 [ 0, %while.body ], [ %locked_pages.11757, %get_more_pages.backedge ]
  %max_pages.0 = phi i32 [ %shr166, %while.body ], [ %max_pages.11742, %get_more_pages.backedge ]
  %num_ops.0 = phi i32 [ 0, %while.body ], [ %num_ops.11712, %get_more_pages.backedge ]
  %should_loop.4.off0 = phi i1 [ %should_loop.3.off02106, %while.body ], [ %should_loop.5.off01697, %get_more_pages.backedge ]
  %call167 = call i32 @pagevec_lookup_range_tag(ptr noundef nonnull %pvec, ptr noundef %mapping, ptr noundef nonnull %index, i32 noundef %end.1, i32 noundef 0) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_writepages_start.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_writepages_start, %if.then180)) #13
          to label %do.end184 [label %if.then180], !srcloc !374

if.then180:                                       ; preds = %get_more_pages
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_writepages_start.__UNIQUE_ID_ddebug366, ptr noundef nonnull @.str.89, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 839, i32 noundef %call167) #13
  br label %do.end184

do.end184:                                        ; preds = %if.then180, %get_more_pages
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool185.not = icmp eq i32 %call167, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %locked_pages.0)
  %tobool187.not = icmp eq i32 %locked_pages.0, 0
  %or.cond1357 = select i1 %tobool185.not, i1 %tobool187.not, i1 false
  br i1 %or.cond1357, label %cleanup915.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %cmp1902043 = icmp ne i32 %call167, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %locked_pages.0, i32 %max_pages.0)
  %cmp1932044 = icmp ult i32 %locked_pages.0, %max_pages.0
  %or.cond13582045 = select i1 %cmp1902043, i1 %cmp1932044, i1 false
  br i1 %or.cond13582045, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

cleanup915.thread:                                ; preds = %do.end184
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #13
  br i1 %should_loop.4.off0, label %cleanup915.thread.do.body935_crit_edge, label %cleanup915.thread.if.end992_crit_edge

cleanup915.thread.if.end992_crit_edge:            ; preds = %cleanup915.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end992

cleanup915.thread.do.body935_crit_edge:           ; preds = %cleanup915.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body935

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %should_loop.5.off02066 = phi i1 [ %should_loop.7.off0, %for.inc.for.body_crit_edge ], [ %should_loop.4.off0, %for.cond.preheader.for.body_crit_edge ]
  %num_ops.12064 = phi i32 [ %num_ops.3, %for.inc.for.body_crit_edge ], [ %num_ops.0, %for.cond.preheader.for.body_crit_edge ]
  %i.02060 = phi i32 [ %inc528, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %max_pages.12058 = phi i32 [ %max_pages.3, %for.inc.for.body_crit_edge ], [ %max_pages.0, %for.cond.preheader.for.body_crit_edge ]
  %locked_pages.12055 = phi i32 [ %locked_pages.2, %for.inc.for.body_crit_edge ], [ %locked_pages.0, %for.cond.preheader.for.body_crit_edge ]
  %pages.12053 = phi ptr [ %pages.4, %for.inc.for.body_crit_edge ], [ %pages.0, %for.cond.preheader.for.body_crit_edge ]
  %strip_unit_end.12051 = phi i32 [ %strip_unit_end.3, %for.inc.for.body_crit_edge ], [ %strip_unit_end.0, %for.cond.preheader.for.body_crit_edge ]
  %offset.12049 = phi i64 [ %offset.3, %for.inc.for.body_crit_edge ], [ %offset.0, %for.cond.preheader.for.body_crit_edge ]
  %from_pool.1.off02046 = phi i1 [ %from_pool.4.off0, %for.inc.for.body_crit_edge ], [ %from_pool.0.off0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %i.02060
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_writepages_start.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_writepages_start, %if.then209)) #13
          to label %do.end214 [label %if.then209], !srcloc !374

if.then209:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %index211 = getelementptr inbounds %struct.page, ptr %75, i32 0, i32 1, i32 0, i32 2
  %76 = ptrtoint ptr %index211 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %index211, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_writepages_start.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.91, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 844, ptr noundef %75, i32 noundef %77) #13
  br label %do.end214

do.end214:                                        ; preds = %if.then209, %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %locked_pages.12055)
  %cmp215 = icmp eq i32 %locked_pages.12055, 0
  br i1 %cmp215, label %if.then217, label %if.else218

if.then217:                                       ; preds = %do.end214
  call void @__might_sleep(ptr noundef nonnull @.str.149, i32 noundef 788) #13
  %78 = getelementptr inbounds %struct.page, ptr %75, i32 0, i32 1
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %78, align 4
  %and.i.i1449 = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1449)
  %tobool.not.i.i1450 = icmp eq i32 %and.i.i1449, 0
  br i1 %tobool.not.i.i1450, label %if.end.i.i1453, label %if.then.i.i1452, !prof !370

if.then.i.i1452:                                  ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i1451 = add i32 %80, -1
  br label %_compound_head.exit.i1455

if.end.i.i1453:                                   ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #15
  %81 = ptrtoint ptr %75 to i32
  br label %_compound_head.exit.i1455

_compound_head.exit.i1455:                        ; preds = %if.end.i.i1453, %if.then.i.i1452
  %retval.0.i.i1454 = phi i32 [ %sub.i.i1451, %if.then.i.i1452 ], [ %81, %if.end.i.i1453 ]
  %82 = inttoptr i32 %retval.0.i.i1454 to ptr
  %83 = getelementptr inbounds %struct.page, ptr %82, i32 0, i32 1
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %83, align 4
  %and.i.i.i.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !370

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i1455
  call void @__sanitizer_cov_trace_pc() #15
  %86 = inttoptr i32 %retval.0.i.i1454 to ptr
  call void @dump_page(ptr noundef %86, ptr noundef nonnull @.str.39) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i1455
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %82, i32 noundef 4) #13
  %87 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %82, align 4
  %and.i.i4.i.i = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i1456_crit_edge

folio_flags.exit.i.i.if.then.i1456_crit_edge:     ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i1456

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %82, i32 1, i32 3, i32 1) #13
  %89 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %82, ptr %82, i32 1, ptr elementtype(i32) %82) #13, !srcloc !377
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %89, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !378
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.if.end223_crit_edge, label %folio_trylock.exit.i.if.then.i1456_crit_edge

folio_trylock.exit.i.if.then.i1456_crit_edge:     ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i1456

folio_trylock.exit.i.if.end223_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end223

if.then.i1456:                                    ; preds = %folio_trylock.exit.i.if.then.i1456_crit_edge, %folio_flags.exit.i.i.if.then.i1456_crit_edge
  call void @__folio_lock(ptr noundef %82) #13
  br label %if.end223

if.else218:                                       ; preds = %do.end214
  %90 = getelementptr inbounds %struct.page, ptr %75, i32 0, i32 1
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %90, align 4
  %and.i.i1457 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1457)
  %tobool.not.i.i1458 = icmp eq i32 %and.i.i1457, 0
  br i1 %tobool.not.i.i1458, label %if.end.i.i1461, label %if.then.i.i1460, !prof !370

if.then.i.i1460:                                  ; preds = %if.else218
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i1459 = add i32 %92, -1
  br label %_compound_head.exit.i1465

if.end.i.i1461:                                   ; preds = %if.else218
  call void @__sanitizer_cov_trace_pc() #15
  %93 = ptrtoint ptr %75 to i32
  br label %_compound_head.exit.i1465

_compound_head.exit.i1465:                        ; preds = %if.end.i.i1461, %if.then.i.i1460
  %retval.0.i.i1462 = phi i32 [ %sub.i.i1459, %if.then.i.i1460 ], [ %93, %if.end.i.i1461 ]
  %94 = inttoptr i32 %retval.0.i.i1462 to ptr
  %95 = getelementptr inbounds %struct.page, ptr %94, i32 0, i32 1
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %95, align 4
  %and.i.i.i.i1463 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i1463)
  %tobool.not.i.i.i1464 = icmp eq i32 %and.i.i.i.i1463, 0
  br i1 %tobool.not.i.i.i1464, label %folio_flags.exit.i.i1470, label %if.then.i.i.i1466, !prof !370

if.then.i.i.i1466:                                ; preds = %_compound_head.exit.i1465
  call void @__sanitizer_cov_trace_pc() #15
  %98 = inttoptr i32 %retval.0.i.i1462 to ptr
  call void @dump_page(ptr noundef %98, ptr noundef nonnull @.str.39) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_flags.exit.i.i1470:                         ; preds = %_compound_head.exit.i1465
  %call.i.i.i.i1467 = call zeroext i1 @__kasan_check_write(ptr noundef %94, i32 noundef 4) #13
  %99 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %94, align 4
  %and.i.i4.i.i1468 = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i1468)
  %tobool.not.i.i.i.i1469 = icmp eq i32 %and.i.i4.i.i1468, 0
  br i1 %tobool.not.i.i.i.i1469, label %trylock_page.exit, label %folio_flags.exit.i.i1470.if.end531_crit_edge

folio_flags.exit.i.i1470.if.end531_crit_edge:     ; preds = %folio_flags.exit.i.i1470
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end531

trylock_page.exit:                                ; preds = %folio_flags.exit.i.i1470
  call void @llvm.prefetch.p0(ptr %94, i32 1, i32 3, i32 1) #13
  %101 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %94, ptr %94, i32 1, ptr elementtype(i32) %94) #13, !srcloc !377
  %asmresult.i.i.i.i.i.i.i1471 = extractvalue { i32, i32, i32 } %101, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !378
  %and1.i.i.i.i1472 = and i32 %asmresult.i.i.i.i.i.i.i1471, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i1472)
  %tobool220.not.not = icmp eq i32 %and1.i.i.i.i1472, 0
  br i1 %tobool220.not.not, label %trylock_page.exit.if.end223_crit_edge, label %trylock_page.exit.if.end531_crit_edge

trylock_page.exit.if.end531_crit_edge:            ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end531

trylock_page.exit.if.end223_crit_edge:            ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end223

if.end223:                                        ; preds = %trylock_page.exit.if.end223_crit_edge, %if.then.i1456, %folio_trylock.exit.i.if.end223_crit_edge
  %102 = getelementptr inbounds %struct.page, ptr %75, i32 0, i32 1
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %102, align 4
  %and.i.i = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !370

if.then.i.i:                                      ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %104, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #15
  %105 = ptrtoint ptr %75 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %105, %if.end.i.i ]
  %106 = inttoptr i32 %retval.0.i.i to ptr
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %108)
  %cmp.i.not.i = icmp eq i32 %108, -1
  %109 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %102, align 4
  %and.i13.i = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !368

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !370

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i15.i = add i32 %110, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %111 = ptrtoint ptr %75 to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %111, %if.end.i17.i ]
  %112 = inttoptr i32 %retval.0.i18.i to ptr
  call void @dump_page(ptr noundef %112, ptr noundef nonnull @.str.116) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #13, !srcloc !379
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !370

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i22.i = add i32 %110, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %113 = ptrtoint ptr %75 to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %113, %if.end.i24.i ]
  %114 = inttoptr i32 %retval.0.i25.i to ptr
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %114, align 4
  %117 = and i32 %116, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool225.not = icmp eq i32 %117, 0
  br i1 %tobool225.not, label %PageDirty.exit.do.body244_crit_edge, label %lor.lhs.false, !prof !368

PageDirty.exit.do.body244_crit_edge:              ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body244

lor.lhs.false:                                    ; preds = %PageDirty.exit
  %mapping234 = getelementptr inbounds %struct.page, ptr %75, i32 0, i32 1, i32 0, i32 1
  %118 = ptrtoint ptr %mapping234 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mapping234, align 4
  %cmp235.not = icmp eq ptr %119, %mapping
  br i1 %cmp235.not, label %if.end261, label %lor.lhs.false.do.body244_crit_edge, !prof !370

lor.lhs.false.do.body244_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body244

do.body244:                                       ; preds = %lor.lhs.false.do.body244_crit_edge, %PageDirty.exit.do.body244_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_writepages_start.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_writepages_start, %if.then256)) #13
          to label %do.end260 [label %if.then256], !srcloc !374

if.then256:                                       ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_writepages_start.__UNIQUE_ID_ddebug368, ptr noundef nonnull @.str.93, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 853, ptr noundef %75) #13
  br label %do.end260

do.end260:                                        ; preds = %if.then256, %do.body244
  call void @unlock_page(ptr noundef %75) #13
  br label %for.inc

if.end261:                                        ; preds = %lor.lhs.false
  %120 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %121)
  %cmp.i.not.i.i = icmp eq i32 %121, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i1474, label %PagePrivate.exit.i, !prof !368

if.then.i.i1474:                                  ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %75, ptr noundef nonnull @.str.40) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !380
  unreachable

PagePrivate.exit.i:                               ; preds = %if.end261
  %122 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %75, align 4
  %124 = and i32 %123, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not.i1475 = icmp eq i32 %124, 0
  br i1 %tobool.not.i1475, label %PagePrivate.exit.i.page_snap_context.exit_crit_edge, label %if.then.i1476

PagePrivate.exit.i.page_snap_context.exit_crit_edge: ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %page_snap_context.exit

if.then.i1476:                                    ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %private.i = getelementptr inbounds %struct.page, ptr %75, i32 0, i32 1, i32 0, i32 3
  %125 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %private.i, align 4
  %127 = inttoptr i32 %126 to ptr
  br label %page_snap_context.exit

page_snap_context.exit:                           ; preds = %if.then.i1476, %PagePrivate.exit.i.page_snap_context.exit_crit_edge
  %retval.0.i1477 = phi ptr [ %127, %if.then.i1476 ], [ null, %PagePrivate.exit.i.page_snap_context.exit_crit_edge ]
  %cmp263.not = icmp eq ptr %retval.0.i1477, %call392121
  br i1 %cmp263.not, label %if.end295, label %do.body266

do.body266:                                       ; preds = %page_snap_context.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_writepages_start.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_writepages_start, %if.then278)) #13
          to label %do.end284 [label %if.then278], !srcloc !374

if.then278:                                       ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #15
  %seq280 = getelementptr inbounds %struct.ceph_snap_context, ptr %retval.0.i1477, i32 0, i32 1
  %128 = ptrtoint ptr %seq280 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %seq280, align 8
  %130 = ptrtoint ptr %seq281 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %seq281, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_writepages_start.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.95, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 861, ptr noundef %retval.0.i1477, i64 noundef %129, ptr noundef nonnull %call392121, i64 noundef %131) #13
  br label %do.end284

do.end284:                                        ; preds = %if.then278, %do.body266
  br i1 %should_loop.5.off02066, label %do.end284.if.end294_crit_edge, label %land.lhs.true286

do.end284.if.end294_crit_edge:                    ; preds = %do.end284
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end294

land.lhs.true286:                                 ; preds = %do.end284
  %132 = ptrtoint ptr %head_snapc to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %head_snapc, align 1, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool288.not = icmp eq i8 %133, 0
  br i1 %tobool288.not, label %land.lhs.true289, label %land.lhs.true286.if.end294_crit_edge

land.lhs.true286.if.end294_crit_edge:             ; preds = %land.lhs.true286
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end294

land.lhs.true289:                                 ; preds = %land.lhs.true286
  call void @__sanitizer_cov_trace_pc() #15
  %134 = ptrtoint ptr %sync_mode290 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %sync_mode290, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp291.not = icmp ne i32 %135, 0
  br label %if.end294

if.end294:                                        ; preds = %land.lhs.true289, %land.lhs.true286.if.end294_crit_edge, %do.end284.if.end294_crit_edge
  %should_loop.6.off0 = phi i1 [ true, %do.end284.if.end294_crit_edge ], [ false, %land.lhs.true286.if.end294_crit_edge ], [ %cmp291.not, %land.lhs.true289 ]
  call void @unlock_page(ptr noundef %75) #13
  br label %for.inc

if.end295:                                        ; preds = %page_snap_context.exit
  %index.i = getelementptr inbounds %struct.page, ptr %75, i32 0, i32 1, i32 0, i32 2
  %136 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %index.i, align 4
  %conv.i1478 = zext i32 %137 to i64
  %shl.i1479 = shl nuw nsw i64 %conv.i1478, 12
  %138 = ptrtoint ptr %ceph_wbc to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %ceph_wbc, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i1479, i64 %139)
  %cmp297.not = icmp slt i64 %shl.i1479, %139
  br i1 %cmp297.not, label %if.end331, label %do.body300

do.body300:                                       ; preds = %if.end295
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_writepages_start.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_writepages_start, %if.then312)) #13
          to label %do.end317 [label %if.then312], !srcloc !374

if.then312:                                       ; preds = %do.body300
  call void @__sanitizer_cov_trace_pc() #15
  %140 = ptrtoint ptr %ceph_wbc to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %ceph_wbc, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_writepages_start.__UNIQUE_ID_ddebug370, ptr noundef nonnull @.str.27, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 871, ptr noundef %75, i64 noundef %141) #13
  br label %do.end317

do.end317:                                        ; preds = %if.then312, %do.body300
  %142 = ptrtoint ptr %size_stable to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %size_stable, align 4, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool318.not = icmp eq i8 %143, 0
  br i1 %tobool318.not, label %lor.lhs.false320, label %do.end317.land.lhs.true325_crit_edge

do.end317.land.lhs.true325_crit_edge:             ; preds = %do.end317
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true325

lor.lhs.false320:                                 ; preds = %do.end317
  %144 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %index.i, align 4
  %conv.i1481 = zext i32 %145 to i64
  %shl.i1482 = shl nuw nsw i64 %conv.i1481, 12
  %call322 = call fastcc i64 @i_size_read(ptr noundef %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i1482, i64 %call322)
  %cmp323.not = icmp slt i64 %shl.i1482, %call322
  br i1 %cmp323.not, label %lor.lhs.false320.if.end330_crit_edge, label %lor.lhs.false320.land.lhs.true325_crit_edge

lor.lhs.false320.land.lhs.true325_crit_edge:      ; preds = %lor.lhs.false320
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true325

lor.lhs.false320.if.end330_crit_edge:             ; preds = %lor.lhs.false320
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end330

land.lhs.true325:                                 ; preds = %lor.lhs.false320.land.lhs.true325_crit_edge, %do.end317.land.lhs.true325_crit_edge
  %call326 = call zeroext i1 @clear_page_dirty_for_io(ptr noundef %75) #13
  br i1 %call326, label %if.then328, label %land.lhs.true325.if.end330_crit_edge

land.lhs.true325.if.end330_crit_edge:             ; preds = %land.lhs.true325
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end330

if.then328:                                       ; preds = %land.lhs.true325
  %146 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %a_ops, align 4
  %invalidatepage = getelementptr inbounds %struct.address_space_operations, ptr %147, i32 0, i32 9
  %148 = ptrtoint ptr %invalidatepage to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %invalidatepage, align 4
  %150 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %102, align 4
  %and.i.i.i = and i32 %151, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i1483 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i1483, label %thp_size.exit, label %if.then.i.i1484, !prof !370

if.then.i.i1484:                                  ; preds = %if.then328
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %75, ptr noundef nonnull @.str.39) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 341, 0\0A.popsection", ""() #13, !srcloc !381
  unreachable

thp_size.exit:                                    ; preds = %if.then328
  call void @__sanitizer_cov_trace_pc() #15
  call void %149(ptr noundef %75, i32 noundef 0, i32 noundef 4096) #13
  br label %if.end330

if.end330:                                        ; preds = %thp_size.exit, %land.lhs.true325.if.end330_crit_edge, %lor.lhs.false320.if.end330_crit_edge
  call void @unlock_page(ptr noundef %75) #13
  br label %for.inc

if.end331:                                        ; preds = %if.end295
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %strip_unit_end.12051)
  %tobool332.not = icmp ne i32 %strip_unit_end.12051, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %137, i32 %strip_unit_end.12051)
  %cmp335 = icmp ugt i32 %137, %strip_unit_end.12051
  %or.cond1664 = select i1 %tobool332.not, i1 %cmp335, i1 false
  br i1 %or.cond1664, label %do.body338, label %if.end355

do.body338:                                       ; preds = %if.end331
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_writepages_start.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_writepages_start, %if.then350)) #13
          to label %do.end354 [label %if.then350], !srcloc !374

if.then350:                                       ; preds = %do.body338
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_writepages_start.__UNIQUE_ID_ddebug371, ptr noundef nonnull @.str.97, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 881, ptr noundef %75) #13
  br label %do.end354

do.end354:                                        ; preds = %if.then350, %do.body338
  call void @unlock_page(ptr noundef %75) #13
  br label %for.end

if.end355:                                        ; preds = %if.end331
  %152 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %102, align 4
  %and.i.i1400 = and i32 %153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1400)
  %tobool.not.i.i1401 = icmp eq i32 %and.i.i1400, 0
  br i1 %tobool.not.i.i1401, label %if.end.i.i1404, label %if.then.i.i1403, !prof !370

if.then.i.i1403:                                  ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i1402 = add i32 %153, -1
  br label %_compound_head.exit.i1407

if.end.i.i1404:                                   ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #15
  %154 = ptrtoint ptr %75 to i32
  br label %_compound_head.exit.i1407

_compound_head.exit.i1407:                        ; preds = %if.end.i.i1404, %if.then.i.i1403
  %retval.0.i.i1405 = phi i32 [ %sub.i.i1402, %if.then.i.i1403 ], [ %154, %if.end.i.i1404 ]
  %155 = inttoptr i32 %retval.0.i.i1405 to ptr
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %157)
  %cmp.i.not.i1406 = icmp eq i32 %157, -1
  %158 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %102, align 4
  %and.i16.i = and i32 %159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i1406, label %if.then.i1408, label %do.end10.i, !prof !368

if.then.i1408:                                    ; preds = %_compound_head.exit.i1407
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !370

if.then.i19.i:                                    ; preds = %if.then.i1408
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i18.i = add i32 %159, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i1408
  call void @__sanitizer_cov_trace_pc() #15
  %160 = ptrtoint ptr %75 to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %160, %if.end.i20.i ]
  %161 = inttoptr i32 %retval.0.i21.i to ptr
  call void @dump_page(ptr noundef %161, ptr noundef nonnull @.str.116) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #13, !srcloc !382
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i1407
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !370

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i25.i = add i32 %159, -1
  br label %PageWriteback.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %162 = ptrtoint ptr %75 to i32
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %162, %if.end.i27.i ]
  %163 = inttoptr i32 %retval.0.i28.i to ptr
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %163, align 4
  %166 = and i32 %165, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool357.not = icmp eq i32 %166, 0
  br i1 %tobool357.not, label %lor.lhs.false358, label %PageWriteback.exit.if.then361_crit_edge

PageWriteback.exit.if.then361_crit_edge:          ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then361

lor.lhs.false358:                                 ; preds = %PageWriteback.exit
  %167 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %168)
  %cmp.i.not.i1411 = icmp eq i32 %168, -1
  br i1 %cmp.i.not.i1411, label %if.then.i1412, label %PagePrivate2.exit, !prof !368

if.then.i1412:                                    ; preds = %lor.lhs.false358
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %75, ptr noundef nonnull @.str.40) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 453, 0\0A.popsection", ""() #13, !srcloc !383
  unreachable

PagePrivate2.exit:                                ; preds = %lor.lhs.false358
  %169 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %75, align 4
  %171 = and i32 %170, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool360.not = icmp eq i32 %171, 0
  br i1 %tobool360.not, label %PagePrivate2.exit.if.end401_crit_edge, label %PagePrivate2.exit.if.then361_crit_edge

PagePrivate2.exit.if.then361_crit_edge:           ; preds = %PagePrivate2.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then361

PagePrivate2.exit.if.end401_crit_edge:            ; preds = %PagePrivate2.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end401

if.then361:                                       ; preds = %PagePrivate2.exit.if.then361_crit_edge, %PageWriteback.exit.if.then361_crit_edge
  %172 = ptrtoint ptr %sync_mode290 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %sync_mode290, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp363 = icmp eq i32 %173, 0
  br i1 %cmp363, label %do.body366, label %do.body384

do.body366:                                       ; preds = %if.then361
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_writepages_start.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_writepages_start, %if.then378)) #13
          to label %do.end382 [label %if.then378], !srcloc !374

if.then378:                                       ; preds = %do.body366
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_writepages_start.__UNIQUE_ID_ddebug372, ptr noundef nonnull @.str.99, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 887, ptr noundef %75) #13
  br label %do.end382

do.end382:                                        ; preds = %if.then378, %do.body366
  call void @unlock_page(ptr noundef %75) #13
  br label %for.inc

do.body384:                                       ; preds = %if.then361
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_writepages_start.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_writepages_start, %if.then396)) #13
          to label %do.end400 [label %if.then396], !srcloc !374

if.then396:                                       ; preds = %do.body384
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_writepages_start.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.101, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 891, ptr noundef %75) #13
  br label %do.end400

do.end400:                                        ; preds = %if.then396, %do.body384
  call void @wait_on_page_writeback(ptr noundef %75) #13
  %174 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %102, align 4
  %and.i.i1485 = and i32 %175, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1485)
  %tobool.not.i.i1486 = icmp eq i32 %and.i.i1485, 0
  br i1 %tobool.not.i.i1486, label %if.end.i.i1489, label %if.then.i.i1488, !prof !370

if.then.i.i1488:                                  ; preds = %do.end400
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i1487 = add i32 %175, -1
  br label %wait_on_page_fscache.exit

if.end.i.i1489:                                   ; preds = %do.end400
  call void @__sanitizer_cov_trace_pc() #15
  %176 = ptrtoint ptr %75 to i32
  br label %wait_on_page_fscache.exit

wait_on_page_fscache.exit:                        ; preds = %if.end.i.i1489, %if.then.i.i1488
  %retval.0.i.i1490 = phi i32 [ %sub.i.i1487, %if.then.i.i1488 ], [ %176, %if.end.i.i1489 ]
  %177 = inttoptr i32 %retval.0.i.i1490 to ptr
  call void @folio_wait_private_2(ptr noundef %177) #13
  br label %if.end401

if.end401:                                        ; preds = %wait_on_page_fscache.exit, %PagePrivate2.exit.if.end401_crit_edge
  %call402 = call zeroext i1 @clear_page_dirty_for_io(ptr noundef %75) #13
  br i1 %call402, label %if.end421, label %do.body404

do.body404:                                       ; preds = %if.end401
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_writepages_start.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_writepages_start, %if.then416)) #13
          to label %do.end420 [label %if.then416], !srcloc !374

if.then416:                                       ; preds = %do.body404
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_writepages_start.__UNIQUE_ID_ddebug374, ptr noundef nonnull @.str.103, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 897, ptr noundef %75) #13
  br label %do.end420

do.end420:                                        ; preds = %if.then416, %do.body404
  call void @unlock_page(ptr noundef %75) #13
  br label %for.inc

if.end421:                                        ; preds = %if.end401
  br i1 %cmp215, label %if.then424, label %if.else476

if.then424:                                       ; preds = %if.end421
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %objnum) #13
  %178 = ptrtoint ptr %objnum to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 -1, ptr %objnum, align 8, !annotation !375
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %objoff) #13
  %179 = ptrtoint ptr %objoff to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 -1, ptr %objoff, align 8, !annotation !375
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xlen) #13
  %180 = ptrtoint ptr %xlen to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 -1, ptr %xlen, align 4, !annotation !375
  %181 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %index.i, align 4
  %conv.i1493 = zext i32 %182 to i64
  %shl.i1494 = shl nuw nsw i64 %conv.i1493, 12
  call void @ceph_calc_file_object_mapping(ptr noundef %i_layout, i64 noundef %shl.i1494, i64 noundef %conv426, ptr noundef nonnull %objnum, ptr noundef nonnull %objoff, ptr noundef nonnull %xlen) #13
  %183 = ptrtoint ptr %xlen to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %xlen, align 4
  %conv427 = zext i32 %184 to i64
  %185 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 %conv427, ptr %len, align 8
  %186 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %index.i, align 4
  %sub = add nuw nsw i64 %conv427, 17592186044415
  %shr430 = lshr i64 %sub, 12
  %188 = trunc i64 %shr430 to i32
  %conv431 = add i32 %187, %188
  %tobool433.not = icmp eq ptr %pages.12053, null
  br i1 %tobool433.not, label %do.end449, label %do.body441, !prof !370

do.body441:                                       ; preds = %if.then424
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/addr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 925, 0\0A.popsection", ""() #13, !srcloc !384
  unreachable

do.end449:                                        ; preds = %if.then424
  %sub.i = add nuw nsw i64 %conv427, 4095
  %shr.i = lshr i64 %sub.i, 12
  %conv.i1495 = trunc i64 %shr.i to i32
  %189 = shl nuw nsw i32 %conv.i1495, 2
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %189, i32 noundef 3136) #17
  %tobool452.not = icmp eq ptr %call8.i, null
  br i1 %tobool452.not, label %if.then453, label %do.end449.if.end475_crit_edge

do.end449.if.end475_crit_edge:                    ; preds = %do.end449
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end475

if.then453:                                       ; preds = %do.end449
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ceph_wb_pagevec_pool to i32))
  %190 = load ptr, ptr @ceph_wb_pagevec_pool, align 4
  %call454 = call noalias ptr @mempool_alloc(ptr noundef %190, i32 noundef 3136) #13
  %tobool456.not = icmp eq ptr %call454, null
  br i1 %tobool456.not, label %do.body466, label %if.then453.if.end475_crit_edge, !prof !368

if.then453.if.end475_crit_edge:                   ; preds = %if.then453
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end475

do.body466:                                       ; preds = %if.then453
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/addr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 933, 0\0A.popsection", ""() #13, !srcloc !385
  unreachable

if.end475:                                        ; preds = %if.then453.if.end475_crit_edge, %do.end449.if.end475_crit_edge
  %from_pool.2.off0 = phi i1 [ %from_pool.1.off02046, %do.end449.if.end475_crit_edge ], [ true, %if.then453.if.end475_crit_edge ]
  %pages.2 = phi ptr [ %call8.i, %do.end449.if.end475_crit_edge ], [ %call454, %if.then453.if.end475_crit_edge ]
  %191 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 0, ptr %len, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xlen) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %objoff) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %objnum) #13
  br label %do.body495

if.else476:                                       ; preds = %if.end421
  %192 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %index.i, align 4
  %conv478 = zext i32 %193 to i64
  %194 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %len, align 8
  %add479 = add i64 %195, %offset.12049
  %shr480 = lshr i64 %add479, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shr480, i64 %conv478)
  %cmp481.not = icmp eq i64 %shr480, %conv478
  br i1 %cmp481.not, label %if.else476.do.body495_crit_edge, label %if.then483

if.else476.do.body495_crit_edge:                  ; preds = %if.else476
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body495

if.then483:                                       ; preds = %if.else476
  %cond486 = select i1 %from_pool.1.off02046, i32 2, i32 16
  call void @__sanitizer_cov_trace_cmp4(i32 %num_ops.12064, i32 %cond486)
  %cmp487.not = icmp slt i32 %num_ops.12064, %cond486
  br i1 %cmp487.not, label %if.end491, label %if.then489

if.then489:                                       ; preds = %if.then483
  call void @__sanitizer_cov_trace_pc() #15
  %call490 = call zeroext i1 @redirty_page_for_writepage(ptr noundef %wbc, ptr noundef %75) #13
  call void @unlock_page(ptr noundef %75) #13
  br label %if.end531

if.end491:                                        ; preds = %if.then483
  call void @__sanitizer_cov_trace_pc() #15
  %inc = add nsw i32 %num_ops.12064, 1
  %shl.i1503 = shl nuw nsw i64 %conv478, 12
  %196 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %196)
  store i64 0, ptr %len, align 8
  br label %do.body495

do.body495:                                       ; preds = %if.end491, %if.else476.do.body495_crit_edge, %if.end475
  %from_pool.3.off0 = phi i1 [ %from_pool.2.off0, %if.end475 ], [ %from_pool.1.off02046, %if.end491 ], [ %from_pool.1.off02046, %if.else476.do.body495_crit_edge ]
  %offset.2 = phi i64 [ %shl.i1494, %if.end475 ], [ %shl.i1503, %if.end491 ], [ %offset.12049, %if.else476.do.body495_crit_edge ]
  %strip_unit_end.2 = phi i32 [ %conv431, %if.end475 ], [ %strip_unit_end.12051, %if.end491 ], [ %strip_unit_end.12051, %if.else476.do.body495_crit_edge ]
  %pages.3 = phi ptr [ %pages.2, %if.end475 ], [ %pages.12053, %if.end491 ], [ %pages.12053, %if.else476.do.body495_crit_edge ]
  %max_pages.2 = phi i32 [ %conv.i1495, %if.end475 ], [ %max_pages.12058, %if.end491 ], [ %max_pages.12058, %if.else476.do.body495_crit_edge ]
  %num_ops.2 = phi i32 [ 1, %if.end475 ], [ %inc, %if.end491 ], [ %num_ops.12064, %if.else476.do.body495_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_writepages_start.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_writepages_start, %if.then507)) #13
          to label %do.end512 [label %if.then507], !srcloc !374

if.then507:                                       ; preds = %do.body495
  call void @__sanitizer_cov_trace_pc() #15
  %197 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %index.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_writepages_start.__UNIQUE_ID_ddebug375, ptr noundef nonnull @.str.105, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 953, ptr noundef %1, ptr noundef %75, i32 noundef %198) #13
  br label %do.end512

do.end512:                                        ; preds = %if.then507, %do.body495
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %writeback_count, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !386
  call void @llvm.prefetch.p0(ptr %writeback_count, i32 1, i32 3, i32 1) #13
  %199 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %writeback_count, ptr %writeback_count, i32 1, ptr elementtype(i32) %writeback_count) #13, !srcloc !387
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %199, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !388
  %200 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %mount_options, align 4
  %congestion_kb = getelementptr inbounds %struct.ceph_mount_options, ptr %201, i32 0, i32 4
  %202 = ptrtoint ptr %congestion_kb to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %congestion_kb, align 4
  %shr515 = lshr i32 %203, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i.i, i32 %shr515)
  %cmp516 = icmp ugt i32 %asmresult.i.i.i.i.i, %shr515
  br i1 %cmp516, label %if.then518, label %do.end512.if.end520_crit_edge

do.end512.if.end520_crit_edge:                    ; preds = %do.end512
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end520

if.then518:                                       ; preds = %do.end512
  call void @__sanitizer_cov_trace_pc() #15
  %call519 = call ptr @inode_to_bdi(ptr noundef %1) #13
  call void @set_bdi_congested(ptr noundef %call519, i32 noundef 0) #13
  br label %if.end520

if.end520:                                        ; preds = %if.then518, %do.end512.if.end520_crit_edge
  %arrayidx522 = getelementptr ptr, ptr %pages.3, i32 %locked_pages.12055
  %204 = ptrtoint ptr %arrayidx522 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %75, ptr %arrayidx522, align 4
  %205 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %arrayidx, align 4
  %206 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load volatile i32, ptr %102, align 4
  %and.i.i.i1504 = and i32 %207, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1504)
  %tobool.not.i.i1505 = icmp eq i32 %and.i.i.i1504, 0
  br i1 %tobool.not.i.i1505, label %thp_size.exit1507, label %if.then.i.i1506, !prof !370

if.then.i.i1506:                                  ; preds = %if.end520
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %75, ptr noundef nonnull @.str.39) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 341, 0\0A.popsection", ""() #13, !srcloc !381
  unreachable

thp_size.exit1507:                                ; preds = %if.end520
  call void @__sanitizer_cov_trace_pc() #15
  %inc521 = add nuw i32 %locked_pages.12055, 1
  %208 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %len, align 8
  %add527 = add i64 %209, 4096
  store i64 %add527, ptr %len, align 8
  br label %for.inc

for.inc:                                          ; preds = %thp_size.exit1507, %do.end420, %do.end382, %if.end330, %if.end294, %do.end260
  %from_pool.4.off0 = phi i1 [ %from_pool.1.off02046, %do.end260 ], [ %from_pool.1.off02046, %if.end294 ], [ %from_pool.1.off02046, %if.end330 ], [ %from_pool.1.off02046, %do.end382 ], [ %from_pool.3.off0, %thp_size.exit1507 ], [ %from_pool.1.off02046, %do.end420 ]
  %offset.3 = phi i64 [ %offset.12049, %do.end260 ], [ %offset.12049, %if.end294 ], [ %offset.12049, %if.end330 ], [ %offset.12049, %do.end382 ], [ %offset.2, %thp_size.exit1507 ], [ %offset.12049, %do.end420 ]
  %strip_unit_end.3 = phi i32 [ %strip_unit_end.12051, %do.end260 ], [ %strip_unit_end.12051, %if.end294 ], [ %strip_unit_end.12051, %if.end330 ], [ %strip_unit_end.12051, %do.end382 ], [ %strip_unit_end.2, %thp_size.exit1507 ], [ %strip_unit_end.12051, %do.end420 ]
  %pages.4 = phi ptr [ %pages.12053, %do.end260 ], [ %pages.12053, %if.end294 ], [ %pages.12053, %if.end330 ], [ %pages.12053, %do.end382 ], [ %pages.3, %thp_size.exit1507 ], [ %pages.12053, %do.end420 ]
  %locked_pages.2 = phi i32 [ %locked_pages.12055, %do.end260 ], [ %locked_pages.12055, %if.end294 ], [ %locked_pages.12055, %if.end330 ], [ %locked_pages.12055, %do.end382 ], [ %inc521, %thp_size.exit1507 ], [ %locked_pages.12055, %do.end420 ]
  %max_pages.3 = phi i32 [ %max_pages.12058, %do.end260 ], [ %max_pages.12058, %if.end294 ], [ %max_pages.12058, %if.end330 ], [ %max_pages.12058, %do.end382 ], [ %max_pages.2, %thp_size.exit1507 ], [ %max_pages.12058, %do.end420 ]
  %num_ops.3 = phi i32 [ %num_ops.12064, %do.end260 ], [ %num_ops.12064, %if.end294 ], [ %num_ops.12064, %if.end330 ], [ %num_ops.12064, %do.end382 ], [ %num_ops.2, %thp_size.exit1507 ], [ %num_ops.12064, %do.end420 ]
  %should_loop.7.off0 = phi i1 [ %should_loop.5.off02066, %do.end260 ], [ %should_loop.6.off0, %if.end294 ], [ %should_loop.5.off02066, %if.end330 ], [ %should_loop.5.off02066, %do.end382 ], [ %should_loop.5.off02066, %thp_size.exit1507 ], [ %should_loop.5.off02066, %do.end420 ]
  %inc528 = add nuw i32 %i.02060, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc528, i32 %call167)
  %cmp190 = icmp ult i32 %inc528, %call167
  call void @__sanitizer_cov_trace_cmp4(i32 %locked_pages.2, i32 %max_pages.3)
  %cmp193 = icmp ult i32 %locked_pages.2, %max_pages.3
  %or.cond1358 = select i1 %cmp190, i1 %cmp193, i1 false
  br i1 %or.cond1358, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end354, %for.cond.preheader.for.end_crit_edge
  %from_pool.1.off01832 = phi i1 [ %from_pool.1.off02046, %do.end354 ], [ %from_pool.0.off0, %for.cond.preheader.for.end_crit_edge ], [ %from_pool.4.off0, %for.inc.for.end_crit_edge ]
  %offset.11817 = phi i64 [ %offset.12049, %do.end354 ], [ %offset.0, %for.cond.preheader.for.end_crit_edge ], [ %offset.3, %for.inc.for.end_crit_edge ]
  %strip_unit_end.11802 = phi i32 [ %strip_unit_end.12051, %do.end354 ], [ %strip_unit_end.0, %for.cond.preheader.for.end_crit_edge ], [ %strip_unit_end.3, %for.inc.for.end_crit_edge ]
  %pages.11774 = phi ptr [ %pages.12053, %do.end354 ], [ %pages.0, %for.cond.preheader.for.end_crit_edge ], [ %pages.4, %for.inc.for.end_crit_edge ]
  %locked_pages.11758 = phi i32 [ %locked_pages.12055, %do.end354 ], [ %locked_pages.0, %for.cond.preheader.for.end_crit_edge ], [ %locked_pages.2, %for.inc.for.end_crit_edge ]
  %max_pages.11743 = phi i32 [ %max_pages.12058, %do.end354 ], [ %max_pages.0, %for.cond.preheader.for.end_crit_edge ], [ %max_pages.3, %for.inc.for.end_crit_edge ]
  %i.01728 = phi i32 [ %i.02060, %do.end354 ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc528, %for.inc.for.end_crit_edge ]
  %num_ops.11713 = phi i32 [ %num_ops.12064, %do.end354 ], [ %num_ops.0, %for.cond.preheader.for.end_crit_edge ], [ %num_ops.3, %for.inc.for.end_crit_edge ]
  %should_loop.5.off01698 = phi i1 [ %should_loop.5.off02066, %do.end354 ], [ %should_loop.4.off0, %for.cond.preheader.for.end_crit_edge ], [ %should_loop.7.off0, %for.inc.for.end_crit_edge ]
  %cmp1931682 = phi i1 [ true, %do.end354 ], [ %cmp1932044, %for.cond.preheader.for.end_crit_edge ], [ %cmp193, %for.inc.for.end_crit_edge ]
  %page.2 = phi ptr [ %75, %do.end354 ], [ %page.0, %for.cond.preheader.for.end_crit_edge ], [ %75, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %locked_pages.11758)
  %tobool529.not = icmp eq i32 %locked_pages.11758, 0
  br i1 %tobool529.not, label %for.end.do.body887_crit_edge, label %for.end.if.end531_crit_edge

for.end.if.end531_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end531

for.end.do.body887_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body887

if.end531:                                        ; preds = %for.end.if.end531_crit_edge, %if.then489, %trylock_page.exit.if.end531_crit_edge, %folio_flags.exit.i.i1470.if.end531_crit_edge
  %from_pool.1.off01831 = phi i1 [ %from_pool.1.off01832, %for.end.if.end531_crit_edge ], [ %from_pool.1.off02046, %if.then489 ], [ %from_pool.1.off02046, %trylock_page.exit.if.end531_crit_edge ], [ %from_pool.1.off02046, %folio_flags.exit.i.i1470.if.end531_crit_edge ]
  %offset.11816 = phi i64 [ %offset.11817, %for.end.if.end531_crit_edge ], [ %offset.12049, %if.then489 ], [ %offset.12049, %trylock_page.exit.if.end531_crit_edge ], [ %offset.12049, %folio_flags.exit.i.i1470.if.end531_crit_edge ]
  %strip_unit_end.11801 = phi i32 [ %strip_unit_end.11802, %for.end.if.end531_crit_edge ], [ %strip_unit_end.12051, %if.then489 ], [ %strip_unit_end.12051, %trylock_page.exit.if.end531_crit_edge ], [ %strip_unit_end.12051, %folio_flags.exit.i.i1470.if.end531_crit_edge ]
  %pages.11773 = phi ptr [ %pages.11774, %for.end.if.end531_crit_edge ], [ %pages.12053, %if.then489 ], [ %pages.12053, %trylock_page.exit.if.end531_crit_edge ], [ %pages.12053, %folio_flags.exit.i.i1470.if.end531_crit_edge ]
  %locked_pages.11757 = phi i32 [ %locked_pages.11758, %for.end.if.end531_crit_edge ], [ %locked_pages.12055, %if.then489 ], [ %locked_pages.12055, %trylock_page.exit.if.end531_crit_edge ], [ %locked_pages.12055, %folio_flags.exit.i.i1470.if.end531_crit_edge ]
  %max_pages.11742 = phi i32 [ %max_pages.11743, %for.end.if.end531_crit_edge ], [ %max_pages.12058, %if.then489 ], [ %max_pages.12058, %trylock_page.exit.if.end531_crit_edge ], [ %max_pages.12058, %folio_flags.exit.i.i1470.if.end531_crit_edge ]
  %i.01727 = phi i32 [ %i.01728, %for.end.if.end531_crit_edge ], [ %i.02060, %if.then489 ], [ %i.02060, %trylock_page.exit.if.end531_crit_edge ], [ %i.02060, %folio_flags.exit.i.i1470.if.end531_crit_edge ]
  %num_ops.11712 = phi i32 [ %num_ops.11713, %for.end.if.end531_crit_edge ], [ %num_ops.12064, %if.then489 ], [ %num_ops.12064, %trylock_page.exit.if.end531_crit_edge ], [ %num_ops.12064, %folio_flags.exit.i.i1470.if.end531_crit_edge ]
  %should_loop.5.off01697 = phi i1 [ %should_loop.5.off01698, %for.end.if.end531_crit_edge ], [ %should_loop.5.off02066, %if.then489 ], [ %should_loop.5.off02066, %trylock_page.exit.if.end531_crit_edge ], [ %should_loop.5.off02066, %folio_flags.exit.i.i1470.if.end531_crit_edge ]
  %cmp1931681 = phi i1 [ %cmp1931682, %for.end.if.end531_crit_edge ], [ true, %if.then489 ], [ true, %trylock_page.exit.if.end531_crit_edge ], [ true, %folio_flags.exit.i.i1470.if.end531_crit_edge ]
  %page.21633 = phi ptr [ %page.2, %for.end.if.end531_crit_edge ], [ %75, %if.then489 ], [ %75, %trylock_page.exit.if.end531_crit_edge ], [ %75, %folio_flags.exit.i.i1470.if.end531_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.01727)
  %tobool532.not = icmp eq i32 %i.01727, 0
  br i1 %tobool532.not, label %if.end531.if.end583_crit_edge, label %for.cond534.preheader

if.end531.if.end583_crit_edge:                    ; preds = %if.end531
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end583

for.cond534.preheader:                            ; preds = %if.end531
  br i1 %tobool185.not, label %for.end554.thread, label %for.cond534.preheader.for.body537_crit_edge

for.cond534.preheader.for.body537_crit_edge:      ; preds = %for.cond534.preheader
  br label %for.body537

for.end554.thread:                                ; preds = %for.cond534.preheader
  call void @__sanitizer_cov_trace_pc() #15
  %210 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 0, ptr %pvec, align 4
  br label %if.end583

for.body537:                                      ; preds = %for.inc552.for.body537_crit_edge, %for.cond534.preheader.for.body537_crit_edge
  %n.02083 = phi i32 [ %n.1, %for.inc552.for.body537_crit_edge ], [ 0, %for.cond534.preheader.for.body537_crit_edge ]
  %j.02081 = phi i32 [ %inc553, %for.inc552.for.body537_crit_edge ], [ 0, %for.cond534.preheader.for.body537_crit_edge ]
  %arrayidx539 = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %j.02081
  %211 = ptrtoint ptr %arrayidx539 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %arrayidx539, align 4
  %tobool540.not = icmp eq ptr %212, null
  br i1 %tobool540.not, label %for.body537.for.inc552_crit_edge, label %if.end542

for.body537.for.inc552_crit_edge:                 ; preds = %for.body537
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc552

if.end542:                                        ; preds = %for.body537
  call void @__sanitizer_cov_trace_cmp4(i32 %n.02083, i32 %j.02081)
  %cmp543 = icmp ult i32 %n.02083, %j.02081
  br i1 %cmp543, label %if.then545, label %if.end542.if.end550_crit_edge

if.end542.if.end550_crit_edge:                    ; preds = %if.end542
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end550

if.then545:                                       ; preds = %if.end542
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx549 = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %n.02083
  %213 = ptrtoint ptr %arrayidx549 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %212, ptr %arrayidx549, align 4
  br label %if.end550

if.end550:                                        ; preds = %if.then545, %if.end542.if.end550_crit_edge
  %inc551 = add i32 %n.02083, 1
  br label %for.inc552

for.inc552:                                       ; preds = %if.end550, %for.body537.for.inc552_crit_edge
  %n.1 = phi i32 [ %inc551, %if.end550 ], [ %n.02083, %for.body537.for.inc552_crit_edge ]
  %inc553 = add nuw i32 %j.02081, 1
  %exitcond.not = icmp eq i32 %inc553, %call167
  br i1 %exitcond.not, label %for.end554, label %for.inc552.for.body537_crit_edge

for.inc552.for.body537_crit_edge:                 ; preds = %for.inc552
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body537

for.end554:                                       ; preds = %for.inc552
  %conv555 = trunc i32 %n.1 to i8
  %214 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %conv555, ptr %pvec, align 4
  %tobool185.not.not = xor i1 %tobool185.not, true
  call void @__sanitizer_cov_trace_cmp4(i32 %i.01727, i32 %call167)
  %cmp558 = icmp eq i32 %i.01727, %call167
  %or.cond1360 = select i1 %tobool185.not.not, i1 %cmp558, i1 false
  %or.cond1361 = select i1 %or.cond1360, i1 %cmp1931681, i1 false
  br i1 %or.cond1361, label %do.body564, label %for.end554.if.end583_crit_edge

for.end554.if.end583_crit_edge:                   ; preds = %for.end554
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end583

do.body564:                                       ; preds = %for.end554
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_writepages_start.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_writepages_start, %if.then576)) #13
          to label %do.end580 [label %if.then576], !srcloc !374

if.then576:                                       ; preds = %do.body564
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_writepages_start.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.107, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 986) #13
  br label %do.end580

do.end580:                                        ; preds = %if.then576, %do.body564
  %215 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %pvec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool.not.i1508 = icmp eq i8 %216, 0
  br i1 %tobool.not.i1508, label %do.end580.get_more_pages.backedge_crit_edge, label %if.then.i1509

do.end580.get_more_pages.backedge_crit_edge:      ; preds = %do.end580
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_more_pages.backedge

if.then.i1509:                                    ; preds = %do.end580
  call void @__sanitizer_cov_trace_pc() #15
  call void @__pagevec_release(ptr noundef nonnull %pvec) #13
  br label %get_more_pages.backedge

get_more_pages.backedge:                          ; preds = %if.then.i1509, %do.end580.get_more_pages.backedge_crit_edge
  br label %get_more_pages

if.end583:                                        ; preds = %for.end554.if.end583_crit_edge, %for.end554.thread, %if.end531.if.end583_crit_edge
  %217 = getelementptr inbounds %struct.page, ptr %page.21633, i32 0, i32 1
  br label %new_request

new_request:                                      ; preds = %do.end873.new_request_crit_edge, %if.end583
  %from_pool.5.off0 = phi i1 [ %from_pool.1.off01831, %if.end583 ], [ %extract.t1344, %do.end873.new_request_crit_edge ]
  %pages.5 = phi ptr [ %pages.11773, %if.end583 ], [ %pages.7, %do.end873.new_request_crit_edge ]
  %locked_pages.3 = phi i32 [ %locked_pages.11757, %if.end583 ], [ %locked_pages.4, %do.end873.new_request_crit_edge ]
  %num_ops.4 = phi i32 [ %num_ops.11712, %if.end583 ], [ %num_ops.5, %do.end873.new_request_crit_edge ]
  %218 = ptrtoint ptr %pages.5 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %pages.5, align 4
  %index.i1511 = getelementptr inbounds %struct.page, ptr %219, i32 0, i32 1, i32 0, i32 2
  %220 = ptrtoint ptr %index.i1511 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %index.i1511, align 4
  %conv.i1512 = zext i32 %221 to i64
  %shl.i1513 = shl nuw nsw i64 %conv.i1512, 12
  %222 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %222)
  store i64 %conv426, ptr %len, align 8
  %223 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %client, align 8
  %osdc = getelementptr inbounds %struct.ceph_client, ptr %224, i32 0, i32 12
  %225 = ptrtoint ptr %truncate_seq to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %truncate_seq, align 8
  %227 = ptrtoint ptr %truncate_size to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %truncate_size, align 8
  %call588 = call ptr @ceph_osdc_new_request(ptr noundef %osdc, ptr noundef %i_layout, [2 x i64] %.fca.1.insert, i64 noundef %shl.i1513, ptr noundef nonnull %len, i32 noundef 0, i32 noundef %num_ops.4, i32 noundef 8705, i32 noundef 32, ptr noundef nonnull %call392121, i32 noundef %226, i64 noundef %228, i1 noundef zeroext false) #13
  %cmp.i1514 = icmp ugt ptr %call588, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1514, label %if.then590, label %new_request.do.body623_crit_edge

new_request.do.body623_crit_edge:                 ; preds = %new_request
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body623

if.then590:                                       ; preds = %new_request
  %229 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %client, align 8
  %osdc592 = getelementptr inbounds %struct.ceph_client, ptr %230, i32 0, i32 12
  %231 = call i32 @llvm.smin.i32(i32 %num_ops.4, i32 2)
  %232 = ptrtoint ptr %truncate_seq to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %truncate_seq, align 8
  %234 = ptrtoint ptr %truncate_size to i32
  call void @__asan_load8_noabort(i32 %234)
  %235 = load i64, ptr %truncate_size, align 8
  %call603 = call ptr @ceph_osdc_new_request(ptr noundef %osdc592, ptr noundef %i_layout, [2 x i64] %.fca.1.insert, i64 noundef %shl.i1513, ptr noundef nonnull %len, i32 noundef 0, i32 noundef %231, i32 noundef 8705, i32 noundef 32, ptr noundef nonnull %call392121, i32 noundef %233, i64 noundef %235, i1 noundef zeroext true) #13
  %cmp.i1515 = icmp ugt ptr %call603, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1515, label %do.body613, label %if.then590.do.body623_crit_edge, !prof !368

if.then590.do.body623_crit_edge:                  ; preds = %if.then590
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body623

do.body613:                                       ; preds = %if.then590
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/addr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1012, 0\0A.popsection", ""() #13, !srcloc !389
  unreachable

do.body623:                                       ; preds = %if.then590.do.body623_crit_edge, %new_request.do.body623_crit_edge
  %req.2 = phi ptr [ %call603, %if.then590.do.body623_crit_edge ], [ %call588, %new_request.do.body623_crit_edge ]
  %236 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %len, align 8
  %sub624 = add i32 %locked_pages.3, -1
  %arrayidx625 = getelementptr ptr, ptr %pages.5, i32 %sub624
  %238 = ptrtoint ptr %arrayidx625 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %arrayidx625, align 4
  %index.i1516 = getelementptr inbounds %struct.page, ptr %239, i32 0, i32 1, i32 0, i32 2
  %240 = ptrtoint ptr %index.i1516 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %index.i1516, align 4
  %242 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load volatile i32, ptr %217, align 4
  %and.i.i.i1519 = and i32 %243, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1519)
  %tobool.not.i.i1520 = icmp eq i32 %and.i.i.i1519, 0
  br i1 %tobool.not.i.i1520, label %thp_size.exit1522, label %if.then.i.i1521, !prof !370

if.then.i.i1521:                                  ; preds = %do.body623
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %page.21633, ptr noundef nonnull @.str.39) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 341, 0\0A.popsection", ""() #13, !srcloc !381
  unreachable

thp_size.exit1522:                                ; preds = %do.body623
  %conv.i1517 = zext i32 %241 to i64
  %shl.i1518 = shl nuw nsw i64 %conv.i1517, 12
  %add629 = sub nsw i64 4096, %shl.i1513
  %sub630 = add nsw i64 %add629, %shl.i1518
  call void @__sanitizer_cov_trace_cmp8(i64 %237, i64 %sub630)
  %cmp631 = icmp ult i64 %237, %sub630
  br i1 %cmp631, label %do.body640, label %do.end648, !prof !368

do.body640:                                       ; preds = %thp_size.exit1522
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/addr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1015, 0\0A.popsection", ""() #13, !srcloc !390
  unreachable

do.end648:                                        ; preds = %thp_size.exit1522
  %r_callback = getelementptr inbounds %struct.ceph_osd_request, ptr %req.2, i32 0, i32 15
  %244 = ptrtoint ptr %r_callback to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr @writepages_finish, ptr %r_callback, align 8
  %r_inode = getelementptr inbounds %struct.ceph_osd_request, ptr %req.2, i32 0, i32 16
  %245 = ptrtoint ptr %r_inode to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %1, ptr %r_inode, align 4
  %246 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %246)
  store i64 0, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %locked_pages.3)
  %cmp6502086.not = icmp eq i32 %locked_pages.3, 0
  br i1 %cmp6502086.not, label %do.end648.for.end700_crit_edge, label %for.body652.lr.ph

do.end648.for.end700_crit_edge:                   ; preds = %do.end648
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end700

for.body652.lr.ph:                                ; preds = %do.end648
  %r_num_ops = getelementptr inbounds %struct.ceph_osd_request, ptr %req.2, i32 0, i32 9
  br label %for.body652

for.body652:                                      ; preds = %for.inc698.for.body652_crit_edge, %for.body652.lr.ph
  %cmp6502093 = phi i1 [ true, %for.body652.lr.ph ], [ %cmp650, %for.inc698.for.body652_crit_edge ]
  %op_idx.02092 = phi i32 [ 0, %for.body652.lr.ph ], [ %op_idx.1, %for.inc698.for.body652_crit_edge ]
  %i.12090 = phi i32 [ 0, %for.body652.lr.ph ], [ %inc699, %for.inc698.for.body652_crit_edge ]
  %data_pages.02089 = phi ptr [ %pages.5, %for.body652.lr.ph ], [ %data_pages.1, %for.inc698.for.body652_crit_edge ]
  %offset.42087 = phi i64 [ %shl.i1513, %for.body652.lr.ph ], [ %offset.5, %for.inc698.for.body652_crit_edge ]
  %arrayidx653 = getelementptr ptr, ptr %pages.5, i32 %i.12090
  %247 = ptrtoint ptr %arrayidx653 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %arrayidx653, align 4
  %index.i1523 = getelementptr inbounds %struct.page, ptr %248, i32 0, i32 1, i32 0, i32 2
  %249 = ptrtoint ptr %index.i1523 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %index.i1523, align 4
  %conv.i1524 = zext i32 %250 to i64
  %shl.i1525 = shl nuw nsw i64 %conv.i1524, 12
  %251 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %251)
  %252 = load i64, ptr %len, align 8
  %add655 = add i64 %252, %offset.42087
  call void @__sanitizer_cov_trace_cmp8(i64 %add655, i64 %shl.i1525)
  %cmp656.not = icmp eq i64 %add655, %shl.i1525
  br i1 %cmp656.not, label %for.body652.if.end685_crit_edge, label %if.then658

for.body652.if.end685_crit_edge:                  ; preds = %for.body652
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end685

if.then658:                                       ; preds = %for.body652
  %add659 = add i32 %op_idx.02092, 1
  %253 = ptrtoint ptr %r_num_ops to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %r_num_ops, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add659, i32 %254)
  %cmp660 = icmp eq i32 %add659, %254
  br i1 %cmp660, label %if.then658.for.end700_crit_edge, label %if.end663

if.then658.for.end700_crit_edge:                  ; preds = %if.then658
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end700

if.end663:                                        ; preds = %if.then658
  %255 = ptrtoint ptr %fscache.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %fscache.i.i, align 8
  %257 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %i_mapping.i, align 8
  %call2.i = call fastcc i64 @i_size_read(ptr noundef %1) #13
  br i1 %18, label %if.then.i.i1528, label %if.end663.ceph_fscache_write_to_cache.exit_crit_edge

if.end663.ceph_fscache_write_to_cache.exit_crit_edge: ; preds = %if.end663
  call void @__sanitizer_cov_trace_pc() #15
  br label %ceph_fscache_write_to_cache.exit

if.then.i.i1528:                                  ; preds = %if.end663
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i1527 = trunc i64 %252 to i32
  call void @__fscache_write_to_cache(ptr noundef %256, ptr noundef %258, i64 noundef %offset.42087, i32 noundef %conv.i1527, i64 noundef %call2.i, ptr noundef nonnull @ceph_fscache_write_terminated, ptr noundef %1, i1 noundef zeroext true) #13
  br label %ceph_fscache_write_to_cache.exit

ceph_fscache_write_to_cache.exit:                 ; preds = %if.then.i.i1528, %if.end663.ceph_fscache_write_to_cache.exit_crit_edge
  %sub665 = sub i64 %shl.i1525, %offset.42087
  call void @osd_req_op_extent_dup_last(ptr noundef %req.2, i32 noundef %op_idx.02092, i64 noundef %sub665) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_writepages_start.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_writepages_start, %if.then678)) #13
          to label %do.end682 [label %if.then678], !srcloc !374

if.then678:                                       ; preds = %ceph_fscache_write_to_cache.exit
  call void @__sanitizer_cov_trace_pc() #15
  %259 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %259)
  %260 = load i64, ptr %len, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_writepages_start.__UNIQUE_ID_ddebug379, ptr noundef nonnull @.str.109, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1042, i64 noundef %offset.42087, i64 noundef %260) #13
  br label %do.end682

do.end682:                                        ; preds = %if.then678, %ceph_fscache_write_to_cache.exit
  %261 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %261)
  %262 = load i64, ptr %len, align 8
  call void @osd_req_op_extent_osd_data_pages(ptr noundef %req.2, i32 noundef %op_idx.02092, ptr noundef %data_pages.02089, i64 noundef %262, i32 noundef 0, i1 noundef zeroext %from_pool.5.off0, i1 noundef zeroext false) #13
  %263 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %263)
  %264 = load i64, ptr %len, align 8
  call void @osd_req_op_extent_update(ptr noundef %req.2, i32 noundef %op_idx.02092, i64 noundef %264) #13
  %265 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %265)
  store i64 0, ptr %len, align 8
  br label %if.end685

if.end685:                                        ; preds = %do.end682, %for.body652.if.end685_crit_edge
  %offset.5 = phi i64 [ %shl.i1525, %do.end682 ], [ %offset.42087, %for.body652.if.end685_crit_edge ]
  %data_pages.1 = phi ptr [ %arrayidx653, %do.end682 ], [ %data_pages.02089, %for.body652.if.end685_crit_edge ]
  %op_idx.1 = phi i32 [ %add659, %do.end682 ], [ %op_idx.02092, %for.body652.if.end685_crit_edge ]
  %266 = ptrtoint ptr %arrayidx653 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %arrayidx653, align 4
  %call687 = call zeroext i1 @set_page_writeback(ptr noundef %267) #13
  br i1 %18, label %if.then689, label %if.end685.if.end691_crit_edge

if.end685.if.end691_crit_edge:                    ; preds = %if.end685
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end691

if.then689:                                       ; preds = %if.end685
  %268 = ptrtoint ptr %arrayidx653 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %arrayidx653, align 4
  %270 = getelementptr inbounds %struct.page, ptr %269, i32 0, i32 1
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load volatile i32, ptr %270, align 4
  %and.i.i.i1529 = and i32 %272, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1529)
  %tobool.not.i.i.i1530 = icmp eq i32 %and.i.i.i1529, 0
  br i1 %tobool.not.i.i.i1530, label %if.end.i.i.i1532, label %if.then.i.i.i1531, !prof !370

if.then.i.i.i1531:                                ; preds = %if.then689
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = add i32 %272, -1
  br label %ceph_set_page_fscache.exit

if.end.i.i.i1532:                                 ; preds = %if.then689
  call void @__sanitizer_cov_trace_pc() #15
  %273 = ptrtoint ptr %269 to i32
  br label %ceph_set_page_fscache.exit

ceph_set_page_fscache.exit:                       ; preds = %if.end.i.i.i1532, %if.then.i.i.i1531
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i1531 ], [ %273, %if.end.i.i.i1532 ]
  %274 = inttoptr i32 %retval.0.i.i.i to ptr
  call fastcc void @folio_start_fscache(ptr noundef %274) #13
  br label %if.end691

if.end691:                                        ; preds = %ceph_set_page_fscache.exit, %if.end685.if.end691_crit_edge
  %275 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load volatile i32, ptr %217, align 4
  %and.i.i.i1533 = and i32 %276, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1533)
  %tobool.not.i.i1534 = icmp eq i32 %and.i.i.i1533, 0
  br i1 %tobool.not.i.i1534, label %for.inc698, label %if.then.i.i1535, !prof !370

if.then.i.i1535:                                  ; preds = %if.end691
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %page.21633, ptr noundef nonnull @.str.39) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 341, 0\0A.popsection", ""() #13, !srcloc !381
  unreachable

for.inc698:                                       ; preds = %if.end691
  %277 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %277)
  %278 = load i64, ptr %len, align 8
  %add694 = add i64 %278, 4096
  store i64 %add694, ptr %len, align 8
  %inc699 = add nuw i32 %i.12090, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %locked_pages.3, i32 %inc699)
  %cmp650 = icmp ugt i32 %locked_pages.3, %inc699
  %exitcond2434.not = icmp eq i32 %inc699, %locked_pages.3
  br i1 %exitcond2434.not, label %for.inc698.for.end700_crit_edge, label %for.inc698.for.body652_crit_edge

for.inc698.for.body652_crit_edge:                 ; preds = %for.inc698
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body652

for.inc698.for.end700_crit_edge:                  ; preds = %for.inc698
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end700

for.end700:                                       ; preds = %for.inc698.for.end700_crit_edge, %if.then658.for.end700_crit_edge, %do.end648.for.end700_crit_edge
  %offset.4.lcssa = phi i64 [ %shl.i1513, %do.end648.for.end700_crit_edge ], [ %offset.42087, %if.then658.for.end700_crit_edge ], [ %offset.5, %for.inc698.for.end700_crit_edge ]
  %data_pages.0.lcssa = phi ptr [ %pages.5, %do.end648.for.end700_crit_edge ], [ %data_pages.02089, %if.then658.for.end700_crit_edge ], [ %data_pages.1, %for.inc698.for.end700_crit_edge ]
  %i.1.lcssa = phi i32 [ 0, %do.end648.for.end700_crit_edge ], [ %i.12090, %if.then658.for.end700_crit_edge ], [ %locked_pages.3, %for.inc698.for.end700_crit_edge ]
  %op_idx.0.lcssa = phi i32 [ 0, %do.end648.for.end700_crit_edge ], [ %op_idx.02092, %if.then658.for.end700_crit_edge ], [ %op_idx.1, %for.inc698.for.end700_crit_edge ]
  %cmp650.lcssa = phi i1 [ false, %do.end648.for.end700_crit_edge ], [ %cmp6502093, %if.then658.for.end700_crit_edge ], [ %cmp650, %for.inc698.for.end700_crit_edge ]
  %279 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %279)
  %280 = load i64, ptr %len, align 8
  %281 = ptrtoint ptr %fscache.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %fscache.i.i, align 8
  %283 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %i_mapping.i, align 8
  %call2.i1539 = call fastcc i64 @i_size_read(ptr noundef %1) #13
  br i1 %18, label %if.then.i.i1541, label %for.end700.ceph_fscache_write_to_cache.exit1542_crit_edge

for.end700.ceph_fscache_write_to_cache.exit1542_crit_edge: ; preds = %for.end700
  call void @__sanitizer_cov_trace_pc() #15
  br label %ceph_fscache_write_to_cache.exit1542

if.then.i.i1541:                                  ; preds = %for.end700
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i1540 = trunc i64 %280 to i32
  call void @__fscache_write_to_cache(ptr noundef %282, ptr noundef %284, i64 noundef %offset.4.lcssa, i32 noundef %conv.i1540, i64 noundef %call2.i1539, ptr noundef nonnull @ceph_fscache_write_terminated, ptr noundef %1, i1 noundef zeroext true) #13
  br label %ceph_fscache_write_to_cache.exit1542

ceph_fscache_write_to_cache.exit1542:             ; preds = %if.then.i.i1541, %for.end700.ceph_fscache_write_to_cache.exit1542_crit_edge
  %285 = ptrtoint ptr %size_stable to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %size_stable, align 4, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %286)
  %tobool703.not = icmp eq i8 %286, 0
  br i1 %tobool703.not, label %if.else714, label %if.then704

if.then704:                                       ; preds = %ceph_fscache_write_to_cache.exit1542
  call void @__sanitizer_cov_trace_pc() #15
  %287 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %287)
  %288 = load i64, ptr %len, align 8
  %289 = ptrtoint ptr %ceph_wbc to i32
  call void @__asan_load8_noabort(i32 %289)
  %290 = load i64, ptr %ceph_wbc, align 8
  %sub706 = sub i64 %290, %offset.4.lcssa
  %291 = call i64 @llvm.umin.i64(i64 %288, i64 %sub706)
  %292 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %292)
  store i64 %291, ptr %len, align 8
  br label %do.body734

if.else714:                                       ; preds = %ceph_fscache_write_to_cache.exit1542
  call void @__sanitizer_cov_trace_cmp4(i32 %locked_pages.3, i32 %i.1.lcssa)
  %cmp715 = icmp eq i32 %locked_pages.3, %i.1.lcssa
  br i1 %cmp715, label %if.then717, label %if.else714.do.body734_crit_edge

if.else714.do.body734_crit_edge:                  ; preds = %if.else714
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body734

if.then717:                                       ; preds = %if.else714
  %293 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %293)
  %294 = load i64, ptr %len, align 8
  %295 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load volatile i32, ptr %217, align 4
  %and.i.i.i1543 = and i32 %296, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1543)
  %tobool.not.i.i1544 = icmp eq i32 %and.i.i.i1543, 0
  br i1 %tobool.not.i.i1544, label %thp_size.exit1546, label %if.then.i.i1545, !prof !370

if.then.i.i1545:                                  ; preds = %if.then717
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %page.21633, ptr noundef nonnull @.str.39) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 341, 0\0A.popsection", ""() #13, !srcloc !381
  unreachable

thp_size.exit1546:                                ; preds = %if.then717
  %sub721 = add i64 %294, -4095
  %297 = ptrtoint ptr %arrayidx625 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %arrayidx625, align 4
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load volatile i32, ptr %298, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %300)
  %cmp.i.not.i.i.i = icmp eq i32 %300, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i1547, label %PagePrivate.exit.i.i, !prof !368

if.then.i.i.i1547:                                ; preds = %thp_size.exit1546
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %298, ptr noundef nonnull @.str.40) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !380
  unreachable

PagePrivate.exit.i.i:                             ; preds = %thp_size.exit1546
  %301 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load volatile i32, ptr %298, align 4
  %303 = and i32 %302, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %303)
  %tobool.not.i.i1548 = icmp eq i32 %303, 0
  br i1 %tobool.not.i.i1548, label %PagePrivate.exit.i.i.page_snap_context.exit.i_crit_edge, label %if.then.i.i1549

PagePrivate.exit.i.i.page_snap_context.exit.i_crit_edge: ; preds = %PagePrivate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %page_snap_context.exit.i

if.then.i.i1549:                                  ; preds = %PagePrivate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %private.i.i = getelementptr inbounds %struct.page, ptr %298, i32 0, i32 1, i32 0, i32 3
  %304 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %private.i.i, align 4
  %306 = inttoptr i32 %305 to ptr
  br label %page_snap_context.exit.i

page_snap_context.exit.i:                         ; preds = %if.then.i.i1549, %PagePrivate.exit.i.i.page_snap_context.exit.i_crit_edge
  %retval.0.i.i1550 = phi ptr [ %306, %if.then.i.i1549 ], [ null, %PagePrivate.exit.i.i.page_snap_context.exit.i_crit_edge ]
  %call2.i1551 = call fastcc i64 @i_size_read(ptr noundef %1) #13
  %307 = ptrtoint ptr %i_head_snapc.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %i_head_snapc.i, align 4
  %cmp.not.i = icmp eq ptr %retval.0.i.i1550, %308
  br i1 %cmp.not.i, label %page_snap_context.exit.i.if.end40.i_crit_edge, label %if.then.i1552

page_snap_context.exit.i.if.end40.i_crit_edge:    ; preds = %page_snap_context.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.i

if.then.i1552:                                    ; preds = %page_snap_context.exit.i
  call void @_raw_spin_lock(ptr noundef %i_ceph_lock.i) #13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then.i1552
  %.pn.in.i = phi ptr [ %i_cap_snaps.i, %if.then.i1552 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %309 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp4.not.i = icmp eq ptr %.pn.i, %i_cap_snaps.i
  br i1 %cmp4.not.i, label %do.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %context.i = getelementptr i8, ptr %.pn.i, i32 60
  %310 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %context.i, align 8
  %cmp5.i = icmp eq ptr %311, %retval.0.i.i1550
  br i1 %cmp5.i, label %if.then6.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

if.then6.i:                                       ; preds = %for.body.i
  %writing.i = getelementptr i8, ptr %.pn.i, i32 192
  %312 = ptrtoint ptr %writing.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %writing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %313)
  %tobool.not.i1553 = icmp eq i32 %313, 0
  br i1 %tobool.not.i1553, label %if.then7.i, label %if.then6.i.for.end.thread.i_crit_edge

if.then6.i.for.end.thread.i_crit_edge:            ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.thread.i

if.then7.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  %size.i = getelementptr i8, ptr %.pn.i, i32 92
  %314 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %314)
  %315 = load i64, ptr %size.i, align 8
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %if.then7.i, %if.then6.i.for.end.thread.i_crit_edge
  %end.1.ph.i = phi i64 [ %315, %if.then7.i ], [ %call2.i1551, %if.then6.i.for.end.thread.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock.i) #13
  br label %if.end40.i

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock.i) #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 504, i32 noundef 9, ptr noundef null) #13
  br label %if.end40.i

if.end40.i:                                       ; preds = %do.end.i, %for.end.thread.i, %page_snap_context.exit.i.if.end40.i_crit_edge
  %end.2.i = phi i64 [ %call2.i1551, %page_snap_context.exit.i.if.end40.i_crit_edge ], [ %call2.i1551, %do.end.i ], [ %end.1.ph.i, %for.end.thread.i ]
  %index.i.i = getelementptr inbounds %struct.page, ptr %298, i32 0, i32 1, i32 0, i32 2
  %316 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %index.i.i, align 4
  %318 = getelementptr inbounds %struct.page, ptr %298, i32 0, i32 1
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load volatile i32, ptr %318, align 4
  %and.i.i.i.i1554 = and i32 %320, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i1554)
  %tobool.not.i.i.i1555 = icmp eq i32 %and.i.i.i.i1554, 0
  br i1 %tobool.not.i.i.i1555, label %thp_size.exit.i, label %if.then.i.i71.i, !prof !370

if.then.i.i71.i:                                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %298, ptr noundef nonnull @.str.39) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 341, 0\0A.popsection", ""() #13, !srcloc !381
  unreachable

thp_size.exit.i:                                  ; preds = %if.end40.i
  %conv.i.i = zext i32 %317 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %add.i = add nuw nsw i64 %shl.i.i, 4096
  call void @__sanitizer_cov_trace_cmp8(i64 %end.2.i, i64 %add.i)
  %cmp43.i = icmp ugt i64 %end.2.i, %add.i
  br i1 %cmp43.i, label %if.then45.i, label %thp_size.exit.i.get_writepages_data_length.exit_crit_edge

thp_size.exit.i.get_writepages_data_length.exit_crit_edge: ; preds = %thp_size.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_writepages_data_length.exit

if.then45.i:                                      ; preds = %thp_size.exit.i
  %321 = ptrtoint ptr %318 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load volatile i32, ptr %318, align 4
  %and.i.i.i75.i = and i32 %322, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i75.i)
  %tobool.not.i.i76.i = icmp eq i32 %and.i.i.i75.i, 0
  br i1 %tobool.not.i.i76.i, label %if.then45.i.get_writepages_data_length.exit_crit_edge, label %if.then.i.i77.i, !prof !370

if.then45.i.get_writepages_data_length.exit_crit_edge: ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_writepages_data_length.exit

if.then.i.i77.i:                                  ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %298, ptr noundef nonnull @.str.39) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 341, 0\0A.popsection", ""() #13, !srcloc !381
  unreachable

get_writepages_data_length.exit:                  ; preds = %if.then45.i.get_writepages_data_length.exit_crit_edge, %thp_size.exit.i.get_writepages_data_length.exit_crit_edge
  %end.3.i = phi i64 [ %end.2.i, %thp_size.exit.i.get_writepages_data_length.exit_crit_edge ], [ %add.i, %if.then45.i.get_writepages_data_length.exit_crit_edge ]
  %323 = call i64 @llvm.usub.sat.i64(i64 %end.3.i, i64 %offset.4.lcssa) #13
  %324 = call i64 @llvm.umax.i64(i64 %323, i64 %sub721)
  %325 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %325)
  store i64 %324, ptr %len, align 8
  br label %do.body734

do.body734:                                       ; preds = %get_writepages_data_length.exit, %if.else714.do.body734_crit_edge, %if.then704
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_writepages_start.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_writepages_start, %if.then746)) #13
          to label %do.end750 [label %if.then746], !srcloc !374

if.then746:                                       ; preds = %do.body734
  call void @__sanitizer_cov_trace_pc() #15
  %326 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %326)
  %327 = load i64, ptr %len, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_writepages_start.__UNIQUE_ID_ddebug384, ptr noundef nonnull @.str.109, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1072, i64 noundef %offset.4.lcssa, i64 noundef %327) #13
  br label %do.end750

do.end750:                                        ; preds = %if.then746, %do.body734
  %328 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %328)
  %329 = load i64, ptr %len, align 8
  call void @osd_req_op_extent_osd_data_pages(ptr noundef %req.2, i32 noundef %op_idx.0.lcssa, ptr noundef %data_pages.0.lcssa, i64 noundef %329, i32 noundef 0, i1 noundef zeroext %from_pool.5.off0, i1 noundef zeroext false) #13
  %330 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %330)
  %331 = load i64, ptr %len, align 8
  call void @osd_req_op_extent_update(ptr noundef %req.2, i32 noundef %op_idx.0.lcssa, i64 noundef %331) #13
  %add753 = add i32 %op_idx.0.lcssa, 1
  %r_num_ops754 = getelementptr inbounds %struct.ceph_osd_request, ptr %req.2, i32 0, i32 9
  %332 = ptrtoint ptr %r_num_ops754 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %r_num_ops754, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add753, i32 %333)
  %cmp755.not = icmp eq i32 %add753, %333
  br i1 %cmp755.not, label %do.end772, label %do.body764, !prof !370

do.body764:                                       ; preds = %do.end750
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/addr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1078, 0\0A.popsection", ""() #13, !srcloc !391
  unreachable

do.end772:                                        ; preds = %do.end750
  br i1 %cmp650.lcssa, label %do.body776, label %do.body828

do.body776:                                       ; preds = %do.end772
  call void @__sanitizer_cov_trace_cmp4(i32 %num_ops.4, i32 %add753)
  %cmp778.not = icmp ugt i32 %num_ops.4, %add753
  br i1 %cmp778.not, label %do.end795, label %do.body787, !prof !370

do.body787:                                       ; preds = %do.body776
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/addr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1082, 0\0A.popsection", ""() #13, !srcloc !392
  unreachable

do.end795:                                        ; preds = %do.body776
  %sub797 = sub i32 %num_ops.4, %add753
  %sub798 = sub i32 %locked_pages.3, %i.1.lcssa
  %334 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub798, i32 4) #13
  %335 = extractvalue { i32, i1 } %334, 1
  br i1 %335, label %do.end795.if.then801_crit_edge, label %if.end7.i1586, !prof !368

do.end795.if.then801_crit_edge:                   ; preds = %do.end795
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then801

if.end7.i1586:                                    ; preds = %do.end795
  %336 = extractvalue { i32, i1 } %334, 0
  %call8.i1585 = call noalias align 128 ptr @__kmalloc(i32 noundef %336, i32 noundef 3136) #17
  %tobool800.not = icmp eq ptr %call8.i1585, null
  br i1 %tobool800.not, label %if.end7.i1586.if.then801_crit_edge, label %if.end7.i1586.if.end823_crit_edge

if.end7.i1586.if.end823_crit_edge:                ; preds = %if.end7.i1586
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end823

if.end7.i1586.if.then801_crit_edge:               ; preds = %if.end7.i1586
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then801

if.then801:                                       ; preds = %if.end7.i1586.if.then801_crit_edge, %do.end795.if.then801_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ceph_wb_pagevec_pool to i32))
  %337 = load ptr, ptr @ceph_wb_pagevec_pool, align 4
  %call802 = call noalias ptr @mempool_alloc(ptr noundef %337, i32 noundef 3136) #13
  %tobool804.not = icmp eq ptr %call802, null
  br i1 %tobool804.not, label %do.body814, label %if.then801.if.end823_crit_edge, !prof !368

if.then801.if.end823_crit_edge:                   ; preds = %if.then801
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end823

do.body814:                                       ; preds = %if.then801
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/addr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1093, 0\0A.popsection", ""() #13, !srcloc !393
  unreachable

if.end823:                                        ; preds = %if.then801.if.end823_crit_edge, %if.end7.i1586.if.end823_crit_edge
  %from_pool.6 = phi i8 [ 0, %if.end7.i1586.if.end823_crit_edge ], [ 1, %if.then801.if.end823_crit_edge ]
  %pages.6 = phi ptr [ %call8.i1585, %if.end7.i1586.if.end823_crit_edge ], [ %call802, %if.then801.if.end823_crit_edge ]
  %add.ptr824 = getelementptr ptr, ptr %pages.5, i32 %i.1.lcssa
  %mul = shl i32 %sub798, 2
  %338 = call ptr @memcpy(ptr %pages.6, ptr %add.ptr824, i32 %mul)
  %339 = call ptr @memset(ptr %add.ptr824, i32 0, i32 %mul)
  br label %if.end852

do.body828:                                       ; preds = %do.end772
  call void @__sanitizer_cov_trace_cmp4(i32 %num_ops.4, i32 %add753)
  %cmp830.not = icmp eq i32 %num_ops.4, %add753
  br i1 %cmp830.not, label %do.end847, label %do.body839, !prof !370

do.body839:                                       ; preds = %do.body828
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/addr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1100, 0\0A.popsection", ""() #13, !srcloc !394
  unreachable

do.end847:                                        ; preds = %do.body828
  call void @__sanitizer_cov_trace_pc() #15
  %sub848 = add i32 %i.1.lcssa, -1
  %arrayidx849 = getelementptr ptr, ptr %pages.5, i32 %sub848
  %340 = ptrtoint ptr %arrayidx849 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %arrayidx849, align 4
  %index850 = getelementptr inbounds %struct.page, ptr %341, i32 0, i32 1, i32 0, i32 2
  %342 = ptrtoint ptr %index850 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %index850, align 4
  %add851 = add i32 %343, 1
  %344 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %add851, ptr %index, align 4
  br label %if.end852

if.end852:                                        ; preds = %do.end847, %if.end823
  %from_pool.7 = phi i8 [ %from_pool.6, %if.end823 ], [ 0, %do.end847 ]
  %pages.7 = phi ptr [ %pages.6, %if.end823 ], [ null, %do.end847 ]
  %locked_pages.4 = phi i32 [ %sub798, %if.end823 ], [ %locked_pages.3, %do.end847 ]
  %num_ops.5 = phi i32 [ %sub797, %if.end823 ], [ %num_ops.4, %do.end847 ]
  %r_mtime = getelementptr inbounds %struct.ceph_osd_request, ptr %req.2, i32 0, i32 21
  %345 = call ptr @memcpy(ptr %r_mtime, ptr %i_mtime, i32 16)
  %346 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %client, align 8
  %osdc854 = getelementptr inbounds %struct.ceph_client, ptr %347, i32 0, i32 12
  %call855 = call i32 @ceph_osdc_start_request(ptr noundef %osdc854, ptr noundef %req.2, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call855)
  %tobool857.not = icmp eq i32 %call855, 0
  br i1 %tobool857.not, label %do.end873, label %do.body865, !prof !370

do.body865:                                       ; preds = %if.end852
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/addr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1108, 0\0A.popsection", ""() #13, !srcloc !395
  unreachable

do.end873:                                        ; preds = %if.end852
  %348 = ptrtoint ptr %wbc to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %wbc, align 8
  %sub874 = sub i32 %349, %i.1.lcssa
  store i32 %sub874, ptr %wbc, align 8
  %tobool875.not = icmp eq ptr %pages.7, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %from_pool.7)
  %extract.t1344 = icmp ne i8 %from_pool.7, 0
  br i1 %tobool875.not, label %if.end877, label %do.end873.new_request_crit_edge

do.end873.new_request_crit_edge:                  ; preds = %do.end873
  call void @__sanitizer_cov_trace_pc() #15
  br label %new_request

if.end877:                                        ; preds = %do.end873
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub874)
  %cmp879 = icmp slt i32 %sub874, 1
  br i1 %cmp879, label %land.lhs.true881, label %if.end877.do.body887_crit_edge

if.end877.do.body887_crit_edge:                   ; preds = %if.end877
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body887

land.lhs.true881:                                 ; preds = %if.end877
  call void @__sanitizer_cov_trace_pc() #15
  %350 = ptrtoint ptr %sync_mode290 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %sync_mode290, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %351)
  %cmp883 = icmp eq i32 %351, 0
  br label %do.body887

do.body887:                                       ; preds = %land.lhs.true881, %if.end877.do.body887_crit_edge, %for.end.do.body887_crit_edge
  %should_loop.5.off01696 = phi i1 [ %should_loop.5.off01697, %if.end877.do.body887_crit_edge ], [ %should_loop.5.off01697, %land.lhs.true881 ], [ %should_loop.5.off01698, %for.end.do.body887_crit_edge ]
  %done.2.off0 = phi i1 [ false, %if.end877.do.body887_crit_edge ], [ %cmp883, %land.lhs.true881 ], [ false, %for.end.do.body887_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_writepages_start.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_writepages_start, %if.then899)) #13
          to label %do.end914 [label %if.then899], !srcloc !374

if.then899:                                       ; preds = %do.body887
  %352 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %pvec, align 4
  %conv902 = zext i8 %353 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %353)
  %tobool905.not = icmp eq i8 %353, 0
  br i1 %tobool905.not, label %if.then899.cond.end910_crit_edge, label %cond.true906

if.then899.cond.end910_crit_edge:                 ; preds = %if.then899
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end910

cond.true906:                                     ; preds = %if.then899
  call void @__sanitizer_cov_trace_pc() #15
  %354 = ptrtoint ptr %pages907 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %pages907, align 4
  br label %cond.end910

cond.end910:                                      ; preds = %cond.true906, %if.then899.cond.end910_crit_edge
  %cond911 = phi ptr [ %355, %cond.true906 ], [ null, %if.then899.cond.end910_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_writepages_start.__UNIQUE_ID_ddebug385, ptr noundef nonnull @.str.111, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1126, i32 noundef %conv902, ptr noundef %cond911) #13
  br label %do.end914

do.end914:                                        ; preds = %cond.end910, %do.body887
  %356 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %pvec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %357)
  %tobool.not.i1589 = icmp eq i8 %357, 0
  br i1 %tobool.not.i1589, label %do.end914.cleanup915_crit_edge, label %if.then.i1590

do.end914.cleanup915_crit_edge:                   ; preds = %do.end914
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup915

if.then.i1590:                                    ; preds = %do.end914
  call void @__sanitizer_cov_trace_pc() #15
  call void @__pagevec_release(ptr noundef nonnull %pvec) #13
  br label %cleanup915

cleanup915:                                       ; preds = %if.then.i1590, %do.end914.cleanup915_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #13
  br i1 %done.2.off0, label %cleanup915.if.end992_crit_edge, label %cleanup915.land.rhs_crit_edge

cleanup915.land.rhs_crit_edge:                    ; preds = %cleanup915
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

cleanup915.if.end992_crit_edge:                   ; preds = %cleanup915
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end992

while.end:                                        ; preds = %land.rhs
  br i1 %should_loop.3.off02106, label %while.end.do.body935_crit_edge, label %while.end.if.end992_crit_edge

while.end.if.end992_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end992

while.end.do.body935_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body935

do.body935:                                       ; preds = %while.end.do.body935_crit_edge, %cleanup915.thread.do.body935_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_writepages_start.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_writepages_start, %if.then947)) #13
          to label %do.end951 [label %if.then947], !srcloc !374

if.then947:                                       ; preds = %do.body935
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_writepages_start.__UNIQUE_ID_ddebug386, ptr noundef nonnull @.str.113, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1132) #13
  br label %do.end951

do.end951:                                        ; preds = %if.then947, %do.body935
  %sub952 = add i32 %start_index.02120, -1
  %358 = ptrtoint ptr %sync_mode290 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %sync_mode290, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %359)
  %cmp954.not = icmp ne i32 %359, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start_index.02120)
  %cmp957 = icmp eq i32 %start_index.02120, 0
  %or.cond1365 = select i1 %cmp954.not, i1 %cmp957, i1 false
  br i1 %or.cond1365, label %land.lhs.true959, label %do.end951.if.end991_crit_edge

do.end951.if.end991_crit_edge:                    ; preds = %do.end951
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end991

land.lhs.true959:                                 ; preds = %do.end951
  %360 = ptrtoint ptr %head_snapc to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %head_snapc, align 1, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %361)
  %tobool961.not = icmp eq i8 %361, 0
  br i1 %tobool961.not, label %land.rhs969.preheader, label %land.lhs.true959.if.end991_crit_edge

land.lhs.true959.if.end991_crit_edge:             ; preds = %land.lhs.true959
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end991

land.rhs969.preheader:                            ; preds = %land.lhs.true959
  %362 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 0, ptr %index, align 4
  br label %land.rhs969

land.rhs969:                                      ; preds = %pagevec_release.exit1605.land.rhs969_crit_edge, %land.rhs969.preheader
  %call.i1593 = call i32 @pagevec_lookup_range_tag(ptr noundef nonnull %pvec, ptr noundef %mapping, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1593)
  %tobool971.not = icmp eq i32 %call.i1593, 0
  br i1 %tobool971.not, label %land.rhs969.if.end991_crit_edge, label %land.rhs969.for.body977_crit_edge

land.rhs969.for.body977_crit_edge:                ; preds = %land.rhs969
  br label %for.body977

land.rhs969.if.end991_crit_edge:                  ; preds = %land.rhs969
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end991

for.body977:                                      ; preds = %for.inc985.for.body977_crit_edge, %land.rhs969.for.body977_crit_edge
  %i964.02112 = phi i32 [ %inc986, %for.inc985.for.body977_crit_edge ], [ 0, %land.rhs969.for.body977_crit_edge ]
  %arrayidx979 = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %i964.02112
  %363 = ptrtoint ptr %arrayidx979 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %arrayidx979, align 4
  %365 = ptrtoint ptr %364 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load volatile i32, ptr %364, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %366)
  %cmp.i.not.i.i1594 = icmp eq i32 %366, -1
  br i1 %cmp.i.not.i.i1594, label %if.then.i.i1595, label %PagePrivate.exit.i1597, !prof !368

if.then.i.i1595:                                  ; preds = %for.body977
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %364, ptr noundef nonnull @.str.40) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !380
  unreachable

PagePrivate.exit.i1597:                           ; preds = %for.body977
  %367 = ptrtoint ptr %364 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load volatile i32, ptr %364, align 4
  %369 = and i32 %368, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %369)
  %tobool.not.i1596 = icmp eq i32 %369, 0
  br i1 %tobool.not.i1596, label %PagePrivate.exit.i1597.page_snap_context.exit1601_crit_edge, label %if.then.i1599

PagePrivate.exit.i1597.page_snap_context.exit1601_crit_edge: ; preds = %PagePrivate.exit.i1597
  call void @__sanitizer_cov_trace_pc() #15
  br label %page_snap_context.exit1601

if.then.i1599:                                    ; preds = %PagePrivate.exit.i1597
  call void @__sanitizer_cov_trace_pc() #15
  %private.i1598 = getelementptr inbounds %struct.page, ptr %364, i32 0, i32 1, i32 0, i32 3
  %370 = ptrtoint ptr %private.i1598 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %private.i1598, align 4
  %372 = inttoptr i32 %371 to ptr
  br label %page_snap_context.exit1601

page_snap_context.exit1601:                       ; preds = %if.then.i1599, %PagePrivate.exit.i1597.page_snap_context.exit1601_crit_edge
  %retval.0.i1600 = phi ptr [ %372, %if.then.i1599 ], [ null, %PagePrivate.exit.i1597.page_snap_context.exit1601_crit_edge ]
  %cmp981.not = icmp eq ptr %retval.0.i1600, %call392121
  br i1 %cmp981.not, label %if.end984, label %page_snap_context.exit1601.for.inc985_crit_edge

page_snap_context.exit1601.for.inc985_crit_edge:  ; preds = %page_snap_context.exit1601
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc985

if.end984:                                        ; preds = %page_snap_context.exit1601
  call void @__sanitizer_cov_trace_pc() #15
  call void @wait_on_page_writeback(ptr noundef %364) #13
  br label %for.inc985

for.inc985:                                       ; preds = %if.end984, %page_snap_context.exit1601.for.inc985_crit_edge
  %inc986 = add nuw i32 %i964.02112, 1
  %exitcond2435.not = icmp eq i32 %inc986, %call.i1593
  br i1 %exitcond2435.not, label %for.cond974.for.end987_crit_edge, label %for.inc985.for.body977_crit_edge

for.inc985.for.body977_crit_edge:                 ; preds = %for.inc985
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body977

for.cond974.for.end987_crit_edge:                 ; preds = %for.inc985
  %373 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %pvec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %374)
  %tobool.not.i1602 = icmp eq i8 %374, 0
  br i1 %tobool.not.i1602, label %for.cond974.for.end987_crit_edge.pagevec_release.exit1605_crit_edge, label %if.then.i1603

for.cond974.for.end987_crit_edge.pagevec_release.exit1605_crit_edge: ; preds = %for.cond974.for.end987_crit_edge
  call void @__sanitizer_cov_trace_pc() #15
  br label %pagevec_release.exit1605

if.then.i1603:                                    ; preds = %for.cond974.for.end987_crit_edge
  call void @__sanitizer_cov_trace_pc() #15
  call void @__pagevec_release(ptr noundef nonnull %pvec) #13
  br label %pagevec_release.exit1605

pagevec_release.exit1605:                         ; preds = %if.then.i1603, %for.cond974.for.end987_crit_edge.pagevec_release.exit1605_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1153, i32 noundef 0) #13
  %call.i1606 = call i32 @__cond_resched() #13
  %375 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %index, align 4
  %cmp967.not = icmp ugt i32 %376, %sub952
  br i1 %cmp967.not, label %pagevec_release.exit1605.if.end991_crit_edge, label %pagevec_release.exit1605.land.rhs969_crit_edge

pagevec_release.exit1605.land.rhs969_crit_edge:   ; preds = %pagevec_release.exit1605
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs969

pagevec_release.exit1605.if.end991_crit_edge:     ; preds = %pagevec_release.exit1605
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end991

if.end991:                                        ; preds = %pagevec_release.exit1605.if.end991_crit_edge, %land.rhs969.if.end991_crit_edge, %land.lhs.true959.if.end991_crit_edge, %do.end951.if.end991_crit_edge
  %377 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 0, ptr %index, align 4
  %call39 = call fastcc ptr @get_oldest_context(ptr noundef %1, ptr noundef nonnull %ceph_wbc, ptr noundef null)
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.end991.do.body42_crit_edge, label %if.end991.do.body60_crit_edge

if.end991.do.body60_crit_edge:                    ; preds = %if.end991
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body60

if.end991.do.body42_crit_edge:                    ; preds = %if.end991
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body42

if.end992:                                        ; preds = %while.end.if.end992_crit_edge, %cleanup915.if.end992_crit_edge, %cleanup915.thread.if.end992_crit_edge
  %378 = ptrtoint ptr %range_cyclic to i32
  call void @__asan_load2_noabort(i32 %378)
  %bf.load994 = load i16, ptr %range_cyclic, align 4
  %379 = and i16 %bf.load994, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %379)
  %tobool998.not = icmp eq i16 %379, 0
  br i1 %tobool998.not, label %lor.lhs.false999, label %if.end992.if.then1006_crit_edge

if.end992.if.then1006_crit_edge:                  ; preds = %if.end992
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then1006

lor.lhs.false999:                                 ; preds = %if.end992
  br i1 %range_whole.2.off0, label %land.lhs.true1002, label %lor.lhs.false999.out_crit_edge

lor.lhs.false999.out_crit_edge:                   ; preds = %lor.lhs.false999
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true1002:                                ; preds = %lor.lhs.false999
  %380 = ptrtoint ptr %wbc to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %wbc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %381)
  %cmp1004 = icmp sgt i32 %381, 0
  br i1 %cmp1004, label %land.lhs.true1002.if.then1006_crit_edge, label %land.lhs.true1002.out_crit_edge

land.lhs.true1002.out_crit_edge:                  ; preds = %land.lhs.true1002
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true1002.if.then1006_crit_edge:          ; preds = %land.lhs.true1002
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then1006

if.then1006:                                      ; preds = %land.lhs.true1002.if.then1006_crit_edge, %if.end992.if.then1006_crit_edge
  %382 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %index, align 4
  %writeback_index1007 = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 8
  %384 = ptrtoint ptr %writeback_index1007 to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 %383, ptr %writeback_index1007, align 4
  br label %out

out:                                              ; preds = %if.then1006, %land.lhs.true1002.out_crit_edge, %lor.lhs.false999.out_crit_edge, %if.then54, %do.body42
  %last_snapc.1 = phi ptr [ %call392121, %if.then1006 ], [ %call392121, %land.lhs.true1002.out_crit_edge ], [ %call392121, %lor.lhs.false999.out_crit_edge ], [ %last_snapc.0.lcssa, %if.then54 ], [ %last_snapc.0.lcssa, %do.body42 ]
  call void @ceph_osdc_put_request(ptr noundef null) #13
  call void @ceph_put_snap_context(ptr noundef %last_snapc.1) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_writepages_start.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_writepages_start, %if.then1021)) #13
          to label %cleanup1026 [label %if.then1021], !srcloc !374

if.then1021:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_writepages_start.__UNIQUE_ID_ddebug387, ptr noundef nonnull @.str.115, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1168, i32 noundef 0) #13
  br label %cleanup1026

cleanup1026:                                      ; preds = %if.then1021, %out, %mapping_set_error.exit
  %retval.0 = phi i32 [ -5, %mapping_set_error.exit ], [ 0, %if.then1021 ], [ 0, %out ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ceph_wbc) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pvec) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_set_page_dirty(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !370

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, -1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %2, align 4
  %and.i13.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !368

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !370

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i15.i = add i32 %10, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %11, %if.end.i17.i ]
  %12 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.116) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #13, !srcloc !379
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !370

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i22.i = add i32 %10, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %page to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %13, %if.end.i24.i ]
  %14 = inttoptr i32 %retval.0.i25.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %17 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.end29, label %do.body

do.body:                                          ; preds = %PageDirty.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_set_page_dirty.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_set_page_dirty, %if.then6)) #13
          to label %do.body8 [label %if.then6], !srcloc !374

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_set_page_dirty.__UNIQUE_ID_ddebug332, ptr noundef nonnull @.str.126, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 88, ptr noundef %19, ptr noundef %page, i32 noundef %21) #13
  br label %do.body8

do.body8:                                         ; preds = %if.then6, %do.body
  %22 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.i.not.i159 = icmp eq i32 %23, -1
  br i1 %cmp.i.not.i159, label %if.then.i160, label %PagePrivate.exit, !prof !368

if.then.i160:                                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.40) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !380
  unreachable

PagePrivate.exit:                                 ; preds = %do.body8
  %24 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %page, align 4
  %26 = and i32 %25, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool10.not = icmp eq i32 %26, 0
  br i1 %tobool10.not, label %do.body20, label %PagePrivate.exit.cleanup_crit_edge, !prof !368

PagePrivate.exit.cleanup_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body20:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/addr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 89, 0\0A.popsection", ""() #13, !srcloc !396
  unreachable

if.end29:                                         ; preds = %PageDirty.exit
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %i_ceph_lock = getelementptr i8, ptr %28, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #13
  %i_wr_ref = getelementptr i8, ptr %28, i32 -204
  %29 = ptrtoint ptr %i_wr_ref to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_wr_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp = icmp eq i32 %30, 0
  br i1 %cmp, label %do.body40, label %do.end48, !prof !368

do.body40:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/addr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 98, 0\0A.popsection", ""() #13, !srcloc !397
  unreachable

do.end48:                                         ; preds = %if.end29
  %i_cap_snaps.i = getelementptr i8, ptr %28, i32 -404
  %31 = ptrtoint ptr %i_cap_snaps.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %i_cap_snaps.i, align 4
  %cmp.i.not.i171 = icmp eq ptr %32, %i_cap_snaps.i
  br i1 %cmp.i.not.i171, label %do.end48.do.body53_crit_edge, label %__ceph_have_pending_cap_snap.exit

do.end48.do.body53_crit_edge:                     ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body53

__ceph_have_pending_cap_snap.exit:                ; preds = %do.end48
  %prev.i = getelementptr i8, ptr %28, i32 -400
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i, align 4
  %writing.i = getelementptr i8, ptr %34, i32 192
  %35 = ptrtoint ptr %writing.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %writing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool2.i.not = icmp eq i32 %36, 0
  br i1 %tobool2.i.not, label %__ceph_have_pending_cap_snap.exit.do.body53_crit_edge, label %if.then50

__ceph_have_pending_cap_snap.exit.do.body53_crit_edge: ; preds = %__ceph_have_pending_cap_snap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body53

if.then50:                                        ; preds = %__ceph_have_pending_cap_snap.exit
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i, align 4
  %context = getelementptr i8, ptr %38, i32 60
  %39 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %context, align 8
  %call52 = tail call ptr @ceph_get_snap_context(ptr noundef %40) #13
  %dirty_pages = getelementptr i8, ptr %38, i32 196
  %41 = ptrtoint ptr %dirty_pages to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dirty_pages, align 8
  %inc = add i32 %42, 1
  store i32 %inc, ptr %dirty_pages, align 8
  br label %if.end76

do.body53:                                        ; preds = %__ceph_have_pending_cap_snap.exit.do.body53_crit_edge, %do.end48.do.body53_crit_edge
  %i_head_snapc = getelementptr i8, ptr %28, i32 -396
  %43 = ptrtoint ptr %i_head_snapc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_head_snapc, align 4
  %tobool54.not = icmp eq ptr %44, null
  br i1 %tobool54.not, label %do.body64, label %do.end72, !prof !368

do.body64:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/addr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #13, !srcloc !398
  unreachable

do.end72:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #15
  %call74 = tail call ptr @ceph_get_snap_context(ptr noundef nonnull %44) #13
  %i_wrbuffer_ref_head = getelementptr i8, ptr %28, i32 -188
  %45 = ptrtoint ptr %i_wrbuffer_ref_head to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i_wrbuffer_ref_head, align 4
  %inc75 = add i32 %46, 1
  store i32 %inc75, ptr %i_wrbuffer_ref_head, align 4
  br label %if.end76

if.end76:                                         ; preds = %do.end72, %if.then50
  %snapc.0 = phi ptr [ %call52, %if.then50 ], [ %call74, %do.end72 ]
  %i_wrbuffer_ref = getelementptr i8, ptr %28, i32 -192
  %47 = ptrtoint ptr %i_wrbuffer_ref to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_wrbuffer_ref, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp77 = icmp eq i32 %48, 0
  br i1 %cmp77, label %if.then78, label %if.end76.if.end79_crit_edge

if.end76.if.end79_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then78:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ihold(ptr noundef %28) #13
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end76.if.end79_crit_edge
  %49 = ptrtoint ptr %i_wrbuffer_ref to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %i_wrbuffer_ref, align 8
  %inc81 = add i32 %50, 1
  store i32 %inc81, ptr %i_wrbuffer_ref, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_set_page_dirty.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_set_page_dirty, %if.then94)) #13
          to label %do.end105 [label %if.then94], !srcloc !374

if.then94:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %index97 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %53 = ptrtoint ptr %index97 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %index97, align 4
  %55 = ptrtoint ptr %i_wrbuffer_ref to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i_wrbuffer_ref, align 8
  %sub = add i32 %56, -1
  %i_wrbuffer_ref_head99 = getelementptr i8, ptr %28, i32 -188
  %57 = ptrtoint ptr %i_wrbuffer_ref_head99 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %i_wrbuffer_ref_head99, align 4
  %sub100 = add i32 %58, -1
  %seq = getelementptr inbounds %struct.ceph_snap_context, ptr %snapc.0, i32 0, i32 1
  %59 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %seq, align 8
  %num_snaps = getelementptr inbounds %struct.ceph_snap_context, ptr %snapc.0, i32 0, i32 2
  %61 = ptrtoint ptr %num_snaps to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_snaps, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_set_page_dirty.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.128, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 119, ptr noundef %52, ptr noundef %page, i32 noundef %54, i32 noundef %sub, i32 noundef %sub100, i32 noundef %56, i32 noundef %58, ptr noundef %snapc.0, i64 noundef %60, i32 noundef %62) #13
  br label %do.end105

do.end105:                                        ; preds = %if.then94, %if.end79
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #13
  %63 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp.i.not.i166 = icmp eq i32 %64, -1
  br i1 %cmp.i.not.i166, label %if.then.i167, label %PagePrivate.exit170, !prof !368

if.then.i167:                                     ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.40) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !380
  unreachable

PagePrivate.exit170:                              ; preds = %do.end105
  %65 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %page, align 4
  %67 = and i32 %66, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool109.not = icmp eq i32 %67, 0
  br i1 %tobool109.not, label %do.end125, label %do.body117, !prof !370

do.body117:                                       ; preds = %PagePrivate.exit170
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/addr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #13, !srcloc !399
  unreachable

do.end125:                                        ; preds = %PagePrivate.exit170
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @attach_page_private(ptr noundef %page, ptr noundef %snapc.0)
  %68 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mapping1, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %fscache.i.i = getelementptr i8, ptr %71, i32 -8
  %72 = ptrtoint ptr %fscache.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fscache.i.i, align 8
  %call2.i = tail call i32 @fscache_set_page_dirty(ptr noundef %page, ptr noundef %73) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end125, %PagePrivate.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %do.end125 ], [ 0, %PagePrivate.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_readahead(ptr noundef %ractl) #0 align 64 {
entry:
  %got = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ractl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ractl, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %got) #13
  %6 = ptrtoint ptr %got to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %got, align 4
  %i_inline_version = getelementptr i8, ptr %3, i32 -880
  %7 = ptrtoint ptr %i_inline_version to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_inline_version, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %8)
  %cmp.not = icmp eq i64 %8, -1
  br i1 %cmp.not, label %if.end, label %entry.cleanup40_crit_edge

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup40

if.end:                                           ; preds = %entry
  %rw_contexts_lock.i = getelementptr inbounds %struct.ceph_file_info, ptr %5, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %rw_contexts_lock.i) #13
  %rw_contexts.i = getelementptr inbounds %struct.ceph_file_info, ptr %5, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %ctx.0.in.i = phi ptr [ %rw_contexts.i, %if.end ], [ %ctx.0.i, %for.body.i.for.cond.i_crit_edge ]
  %9 = ptrtoint ptr %ctx.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %ctx.0.i = load ptr, ptr %ctx.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %ctx.0.i, %rw_contexts.i
  br i1 %cmp.not.i, label %ceph_find_rw_context.exit.thread, label %for.body.i

ceph_find_rw_context.exit.thread:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %rw_contexts_lock.i) #13
  br label %if.then4

for.body.i:                                       ; preds = %for.cond.i
  %thread.i = getelementptr inbounds %struct.ceph_rw_context, ptr %ctx.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %thread.i, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !358) #13
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %cmp2.i = icmp eq ptr %11, %15
  br i1 %cmp2.i, label %ceph_find_rw_context.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

ceph_find_rw_context.exit:                        ; preds = %for.body.i
  tail call void @_raw_spin_unlock(ptr noundef %rw_contexts_lock.i) #13
  %tobool.not = icmp eq ptr %ctx.0.i, null
  br i1 %tobool.not, label %ceph_find_rw_context.exit.if.then4_crit_edge, label %ceph_find_rw_context.exit.if.end39_crit_edge

ceph_find_rw_context.exit.if.end39_crit_edge:     ; preds = %ceph_find_rw_context.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

ceph_find_rw_context.exit.if.then4_crit_edge:     ; preds = %ceph_find_rw_context.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

if.then4:                                         ; preds = %ceph_find_rw_context.exit.if.then4_crit_edge, %ceph_find_rw_context.exit.thread
  %call5 = call i32 @ceph_try_get_caps(ptr noundef %3, i32 noundef 2048, i32 noundef 1024, i1 noundef zeroext true, ptr noundef nonnull %got) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.body, label %if.else

do.body:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readahead.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readahead, %if.end35.thread)) #13
          to label %if.end35 [label %if.end35.thread], !srcloc !374

if.end35.thread:                                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readahead.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.131, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 372, ptr noundef %3) #13
  br label %cleanup40

if.else:                                          ; preds = %if.then4
  %16 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %got, align 4
  %and = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %do.body17, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.body17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readahead.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readahead, %if.then29)) #13
          to label %if.end35 [label %if.then29], !srcloc !374

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readahead.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.133, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 374, ptr noundef %3) #13
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %do.body17, %if.else.if.end35_crit_edge, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp36 = icmp slt i32 %call5, 1
  br i1 %cmp36, label %if.end35.cleanup40_crit_edge, label %if.end35.if.end39_crit_edge

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.end35.cleanup40_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup40

if.end39:                                         ; preds = %if.end35.if.end39_crit_edge, %ceph_find_rw_context.exit.if.end39_crit_edge
  %18 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %got, align 4
  %20 = inttoptr i32 %19 to ptr
  call void @netfs_readahead(ptr noundef %ractl, ptr noundef nonnull @ceph_netfs_read_ops, ptr noundef %20) #13
  br label %cleanup40

cleanup40:                                        ; preds = %if.end39, %if.end35.cleanup40_crit_edge, %if.end35.thread, %entry.cleanup40_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %got) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_write_begin(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %aop_flags, ptr nocapture noundef writeonly %pagep, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  %folio = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %folio) #13
  %2 = ptrtoint ptr %folio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %folio, align 4
  %3 = lshr i64 %pos, 12
  %conv = trunc i64 %3 to i32
  %i_inline_version = getelementptr i8, ptr %1, i32 -880
  %4 = ptrtoint ptr %i_inline_version to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_inline_version, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %5)
  %cmp.not = icmp eq i64 %5, -1
  br i1 %cmp.not, label %out, label %if.then

if.then:                                          ; preds = %entry
  %and = and i32 %aop_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 526, i32 542
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 3
  %6 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gfp_mask.i, align 4
  %call5 = tail call ptr @__filemap_get_folio(ptr noundef %mapping, i32 noundef %conv, i32 noundef %spec.select, i32 noundef %7) #13
  %8 = ptrtoint ptr %folio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %folio, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then.cleanup126_crit_edge, label %if.end8

if.then.cleanup126_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup126

if.end8:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp9 = icmp eq i32 %conv, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end8.if.end55_crit_edge

if.end8.if.end55_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

land.lhs.true:                                    ; preds = %if.end8
  %9 = ptrtoint ptr %i_inline_version to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_inline_version, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %10)
  %cmp12.not = icmp eq i64 %10, 1
  br i1 %cmp12.not, label %land.lhs.true.if.end55_crit_edge, label %if.then14

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then14:                                        ; preds = %land.lhs.true
  %11 = getelementptr inbounds %struct.page, ptr %call5, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i.i151 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i151)
  %tobool.not.i.i152 = icmp eq i32 %and.i.i.i151, 0
  br i1 %tobool.not.i.i152, label %folio_flags.exit.i, label %if.then.i.i153, !prof !370

if.then.i.i153:                                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef nonnull %call5, ptr noundef nonnull @.str.39) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_flags.exit.i:                               ; preds = %if.then14
  %14 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %call5, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i154.not = icmp eq i32 %16, 0
  br i1 %tobool.i154.not, label %land.end, label %folio_test_uptodate.exit.thread

folio_test_uptodate.exit.thread:                  ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !400
  br label %if.end62.thread

land.end:                                         ; preds = %folio_flags.exit.i
  %.b147 = load i1, ptr @ceph_write_begin.__already_done, align 1
  br i1 %.b147, label %land.end.if.then65_crit_edge, label %if.then23, !prof !370

land.end.if.then65_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then65

if.then23:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ceph_write_begin.__already_done, align 1
  %17 = ptrtoint ptr %i_inline_version to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %i_inline_version, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1303, i32 noundef 9, ptr noundef nonnull @.str.134, i64 noundef %18) #13
  br label %if.then65

if.end55:                                         ; preds = %land.lhs.true.if.end55_crit_edge, %if.end8.if.end55_crit_edge
  %19 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %call5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i.not.i.i.i.i = icmp eq i32 %20, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !368

if.then.i.i.i.i:                                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef nonnull %call5, ptr noundef nonnull @.str.40) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #13, !srcloc !371
  unreachable

PageHead.exit.i.i.i:                              ; preds = %if.end55
  %21 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %call5, align 4
  %23 = and i32 %22, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %folio_size.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %24 = getelementptr %struct.page, ptr %call5, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.99, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %26 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.end.i.i.i ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i.i
  tail call void @zero_user_segments(ptr noundef nonnull %call5, i32 noundef 0, i32 noundef %shl.i, i32 noundef 0, i32 noundef 0) #13
  %27 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %folio, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !373
  %29 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_mark_uptodate.exit, label %if.then.i.i, !prof !370

if.then.i.i:                                      ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %28, ptr noundef nonnull @.str.39) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_mark_uptodate.exit:                         ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 2, ptr noundef %28) #13
  br label %if.end62.thread

out:                                              ; preds = %entry
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_mapping, align 8
  %call58 = call i32 @netfs_write_begin(ptr noundef %file, ptr noundef %33, i64 noundef %pos, i32 noundef %len, i32 noundef 0, ptr noundef nonnull %folio, ptr noundef null, ptr noundef nonnull @ceph_netfs_read_ops, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %out.if.end62.thread_crit_edge, label %if.end62

out.if.end62.thread_crit_edge:                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62.thread

if.end62.thread:                                  ; preds = %out.if.end62.thread_crit_edge, %folio_mark_uptodate.exit, %folio_test_uptodate.exit.thread
  %34 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %folio, align 4
  call void @folio_wait_private_2(ptr noundef %35) #13
  br label %if.else

if.end62:                                         ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp63 = icmp slt i32 %call58, 0
  br i1 %cmp63, label %if.end62.if.then65_crit_edge, label %if.end62.if.else_crit_edge

if.end62.if.else_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end62.if.then65_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then65

if.then65:                                        ; preds = %if.end62.if.then65_crit_edge, %if.then23, %land.end.if.then65_crit_edge
  %r.2166170 = phi i32 [ %call58, %if.end62.if.then65_crit_edge ], [ -22, %if.then23 ], [ -22, %land.end.if.then65_crit_edge ]
  %36 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %folio, align 4
  %tobool66.not = icmp eq ptr %37, null
  br i1 %tobool66.not, label %if.then65.cleanup126_crit_edge, label %if.then67

if.then65.cleanup126_crit_edge:                   ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup126

if.then67:                                        ; preds = %if.then65
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  %38 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i.i.i = icmp eq i32 %39, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !368

if.then.i.i.i:                                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef nonnull %37, ptr noundef nonnull @.str.49) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !401
  unreachable

do.end5.i.i.i:                                    ; preds = %if.then67
  %call.i.i.i10.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !402
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #13
  %40 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #13, !srcloc !403
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %40, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !404
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ceph_write_begin, %if.then.i.i.i.i155)) #13
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i155], !srcloc !374

if.then.i.i.i.i155:                               ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef nonnull %37, i32 noundef -1, i32 noundef %conv.i.i.i.i) #13
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i155, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i, label %folio_put_testzero.exit.i.cleanup126_crit_edge

folio_put_testzero.exit.i.cleanup126_crit_edge:   ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup126

if.then.i:                                        ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__put_page(ptr noundef nonnull %37) #13
  br label %cleanup126

if.else:                                          ; preds = %if.end62.if.else_crit_edge, %if.end62.thread
  %r.2160 = phi i32 [ 0, %if.end62.thread ], [ %call58, %if.end62.if.else_crit_edge ]
  %41 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %folio, align 4
  %43 = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %and.i.i.i148 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i148)
  %tobool.not.i.i149 = icmp eq i32 %and.i.i.i148, 0
  br i1 %tobool.not.i.i149, label %folio_test_locked.exit, label %if.then.i.i150, !prof !370

if.then.i.i150:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %42, ptr noundef nonnull @.str.39) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_test_locked.exit:                           ; preds = %if.else
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %42, align 4
  %and1.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.rhs79, label %folio_test_locked.exit.if.end117_crit_edge

folio_test_locked.exit.if.end117_crit_edge:       ; preds = %folio_test_locked.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end117

land.rhs79:                                       ; preds = %folio_test_locked.exit
  %.b145146 = load i1, ptr @ceph_write_begin.__already_done.135, align 1
  br i1 %.b145146, label %land.rhs79.if.end117_crit_edge, label %if.then90, !prof !370

land.rhs79.if.end117_crit_edge:                   ; preds = %land.rhs79
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end117

if.then90:                                        ; preds = %land.rhs79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ceph_write_begin.__already_done.135, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1322, i32 noundef 9, ptr noundef null) #13
  br label %if.end117

if.end117:                                        ; preds = %if.then90, %land.rhs79.if.end117_crit_edge, %folio_test_locked.exit.if.end117_crit_edge
  %48 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %folio, align 4
  %50 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %pagep, align 4
  br label %cleanup126

cleanup126:                                       ; preds = %if.end117, %if.then.i, %folio_put_testzero.exit.i.cleanup126_crit_edge, %if.then65.cleanup126_crit_edge, %if.then.cleanup126_crit_edge
  %retval.1 = phi i32 [ %r.2166170, %if.then65.cleanup126_crit_edge ], [ %r.2160, %if.end117 ], [ -12, %if.then.cleanup126_crit_edge ], [ %r.2166170, %folio_put_testzero.exit.i.cleanup126_crit_edge ], [ %r.2166170, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %folio) #13
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_write_end(ptr noundef %file, ptr nocapture noundef readnone %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %subpage, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %subpage, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !370

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %subpage to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i44 = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i44 to ptr
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %5 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_inode.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_write_end.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_write_end, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !374

if.then:                                          ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #15
  %conv = trunc i64 %pos to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_write_end.__UNIQUE_ID_ddebug391, ptr noundef nonnull @.str.138, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1341, ptr noundef %file, ptr noundef %6, ptr noundef %4, i32 noundef %conv, i32 noundef %copied, i32 noundef %len) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %_compound_head.exit
  %7 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i.i45 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i45)
  %tobool.not.i.i46 = icmp eq i32 %and.i.i.i45, 0
  br i1 %tobool.not.i.i46, label %folio_flags.exit.i, label %if.then.i.i47, !prof !370

if.then.i.i47:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.39) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_flags.exit.i:                               ; preds = %do.end
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %4, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %if.then7, label %folio_test_uptodate.exit.thread

folio_test_uptodate.exit.thread:                  ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !400
  br label %if.end11

if.then7:                                         ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %copied, i32 %len)
  %cmp = icmp ult i32 %copied, %len
  br i1 %cmp, label %if.then7.out_crit_edge, label %if.end10

if.then7.out_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end10:                                         ; preds = %if.then7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !373
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %7, align 4
  %and.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_mark_uptodate.exit, label %if.then.i.i, !prof !370

if.then.i.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.39) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_mark_uptodate.exit:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 2, ptr noundef %4) #13
  br label %if.end11

if.end11:                                         ; preds = %folio_mark_uptodate.exit, %folio_test_uptodate.exit.thread
  %conv12 = zext i32 %copied to i64
  %add = add i64 %conv12, %pos
  %call13 = tail call fastcc i64 @i_size_read(ptr noundef %6)
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call13)
  %cmp14 = icmp sgt i64 %add, %call13
  br i1 %cmp14, label %if.then16, label %if.end11.if.end21_crit_edge

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %call19 = tail call zeroext i1 @ceph_inode_set_size(ptr noundef %6, i64 noundef %add) #13
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end11.if.end21_crit_edge
  %check_cap.0.off0 = phi i1 [ %call19, %if.then16 ], [ false, %if.end11.if.end21_crit_edge ]
  %call22 = tail call zeroext i1 @folio_mark_dirty(ptr noundef %4) #13
  br label %out

out:                                              ; preds = %if.end21, %if.then7.out_crit_edge
  %check_cap.1.off0 = phi i1 [ %check_cap.0.off0, %if.end21 ], [ false, %if.then7.out_crit_edge ]
  %copied.addr.0 = phi i32 [ %copied, %if.end21 ], [ 0, %if.then7.out_crit_edge ]
  tail call void @folio_unlock(ptr noundef %4) #13
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  %15 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !368

if.then.i.i.i:                                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.49) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !401
  unreachable

do.end5.i.i.i:                                    ; preds = %out
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !402
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #13
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #13, !srcloc !403
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !404
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ceph_write_end, %if.then.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !374

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #13
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i49, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %folio_put.exit

if.then.i49:                                      ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__put_page(ptr noundef %4) #13
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i49, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  br i1 %check_cap.1.off0, label %if.then24, label %folio_put.exit.if.end26_crit_edge

folio_put.exit.if.end26_crit_edge:                ; preds = %folio_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then24:                                        ; preds = %folio_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %6, i32 -952
  tail call void @ceph_check_caps(ptr noundef %add.ptr.i, i32 noundef 1, ptr noundef null) #13
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %folio_put.exit.if.end26_crit_edge
  ret i32 %copied.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_invalidatepage(ptr noundef %page, i32 noundef %offset, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -952
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp.not = icmp eq i32 %offset, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i88 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i88, label %thp_size.exit, label %if.then.i.i89, !prof !370

if.then.i.i89:                                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.39) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 341, 0\0A.popsection", ""() #13, !srcloc !381
  unreachable

thp_size.exit:                                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %length)
  %cmp2.not = icmp eq i32 %length, 4096
  br i1 %cmp2.not, label %if.end8, label %thp_size.exit.do.body_crit_edge

thp_size.exit.do.body_crit_edge:                  ; preds = %thp_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %thp_size.exit.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_invalidatepage.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_invalidatepage, %if.then6)) #13
          to label %cleanup [label %if.then6], !srcloc !374

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_invalidatepage.__UNIQUE_ID_ddebug334, ptr noundef nonnull @.str.141, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 149, ptr noundef %3, ptr noundef %page, i32 noundef %8, i32 noundef %offset, i32 noundef %length) #13
  br label %cleanup

if.end8:                                          ; preds = %thp_size.exit
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !370

if.then.i.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i = icmp eq i32 %14, -1
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %4, align 4
  %and.i16.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !368

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !370

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i18.i = add i32 %16, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %17, %if.end.i20.i ]
  %18 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.116) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #13, !srcloc !405
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !370

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i25.i = add i32 %16, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %19, %if.end.i27.i ]
  %20 = inttoptr i32 %retval.0.i28.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and1.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool10.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool10.not, label %do.end28, label %PageLocked.exit.if.end34_crit_edge, !prof !368

PageLocked.exit.if.end34_crit_edge:               ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

do.end28:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 153, i32 noundef 9, ptr noundef null) #13
  br label %if.end34

if.end34:                                         ; preds = %do.end28, %PageLocked.exit.if.end34_crit_edge
  %23 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.not.i82 = icmp eq i32 %24, -1
  br i1 %cmp.i.not.i82, label %if.then.i83, label %PagePrivate.exit, !prof !368

if.then.i83:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.40) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !380
  unreachable

PagePrivate.exit:                                 ; preds = %if.end34
  %25 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %page, align 4
  %27 = and i32 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool43.not = icmp eq i32 %27, 0
  br i1 %tobool43.not, label %PagePrivate.exit.if.end64_crit_edge, label %do.body45

PagePrivate.exit.if.end64_crit_edge:              ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

do.body45:                                        ; preds = %PagePrivate.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_invalidatepage.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_invalidatepage, %if.then57)) #13
          to label %do.end62 [label %if.then57], !srcloc !374

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #15
  %index59 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %28 = ptrtoint ptr %index59 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index59, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_invalidatepage.__UNIQUE_ID_ddebug335, ptr noundef nonnull @.str.143, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 156, ptr noundef %3, ptr noundef %page, i32 noundef %29) #13
  br label %do.end62

do.end62:                                         ; preds = %if.then57, %do.body45
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %4, align 4
  %and.i.i90 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i90)
  %tobool.not.i.i91 = icmp eq i32 %and.i.i90, 0
  br i1 %tobool.not.i.i91, label %if.end.i.i94, label %if.then.i.i93, !prof !370

if.then.i.i93:                                    ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i92 = add i32 %31, -1
  br label %detach_page_private.exit

if.end.i.i94:                                     ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %page to i32
  br label %detach_page_private.exit

detach_page_private.exit:                         ; preds = %if.end.i.i94, %if.then.i.i93
  %retval.0.i.i95 = phi i32 [ %sub.i.i92, %if.then.i.i93 ], [ %32, %if.end.i.i94 ]
  %33 = inttoptr i32 %retval.0.i.i95 to ptr
  %call1.i = tail call fastcc ptr @folio_detach_private(ptr noundef %33) #13
  tail call void @ceph_put_wrbuffer_cap_refs(ptr noundef %add.ptr.i, i32 noundef 1, ptr noundef %call1.i) #13
  tail call void @ceph_put_snap_context(ptr noundef %call1.i) #13
  br label %if.end64

if.end64:                                         ; preds = %detach_page_private.exit, %PagePrivate.exit.if.end64_crit_edge
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %4, align 4
  %and.i.i97 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i97)
  %tobool.not.i.i98 = icmp eq i32 %and.i.i97, 0
  br i1 %tobool.not.i.i98, label %if.end.i.i101, label %if.then.i.i100, !prof !370

if.then.i.i100:                                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i99 = add i32 %35, -1
  br label %wait_on_page_fscache.exit

if.end.i.i101:                                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %page to i32
  br label %wait_on_page_fscache.exit

wait_on_page_fscache.exit:                        ; preds = %if.end.i.i101, %if.then.i.i100
  %retval.0.i.i102 = phi i32 [ %sub.i.i99, %if.then.i.i100 ], [ %36, %if.end.i.i101 ]
  %37 = inttoptr i32 %retval.0.i.i102 to ptr
  tail call void @folio_wait_private_2(ptr noundef %37) #13
  br label %cleanup

cleanup:                                          ; preds = %wait_on_page_fscache.exit, %if.then6, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_releasepage(ptr noundef %page, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_releasepage.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_releasepage, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !374

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -952
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr.i, align 8
  %snap = getelementptr i8, ptr %3, i32 -944
  %6 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %snap, align 8
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %10 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !370

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %12, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %13, %if.end.i.i ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.i.not.i = icmp eq i32 %16, -1
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %10, align 4
  %and.i13.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !368

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !370

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i15.i = add i32 %18, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %19, %if.end.i17.i ]
  %20 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %20, ptr noundef nonnull @.str.116) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #13, !srcloc !379
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !370

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i22.i = add i32 %18, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %page to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %21, %if.end.i24.i ]
  %22 = inttoptr i32 %retval.0.i25.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %25 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool8.not = icmp eq i32 %25, 0
  %cond = select i1 %tobool8.not, ptr @.str.148, ptr @.str.147
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_releasepage.__UNIQUE_ID_ddebug336, ptr noundef nonnull @.str.146, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 172, i64 noundef %5, i64 noundef %7, ptr noundef %page, i32 noundef %9, ptr noundef nonnull %cond) #13
  br label %do.end

do.end:                                           ; preds = %PageDirty.exit, %entry
  %26 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp.i.not.i30 = icmp eq i32 %27, -1
  br i1 %cmp.i.not.i30, label %if.then.i31, label %PagePrivate.exit, !prof !368

if.then.i31:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.40) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !380
  unreachable

PagePrivate.exit:                                 ; preds = %do.end
  %28 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %page, align 4
  %30 = and i32 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool10.not = icmp eq i32 %30, 0
  br i1 %tobool10.not, label %if.end12, label %PagePrivate.exit.cleanup_crit_edge

PagePrivate.exit.cleanup_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %PagePrivate.exit
  %31 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.i.not.i34 = icmp eq i32 %32, -1
  br i1 %cmp.i.not.i34, label %if.then.i35, label %PagePrivate2.exit, !prof !368

if.then.i35:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.40) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 453, 0\0A.popsection", ""() #13, !srcloc !383
  unreachable

PagePrivate2.exit:                                ; preds = %if.end12
  %33 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %page, align 4
  %35 = and i32 %34, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool14.not = icmp eq i32 %35, 0
  br i1 %tobool14.not, label %PagePrivate2.exit.if.end21_crit_edge, label %if.then15

PagePrivate2.exit.if.end21_crit_edge:             ; preds = %PagePrivate2.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then15:                                        ; preds = %PagePrivate2.exit
  %36 = tail call i32 @llvm.read_register.i32(metadata !358) #13
  %and.i.i39 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i39 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %41, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not = icmp ne i32 %and.i, 0
  %and = and i32 %gfp, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool18.not, %tobool17.not
  br i1 %or.cond, label %if.then15.cleanup_crit_edge, label %if.end20

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end20:                                         ; preds = %if.then15
  %42 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %and.i.i40 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i40)
  %tobool.not.i.i41 = icmp eq i32 %and.i.i40, 0
  br i1 %tobool.not.i.i41, label %if.end.i.i44, label %if.then.i.i43, !prof !370

if.then.i.i43:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i42 = add i32 %44, -1
  br label %wait_on_page_fscache.exit

if.end.i.i44:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %page to i32
  br label %wait_on_page_fscache.exit

wait_on_page_fscache.exit:                        ; preds = %if.end.i.i44, %if.then.i.i43
  %retval.0.i.i45 = phi i32 [ %sub.i.i42, %if.then.i.i43 ], [ %45, %if.end.i.i44 ]
  %46 = inttoptr i32 %retval.0.i.i45 to ptr
  tail call void @folio_wait_private_2(ptr noundef %46) #13
  br label %if.end21

if.end21:                                         ; preds = %wait_on_page_fscache.exit, %PagePrivate2.exit.if.end21_crit_edge
  %fscache.i.i = getelementptr i8, ptr %3, i32 -8
  %47 = ptrtoint ptr %fscache.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fscache.i.i, align 8
  %tobool.not.i.i47 = icmp eq ptr %48, null
  br i1 %tobool.not.i.i47, label %if.end21.cleanup_crit_edge, label %land.lhs.true.i.i

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %if.end21
  %flags.i.i = getelementptr inbounds %struct.fscache_cookie, ptr %48, i32 0, i32 14
  %49 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %flags.i.i, align 4
  %51 = and i32 %50, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool1.not.i.i = icmp eq i32 %51, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.cleanup_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %52 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flags.i.i, align 4
  %54 = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool5.not.i.i = icmp eq i32 %54, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true2.i.i.cleanup_crit_edge, label %if.then.i.i48

land.lhs.true2.i.i.cleanup_crit_edge:             ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i.i48:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i48, %land.lhs.true2.i.i.cleanup_crit_edge, %land.lhs.true.i.i.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %PagePrivate.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %PagePrivate.exit.cleanup_crit_edge ], [ 0, %if.then15.cleanup_crit_edge ], [ 1, %if.end21.cleanup_crit_edge ], [ 1, %land.lhs.true.i.i.cleanup_crit_edge ], [ 1, %land.lhs.true2.i.i.cleanup_crit_edge ], [ 1, %if.then.i.i48 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @noop_direct_IO(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_fill_inline_data(ptr noundef %inode, ptr noundef %locked_page, ptr nocapture noundef readonly %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %tobool.not = icmp eq ptr %locked_page, null
  br i1 %tobool.not, label %if.else, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.else:                                          ; preds = %entry
  %call = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.else
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gfp_mask.i.i, align 4
  %and.i = and i32 %3, -129
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %1, i32 noundef 0, i32 noundef 7, i32 noundef %and.i) #13
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !370

if.then.i.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i63 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i63)
  %tobool.not.i.i.i64 = icmp eq i32 %and.i.i.i.i63, 0
  br i1 %tobool.not.i.i.i64, label %folio_flags.exit.i.i, label %if.then.i.i.i65, !prof !370

if.then.i.i.i65:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.39) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %8, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i.do.body_crit_edge, label %PageUptodate.exit

folio_flags.exit.i.i.do.body_crit_edge:           ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @unlock_page(ptr noundef nonnull %call.i) #13
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %4, align 4
  %and.i.i66 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i66)
  %tobool.not.i.i67 = icmp eq i32 %and.i.i66, 0
  br i1 %tobool.not.i.i67, label %if.end.i.i70, label %if.then.i.i69, !prof !370

if.then.i.i69:                                    ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i68 = add i32 %16, -1
  br label %_compound_head.exit.i72

if.end.i.i70:                                     ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i72

_compound_head.exit.i72:                          ; preds = %if.end.i.i70, %if.then.i.i69
  %retval.0.i.i71 = phi i32 [ %sub.i.i68, %if.then.i.i69 ], [ %17, %if.end.i.i70 ]
  %18 = inttoptr i32 %retval.0.i.i71 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  %19 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i.i.i = icmp eq i32 %20, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !368

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i72
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.49) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !401
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i72
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !402
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #13, !srcloc !403
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !404
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ceph_fill_inline_data, %if.then.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !374

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %18, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

do.body:                                          ; preds = %folio_flags.exit.i.i.do.body_crit_edge, %entry.do.body_crit_edge
  %page.0 = phi ptr [ %locked_page, %entry.do.body_crit_edge ], [ %call.i, %folio_flags.exit.i.i.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_inline_data.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_inline_data, %if.then16)) #13
          to label %do.end [label %if.then16], !srcloc !374

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %add.ptr.i, align 8
  %snap = getelementptr i8, ptr %inode, i32 -944
  %24 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %snap, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_inline_data.__UNIQUE_ID_ddebug399, ptr noundef nonnull @.str.4, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1628, ptr noundef %inode, i64 noundef %23, i64 noundef %25, i32 noundef %len, ptr noundef %locked_page) #13
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp22.not = icmp eq i32 %len, 0
  br i1 %cmp22.not, label %if.end31.thread, label %if.end31

if.end31:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %26 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %26, 512
  %27 = tail call i32 @llvm.read_register.i32(metadata !358) #13
  %and.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !406
  %31 = tail call i32 @llvm.read_register.i32(metadata !358) #13
  %and.i.i.i1.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 213
  %35 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %36, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !407
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %page.0, i32 noundef %or.i) #13
  %37 = call ptr @memcpy(ptr %call.i.i, ptr %data, i32 %len)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !408
  %38 = tail call i32 @llvm.read_register.i32(metadata !358) #13
  %and.i.i.i1.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 213
  %42 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %43, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !409
  %44 = tail call i32 @llvm.read_register.i32(metadata !358) #13
  %and.i.i.i.i74 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i74 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i75 = add i32 %47, -1
  store volatile i32 %sub.i.i75, ptr %preempt_count.i.i.i, align 4
  %cmp32.not = icmp eq ptr %page.0, %locked_page
  br i1 %cmp32.not, label %if.end31.cleanup_crit_edge, label %if.then33

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end31.thread:                                  ; preds = %do.end
  %cmp32.not99 = icmp eq ptr %page.0, %locked_page
  br i1 %cmp32.not99, label %if.end31.thread.cleanup_crit_edge, label %if.end31.thread.if.then35_crit_edge

if.end31.thread.if.then35_crit_edge:              ; preds = %if.end31.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then35

if.end31.thread.cleanup_crit_edge:                ; preds = %if.end31.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %cmp34 = icmp ult i32 %len, 4096
  br i1 %cmp34, label %if.then33.if.then35_crit_edge, label %if.else36

if.then33.if.then35_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then35

if.then35:                                        ; preds = %if.then33.if.then35_crit_edge, %if.end31.thread.if.then35_crit_edge
  tail call void @zero_user_segments(ptr noundef nonnull %page.0, i32 noundef %len, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #13
  br label %if.end37

if.else36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @flush_dcache_page(ptr noundef nonnull %page.0) #13
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %if.then35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !373
  %48 = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  %and.i.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !370

if.then.i.i.i:                                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef nonnull %page.0, ptr noundef nonnull @.str.39) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end37
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %page.0) #13
  tail call void @unlock_page(ptr noundef nonnull %page.0) #13
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %48, align 4
  %and.i.i76 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i76)
  %tobool.not.i.i77 = icmp eq i32 %and.i.i76, 0
  br i1 %tobool.not.i.i77, label %if.end.i.i80, label %if.then.i.i79, !prof !370

if.then.i.i79:                                    ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i78 = add i32 %52, -1
  br label %_compound_head.exit.i85

if.end.i.i80:                                     ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit.i85

_compound_head.exit.i85:                          ; preds = %if.end.i.i80, %if.then.i.i79
  %retval.0.i.i81 = phi i32 [ %sub.i.i78, %if.then.i.i79 ], [ %53, %if.end.i.i80 ]
  %54 = inttoptr i32 %retval.0.i.i81 to ptr
  %_refcount.i.i.i.i.i82 = getelementptr inbounds %struct.page, ptr %54, i32 0, i32 3
  %call.i.i.i.i.i.i.i83 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i82, i32 noundef 4) #13
  %55 = ptrtoint ptr %_refcount.i.i.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %_refcount.i.i.i.i.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i.i.i.i84 = icmp eq i32 %56, 0
  br i1 %cmp.i.i.i.i84, label %if.then.i.i.i.i86, label %do.end5.i.i.i.i90, !prof !368

if.then.i.i.i.i86:                                ; preds = %_compound_head.exit.i85
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %54, ptr noundef nonnull @.str.49) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !401
  unreachable

do.end5.i.i.i.i90:                                ; preds = %_compound_head.exit.i85
  %call.i.i.i10.i.i.i.i87 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i82, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !402
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i82, i32 1, i32 3, i32 1) #13
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i82, ptr %_refcount.i.i.i.i.i82, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i82) #13, !srcloc !403
  %asmresult.i.i.i.i.i.i.i.i.i.i88 = extractvalue { i32, i32 } %57, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !404
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i88)
  %cmp.i.i.i.i.i.i.i89 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i88, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ceph_fill_inline_data, %if.then.i.i.i.i.i92)) #13
          to label %folio_put_testzero.exit.i.i93 [label %if.then.i.i.i.i.i92], !srcloc !374

if.then.i.i.i.i.i92:                              ; preds = %do.end5.i.i.i.i90
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i91 = zext i1 %cmp.i.i.i.i.i.i.i89 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %54, i32 noundef -1, i32 noundef %conv.i.i.i.i.i91) #13
  br label %folio_put_testzero.exit.i.i93

folio_put_testzero.exit.i.i93:                    ; preds = %if.then.i.i.i.i.i92, %do.end5.i.i.i.i90
  br i1 %cmp.i.i.i.i.i.i.i89, label %folio_put_testzero.exit.i.i93.cleanup.sink.split_crit_edge, label %folio_put_testzero.exit.i.i93.cleanup_crit_edge

folio_put_testzero.exit.i.i93.cleanup_crit_edge:  ; preds = %folio_put_testzero.exit.i.i93
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

folio_put_testzero.exit.i.i93.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i93
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %folio_put_testzero.exit.i.i93.cleanup.sink.split_crit_edge, %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %18, %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge ], [ %54, %folio_put_testzero.exit.i.i93.cleanup.sink.split_crit_edge ]
  tail call void @__put_page(ptr noundef %.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %folio_put_testzero.exit.i.i93.cleanup_crit_edge, %if.end31.thread.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.else.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !410
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  %1 = tail call ptr @llvm.returnaddress(i32 0) #13
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #13
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #13
  tail call void @trace_hardirqs_on() #13
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %3 = tail call ptr @llvm.returnaddress(i32 0) #13
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #13
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #13
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !411
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !368

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #13, !srcloc !412
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !413
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !414
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !415
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !416
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !370

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !368

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.49) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !401
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !402
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #13
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #13, !srcloc !403
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !404
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !374

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #13
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__put_page(ptr noundef %4) #13
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_uninline_data(ptr nocapture noundef readonly %filp, ptr noundef %locked_page) local_unnamed_addr #0 align 64 {
entry:
  %page = alloca ptr, align 4
  %len = alloca i64, align 8
  %xattr_buf = alloca i64, align 8
  %xattr_buf113 = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -952
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #13
  %6 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %page, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #13
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %len, align 8, !annotation !375
  %i_ceph_lock = getelementptr i8, ptr %1, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #13
  %i_inline_version = getelementptr i8, ptr %1, i32 -880
  %8 = ptrtoint ptr %i_inline_version to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_inline_version, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_uninline_data.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_uninline_data, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !374

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr.i, align 8
  %snap = getelementptr i8, ptr %1, i32 -944
  %12 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %snap, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_uninline_data.__UNIQUE_ID_ddebug401, ptr noundef nonnull @.str.8, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1664, ptr noundef %1, i64 noundef %11, i64 noundef %13, i64 noundef %9) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i64 %9, label %if.end13 [
    i64 1, label %do.end.out_crit_edge
    i64 -1, label %do.end.out_crit_edge314
  ]

do.end.out_crit_edge314:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end13:                                         ; preds = %do.end
  %tobool14.not = icmp eq ptr %locked_page, null
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  %14 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %locked_page, ptr %page, align 4
  %15 = getelementptr inbounds %struct.page, ptr %locked_page, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !370

if.then.i.i:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %17, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %locked_page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %18, %if.end.i.i ]
  %19 = inttoptr i32 %retval.0.i.i to ptr
  %20 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !370

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.39) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %19, align 4
  %25 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not.i = icmp eq i32 %25, 0
  br i1 %tobool.i.not.i, label %do.end35, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !400
  br label %if.end62

do.end35:                                         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1672, i32 noundef 9, ptr noundef null) #13
  br label %if.end62

if.else:                                          ; preds = %if.end13
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #13
  %call.i = tail call i32 @__ceph_caps_issued(ptr noundef %add.ptr.i, ptr noundef null) #13
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #13
  %and = and i32 %call.i, 33792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool50.not = icmp eq i32 %and, 0
  br i1 %tobool50.not, label %if.else.if.end62_crit_edge, label %if.then51

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then51:                                        ; preds = %if.else
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_mapping, align 8
  %call.i265 = tail call ptr @pagecache_get_page(ptr noundef %27, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %28 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i265, ptr %page, align 4
  %tobool53.not = icmp eq ptr %call.i265, null
  br i1 %tobool53.not, label %if.then51.if.else69_crit_edge, label %if.then54

if.then51.if.else69_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else69

if.then54:                                        ; preds = %if.then51
  %29 = getelementptr inbounds %struct.page, ptr %call.i265, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i266 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i266)
  %tobool.not.i.i267 = icmp eq i32 %and.i.i266, 0
  br i1 %tobool.not.i.i267, label %if.end.i.i270, label %if.then.i.i269, !prof !370

if.then.i.i269:                                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i268 = add i32 %31, -1
  br label %_compound_head.exit.i274

if.end.i.i270:                                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %call.i265 to i32
  br label %_compound_head.exit.i274

_compound_head.exit.i274:                         ; preds = %if.end.i.i270, %if.then.i.i269
  %retval.0.i.i271 = phi i32 [ %sub.i.i268, %if.then.i.i269 ], [ %32, %if.end.i.i270 ]
  %33 = inttoptr i32 %retval.0.i.i271 to ptr
  %34 = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %and.i.i.i.i272 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i272)
  %tobool.not.i.i.i273 = icmp eq i32 %and.i.i.i.i272, 0
  br i1 %tobool.not.i.i.i273, label %folio_flags.exit.i.i277, label %if.then.i.i.i275, !prof !370

if.then.i.i.i275:                                 ; preds = %_compound_head.exit.i274
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %33, ptr noundef nonnull @.str.39) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_flags.exit.i.i277:                          ; preds = %_compound_head.exit.i274
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %33, align 4
  %39 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i.not.i276 = icmp eq i32 %39, 0
  br i1 %tobool.i.not.i276, label %if.else58, label %PageUptodate.exit280

PageUptodate.exit280:                             ; preds = %folio_flags.exit.i.i277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !400
  %40 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %page, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.149, i32 noundef 788) #13
  %42 = getelementptr inbounds %struct.page, ptr %41, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %and.i.i281 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i281)
  %tobool.not.i.i282 = icmp eq i32 %and.i.i281, 0
  br i1 %tobool.not.i.i282, label %if.end.i.i285, label %if.then.i.i284, !prof !370

if.then.i.i284:                                   ; preds = %PageUptodate.exit280
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i283 = add i32 %44, -1
  br label %_compound_head.exit.i289

if.end.i.i285:                                    ; preds = %PageUptodate.exit280
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %41 to i32
  br label %_compound_head.exit.i289

_compound_head.exit.i289:                         ; preds = %if.end.i.i285, %if.then.i.i284
  %retval.0.i.i286 = phi i32 [ %sub.i.i283, %if.then.i.i284 ], [ %45, %if.end.i.i285 ]
  %46 = inttoptr i32 %retval.0.i.i286 to ptr
  %47 = getelementptr inbounds %struct.page, ptr %46, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  %and.i.i.i.i287 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i287)
  %tobool.not.i.i.i288 = icmp eq i32 %and.i.i.i.i287, 0
  br i1 %tobool.not.i.i.i288, label %folio_flags.exit.i.i291, label %if.then.i.i.i290, !prof !370

if.then.i.i.i290:                                 ; preds = %_compound_head.exit.i289
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %46, ptr noundef nonnull @.str.39) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_flags.exit.i.i291:                          ; preds = %_compound_head.exit.i289
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %46, i32 noundef 4) #13
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %46, align 4
  %and.i.i4.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i291.if.then.i_crit_edge

folio_flags.exit.i.i291.if.then.i_crit_edge:      ; preds = %folio_flags.exit.i.i291
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i291
  tail call void @llvm.prefetch.p0(ptr %46, i32 1, i32 3, i32 1) #13
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #13, !srcloc !377
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %52, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !378
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.if.end62_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

folio_trylock.exit.i.if.end62_crit_edge:          ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i291.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %46) #13
  br label %if.end62

if.else58:                                        ; preds = %folio_flags.exit.i.i277
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %page, align 4
  tail call fastcc void @put_page(ptr noundef %54)
  br label %if.else69

if.end62:                                         ; preds = %if.then.i, %folio_trylock.exit.i.if.end62_crit_edge, %if.else.if.end62_crit_edge, %do.end35, %PageUptodate.exit
  %from_pagecache.0.off0.ph = phi i1 [ true, %if.then.i ], [ true, %folio_trylock.exit.i.if.end62_crit_edge ], [ false, %PageUptodate.exit ], [ false, %do.end35 ], [ false, %if.else.if.end62_crit_edge ]
  %55 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr = load ptr, ptr %page, align 4
  %tobool63.not = icmp eq ptr %.pr, null
  br i1 %tobool63.not, label %if.end62.if.else69_crit_edge, label %if.then64

if.end62.if.else69_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else69

if.then64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  %call65 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  %56 = tail call i64 @llvm.umin.i64(i64 %call65, i64 4096)
  br label %if.end81

if.else69:                                        ; preds = %if.end62.if.else69_crit_edge, %if.else58, %if.then51.if.else69_crit_edge
  %from_pagecache.0.off0311 = phi i1 [ %from_pagecache.0.off0.ph, %if.end62.if.else69_crit_edge ], [ false, %if.else58 ], [ false, %if.then51.if.else69_crit_edge ]
  %call38.i.i.i.i = tail call ptr @__folio_alloc(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  %57 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call38.i.i.i.i, ptr %page, align 4
  %tobool71.not = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool71.not, label %if.else69.out_crit_edge, label %if.end73

if.else69.out_crit_edge:                          ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end73:                                         ; preds = %if.else69
  %call74 = tail call i32 @__ceph_do_getattr(ptr noundef %1, ptr noundef nonnull %call38.i.i.i.i, i32 noundef 2304, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.then76, label %if.end80

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call74)
  %cmp77 = icmp eq i32 %call74, -61
  %spec.select = select i1 %cmp77, i32 0, i32 %call74
  br label %out

if.end80:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  %conv313 = zext i32 %call74 to i64
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then64
  %from_pagecache.0.off0310 = phi i1 [ %from_pagecache.0.off0311, %if.end80 ], [ %from_pagecache.0.off0.ph, %if.then64 ]
  %storemerge = phi i64 [ %conv313, %if.end80 ], [ %56, %if.then64 ]
  %58 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %storemerge, ptr %len, align 8
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %5, i32 0, i32 3
  %59 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %client, align 8
  %osdc = getelementptr inbounds %struct.ceph_client, ptr %60, i32 0, i32 12
  %i_layout = getelementptr i8, ptr %1, i32 -824
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %agg.tmp.sroa.0.0.copyload = load i64, ptr %add.ptr.i, align 8
  %agg.tmp.sroa.2.0.add.ptr.i.i.sroa_idx = getelementptr i8, ptr %1, i32 -944
  %62 = ptrtoint ptr %agg.tmp.sroa.2.0.add.ptr.i.i.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %62)
  %agg.tmp.sroa.2.0.copyload = load i64, ptr %agg.tmp.sroa.2.0.add.ptr.i.i.sroa_idx, align 8
  %.fca.0.insert184 = insertvalue [2 x i64] poison, i64 %agg.tmp.sroa.0.0.copyload, 0
  %.fca.1.insert187 = insertvalue [2 x i64] %.fca.0.insert184, i64 %agg.tmp.sroa.2.0.copyload, 1
  %call82 = call ptr @ceph_osdc_new_request(ptr noundef %osdc, ptr noundef %i_layout, [2 x i64] %.fca.1.insert187, i64 noundef 0, ptr noundef nonnull %len, i32 noundef 0, i32 noundef 1, i32 noundef 8717, i32 noundef 32, ptr noundef null, i32 noundef 0, i64 noundef 0, i1 noundef zeroext false) #13
  %cmp.i = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then84, label %if.end86

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %call82 to i32
  br label %out

if.end86:                                         ; preds = %if.end81
  %r_mtime = getelementptr inbounds %struct.ceph_osd_request, ptr %call82, i32 0, i32 21
  %i_mtime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %64 = call ptr @memcpy(ptr %r_mtime, ptr %i_mtime, i32 16)
  %65 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %client, align 8
  %osdc88 = getelementptr inbounds %struct.ceph_client, ptr %66, i32 0, i32 12
  %call89 = call i32 @ceph_osdc_start_request(ptr noundef %osdc88, ptr noundef %call82, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then91, label %if.end86.if.end95_crit_edge

if.end86.if.end95_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

if.then91:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  %67 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %client, align 8
  %osdc93 = getelementptr inbounds %struct.ceph_client, ptr %68, i32 0, i32 12
  %call94 = call i32 @ceph_osdc_wait_request(ptr noundef %osdc93, ptr noundef %call82) #13
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.end86.if.end95_crit_edge
  %err.0 = phi i32 [ %call89, %if.end86.if.end95_crit_edge ], [ %call94, %if.then91 ]
  call void @ceph_osdc_put_request(ptr noundef %call82) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp96 = icmp slt i32 %err.0, 0
  br i1 %cmp96, label %if.end95.out_crit_edge, label %if.end99

if.end95.out_crit_edge:                           ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end99:                                         ; preds = %if.end95
  %69 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %client, align 8
  %osdc101 = getelementptr inbounds %struct.ceph_client, ptr %70, i32 0, i32 12
  %71 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %agg.tmp103.sroa.0.0.copyload = load i64, ptr %add.ptr.i, align 8
  %72 = ptrtoint ptr %agg.tmp.sroa.2.0.add.ptr.i.i.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %72)
  %agg.tmp103.sroa.2.0.copyload = load i64, ptr %agg.tmp.sroa.2.0.add.ptr.i.i.sroa_idx, align 8
  %i_truncate_seq = getelementptr i8, ptr %1, i32 -272
  %73 = ptrtoint ptr %i_truncate_seq to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %i_truncate_seq, align 8
  %i_truncate_size = getelementptr i8, ptr %1, i32 -264
  %75 = ptrtoint ptr %i_truncate_size to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %i_truncate_size, align 8
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %agg.tmp103.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %agg.tmp103.sroa.2.0.copyload, 1
  %call104 = call ptr @ceph_osdc_new_request(ptr noundef %osdc101, ptr noundef %i_layout, [2 x i64] %.fca.1.insert, i64 noundef 0, ptr noundef nonnull %len, i32 noundef 1, i32 noundef 3, i32 noundef 8705, i32 noundef 32, ptr noundef null, i32 noundef %74, i64 noundef %76, i1 noundef zeroext false) #13
  %cmp.i293 = icmp ugt ptr %call104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i293, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  %77 = ptrtoint ptr %call104 to i32
  br label %out

if.end108:                                        ; preds = %if.end99
  %78 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %len, align 8
  call void @osd_req_op_extent_osd_data_pages(ptr noundef %call104, i32 noundef 1, ptr noundef nonnull %page, i64 noundef %79, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xattr_buf) #13
  %80 = call i64 @llvm.bswap.i64(i64 %9)
  %81 = ptrtoint ptr %xattr_buf to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %xattr_buf, align 8
  %call109 = call i32 @osd_req_op_xattr_init(ptr noundef %call104, i32 noundef 0, i16 noundef zeroext 4867, ptr noundef nonnull @.str.9, ptr noundef nonnull %xattr_buf, i32 noundef 8, i8 noundef zeroext 3, i8 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xattr_buf) #13
  br i1 %tobool110.not, label %cleanup.cont, label %if.end108.out_put_crit_edge

if.end108.out_put_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

cleanup.cont:                                     ; preds = %if.end108
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %xattr_buf113) #13
  %82 = call ptr @memset(ptr %xattr_buf113, i32 255, i32 32)
  %call114 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %xattr_buf113, i32 noundef 32, ptr noundef nonnull @.str.10, i64 noundef %9)
  %call116 = call i32 @osd_req_op_xattr_init(ptr noundef %call104, i32 noundef 2, i16 noundef zeroext 8961, ptr noundef nonnull @.str.9, ptr noundef nonnull %xattr_buf113, i32 noundef %call114, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %xattr_buf113) #13
  br i1 %tobool117.not, label %cleanup.cont123, label %cleanup.cont.out_put_crit_edge

cleanup.cont.out_put_crit_edge:                   ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

cleanup.cont123:                                  ; preds = %cleanup.cont
  %r_mtime124 = getelementptr inbounds %struct.ceph_osd_request, ptr %call104, i32 0, i32 21
  %83 = call ptr @memcpy(ptr %r_mtime124, ptr %i_mtime, i32 16)
  %84 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %client, align 8
  %osdc127 = getelementptr inbounds %struct.ceph_client, ptr %85, i32 0, i32 12
  %call128 = call i32 @ceph_osdc_start_request(ptr noundef %osdc127, ptr noundef %call104, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.then130, label %cleanup.cont123.if.end134_crit_edge

cleanup.cont123.if.end134_crit_edge:              ; preds = %cleanup.cont123
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end134

if.then130:                                       ; preds = %cleanup.cont123
  call void @__sanitizer_cov_trace_pc() #15
  %86 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %client, align 8
  %osdc132 = getelementptr inbounds %struct.ceph_client, ptr %87, i32 0, i32 12
  %call133 = call i32 @ceph_osdc_wait_request(ptr noundef %osdc132, ptr noundef %call104) #13
  br label %if.end134

if.end134:                                        ; preds = %if.then130, %cleanup.cont123.if.end134_crit_edge
  %err.1 = phi i32 [ %call128, %cleanup.cont123.if.end134_crit_edge ], [ %call133, %if.then130 ]
  %mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %5, i32 0, i32 9
  %88 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mdsc, align 8
  %r_start_latency = getelementptr inbounds %struct.ceph_osd_request, ptr %call104, i32 0, i32 26
  %90 = ptrtoint ptr %r_start_latency to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %r_start_latency, align 8
  %r_end_latency = getelementptr inbounds %struct.ceph_osd_request, ptr %call104, i32 0, i32 27
  %92 = ptrtoint ptr %r_end_latency to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %r_end_latency, align 8
  %94 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %len, align 8
  %conv135 = trunc i64 %95 to i32
  %arrayidx.i = getelementptr %struct.ceph_mds_client, ptr %89, i32 0, i32 49, i32 6, i32 1
  call void @ceph_update_metrics(ptr noundef %arrayidx.i, i64 noundef %91, i64 noundef %93, i32 noundef %conv135, i32 noundef %err.1) #13
  br label %out_put

out_put:                                          ; preds = %if.end134, %cleanup.cont.out_put_crit_edge, %if.end108.out_put_crit_edge
  %err.2 = phi i32 [ %call109, %if.end108.out_put_crit_edge ], [ %call116, %cleanup.cont.out_put_crit_edge ], [ %err.1, %if.end134 ]
  call void @ceph_osdc_put_request(ptr noundef %call104) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125, i32 %err.2)
  %cmp136 = icmp eq i32 %err.2, -125
  %spec.select259 = select i1 %cmp136, i32 0, i32 %err.2
  br label %out

out:                                              ; preds = %out_put, %if.then106, %if.end95.out_crit_edge, %if.then84, %if.then76, %if.else69.out_crit_edge, %do.end.out_crit_edge, %do.end.out_crit_edge314
  %err.3 = phi i32 [ 0, %do.end.out_crit_edge ], [ %63, %if.then84 ], [ %err.0, %if.end95.out_crit_edge ], [ %77, %if.then106 ], [ 0, %do.end.out_crit_edge314 ], [ -12, %if.else69.out_crit_edge ], [ %spec.select, %if.then76 ], [ %spec.select259, %out_put ]
  %from_pagecache.1.off0 = phi i1 [ false, %do.end.out_crit_edge ], [ %from_pagecache.0.off0310, %if.then84 ], [ %from_pagecache.0.off0310, %if.end95.out_crit_edge ], [ %from_pagecache.0.off0310, %if.then106 ], [ false, %do.end.out_crit_edge314 ], [ %from_pagecache.0.off0311, %if.else69.out_crit_edge ], [ %from_pagecache.0.off0311, %if.then76 ], [ %from_pagecache.0.off0310, %out_put ]
  %96 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %page, align 4
  %tobool140.not = icmp eq ptr %97, null
  %cmp141.not = icmp eq ptr %97, %locked_page
  %or.cond = or i1 %tobool140.not, %cmp141.not
  br i1 %or.cond, label %out.do.body149_crit_edge, label %if.then143

out.do.body149_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body149

if.then143:                                       ; preds = %out
  br i1 %from_pagecache.1.off0, label %if.then145, label %if.else146

if.then145:                                       ; preds = %if.then143
  call void @unlock_page(ptr noundef nonnull %97) #13
  %98 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %page, align 4
  %100 = getelementptr inbounds %struct.page, ptr %99, i32 0, i32 1
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %100, align 4
  %and.i.i294 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i294)
  %tobool.not.i.i295 = icmp eq i32 %and.i.i294, 0
  br i1 %tobool.not.i.i295, label %if.end.i.i298, label %if.then.i.i297, !prof !370

if.then.i.i297:                                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i296 = add i32 %102, -1
  br label %_compound_head.exit.i300

if.end.i.i298:                                    ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #15
  %103 = ptrtoint ptr %99 to i32
  br label %_compound_head.exit.i300

_compound_head.exit.i300:                         ; preds = %if.end.i.i298, %if.then.i.i297
  %retval.0.i.i299 = phi i32 [ %sub.i.i296, %if.then.i.i297 ], [ %103, %if.end.i.i298 ]
  %104 = inttoptr i32 %retval.0.i.i299 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %104, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  %105 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp.i.i.i.i = icmp eq i32 %106, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !368

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i300
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %104, ptr noundef nonnull @.str.49) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !401
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i300
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !402
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %107 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #13, !srcloc !403
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %107, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !404
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ceph_uninline_data, %if.then.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !374

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %104, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.do.body149_crit_edge

folio_put_testzero.exit.i.i.do.body149_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body149

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__put_page(ptr noundef %104) #13
  br label %do.body149

if.else146:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #15
  call void @__free_pages(ptr noundef nonnull %97, i32 noundef 0) #13
  br label %do.body149

do.body149:                                       ; preds = %if.else146, %if.then.i4.i, %folio_put_testzero.exit.i.i.do.body149_crit_edge, %out.do.body149_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_uninline_data.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_uninline_data, %if.then161)) #13
          to label %cleanup172 [label %if.then161], !srcloc !374

if.then161:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #15
  %108 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %add.ptr.i, align 8
  %snap168 = getelementptr i8, ptr %1, i32 -944
  %110 = ptrtoint ptr %snap168 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %snap168, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_uninline_data.__UNIQUE_ID_ddebug402, ptr noundef nonnull @.str.12, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1781, ptr noundef %1, i64 noundef %109, i64 noundef %111, i64 noundef %9, i32 noundef %err.3) #13
  br label %cleanup172

cleanup172:                                       ; preds = %if.then161, %do.body149
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #13
  ret i32 %err.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_do_getattr(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_osdc_new_request(ptr noundef, ptr noundef, [2 x i64], i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_osdc_start_request(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_osdc_wait_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_osdc_put_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @osd_req_op_extent_osd_data_pages(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @osd_req_op_xattr_init(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_mmap(ptr noundef %file, ptr nocapture noundef writeonly %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %a_ops = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %a_ops, align 4
  %readpage = getelementptr inbounds %struct.address_space_operations, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %readpage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %readpage, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %6 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.file_accessed.exit_crit_edge

if.end.file_accessed.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %file_accessed.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %f_path.i) #13
  br label %file_accessed.exit

file_accessed.exit:                               ; preds = %if.then.i, %if.end.file_accessed.exit_crit_edge
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %8 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ceph_vmops, ptr %vm_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %file_accessed.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %file_accessed.exit ], [ -8, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_pool_perm_check(ptr noundef %inode, i32 noundef %need) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %2)
  %cmp = icmp eq i16 %2, -32768
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %snap = getelementptr i8, ptr %inode, i32 -944
  %3 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %snap, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %4)
  %cmp2.not = icmp eq i64 %4, -2
  br i1 %cmp2.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mount_options, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %and8 = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %i_ceph_lock = getelementptr i8, ptr %inode, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #13
  %i_ceph_flags = getelementptr i8, ptr %inode, i32 -868
  %13 = ptrtoint ptr %i_ceph_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ceph_flags, align 4
  %pool_id = getelementptr i8, ptr %inode, i32 -808
  %15 = ptrtoint ptr %pool_id to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %pool_id, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #13
  %and12171 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12171)
  %tobool13.not172 = icmp eq i32 %and12171, 0
  br i1 %tobool13.not172, label %if.end52.lr.ph, label %if.end10.if.then14_crit_edge

if.end10.if.then14_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

if.end52.lr.ph:                                   ; preds = %if.end10
  %pool_ns58 = getelementptr i8, ptr %inode, i32 -800
  br label %if.end52

if.then14:                                        ; preds = %if.end113.if.then14_crit_edge, %if.end10.if.then14_crit_edge
  %flags.0.lcssa = phi i32 [ %14, %if.end10.if.then14_crit_edge ], [ %flags.3, %if.end113.if.then14_crit_edge ]
  %pool.0.lcssa = phi i64 [ %16, %if.end10.if.then14_crit_edge ], [ %pool.1, %if.end113.if.then14_crit_edge ]
  %and15 = and i32 %need, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp ne i32 %and15, 0
  %and17 = and i32 %flags.0.lcssa, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %or.cond = select i1 %tobool16.not, i1 %tobool18.not, i1 false
  br i1 %or.cond, label %do.body, label %if.end27

do.body:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_pool_perm_check.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_pool_perm_check, %if.then24)) #13
          to label %cleanup [label %if.then24], !srcloc !374

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_pool_perm_check.__UNIQUE_ID_ddebug407, ptr noundef nonnull @.str.15, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2014, i64 noundef %pool.0.lcssa) #13
  br label %cleanup

if.end27:                                         ; preds = %if.then14
  %and28 = and i32 %need, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp ne i32 %and28, 0
  %and31 = and i32 %flags.0.lcssa, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %or.cond151 = select i1 %tobool29.not, i1 %tobool32.not, i1 false
  br i1 %or.cond151, label %do.body34, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_pool_perm_check.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_pool_perm_check, %if.then46)) #13
          to label %cleanup [label %if.then46], !srcloc !374

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_pool_perm_check.__UNIQUE_ID_ddebug408, ptr noundef nonnull @.str.17, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2019, i64 noundef %pool.0.lcssa) #13
  br label %cleanup

if.end52:                                         ; preds = %if.end113.if.end52_crit_edge, %if.end52.lr.ph
  %pool.0173 = phi i64 [ %16, %if.end52.lr.ph ], [ %pool.1, %if.end113.if.end52_crit_edge ]
  %17 = call i32 @llvm.read_register.i32(metadata !358) #13
  %and.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !417
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end52.for.cond.preheader_crit_edge, label %land.lhs.true.i

if.end52.for.cond.preheader_crit_edge:            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

land.lhs.true.i:                                  ; preds = %if.end52
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.cond.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.for.cond.preheader_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.for.cond.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.for.cond.preheader_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.170, i32 noundef 696, ptr noundef nonnull @.str.171) #13
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then.i, %land.lhs.true2.i.for.cond.preheader_crit_edge, %land.lhs.true.i.for.cond.preheader_crit_edge, %if.end52.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %kref_get_unless_zero.exit.for.cond_crit_edge, %for.cond.preheader
  %21 = ptrtoint ptr %pool_ns58 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %pool_ns58, align 8
  %call60 = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true62, label %for.cond.do.end70_crit_edge

for.cond.do.end70_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end70

land.lhs.true62:                                  ; preds = %for.cond
  %call63 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true62.do.end70_crit_edge, label %land.lhs.true65

land.lhs.true62.do.end70_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end70

land.lhs.true65:                                  ; preds = %land.lhs.true62
  %.b150 = load i1, ptr @ceph_pool_perm_check.__warned, align 1
  br i1 %.b150, label %land.lhs.true65.do.end70_crit_edge, label %if.then67

land.lhs.true65.do.end70_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end70

if.then67:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ceph_pool_perm_check.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2025, ptr noundef nonnull @.str.18) #13
  br label %do.end70

do.end70:                                         ; preds = %if.then67, %land.lhs.true65.do.end70_crit_edge, %land.lhs.true62.do.end70_crit_edge, %for.cond.do.end70_crit_edge
  %tobool72.not = icmp eq ptr %22, null
  br i1 %tobool72.not, label %do.end70.for.end_crit_edge, label %lor.lhs.false

do.end70.for.end_crit_edge:                       ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

lor.lhs.false:                                    ; preds = %do.end70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %22, i32 noundef 4) #13
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %lor.lhs.false
  %25 = phi i32 [ %24, %lor.lhs.false ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %26 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %25, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %22, i32 noundef 4) #13
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #13
  %27 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %22, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %29 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %22, ptr nonnull %22, i32 %28, i32 %add.i.i.i.i, ptr nonnull elementtype(i32) %22) #13, !srcloc !418
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %29, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %29, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %28
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !370

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %30 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %31, 1
  %32 = or i32 %add5.i.i.i.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %.not.i.i.i.i = icmp sgt i32 %32, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !370

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef nonnull %22, i32 noundef 0) #13
  %33 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %34 = phi i32 [ %31, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  %tobool12.i.i.i.i.not = icmp eq i32 %34, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.cond_crit_edge, label %kref_get_unless_zero.exit.for.end_crit_edge

kref_get_unless_zero.exit.for.end_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

kref_get_unless_zero.exit.for.cond_crit_edge:     ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %kref_get_unless_zero.exit.for.end_crit_edge, %do.end70.for.end_crit_edge
  %call.i155 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i155, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i158

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i158:                               ; preds = %for.end
  %call1.i156 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i156)
  %tobool.not.i157 = icmp eq i32 %call1.i156, 0
  br i1 %tobool.not.i157, label %land.lhs.true.i158.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i160

land.lhs.true.i158.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i158
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i160:                              ; preds = %land.lhs.true.i158
  %.b4.i159 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i159, label %land.lhs.true2.i160.rcu_read_unlock.exit_crit_edge, label %if.then.i161

land.lhs.true2.i160.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i160
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i161:                                     ; preds = %land.lhs.true2.i160
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.170, i32 noundef 724, ptr noundef nonnull @.str.172) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i161, %land.lhs.true2.i160.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i158.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !419
  %35 = call i32 @llvm.read_register.i32(metadata !358) #13
  %and.i.i.i.i.i162 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i162 to ptr
  %preempt_count.i.i.i.i163 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i163, align 4
  %sub.i.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i163, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %call78 = call fastcc i32 @__ceph_pool_perm_get(ptr noundef %add.ptr.i, i64 noundef %pool.0173, ptr noundef %22)
  br i1 %tobool72.not, label %rcu_read_unlock.exit.ceph_put_string.exit_crit_edge, label %if.end.i

rcu_read_unlock.exit.ceph_put_string.exit_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ceph_put_string.exit

if.end.i:                                         ; preds = %rcu_read_unlock.exit
  %call.i.i.i.i.i.i.i165 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %22, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !420
  call void @llvm.prefetch.p0(ptr nonnull %22, i32 1, i32 3, i32 1) #13
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %22, ptr nonnull %22, i32 1, ptr nonnull elementtype(i32) %22) #13, !srcloc !421
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ceph_put_string.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !370

if.end5.i.i.i.i.i.ceph_put_string.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ceph_put_string.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef nonnull %22, i32 noundef 3) #13
  br label %ceph_put_string.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !422
  call void @ceph_release_string(ptr noundef nonnull %22) #13
  br label %ceph_put_string.exit

ceph_put_string.exit:                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ceph_put_string.exit_crit_edge, %rcu_read_unlock.exit.ceph_put_string.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %ceph_put_string.exit.cleanup_crit_edge, label %if.end82

ceph_put_string.exit.cleanup_crit_edge:           ; preds = %ceph_put_string.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end82:                                         ; preds = %ceph_put_string.exit
  %and83 = and i32 %call78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  %spec.select = select i1 %tobool84.not, i32 8, i32 24
  %and87 = shl i32 %call78, 4
  %40 = and i32 %and87, 32
  %41 = or i32 %spec.select, %40
  call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #13
  %42 = ptrtoint ptr %pool_id to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %pool_id, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %pool.0173, i64 %43)
  %cmp95 = icmp eq i64 %pool.0173, %43
  br i1 %cmp95, label %land.lhs.true97, label %if.end82.if.else_crit_edge

if.end82.if.else_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true97:                                  ; preds = %if.end82
  %44 = ptrtoint ptr %pool_ns58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %pool_ns58, align 8
  %cmp105 = icmp eq ptr %22, %45
  br i1 %cmp105, label %if.then107, label %land.lhs.true97.if.else_crit_edge

land.lhs.true97.if.else_crit_edge:                ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then107:                                       ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %i_ceph_flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_ceph_flags, align 4
  %or109 = or i32 %47, %41
  store i32 %or109, ptr %i_ceph_flags, align 4
  br label %if.end113

if.else:                                          ; preds = %land.lhs.true97.if.else_crit_edge, %if.end82.if.else_crit_edge
  %48 = ptrtoint ptr %i_ceph_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %i_ceph_flags, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.else, %if.then107
  %flags.3 = phi i32 [ %41, %if.then107 ], [ %49, %if.else ]
  %pool.1 = phi i64 [ %pool.0173, %if.then107 ], [ %43, %if.else ]
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #13
  %and12 = and i32 %flags.3, 8
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end113.if.end52_crit_edge, label %if.end113.if.then14_crit_edge

if.end113.if.then14_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

if.end113.if.end52_crit_edge:                     ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

cleanup:                                          ; preds = %ceph_put_string.exit.cleanup_crit_edge, %if.then46, %do.body34, %if.end27.cleanup_crit_edge, %if.then24, %do.body, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ -1, %if.then24 ], [ -1, %if.then46 ], [ 0, %if.end27.cleanup_crit_edge ], [ -1, %do.body ], [ -1, %do.body34 ], [ %call78, %ceph_put_string.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ceph_pool_perm_get(ptr nocapture noundef readonly %ci, i64 noundef %pool, ptr noundef %pool_ns) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 76, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %mdsc1 = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %mdsc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdsc1, align 8
  %pool_perm_rwsem = getelementptr inbounds %struct.ceph_mds_client, ptr %5, i32 0, i32 53
  tail call void @down_read(ptr noundef %pool_perm_rwsem) #13
  %pool_perm_tree = getelementptr inbounds %struct.ceph_mds_client, ptr %5, i32 0, i32 54
  %6 = ptrtoint ptr %pool_perm_tree to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pool_perm_tree, align 4
  %tobool.not468 = icmp eq ptr %7, null
  br i1 %tobool.not468, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tobool.not.i = icmp eq ptr %pool_ns, null
  %len1.i = getelementptr inbounds %struct.ceph_string, ptr %pool_ns, i32 0, i32 2
  %str5.i = getelementptr inbounds %struct.ceph_string, ptr %pool_ns, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %while.body.lr.ph
  %8 = phi ptr [ %7, %while.body.lr.ph ], [ %18, %if.end21.while.body_crit_edge ]
  %p.0469 = phi ptr [ %pool_perm_tree, %while.body.lr.ph ], [ %p.3, %if.end21.while.body_crit_edge ]
  %pool2 = getelementptr inbounds %struct.ceph_pool_perm, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %pool2 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %pool2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %pool)
  %cmp = icmp sgt i64 %10, %pool
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2
  br label %if.end21

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %pool)
  %cmp4 = icmp slt i64 %10, %pool
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 1
  br label %if.end21

if.else6:                                         ; preds = %if.else
  %pool_ns7 = getelementptr inbounds %struct.ceph_pool_perm, ptr %8, i32 0, i32 4
  %pool_ns_len8 = getelementptr inbounds %struct.ceph_pool_perm, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %pool_ns_len8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pool_ns_len8, align 8
  br i1 %tobool.not.i, label %if.else6.cond.end.i_crit_edge, label %cond.true.i

if.else6.cond.end.i_crit_edge:                    ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len1.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.else6.cond.end.i_crit_edge
  %cond.i = phi i32 [ %14, %cond.true.i ], [ 0, %if.else6.cond.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %12)
  %cmp.not.i = icmp eq i32 %cond.i, %12
  br i1 %cmp.not.i, label %if.end.i399, label %if.then.i398

if.then.i398:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = sub i32 %cond.i, %12
  br label %ceph_compare_string.exit

if.end.i399:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2.i = icmp eq i32 %12, 0
  br i1 %cmp2.i, label %if.end.i399.cleanup_crit_edge, label %if.end4.i400

if.end.i399.cleanup_crit_edge:                    ; preds = %if.end.i399
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4.i400:                                     ; preds = %if.end.i399
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @strncmp(ptr noundef %str5.i, ptr noundef %pool_ns7, i32 noundef %12) #13
  br label %ceph_compare_string.exit

ceph_compare_string.exit:                         ; preds = %if.end4.i400, %if.then.i398
  %retval.0.i401 = phi i32 [ %sub.i, %if.then.i398 ], [ %call.i, %if.end4.i400 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i401)
  %cmp10 = icmp slt i32 %retval.0.i401, 0
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %ceph_compare_string.exit
  call void @__sanitizer_cov_trace_pc() #15
  %rb_left12 = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2
  br label %if.end21

if.else13:                                        ; preds = %ceph_compare_string.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i401)
  %cmp14.not = icmp eq i32 %retval.0.i401, 0
  br i1 %cmp14.not, label %if.else13.cleanup_crit_edge, label %if.then15

if.else13.cleanup_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then15:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #15
  %rb_right16 = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 1
  br label %if.end21

cleanup:                                          ; preds = %if.else13.cleanup_crit_edge, %if.end.i399.cleanup_crit_edge
  %perm18 = getelementptr inbounds %struct.ceph_pool_perm, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %perm18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %perm18, align 4
  br label %while.end

if.end21:                                         ; preds = %if.then15, %if.then11, %if.then5, %if.then
  %p.3 = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then5 ], [ %rb_right16, %if.then15 ], [ %rb_left12, %if.then11 ]
  %17 = ptrtoint ptr %p.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p.3, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.end21.while.end_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end21.while.end_crit_edge, %cleanup, %entry.while.end_crit_edge
  %p.0467 = phi ptr [ %p.0469, %cleanup ], [ %pool_perm_tree, %entry.while.end_crit_edge ], [ %p.3, %if.end21.while.end_crit_edge ]
  %have.3 = phi i32 [ %16, %cleanup ], [ 0, %entry.while.end_crit_edge ], [ 0, %if.end21.while.end_crit_edge ]
  tail call void @up_read(ptr noundef %pool_perm_rwsem) #13
  %19 = ptrtoint ptr %p.0467 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p.0467, align 4
  %tobool23.not = icmp eq ptr %20, null
  br i1 %tobool23.not, label %if.end25, label %while.end.out.thread_crit_edge

while.end.out.thread_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread

if.end25:                                         ; preds = %while.end
  %tobool26.not = icmp eq ptr %pool_ns, null
  br i1 %tobool26.not, label %do.body38, label %do.body

do.body:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_pool_perm_get.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_pool_perm_get, %if.then33)) #13
          to label %if.end55 [label %if.then33], !srcloc !374

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %len = getelementptr inbounds %struct.ceph_string, ptr %pool_ns, i32 0, i32 2
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %str = getelementptr inbounds %struct.ceph_string, ptr %pool_ns, i32 0, i32 3
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_pool_perm_get.__UNIQUE_ID_ddebug403, ptr noundef nonnull @.str.175, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1846, i64 noundef %pool, i32 noundef %22, ptr noundef %str) #13
  br label %if.end55

do.body38:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_pool_perm_get.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_pool_perm_get, %if.then50)) #13
          to label %if.end55 [label %if.then50], !srcloc !374

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_pool_perm_get.__UNIQUE_ID_ddebug404, ptr noundef nonnull @.str.177, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1848, i64 noundef %pool) #13
  br label %if.end55

if.end55:                                         ; preds = %if.then50, %do.body38, %if.then33, %do.body
  tail call void @down_write(ptr noundef %pool_perm_rwsem) #13
  %23 = ptrtoint ptr %pool_perm_tree to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pool_perm_tree, align 4
  %tobool60.not470 = icmp eq ptr %24, null
  br i1 %tobool60.not470, label %if.end55.if.end100_crit_edge, label %while.body61.lr.ph

if.end55.if.end100_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

while.body61.lr.ph:                               ; preds = %if.end55
  %len1.i403 = getelementptr inbounds %struct.ceph_string, ptr %pool_ns, i32 0, i32 2
  %str5.i412 = getelementptr inbounds %struct.ceph_string, ptr %pool_ns, i32 0, i32 3
  br label %while.body61

while.body61:                                     ; preds = %if.end95.while.body61_crit_edge, %while.body61.lr.ph
  %25 = phi ptr [ %24, %while.body61.lr.ph ], [ %33, %if.end95.while.body61_crit_edge ]
  %p.5471 = phi ptr [ %pool_perm_tree, %while.body61.lr.ph ], [ %p.8, %if.end95.while.body61_crit_edge ]
  %pool65 = getelementptr inbounds %struct.ceph_pool_perm, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %pool65 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pool65, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %pool)
  %cmp66 = icmp sgt i64 %27, %pool
  br i1 %cmp66, label %if.then67, label %if.else69

if.then67:                                        ; preds = %while.body61
  call void @__sanitizer_cov_trace_pc() #15
  %rb_left68 = getelementptr inbounds %struct.rb_node, ptr %25, i32 0, i32 2
  br label %if.end95

if.else69:                                        ; preds = %while.body61
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %pool)
  %cmp71 = icmp slt i64 %27, %pool
  br i1 %cmp71, label %if.then72, label %if.else74

if.then72:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #15
  %rb_right73 = getelementptr inbounds %struct.rb_node, ptr %25, i32 0, i32 1
  br label %if.end95

if.else74:                                        ; preds = %if.else69
  %pool_ns76 = getelementptr inbounds %struct.ceph_pool_perm, ptr %25, i32 0, i32 4
  %pool_ns_len78 = getelementptr inbounds %struct.ceph_pool_perm, ptr %25, i32 0, i32 3
  %28 = ptrtoint ptr %pool_ns_len78 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pool_ns_len78, align 8
  br i1 %tobool26.not, label %if.else74.cond.end.i407_crit_edge, label %cond.true.i404

if.else74.cond.end.i407_crit_edge:                ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i407

cond.true.i404:                                   ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %len1.i403 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len1.i403, align 4
  br label %cond.end.i407

cond.end.i407:                                    ; preds = %cond.true.i404, %if.else74.cond.end.i407_crit_edge
  %cond.i405 = phi i32 [ %31, %cond.true.i404 ], [ 0, %if.else74.cond.end.i407_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i405, i32 %29)
  %cmp.not.i406 = icmp eq i32 %cond.i405, %29
  br i1 %cmp.not.i406, label %if.end.i411, label %if.then.i409

if.then.i409:                                     ; preds = %cond.end.i407
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i408 = sub i32 %cond.i405, %29
  br label %ceph_compare_string.exit416

if.end.i411:                                      ; preds = %cond.end.i407
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp2.i410 = icmp eq i32 %29, 0
  br i1 %cmp2.i410, label %if.end.i411.while.end96_crit_edge, label %if.end4.i414

if.end.i411.while.end96_crit_edge:                ; preds = %if.end.i411
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end96

if.end4.i414:                                     ; preds = %if.end.i411
  call void @__sanitizer_cov_trace_pc() #15
  %call.i413 = tail call i32 @strncmp(ptr noundef %str5.i412, ptr noundef %pool_ns76, i32 noundef %29) #13
  br label %ceph_compare_string.exit416

ceph_compare_string.exit416:                      ; preds = %if.end4.i414, %if.then.i409
  %retval.0.i415 = phi i32 [ %sub.i408, %if.then.i409 ], [ %call.i413, %if.end4.i414 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i415)
  %cmp80 = icmp slt i32 %retval.0.i415, 0
  br i1 %cmp80, label %if.then81, label %if.else83

if.then81:                                        ; preds = %ceph_compare_string.exit416
  call void @__sanitizer_cov_trace_pc() #15
  %rb_left82 = getelementptr inbounds %struct.rb_node, ptr %25, i32 0, i32 2
  br label %if.end95

if.else83:                                        ; preds = %ceph_compare_string.exit416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i415)
  %cmp84.not = icmp eq i32 %retval.0.i415, 0
  br i1 %cmp84.not, label %if.else83.while.end96_crit_edge, label %if.then85

if.else83.while.end96_crit_edge:                  ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end96

if.then85:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #15
  %rb_right86 = getelementptr inbounds %struct.rb_node, ptr %25, i32 0, i32 1
  br label %if.end95

if.end95:                                         ; preds = %if.then85, %if.then81, %if.then72, %if.then67
  %p.8 = phi ptr [ %rb_left68, %if.then67 ], [ %rb_right73, %if.then72 ], [ %rb_right86, %if.then85 ], [ %rb_left82, %if.then81 ]
  %32 = ptrtoint ptr %p.8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p.8, align 4
  %tobool60.not = icmp eq ptr %33, null
  br i1 %tobool60.not, label %if.end95.if.end100_crit_edge, label %if.end95.while.body61_crit_edge

if.end95.while.body61_crit_edge:                  ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body61

if.end95.if.end100_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

while.end96:                                      ; preds = %if.else83.while.end96_crit_edge, %if.end.i411.while.end96_crit_edge
  %perm88 = getelementptr inbounds %struct.ceph_pool_perm, ptr %25, i32 0, i32 1
  %34 = ptrtoint ptr %perm88 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %perm88, align 4
  %36 = ptrtoint ptr %p.5471 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load ptr, ptr %p.5471, align 4
  %tobool97.not = icmp eq ptr %.pr, null
  br i1 %tobool97.not, label %while.end96.if.end100_crit_edge, label %if.then98

while.end96.if.end100_crit_edge:                  ; preds = %while.end96
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

if.then98:                                        ; preds = %while.end96
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @up_write(ptr noundef %pool_perm_rwsem) #13
  br label %out.thread

if.end100:                                        ; preds = %while.end96.if.end100_crit_edge, %if.end95.if.end100_crit_edge, %if.end55.if.end100_crit_edge
  %p.5463 = phi ptr [ %p.5471, %while.end96.if.end100_crit_edge ], [ %pool_perm_tree, %if.end55.if.end100_crit_edge ], [ %p.8, %if.end95.if.end100_crit_edge ]
  %parent.1443 = phi ptr [ %25, %while.end96.if.end100_crit_edge ], [ null, %if.end55.if.end100_crit_edge ], [ %25, %if.end95.if.end100_crit_edge ]
  %have.7442 = phi i32 [ %35, %while.end96.if.end100_crit_edge ], [ %have.3, %if.end55.if.end100_crit_edge ], [ %have.3, %if.end95.if.end100_crit_edge ]
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 3
  %37 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %client, align 8
  %osdc = getelementptr inbounds %struct.ceph_client, ptr %38, i32 0, i32 12
  %call101 = tail call ptr @ceph_osdc_alloc_request(ptr noundef %osdc, ptr noundef null, i32 noundef 1, i1 noundef zeroext false, i32 noundef 3136) #13
  %tobool102.not = icmp eq ptr %call101, null
  br i1 %tobool102.not, label %if.end100.out_crit_edge, label %if.end104

if.end100.out_crit_edge:                          ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end104:                                        ; preds = %if.end100
  %r_t = getelementptr inbounds %struct.ceph_osd_request, ptr %call101, i32 0, i32 5
  %flags = getelementptr inbounds %struct.ceph_osd_request, ptr %call101, i32 0, i32 5, i32 14
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 16, ptr %flags, align 4
  %call105 = tail call ptr @osd_req_op_init(ptr noundef nonnull %call101, i32 noundef 0, i16 noundef zeroext 4610, i32 noundef 0) #13
  %base_oloc = getelementptr inbounds %struct.ceph_osd_request, ptr %call101, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %base_oloc to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %pool, ptr %base_oloc, align 8
  br i1 %tobool26.not, label %if.end104.if.end114_crit_edge, label %if.then109

if.end104.if.end114_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end114

if.then109:                                       ; preds = %if.end104
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pool_ns, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %pool_ns, i32 1, i32 3, i32 1) #13
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %pool_ns, ptr nonnull %pool_ns, i32 1, ptr nonnull elementtype(i32) %pool_ns) #13, !srcloc !423
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then109.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !368

if.then109.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then109
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %42 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %.not.i.i.i.i.i = icmp sgt i32 %42, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.ceph_get_string.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !370

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.ceph_get_string.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ceph_get_string.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then109.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then109.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %pool_ns, i32 noundef %.sink.i.i.i.i.i) #13
  br label %ceph_get_string.exit

ceph_get_string.exit:                             ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.ceph_get_string.exit_crit_edge
  %pool_ns113 = getelementptr inbounds %struct.ceph_osd_request, ptr %call101, i32 0, i32 5, i32 1, i32 1
  %43 = ptrtoint ptr %pool_ns113 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %pool_ns, ptr %pool_ns113, align 8
  br label %if.end114

if.end114:                                        ; preds = %ceph_get_string.exit, %if.end104.if.end114_crit_edge
  %44 = ptrtoint ptr %ci to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %ci, align 8
  tail call void (ptr, ptr, ...) @ceph_oid_printf(ptr noundef %r_t, ptr noundef nonnull @.str.178, i64 noundef %45) #13
  %call116 = tail call i32 @ceph_osdc_alloc_messages(ptr noundef nonnull %call101, i32 noundef 3136) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end119, label %if.end114.out_crit_edge

if.end114.out_crit_edge:                          ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end119:                                        ; preds = %if.end114
  %46 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %client, align 8
  %osdc121 = getelementptr inbounds %struct.ceph_client, ptr %47, i32 0, i32 12
  %call122 = tail call ptr @ceph_osdc_alloc_request(ptr noundef %osdc121, ptr noundef null, i32 noundef 1, i1 noundef zeroext false, i32 noundef 3136) #13
  %tobool123.not = icmp eq ptr %call122, null
  br i1 %tobool123.not, label %if.end119.out_crit_edge, label %if.end125

if.end119.out_crit_edge:                          ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end125:                                        ; preds = %if.end119
  %r_t126 = getelementptr inbounds %struct.ceph_osd_request, ptr %call122, i32 0, i32 5
  %flags127 = getelementptr inbounds %struct.ceph_osd_request, ptr %call122, i32 0, i32 5, i32 14
  %48 = ptrtoint ptr %flags127 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 32, ptr %flags127, align 4
  %call128 = tail call ptr @osd_req_op_init(ptr noundef nonnull %call122, i32 noundef 0, i16 noundef zeroext 8717, i32 noundef 1) #13
  %base_oloc130 = getelementptr inbounds %struct.ceph_osd_request, ptr %call122, i32 0, i32 5, i32 1
  tail call void @ceph_oloc_copy(ptr noundef %base_oloc130, ptr noundef %base_oloc) #13
  tail call void @ceph_oid_copy(ptr noundef %r_t126, ptr noundef %r_t) #13
  %call137 = tail call i32 @ceph_osdc_alloc_messages(ptr noundef nonnull %call122, i32 noundef 3136) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end140, label %if.end125.out_crit_edge

if.end125.out_crit_edge:                          ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end140:                                        ; preds = %if.end125
  %call141 = tail call ptr @ceph_alloc_page_vector(i32 noundef 1, i32 noundef 3264) #13
  %cmp.i417 = icmp ugt ptr %call141, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i417, label %if.then143, label %if.end145

if.then143:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %call141 to i32
  br label %out

if.end145:                                        ; preds = %if.end140
  tail call void @osd_req_op_raw_data_in_pages(ptr noundef nonnull %call101, i32 noundef 0, ptr noundef %call141, i64 noundef 4096, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  %50 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %client, align 8
  %osdc147 = getelementptr inbounds %struct.ceph_client, ptr %51, i32 0, i32 12
  %call148 = tail call i32 @ceph_osdc_start_request(ptr noundef %osdc147, ptr noundef nonnull %call101, i1 noundef zeroext false) #13
  %r_mtime = getelementptr inbounds %struct.ceph_osd_request, ptr %call122, i32 0, i32 21
  %i_mtime = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 76, i32 16
  %52 = call ptr @memcpy(ptr %r_mtime, ptr %i_mtime, i32 16)
  %53 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %client, align 8
  %osdc151 = getelementptr inbounds %struct.ceph_client, ptr %54, i32 0, i32 12
  %call152 = tail call i32 @ceph_osdc_start_request(ptr noundef %osdc151, ptr noundef nonnull %call122, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool153.not = icmp eq i32 %call148, 0
  br i1 %tobool153.not, label %if.then154, label %if.end145.if.end158_crit_edge

if.end145.if.end158_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end158

if.then154:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %client, align 8
  %osdc156 = getelementptr inbounds %struct.ceph_client, ptr %56, i32 0, i32 12
  %call157 = tail call i32 @ceph_osdc_wait_request(ptr noundef %osdc156, ptr noundef nonnull %call101) #13
  br label %if.end158

if.end158:                                        ; preds = %if.then154, %if.end145.if.end158_crit_edge
  %err.0 = phi i32 [ %call148, %if.end145.if.end158_crit_edge ], [ %call157, %if.then154 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool159.not = icmp eq i32 %call152, 0
  br i1 %tobool159.not, label %if.then160, label %if.end158.if.end164_crit_edge

if.end158.if.end164_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end164

if.then160:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %client, align 8
  %osdc162 = getelementptr inbounds %struct.ceph_client, ptr %58, i32 0, i32 12
  %call163 = tail call i32 @ceph_osdc_wait_request(ptr noundef %osdc162, ptr noundef nonnull %call122) #13
  br label %if.end164

if.end164:                                        ; preds = %if.then160, %if.end158.if.end164_crit_edge
  %err2.0 = phi i32 [ %call152, %if.end158.if.end164_crit_edge ], [ %call163, %if.then160 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %err.0)
  %cmp165 = icmp sgt i32 %err.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %err.0)
  %cmp166 = icmp eq i32 %err.0, -2
  %or.cond = or i1 %cmp165, %cmp166
  br i1 %or.cond, label %if.then167, label %if.else168

if.then167:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #15
  %or = or i32 %have.7442, 1
  br label %if.end175

if.else168:                                       ; preds = %if.end164
  %59 = zext i32 %err.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %err.0, label %if.else168.out_crit_edge [
    i32 -1, label %if.else168.if.end175_crit_edge
    i32 -108, label %if.then172
  ]

if.else168.if.end175_crit_edge:                   ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end175

if.else168.out_crit_edge:                         ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then172:                                       ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #15
  %blocklisted = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 5
  %60 = ptrtoint ptr %blocklisted to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %blocklisted, align 8
  br label %out

if.end175:                                        ; preds = %if.else168.if.end175_crit_edge, %if.then167
  %have.8 = phi i32 [ %or, %if.then167 ], [ %have.7442, %if.else168.if.end175_crit_edge ]
  %61 = zext i32 %err2.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %err2.0, label %if.end175.out_crit_edge [
    i32 0, label %if.end175.if.then179_crit_edge
    i32 -17, label %if.end175.if.then179_crit_edge499
    i32 -1, label %if.end175.if.end189_crit_edge
    i32 -108, label %if.then185
  ]

if.end175.if.end189_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end189

if.end175.if.then179_crit_edge499:                ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then179

if.end175.if.then179_crit_edge:                   ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then179

if.end175.out_crit_edge:                          ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then179:                                       ; preds = %if.end175.if.then179_crit_edge, %if.end175.if.then179_crit_edge499
  %or180 = or i32 %have.8, 2
  br label %if.end189

if.then185:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #15
  %blocklisted186 = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 5
  %62 = ptrtoint ptr %blocklisted186 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %blocklisted186, align 8
  br label %out

if.end189:                                        ; preds = %if.then179, %if.end175.if.end189_crit_edge
  %have.9 = phi i32 [ %or180, %if.then179 ], [ %have.8, %if.end175.if.end189_crit_edge ]
  br i1 %tobool26.not, label %if.end189.if.end8.i_crit_edge, label %cond.true

if.end189.if.end8.i_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

cond.true:                                        ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #15
  %len191 = getelementptr inbounds %struct.ceph_string, ptr %pool_ns, i32 0, i32 2
  %63 = ptrtoint ptr %len191 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len191, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %cond.true, %if.end189.if.end8.i_crit_edge
  %cond = phi i32 [ %64, %cond.true ], [ 0, %if.end189.if.end8.i_crit_edge ]
  %add192 = add i32 %cond, 33
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add192, i32 noundef 3136) #17
  %tobool194.not = icmp eq ptr %call9.i, null
  br i1 %tobool194.not, label %if.end8.i.out_crit_edge, label %if.end196

if.end8.i.out_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end196:                                        ; preds = %if.end8.i
  %pool197 = getelementptr inbounds %struct.ceph_pool_perm, ptr %call9.i, i32 0, i32 2
  %65 = ptrtoint ptr %pool197 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %pool, ptr %pool197, align 16
  %perm198 = getelementptr inbounds %struct.ceph_pool_perm, ptr %call9.i, i32 0, i32 1
  %66 = ptrtoint ptr %perm198 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %have.9, ptr %perm198, align 4
  %pool_ns_len199 = getelementptr inbounds %struct.ceph_pool_perm, ptr %call9.i, i32 0, i32 3
  %67 = ptrtoint ptr %pool_ns_len199 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %cond, ptr %pool_ns_len199, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp200.not = icmp eq i32 %cond, 0
  br i1 %cmp200.not, label %if.end196.if.end206_crit_edge, label %if.then201

if.end196.if.end206_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end206

if.then201:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #15
  %pool_ns202 = getelementptr inbounds %struct.ceph_pool_perm, ptr %call9.i, i32 0, i32 4
  %str204 = getelementptr inbounds %struct.ceph_string, ptr %pool_ns, i32 0, i32 3
  %68 = call ptr @memcpy(ptr %pool_ns202, ptr %str204, i32 %cond)
  br label %if.end206

if.end206:                                        ; preds = %if.then201, %if.end196.if.end206_crit_edge
  %arrayidx = getelementptr %struct.ceph_pool_perm, ptr %call9.i, i32 0, i32 4, i32 %cond
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %arrayidx, align 1
  %70 = ptrtoint ptr %parent.1443 to i32
  %71 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %call9.i, align 128
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %call9.i, i32 0, i32 1
  %72 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %call9.i, i32 0, i32 2
  %73 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %rb_left.i, align 8
  %74 = ptrtoint ptr %p.5463 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call9.i, ptr %p.5463, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call9.i, ptr noundef %pool_perm_tree) #13
  br label %out

out:                                              ; preds = %if.end206, %if.end8.i.out_crit_edge, %if.then185, %if.end175.out_crit_edge, %if.then172, %if.else168.out_crit_edge, %if.then143, %if.end125.out_crit_edge, %if.end119.out_crit_edge, %if.end114.out_crit_edge, %if.end100.out_crit_edge
  %have.10 = phi i32 [ %have.7442, %if.end114.out_crit_edge ], [ %have.7442, %if.end125.out_crit_edge ], [ %have.7442, %if.then143 ], [ %have.9, %if.end206 ], [ %have.7442, %if.then172 ], [ %have.7442, %if.end100.out_crit_edge ], [ %have.7442, %if.end119.out_crit_edge ], [ %have.7442, %if.else168.out_crit_edge ], [ %have.8, %if.end175.out_crit_edge ], [ %have.8, %if.then185 ], [ %have.9, %if.end8.i.out_crit_edge ]
  %err.1 = phi i32 [ %call116, %if.end114.out_crit_edge ], [ %call137, %if.end125.out_crit_edge ], [ %49, %if.then143 ], [ 0, %if.end206 ], [ -108, %if.then172 ], [ -12, %if.end100.out_crit_edge ], [ -12, %if.end119.out_crit_edge ], [ %err.0, %if.else168.out_crit_edge ], [ %err2.0, %if.end175.out_crit_edge ], [ -108, %if.then185 ], [ -12, %if.end8.i.out_crit_edge ]
  %wr_req.0 = phi ptr [ null, %if.end114.out_crit_edge ], [ %call122, %if.end125.out_crit_edge ], [ %call122, %if.then143 ], [ %call122, %if.end206 ], [ %call122, %if.then172 ], [ null, %if.end100.out_crit_edge ], [ null, %if.end119.out_crit_edge ], [ %call122, %if.else168.out_crit_edge ], [ %call122, %if.end175.out_crit_edge ], [ %call122, %if.then185 ], [ %call122, %if.end8.i.out_crit_edge ]
  tail call void @up_write(ptr noundef %pool_perm_rwsem) #13
  tail call void @ceph_osdc_put_request(ptr noundef %call101) #13
  tail call void @ceph_osdc_put_request(ptr noundef %wr_req.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool211.not = icmp eq i32 %err.1, 0
  br i1 %tobool211.not, label %out.out.thread_crit_edge, label %out._crit_edge

out._crit_edge:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %75

out.out.thread_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread

out.thread:                                       ; preds = %out.out.thread_crit_edge, %if.then98, %while.end.out.thread_crit_edge
  %have.11458 = phi i32 [ %have.10, %out.out.thread_crit_edge ], [ %35, %if.then98 ], [ %have.3, %while.end.out.thread_crit_edge ]
  br label %75

75:                                               ; preds = %out.thread, %out._crit_edge
  %76 = phi i32 [ %have.11458, %out.thread ], [ %err.1, %out._crit_edge ]
  %tobool214.not = icmp eq ptr %pool_ns, null
  br i1 %tobool214.not, label %do.body237, label %do.body216

do.body216:                                       ; preds = %75
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_pool_perm_get.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_pool_perm_get, %if.then228)) #13
          to label %if.end254 [label %if.then228], !srcloc !374

if.then228:                                       ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #15
  %len230 = getelementptr inbounds %struct.ceph_string, ptr %pool_ns, i32 0, i32 2
  %77 = ptrtoint ptr %len230 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len230, align 4
  %str231 = getelementptr inbounds %struct.ceph_string, ptr %pool_ns, i32 0, i32 3
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_pool_perm_get.__UNIQUE_ID_ddebug405, ptr noundef nonnull @.str.180, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1976, i64 noundef %pool, i32 noundef %78, ptr noundef %str231, i32 noundef %76) #13
  br label %if.end254

do.body237:                                       ; preds = %75
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_pool_perm_get.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_pool_perm_get, %if.then249)) #13
          to label %if.end254 [label %if.then249], !srcloc !374

if.then249:                                       ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_pool_perm_get.__UNIQUE_ID_ddebug406, ptr noundef nonnull @.str.182, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1978, i64 noundef %pool, i32 noundef %76) #13
  br label %if.end254

if.end254:                                        ; preds = %if.then249, %do.body237, %if.then228, %do.body216
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_pool_perm_destroy(ptr noundef %mdsc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pool_perm_tree = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 54
  %0 = ptrtoint ptr %pool_perm_tree to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pool_perm_tree, align 8
  %cmp.not7 = icmp eq ptr %1, null
  br i1 %cmp.not7, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call = tail call ptr @rb_first(ptr noundef %pool_perm_tree) #13
  tail call void @rb_erase(ptr noundef %call, ptr noundef %pool_perm_tree) #13
  tail call void @kfree(ptr noundef %call) #13
  %2 = ptrtoint ptr %pool_perm_tree to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pool_perm_tree, align 8
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @writepage_nounlock(ptr noundef %page, ptr noundef %wbc) unnamed_addr #0 align 64 {
entry:
  %page.addr = alloca ptr, align 4
  %len = alloca i64, align 8
  %ceph_wbc = alloca %struct.ceph_writeback_ctl, align 8
  %tmp_wbc = alloca %struct.writeback_control, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %page, ptr %page.addr, align 4
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 -952
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %10 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #13
  %11 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %thp_size.exit, label %if.then.i.i, !prof !370

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.39) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 341, 0\0A.popsection", ""() #13, !srcloc !381
  unreachable

thp_size.exit:                                    ; preds = %entry
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 4096, ptr %len, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ceph_wbc) #13
  %15 = call ptr @memset(ptr %ceph_wbc, i32 255, i32 24)
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %8, i32 0, i32 3
  %16 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client, align 8
  %osdc4 = getelementptr inbounds %struct.ceph_client, ptr %17, i32 0, i32 12
  %fscache.i.i = getelementptr i8, ptr %4, i32 -8
  %18 = ptrtoint ptr %fscache.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fscache.i.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %thp_size.exit.ceph_is_cache_enabled.exit_crit_edge, label %land.rhs.i

thp_size.exit.ceph_is_cache_enabled.exit_crit_edge: ; preds = %thp_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ceph_is_cache_enabled.exit

land.rhs.i:                                       ; preds = %thp_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  %flags.i = getelementptr inbounds %struct.fscache_cookie, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i, align 4
  %22 = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool5.not.i = icmp eq i32 %22, 0
  br label %ceph_is_cache_enabled.exit

ceph_is_cache_enabled.exit:                       ; preds = %land.rhs.i, %thp_size.exit.ceph_is_cache_enabled.exit_crit_edge
  %23 = phi i1 [ false, %thp_size.exit.ceph_is_cache_enabled.exit_crit_edge ], [ %tobool5.not.i, %land.rhs.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @writepage_nounlock.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@writepage_nounlock, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !374

if.then:                                          ; preds = %ceph_is_cache_enabled.exit
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %page.addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %page.addr, align 4
  %index = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @writepage_nounlock.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.21, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 531, ptr noundef %25, i32 noundef %27) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %ceph_is_cache_enabled.exit
  %28 = ptrtoint ptr %page.addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %page.addr, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp.i.not.i.i = icmp eq i32 %31, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i482, label %PagePrivate.exit.i, !prof !368

if.then.i.i482:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.40) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !380
  unreachable

PagePrivate.exit.i:                               ; preds = %do.end
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %29, align 4
  %34 = and i32 %33, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i483 = icmp eq i32 %34, 0
  br i1 %tobool.not.i483, label %PagePrivate.exit.i.do.body14_crit_edge, label %page_snap_context.exit

PagePrivate.exit.i.do.body14_crit_edge:           ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body14

page_snap_context.exit:                           ; preds = %PagePrivate.exit.i
  %private.i = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 1, i32 0, i32 3
  %35 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %private.i, align 4
  %37 = inttoptr i32 %36 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool12.not = icmp eq i32 %36, 0
  br i1 %tobool12.not, label %page_snap_context.exit.do.body14_crit_edge, label %if.end31

page_snap_context.exit.do.body14_crit_edge:       ; preds = %page_snap_context.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body14

do.body14:                                        ; preds = %page_snap_context.exit.do.body14_crit_edge, %PagePrivate.exit.i.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @writepage_nounlock.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@writepage_nounlock, %if.then26)) #13
          to label %cleanup375 [label %if.then26], !srcloc !374

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %page.addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %page.addr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @writepage_nounlock.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.23, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 536, ptr noundef %4, ptr noundef %39) #13
  br label %cleanup375

if.end31:                                         ; preds = %page_snap_context.exit
  %call32 = call fastcc ptr @get_oldest_context(ptr noundef %4, ptr noundef nonnull %ceph_wbc, ptr noundef nonnull %37)
  %seq = getelementptr inbounds %struct.ceph_snap_context, ptr %37, i32 0, i32 1
  %40 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %seq, align 8
  %seq33 = getelementptr inbounds %struct.ceph_snap_context, ptr %call32, i32 0, i32 1
  %42 = ptrtoint ptr %seq33 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %seq33, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %43)
  %cmp = icmp ugt i64 %41, %43
  br i1 %cmp, label %do.body36, label %if.end87

do.body36:                                        ; preds = %if.end31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @writepage_nounlock.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@writepage_nounlock, %if.then48)) #13
          to label %do.end52 [label %if.then48], !srcloc !374

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %page.addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %page.addr, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @writepage_nounlock.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.25, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 542, ptr noundef %4, ptr noundef %45, ptr noundef nonnull %37) #13
  br label %do.end52

do.end52:                                         ; preds = %if.then48, %do.body36
  %46 = call i32 @llvm.read_register.i32(metadata !358) #13
  %and.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags, align 4
  %and = and i32 %51, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool54.not = icmp eq i32 %and, 0
  br i1 %tobool54.not, label %do.end72, label %do.end52.if.end78_crit_edge, !prof !368

do.end52.if.end78_crit_edge:                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78

do.end72:                                         ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 544, i32 noundef 9, ptr noundef null) #13
  br label %if.end78

if.end78:                                         ; preds = %do.end72, %do.end52.if.end78_crit_edge
  call void @ceph_put_snap_context(ptr noundef %call32) #13
  %52 = ptrtoint ptr %page.addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %page.addr, align 4
  %call86 = call zeroext i1 @redirty_page_for_writepage(ptr noundef %wbc, ptr noundef %53) #13
  br label %cleanup375

if.end87:                                         ; preds = %if.end31
  call void @ceph_put_snap_context(ptr noundef %call32) #13
  %54 = ptrtoint ptr %ceph_wbc to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %ceph_wbc, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %55, i64 %shl.i)
  %cmp88.not = icmp sgt i64 %55, %shl.i
  br i1 %cmp88.not, label %if.end111, label %do.body91

do.body91:                                        ; preds = %if.end87
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @writepage_nounlock.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@writepage_nounlock, %if.then103)) #13
          to label %do.end108 [label %if.then103], !srcloc !374

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %page.addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %page.addr, align 4
  %58 = ptrtoint ptr %ceph_wbc to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %ceph_wbc, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @writepage_nounlock.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.27, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 553, ptr noundef %57, i64 noundef %59) #13
  br label %do.end108

do.end108:                                        ; preds = %if.then103, %do.body91
  %60 = ptrtoint ptr %page.addr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %page.addr, align 4
  %mapping109 = getelementptr inbounds %struct.page, ptr %61, i32 0, i32 1, i32 0, i32 1
  %62 = ptrtoint ptr %mapping109 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mapping109, align 4
  %a_ops = getelementptr inbounds %struct.address_space, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %a_ops, align 4
  %invalidatepage = getelementptr inbounds %struct.address_space_operations, ptr %65, i32 0, i32 9
  %66 = ptrtoint ptr %invalidatepage to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %invalidatepage, align 4
  %68 = getelementptr inbounds %struct.page, ptr %61, i32 0, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %68, align 4
  %and.i.i.i485 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i485)
  %tobool.not.i.i486 = icmp eq i32 %and.i.i.i485, 0
  br i1 %tobool.not.i.i486, label %thp_size.exit488, label %if.then.i.i487, !prof !370

if.then.i.i487:                                   ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %61, ptr noundef nonnull @.str.39) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 341, 0\0A.popsection", ""() #13, !srcloc !381
  unreachable

thp_size.exit488:                                 ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #15
  call void %67(ptr noundef %61, i32 noundef 0, i32 noundef 4096) #13
  br label %cleanup375

if.end111:                                        ; preds = %if.end87
  %71 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %len, align 8
  %add = add i64 %72, %shl.i
  call void @__sanitizer_cov_trace_cmp8(i64 %55, i64 %add)
  %cmp113 = icmp slt i64 %55, %add
  br i1 %cmp113, label %if.then115, label %if.end111.do.body118_crit_edge

if.end111.do.body118_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body118

if.then115:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i64 %55, %shl.i
  %73 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %sub, ptr %len, align 8
  br label %do.body118

do.body118:                                       ; preds = %if.then115, %if.end111.do.body118_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @writepage_nounlock.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@writepage_nounlock, %if.then130)) #13
          to label %do.end136 [label %if.then130], !srcloc !374

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %page.addr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %page.addr, align 4
  %index132 = getelementptr inbounds %struct.page, ptr %75, i32 0, i32 1, i32 0, i32 2
  %76 = ptrtoint ptr %index132 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %index132, align 4
  %78 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %len, align 8
  %80 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %seq, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @writepage_nounlock.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.29, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 562, ptr noundef %4, ptr noundef %75, i32 noundef %77, i64 noundef %shl.i, i64 noundef %79, ptr noundef nonnull %37, i64 noundef %81) #13
  br label %do.end136

do.end136:                                        ; preds = %if.then130, %do.body118
  %writeback_count = getelementptr inbounds %struct.ceph_fs_client, ptr %8, i32 0, i32 10
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %writeback_count, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !386
  call void @llvm.prefetch.p0(ptr %writeback_count, i32 1, i32 3, i32 1) #13
  %82 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %writeback_count, ptr %writeback_count, i32 1, ptr elementtype(i32) %writeback_count) #13, !srcloc !387
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %82, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !388
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %8, i32 0, i32 2
  %83 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mount_options, align 4
  %congestion_kb = getelementptr inbounds %struct.ceph_mount_options, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %congestion_kb to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %congestion_kb, align 4
  %shr = lshr i32 %86, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i.i, i32 %shr)
  %cmp138 = icmp ugt i32 %asmresult.i.i.i.i.i, %shr
  br i1 %cmp138, label %if.then140, label %do.end136.if.end142_crit_edge

do.end136.if.end142_crit_edge:                    ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end142

if.then140:                                       ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #15
  %call141 = call ptr @inode_to_bdi(ptr noundef %4) #13
  call void @set_bdi_congested(ptr noundef %call141, i32 noundef 0) #13
  br label %if.end142

if.end142:                                        ; preds = %if.then140, %do.end136.if.end142_crit_edge
  %i_layout = getelementptr i8, ptr %4, i32 -824
  %87 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %agg.tmp.sroa.0.0.copyload = load i64, ptr %add.ptr.i, align 8
  %agg.tmp.sroa.2.0.add.ptr.i.i.sroa_idx = getelementptr i8, ptr %4, i32 -944
  %88 = ptrtoint ptr %agg.tmp.sroa.2.0.add.ptr.i.i.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %88)
  %agg.tmp.sroa.2.0.copyload = load i64, ptr %agg.tmp.sroa.2.0.add.ptr.i.i.sroa_idx, align 8
  %truncate_seq = getelementptr inbounds %struct.ceph_writeback_ctl, ptr %ceph_wbc, i32 0, i32 2
  %89 = ptrtoint ptr %truncate_seq to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %truncate_seq, align 8
  %truncate_size = getelementptr inbounds %struct.ceph_writeback_ctl, ptr %ceph_wbc, i32 0, i32 1
  %91 = ptrtoint ptr %truncate_size to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %truncate_size, align 8
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %agg.tmp.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %agg.tmp.sroa.2.0.copyload, 1
  %call143 = call ptr @ceph_osdc_new_request(ptr noundef %osdc4, ptr noundef %i_layout, [2 x i64] %.fca.1.insert, i64 noundef %shl.i, ptr noundef nonnull %len, i32 noundef 0, i32 noundef 1, i32 noundef 8705, i32 noundef 32, ptr noundef nonnull %37, i32 noundef %90, i64 noundef %92, i1 noundef zeroext true) #13
  %cmp.i = icmp ugt ptr %call143, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then145, label %if.end147

if.then145:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #15
  %93 = ptrtoint ptr %call143 to i32
  br label %cleanup375

if.end147:                                        ; preds = %if.end142
  %94 = ptrtoint ptr %page.addr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %page.addr, align 4
  %call148 = call zeroext i1 @set_page_writeback(ptr noundef %95) #13
  br i1 %23, label %if.then150, label %if.end147.if.end151_crit_edge

if.end147.if.end151_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end151

if.then150:                                       ; preds = %if.end147
  %96 = ptrtoint ptr %page.addr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %page.addr, align 4
  %98 = getelementptr inbounds %struct.page, ptr %97, i32 0, i32 1
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %98, align 4
  %and.i.i.i489 = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i489)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i489, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !370

if.then.i.i.i:                                    ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = add i32 %100, -1
  br label %ceph_set_page_fscache.exit

if.end.i.i.i:                                     ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #15
  %101 = ptrtoint ptr %97 to i32
  br label %ceph_set_page_fscache.exit

ceph_set_page_fscache.exit:                       ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %101, %if.end.i.i.i ]
  %102 = inttoptr i32 %retval.0.i.i.i to ptr
  call fastcc void @folio_start_fscache(ptr noundef %102) #13
  br label %if.end151

if.end151:                                        ; preds = %ceph_set_page_fscache.exit, %if.end147.if.end151_crit_edge
  %103 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %len, align 8
  %105 = ptrtoint ptr %fscache.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %fscache.i.i, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 9
  %107 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %i_mapping.i, align 8
  %call2.i = call fastcc i64 @i_size_read(ptr noundef %4) #13
  br i1 %23, label %if.then.i.i492, label %if.end151.ceph_fscache_write_to_cache.exit_crit_edge

if.end151.ceph_fscache_write_to_cache.exit_crit_edge: ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #15
  br label %ceph_fscache_write_to_cache.exit

if.then.i.i492:                                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i491 = trunc i64 %104 to i32
  call void @__fscache_write_to_cache(ptr noundef %106, ptr noundef %108, i64 noundef %shl.i, i32 noundef %conv.i491, i64 noundef %call2.i, ptr noundef nonnull @ceph_fscache_write_terminated, ptr noundef %4, i1 noundef zeroext true) #13
  br label %ceph_fscache_write_to_cache.exit

ceph_fscache_write_to_cache.exit:                 ; preds = %if.then.i.i492, %if.end151.ceph_fscache_write_to_cache.exit_crit_edge
  %109 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %len, align 8
  %111 = ptrtoint ptr %page.addr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %page.addr, align 4
  %113 = getelementptr inbounds %struct.page, ptr %112, i32 0, i32 1
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %113, align 4
  %and.i.i.i493 = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i493)
  %tobool.not.i.i494 = icmp eq i32 %and.i.i.i493, 0
  br i1 %tobool.not.i.i494, label %thp_size.exit496, label %if.then.i.i495, !prof !370

if.then.i.i495:                                   ; preds = %ceph_fscache_write_to_cache.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %112, ptr noundef nonnull @.str.39) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 341, 0\0A.popsection", ""() #13, !srcloc !381
  unreachable

thp_size.exit496:                                 ; preds = %ceph_fscache_write_to_cache.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %110)
  %cmp155 = icmp sgt i64 %110, 4096
  br i1 %cmp155, label %land.rhs, label %thp_size.exit496.if.end200_crit_edge

thp_size.exit496.if.end200_crit_edge:             ; preds = %thp_size.exit496
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end200

land.rhs:                                         ; preds = %thp_size.exit496
  %.b455 = load i1, ptr @writepage_nounlock.__already_done, align 1
  br i1 %.b455, label %land.rhs.if.end200_crit_edge, label %if.then173, !prof !370

land.rhs.if.end200_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end200

if.then173:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @writepage_nounlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 581, i32 noundef 9, ptr noundef null) #13
  br label %if.end200

if.end200:                                        ; preds = %if.then173, %land.rhs.if.end200_crit_edge, %thp_size.exit496.if.end200_crit_edge
  %116 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %len, align 8
  call void @osd_req_op_extent_osd_data_pages(ptr noundef %call143, i32 noundef 0, ptr noundef nonnull %page.addr, i64 noundef %117, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @writepage_nounlock.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@writepage_nounlock, %if.then220)) #13
          to label %do.end224 [label %if.then220], !srcloc !374

if.then220:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #15
  %118 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %len, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @writepage_nounlock.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.31, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 583, i64 noundef %shl.i, i64 noundef %119, i64 noundef %119) #13
  br label %do.end224

do.end224:                                        ; preds = %if.then220, %if.end200
  %r_mtime = getelementptr inbounds %struct.ceph_osd_request, ptr %call143, i32 0, i32 21
  %i_mtime = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 16
  %120 = call ptr @memcpy(ptr %r_mtime, ptr %i_mtime, i32 16)
  %call225 = call i32 @ceph_osdc_start_request(ptr noundef %osdc4, ptr noundef %call143, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %if.then227, label %do.end224.if.end229_crit_edge

do.end224.if.end229_crit_edge:                    ; preds = %do.end224
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end229

if.then227:                                       ; preds = %do.end224
  call void @__sanitizer_cov_trace_pc() #15
  %call228 = call i32 @ceph_osdc_wait_request(ptr noundef %osdc4, ptr noundef %call143) #13
  br label %if.end229

if.end229:                                        ; preds = %if.then227, %do.end224.if.end229_crit_edge
  %err.0 = phi i32 [ %call225, %do.end224.if.end229_crit_edge ], [ %call228, %if.then227 ]
  %mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %8, i32 0, i32 9
  %121 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mdsc, align 8
  %r_start_latency = getelementptr inbounds %struct.ceph_osd_request, ptr %call143, i32 0, i32 26
  %123 = ptrtoint ptr %r_start_latency to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %r_start_latency, align 8
  %r_end_latency = getelementptr inbounds %struct.ceph_osd_request, ptr %call143, i32 0, i32 27
  %125 = ptrtoint ptr %r_end_latency to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %r_end_latency, align 8
  %127 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %len, align 8
  %conv230 = trunc i64 %128 to i32
  %arrayidx.i = getelementptr %struct.ceph_mds_client, ptr %122, i32 0, i32 49, i32 6, i32 1
  call void @ceph_update_metrics(ptr noundef %arrayidx.i, i64 noundef %124, i64 noundef %126, i32 noundef %conv230, i32 noundef %err.0) #13
  call void @ceph_osdc_put_request(ptr noundef %call143) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp231 = icmp eq i32 %err.0, 0
  br i1 %cmp231, label %if.then233, label %if.end229.if.end235_crit_edge

if.end229.if.end235_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end235

if.then233:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #15
  %129 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %len, align 8
  %conv234 = trunc i64 %130 to i32
  br label %if.end235

if.end235:                                        ; preds = %if.then233, %if.end229.if.end235_crit_edge
  %err.1 = phi i32 [ %conv234, %if.then233 ], [ %err.0, %if.end229.if.end235_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp236 = icmp slt i32 %err.1, 0
  br i1 %cmp236, label %if.then238, label %do.body285

if.then238:                                       ; preds = %if.end235
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmp_wbc) #13
  %131 = call ptr @memset(ptr %tmp_wbc, i32 255, i32 64)
  %tobool239.not = icmp eq ptr %wbc, null
  %spec.store.select = select i1 %tobool239.not, ptr %tmp_wbc, ptr %wbc
  %132 = zext i32 %err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %err.1, label %if.then238.do.body268_crit_edge [
    i32 -512, label %do.body245
    i32 -108, label %if.then266
  ]

if.then238.do.body268_crit_edge:                  ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body268

do.body245:                                       ; preds = %if.then238
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @writepage_nounlock.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@writepage_nounlock, %if.then257)) #13
          to label %do.end261 [label %if.then257], !srcloc !374

if.then257:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #15
  %133 = ptrtoint ptr %page.addr to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %page.addr, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @writepage_nounlock.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.33, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 603, ptr noundef %134) #13
  br label %do.end261

do.end261:                                        ; preds = %if.then257, %do.body245
  %135 = ptrtoint ptr %page.addr to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %page.addr, align 4
  %call262 = call zeroext i1 @redirty_page_for_writepage(ptr noundef nonnull %spec.store.select, ptr noundef %136) #13
  %137 = ptrtoint ptr %page.addr to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %page.addr, align 4
  call void @end_page_writeback(ptr noundef %138) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmp_wbc) #13
  br label %cleanup375

if.then266:                                       ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #15
  %blocklisted = getelementptr inbounds %struct.ceph_fs_client, ptr %8, i32 0, i32 5
  %139 = ptrtoint ptr %blocklisted to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %blocklisted, align 8
  br label %do.body268

do.body268:                                       ; preds = %if.then266, %if.then238.do.body268_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @writepage_nounlock.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@writepage_nounlock, %if.then280)) #13
          to label %do.end284 [label %if.then280], !srcloc !374

if.then280:                                       ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #15
  %140 = ptrtoint ptr %page.addr to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %page.addr, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @writepage_nounlock.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.35, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 611, i32 noundef %err.1, ptr noundef %141) #13
  br label %do.end284

do.end284:                                        ; preds = %if.then280, %do.body268
  %i_data = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 46
  call fastcc void @mapping_set_error(ptr noundef %i_data, i32 noundef %err.1)
  %tmp_wbc.sroa.gep = getelementptr inbounds %struct.writeback_control, ptr %tmp_wbc, i32 0, i32 1
  %wbc.sroa.gep = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 1
  %spec.store.select.sroa.sel = select i1 %tobool239.not, ptr %tmp_wbc.sroa.gep, ptr %wbc.sroa.gep
  %142 = ptrtoint ptr %spec.store.select.sroa.sel to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %spec.store.select.sroa.sel, align 4
  %inc = add i32 %143, 1
  store i32 %inc, ptr %spec.store.select.sroa.sel, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmp_wbc) #13
  br label %if.end302

do.body285:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @writepage_nounlock.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@writepage_nounlock, %if.then297)) #13
          to label %if.end302 [label %if.then297], !srcloc !374

if.then297:                                       ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #15
  %144 = ptrtoint ptr %page.addr to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %page.addr, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @writepage_nounlock.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.37, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 615, ptr noundef %145) #13
  br label %if.end302

if.end302:                                        ; preds = %if.then297, %do.body285, %do.end284
  %err.2 = phi i32 [ %err.1, %do.end284 ], [ 0, %if.then297 ], [ 0, %do.body285 ]
  %146 = ptrtoint ptr %page.addr to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %page.addr, align 4
  %148 = getelementptr inbounds %struct.page, ptr %147, i32 0, i32 1
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %148, align 4
  %and.i.i = and i32 %150, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i497 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i497, label %if.end.i.i, label %if.then.i.i498, !prof !370

if.then.i.i498:                                   ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %150, -1
  br label %detach_page_private.exit

if.end.i.i:                                       ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #15
  %151 = ptrtoint ptr %147 to i32
  br label %detach_page_private.exit

detach_page_private.exit:                         ; preds = %if.end.i.i, %if.then.i.i498
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i498 ], [ %151, %if.end.i.i ]
  %152 = inttoptr i32 %retval.0.i.i to ptr
  %call1.i = call fastcc ptr @folio_detach_private(ptr noundef %152) #13
  %cmp305.not = icmp eq ptr %call1.i, %37
  br i1 %cmp305.not, label %detach_page_private.exit.if.end352_crit_edge, label %land.rhs314

detach_page_private.exit.if.end352_crit_edge:     ; preds = %detach_page_private.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end352

land.rhs314:                                      ; preds = %detach_page_private.exit
  %.b453454 = load i1, ptr @writepage_nounlock.__already_done.38, align 1
  br i1 %.b453454, label %land.rhs314.if.end352_crit_edge, label %if.then325, !prof !370

land.rhs314.if.end352_crit_edge:                  ; preds = %land.rhs314
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end352

if.then325:                                       ; preds = %land.rhs314
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @writepage_nounlock.__already_done.38, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 619, i32 noundef 9, ptr noundef null) #13
  br label %if.end352

if.end352:                                        ; preds = %if.then325, %land.rhs314.if.end352_crit_edge, %detach_page_private.exit.if.end352_crit_edge
  %153 = ptrtoint ptr %page.addr to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %page.addr, align 4
  call void @end_page_writeback(ptr noundef %154) #13
  call void @ceph_put_wrbuffer_cap_refs(ptr noundef %add.ptr.i, i32 noundef 1, ptr noundef nonnull %37) #13
  call void @ceph_put_snap_context(ptr noundef nonnull %37) #13
  %call.i.i480 = call zeroext i1 @__kasan_check_write(ptr noundef %writeback_count, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !402
  call void @llvm.prefetch.p0(ptr %writeback_count, i32 1, i32 3, i32 1) #13
  %155 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %writeback_count, ptr %writeback_count, i32 1, ptr elementtype(i32) %writeback_count) #13, !srcloc !403
  %asmresult.i.i.i.i.i481 = extractvalue { i32, i32 } %155, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !404
  %156 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mount_options, align 4
  %congestion_kb363 = getelementptr inbounds %struct.ceph_mount_options, ptr %157, i32 0, i32 4
  %158 = ptrtoint ptr %congestion_kb363 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %congestion_kb363, align 4
  %shr364 = lshr i32 %159, 2
  %shr368 = lshr i32 %159, 4
  %sub369 = sub nsw i32 %shr364, %shr368
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i.i481, i32 %sub369)
  %cmp370 = icmp ult i32 %asmresult.i.i.i.i.i481, %sub369
  br i1 %cmp370, label %if.then372, label %if.end352.cleanup375_crit_edge

if.end352.cleanup375_crit_edge:                   ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup375

if.then372:                                       ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #15
  %call373 = call ptr @inode_to_bdi(ptr noundef %4) #13
  call void @clear_bdi_congested(ptr noundef %call373, i32 noundef 0) #13
  br label %cleanup375

cleanup375:                                       ; preds = %if.then372, %if.end352.cleanup375_crit_edge, %do.end261, %if.then145, %thp_size.exit488, %if.end78, %if.then26, %do.body14
  %retval.1 = phi i32 [ 0, %if.end78 ], [ 0, %thp_size.exit488 ], [ %93, %if.then145 ], [ 0, %if.then26 ], [ -512, %do.end261 ], [ %err.2, %if.then372 ], [ %err.2, %if.end352.cleanup375_crit_edge ], [ 0, %do.body14 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ceph_wbc) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #13
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_wait_private_2(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ceph_is_cache_enabled(ptr nocapture noundef readonly %inode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %fscache.i = getelementptr i8, ptr %inode, i32 -8
  %0 = ptrtoint ptr %fscache.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fscache.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.fscache_cookie, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %5 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool5.not, %land.rhs ]
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_oldest_context(ptr noundef %inode, ptr noundef writeonly %ctl, ptr noundef readonly %page_snapc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ceph_lock = getelementptr i8, ptr %inode, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #13
  %i_cap_snaps = getelementptr i8, ptr %inode, i32 -404
  %0 = ptrtoint ptr %i_cap_snaps to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn130 = load ptr, ptr %i_cap_snaps, align 4
  %cmp.not132 = icmp eq ptr %.pn130, %i_cap_snaps
  br i1 %cmp.not132, label %entry.land.lhs.true46_crit_edge, label %do.body.lr.ph

entry.land.lhs.true46_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true46

do.body.lr.ph:                                    ; preds = %entry
  %tobool17.not = icmp eq ptr %ctl, null
  %size_stable = getelementptr inbounds %struct.ceph_writeback_ctl, ptr %ctl, i32 0, i32 3
  %truncate_size25 = getelementptr inbounds %struct.ceph_writeback_ctl, ptr %ctl, i32 0, i32 1
  %truncate_seq26 = getelementptr inbounds %struct.ceph_writeback_ctl, ptr %ctl, i32 0, i32 2
  %head_snapc = getelementptr inbounds %struct.ceph_writeback_ctl, ptr %ctl, i32 0, i32 4
  %tobool33.not = icmp eq ptr %page_snapc, null
  %seq = getelementptr inbounds %struct.ceph_snap_context, ptr %page_snapc, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %do.body.lr.ph
  %.pn134 = phi ptr [ %.pn130, %do.body.lr.ph ], [ %.pn, %for.inc.do.body_crit_edge ]
  %snapc.0133 = phi ptr [ null, %do.body.lr.ph ], [ %snapc.1, %for.inc.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_oldest_context.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_oldest_context, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !374

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %capsnap.0135 = getelementptr i8, ptr %.pn134, i32 -4
  %context = getelementptr i8, ptr %.pn134, i32 60
  %1 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %context, align 8
  %dirty_pages = getelementptr i8, ptr %.pn134, i32 196
  %3 = ptrtoint ptr %dirty_pages to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dirty_pages, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_oldest_context.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.43, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 438, ptr noundef %capsnap.0135, ptr noundef %2, i32 noundef %4) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %dirty_pages8 = getelementptr i8, ptr %.pn134, i32 196
  %5 = ptrtoint ptr %dirty_pages8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dirty_pages8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %do.end.for.inc_crit_edge, label %if.end11

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end11:                                         ; preds = %do.end
  %tobool12.not = icmp eq ptr %snapc.0133, null
  br i1 %tobool12.not, label %if.end11.if.end16_crit_edge, label %land.lhs.true

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end11
  %context13 = getelementptr i8, ptr %.pn134, i32 60
  %7 = ptrtoint ptr %context13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %context13, align 8
  %cmp14.not = icmp eq ptr %8, %page_snapc
  br i1 %cmp14.not, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end11.if.end16_crit_edge
  br i1 %tobool17.not, label %if.end16.if.end27_crit_edge, label %if.then18

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then18:                                        ; preds = %if.end16
  %writing = getelementptr i8, ptr %.pn134, i32 192
  %9 = ptrtoint ptr %writing to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %writing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool19.not = icmp eq i32 %10, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  %call21 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  br label %if.end24

if.else:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  %size = getelementptr i8, ptr %.pn134, i32 92
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then20
  %storemerge139 = phi i64 [ %call21, %if.then20 ], [ %12, %if.else ]
  %storemerge = phi i8 [ 0, %if.then20 ], [ 1, %if.else ]
  %13 = ptrtoint ptr %ctl to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %storemerge139, ptr %ctl, align 8
  %14 = ptrtoint ptr %size_stable to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %storemerge, ptr %size_stable, align 4
  %truncate_size = getelementptr i8, ptr %.pn134, i32 180
  %15 = ptrtoint ptr %truncate_size to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %truncate_size, align 8
  %17 = ptrtoint ptr %truncate_size25 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %truncate_size25, align 8
  %truncate_seq = getelementptr i8, ptr %.pn134, i32 188
  %18 = ptrtoint ptr %truncate_seq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %truncate_seq, align 8
  %20 = ptrtoint ptr %truncate_seq26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %truncate_seq26, align 8
  %21 = ptrtoint ptr %head_snapc to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %head_snapc, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.end24, %if.end16.if.end27_crit_edge
  br i1 %tobool12.not, label %if.end30, label %if.end27.if.end77_crit_edge

if.end27.if.end77_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.end30:                                         ; preds = %if.end27
  %context31 = getelementptr i8, ptr %.pn134, i32 60
  %22 = ptrtoint ptr %context31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %context31, align 8
  %call32 = tail call ptr @ceph_get_snap_context(ptr noundef %23) #13
  %cmp34 = icmp eq ptr %call32, %page_snapc
  %or.cond = select i1 %tobool33.not, i1 true, i1 %cmp34
  br i1 %or.cond, label %if.end30.for.end_crit_edge, label %lor.lhs.false35

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

lor.lhs.false35:                                  ; preds = %if.end30
  %24 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %seq, align 8
  %seq36 = getelementptr inbounds %struct.ceph_snap_context, ptr %call32, i32 0, i32 1
  %26 = ptrtoint ptr %seq36 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %seq36, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %27)
  %cmp37 = icmp ugt i64 %25, %27
  br i1 %cmp37, label %lor.lhs.false35.for.end_crit_edge, label %lor.lhs.false35.for.inc_crit_edge

lor.lhs.false35.for.inc_crit_edge:                ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false35.for.end_crit_edge:                ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false35.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %do.end.for.inc_crit_edge
  %snapc.1 = phi ptr [ %snapc.0133, %land.lhs.true.for.inc_crit_edge ], [ %call32, %lor.lhs.false35.for.inc_crit_edge ], [ %snapc.0133, %do.end.for.inc_crit_edge ]
  %28 = ptrtoint ptr %.pn134 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn134, align 4
  %cmp.not = icmp eq ptr %.pn, %i_cap_snaps
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %lor.lhs.false35.for.end_crit_edge, %if.end30.for.end_crit_edge
  %snapc.2 = phi ptr [ %snapc.1, %for.inc.for.end_crit_edge ], [ %call32, %lor.lhs.false35.for.end_crit_edge ], [ %call32, %if.end30.for.end_crit_edge ]
  %tobool45.not = icmp eq ptr %snapc.2, null
  br i1 %tobool45.not, label %for.end.land.lhs.true46_crit_edge, label %for.end.if.end77_crit_edge

for.end.if.end77_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

for.end.land.lhs.true46_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true46

land.lhs.true46:                                  ; preds = %for.end.land.lhs.true46_crit_edge, %entry.land.lhs.true46_crit_edge
  %i_wrbuffer_ref_head = getelementptr i8, ptr %inode, i32 -188
  %29 = ptrtoint ptr %i_wrbuffer_ref_head to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_wrbuffer_ref_head, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool47.not = icmp eq i32 %30, 0
  br i1 %tobool47.not, label %land.lhs.true46.if.end77_crit_edge, label %if.then48

land.lhs.true46.if.end77_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.then48:                                        ; preds = %land.lhs.true46
  %i_head_snapc = getelementptr i8, ptr %inode, i32 -396
  %31 = ptrtoint ptr %i_head_snapc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_head_snapc, align 4
  %call49 = tail call ptr @ceph_get_snap_context(ptr noundef %32) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_oldest_context.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_oldest_context, %if.then62)) #13
          to label %do.end67 [label %if.then62], !srcloc !374

if.then62:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %i_wrbuffer_ref_head to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_wrbuffer_ref_head, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_oldest_context.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.45, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 471, ptr noundef %call49, i32 noundef %34) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then62, %if.then48
  %tobool68.not = icmp eq ptr %ctl, null
  br i1 %tobool68.not, label %do.end67.if.end77_crit_edge, label %if.then69

do.end67.if.end77_crit_edge:                      ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.then69:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #15
  %call70 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %35 = ptrtoint ptr %ctl to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %call70, ptr %ctl, align 8
  %i_truncate_size = getelementptr i8, ptr %inode, i32 -264
  %36 = ptrtoint ptr %i_truncate_size to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %i_truncate_size, align 8
  %truncate_size72 = getelementptr inbounds %struct.ceph_writeback_ctl, ptr %ctl, i32 0, i32 1
  %38 = ptrtoint ptr %truncate_size72 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %truncate_size72, align 8
  %i_truncate_seq = getelementptr i8, ptr %inode, i32 -272
  %39 = ptrtoint ptr %i_truncate_seq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_truncate_seq, align 8
  %truncate_seq73 = getelementptr inbounds %struct.ceph_writeback_ctl, ptr %ctl, i32 0, i32 2
  %41 = ptrtoint ptr %truncate_seq73 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %truncate_seq73, align 8
  %size_stable74 = getelementptr inbounds %struct.ceph_writeback_ctl, ptr %ctl, i32 0, i32 3
  %42 = ptrtoint ptr %size_stable74 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %size_stable74, align 4
  %head_snapc75 = getelementptr inbounds %struct.ceph_writeback_ctl, ptr %ctl, i32 0, i32 4
  %43 = ptrtoint ptr %head_snapc75 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %head_snapc75, align 1
  br label %if.end77

if.end77:                                         ; preds = %if.then69, %do.end67.if.end77_crit_edge, %land.lhs.true46.if.end77_crit_edge, %for.end.if.end77_crit_edge, %if.end27.if.end77_crit_edge
  %snapc.3 = phi ptr [ %snapc.2, %for.end.if.end77_crit_edge ], [ %call49, %if.then69 ], [ %call49, %do.end67.if.end77_crit_edge ], [ null, %land.lhs.true46.if.end77_crit_edge ], [ %snapc.0133, %if.end27.if.end77_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #13
  ret ptr %snapc.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_put_snap_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @redirty_page_for_writepage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_bdi_congested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mapping_set_error(ptr noundef %mapping, i32 noundef %error) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__filemap_set_wb_err(ptr noundef %mapping, i32 noundef %error) #13
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %entry.if.end7_crit_edge, label %if.then5

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_wb_err = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 50
  %call = tail call i32 @errseq_set(ptr noundef %s_wb_err, i32 noundef %error) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %entry.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %error)
  %cmp = icmp eq i32 %error, -28
  %flags = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 10
  %. = zext i1 %cmp to i32
  tail call void @_set_bit(i32 noundef %., ptr noundef %flags) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_put_wrbuffer_cap_refs(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_bdi_congested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_get_snap_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @folio_start_fscache(ptr noundef %folio) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private_2.exit, label %if.then.i.i, !prof !370

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.39) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_test_private_2.exit:                        ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %do.end5, label %if.then, !prof !370

if.then:                                          ; preds = %folio_test_private_2.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.46) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/netfs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 41, 0\0A.popsection", ""() #13, !srcloc !424
  unreachable

do.end5:                                          ; preds = %folio_test_private_2.exit
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #13
  %6 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %_refcount.i.i.i, align 4
  %add.i = add i32 %7, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 128
  br i1 %cmp.i, label %if.then.i, label %do.end5.i, !prof !368

if.then.i:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.48) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #13, !srcloc !425
  unreachable

do.end5.i:                                        ; preds = %do.end5
  %call.i.i.i.i9.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i, ptr %_refcount.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i) #13, !srcloc !426
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@folio_start_fscache, %if.then.i.i.i)) #13
          to label %folio_get.exit [label %if.then.i.i.i], !srcloc !374

if.then.i.i.i:                                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__page_ref_mod(ptr noundef %folio, i32 noundef 1) #13
  br label %folio_get.exit

folio_get.exit:                                   ; preds = %if.then.i.i.i, %do.end5.i
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %0, align 4
  %and.i.i.i9 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i9)
  %tobool.not.i.i10 = icmp eq i32 %and.i.i.i9, 0
  br i1 %tobool.not.i.i10, label %folio_set_private_2.exit, label %if.then.i.i11, !prof !370

if.then.i.i11:                                    ; preds = %folio_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.39) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_set_private_2.exit:                         ; preds = %folio_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 14, ptr noundef %folio) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_fscache_write_terminated(ptr noundef %priv, i32 noundef %error, i1 noundef zeroext %was_async) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %error)
  %cmp = icmp ugt i32 %error, -4096
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge, !prof !368

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -105, i32 %error)
  %cmp2.not = icmp eq i32 %error, -105
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ceph_fscache_invalidate(ptr noundef %priv, i1 noundef zeroext false) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_write_to_cache(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_fscache_invalidate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @folio_detach_private(ptr noundef %folio) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %private.i = getelementptr inbounds %struct.anon.112, ptr %folio, i32 0, i32 4
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %2 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private.exit, label %if.then.i.i, !prof !370

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.39) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_test_private.exit:                          ; preds = %entry
  %5 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %folio, align 4
  %7 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %folio_test_private.exit.cleanup_crit_edge, label %if.end

folio_test_private.exit.cleanup_crit_edge:        ; preds = %folio_test_private.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %folio_test_private.exit
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %2, align 4
  %and.i.i.i6 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i6)
  %tobool.not.i.i7 = icmp eq i32 %and.i.i.i6, 0
  br i1 %tobool.not.i.i7, label %folio_clear_private.exit, label %if.then.i.i8, !prof !370

if.then.i.i8:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.39) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_clear_private.exit:                         ; preds = %if.end
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %folio) #13
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %private.i, align 4
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  %11 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !368

if.then.i.i.i:                                    ; preds = %folio_clear_private.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.49) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !401
  unreachable

do.end5.i.i.i:                                    ; preds = %folio_clear_private.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !402
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #13
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #13, !srcloc !403
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !404
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@folio_detach_private, %if.then.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !374

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %folio, i32 noundef -1, i32 noundef %conv.i.i.i.i) #13
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i, label %folio_put_testzero.exit.i.cleanup_crit_edge

folio_put_testzero.exit.i.cleanup_crit_edge:      ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__put_page(ptr noundef %folio) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %folio_put_testzero.exit.i.cleanup_crit_edge, %folio_test_private.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %folio_test_private.exit.cleanup_crit_edge ], [ %1, %folio_put_testzero.exit.i.cleanup_crit_edge ], [ %1, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netfs_readpage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_file_index(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_begin_cache_operation(ptr noundef %rreq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %inode = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 1
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 4
  %fscache.i = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %fscache.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fscache.i, align 8
  %cache_resources = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.fscache_begin_read_operation.exit_crit_edge, label %land.lhs.true.i

entry.fscache_begin_read_operation.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %fscache_begin_read_operation.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i = tail call i32 @__fscache_begin_read_operation(ptr noundef %cache_resources, ptr noundef nonnull %3) #13
  br label %fscache_begin_read_operation.exit

fscache_begin_read_operation.exit:                ; preds = %if.then.i, %land.lhs.true.i.fscache_begin_read_operation.exit_crit_edge, %entry.fscache_begin_read_operation.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.then.i ], [ -105, %land.lhs.true.i.fscache_begin_read_operation.exit_crit_edge ], [ -105, %entry.fscache_begin_read_operation.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_netfs_expand_readahead(ptr nocapture noundef %rreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 2
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_layout = getelementptr i8, ptr %3, i32 -824
  %start = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 13
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  %6 = ptrtoint ptr %i_layout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_layout, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %5)
  %cmp164.i = icmp ult i64 %5, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !370

if.then168.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv169.i = trunc i64 %5 to i32
  %conv169.i.frozen = freeze i32 %conv169.i
  %.frozen = freeze i32 %7
  %div172.i = udiv i32 %conv169.i.frozen, %.frozen
  %8 = mul i32 %div172.i, %.frozen
  %rem170.i.decomposed = sub i32 %conv169.i.frozen, %8
  %conv173.i = zext i32 %div172.i to i64
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %5) #18, !srcloc !427
  %asmresult.i261.i = extractvalue { i64, i64 } %9, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %9, 1
  %shr.i.i = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %dividend.addr.0.i = phi i64 [ %conv173.i, %if.then168.i ], [ %asmresult1.i.i, %if.else174.i ]
  %__rem.0.i = phi i32 [ %rem170.i.decomposed, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %conv = zext i32 %7 to i64
  %mul = mul i64 %dividend.addr.0.i, %conv
  %10 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %mul, ptr %start, align 8
  %len = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 10
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %add = add i32 %12, %__rem.0.i
  store i32 %add, ptr %len, align 4
  %13 = ptrtoint ptr %i_layout to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_layout, align 8
  %sub = add i32 %add, -1
  %add6 = add i32 %sub, %14
  %15 = urem i32 %add6, %14
  %mul7 = sub i32 %add6, %15
  store i32 %mul7, ptr %len, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ceph_netfs_clamp_length(ptr nocapture noundef %subreq) #0 align 64 {
entry:
  %objno = alloca i64, align 8
  %objoff = alloca i64, align 8
  %xlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %subreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subreq, align 8
  %mapping = getelementptr inbounds %struct.netfs_read_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapping, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %objno) #13
  %10 = ptrtoint ptr %objno to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %objno, align 8, !annotation !375
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %objoff) #13
  %11 = ptrtoint ptr %objoff to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %objoff, align 8, !annotation !375
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xlen) #13
  %12 = ptrtoint ptr %xlen to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %xlen, align 4, !annotation !375
  %i_layout = getelementptr i8, ptr %5, i32 -824
  %start = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 2
  %13 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %start, align 8
  %len = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 3
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 8
  %conv = zext i32 %16 to i64
  call void @ceph_calc_file_object_mapping(ptr noundef %i_layout, i64 noundef %14, i64 noundef %conv, ptr noundef nonnull %objno, ptr noundef nonnull %objoff, ptr noundef nonnull %xlen) #13
  %17 = ptrtoint ptr %xlen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xlen, align 4
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %9, i32 0, i32 2
  %19 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mount_options, align 4
  %rsize = getelementptr inbounds %struct.ceph_mount_options, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rsize, align 4
  %23 = call i32 @llvm.umin.i32(i32 %18, i32 %22)
  %24 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %len, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xlen) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %objoff) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %objno) #13
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_netfs_issue_op(ptr noundef %subreq) #0 align 64 {
entry:
  %iter = alloca %struct.iov_iter, align 8
  %pages = alloca ptr, align 4
  %page_off = alloca i32, align 4
  %len = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %subreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subreq, align 8
  %mapping = getelementptr inbounds %struct.netfs_read_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapping, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -952
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %vino.sroa.0.0.copyload = load i64, ptr %add.ptr.i, align 8
  %vino.sroa.5.0.add.ptr.i.i.sroa_idx = getelementptr i8, ptr %5, i32 -944
  %11 = ptrtoint ptr %vino.sroa.5.0.add.ptr.i.i.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %11)
  %vino.sroa.5.0.copyload = load i64, ptr %vino.sroa.5.0.add.ptr.i.i.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter) #13
  %12 = call ptr @memset(ptr %iter, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pages) #13
  %13 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %pages, align 4, !annotation !375
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page_off) #13
  %14 = ptrtoint ptr %page_off to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %page_off, align 4, !annotation !375
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #13
  %len3 = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 3
  %15 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len3, align 8
  %conv = zext i32 %16 to i64
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv, ptr %len, align 8
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %9, i32 0, i32 3
  %18 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client, align 8
  %osdc = getelementptr inbounds %struct.ceph_client, ptr %19, i32 0, i32 12
  %i_layout = getelementptr i8, ptr %5, i32 -824
  %start = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 2
  %20 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %start, align 8
  %22 = ptrtoint ptr %osdc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %osdc, align 8
  %options = getelementptr inbounds %struct.ceph_client, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %options, align 8
  %read_from_replica = getelementptr inbounds %struct.ceph_options, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %read_from_replica to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %read_from_replica, align 4
  %or = or i32 %27, 16
  %i_truncate_seq = getelementptr i8, ptr %5, i32 -272
  %28 = ptrtoint ptr %i_truncate_seq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_truncate_seq, align 8
  %i_truncate_size = getelementptr i8, ptr %5, i32 -264
  %30 = ptrtoint ptr %i_truncate_size to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %i_truncate_size, align 8
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %vino.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %vino.sroa.5.0.copyload, 1
  %call7 = call ptr @ceph_osdc_new_request(ptr noundef %osdc, ptr noundef %i_layout, [2 x i64] %.fca.1.insert, i64 noundef %21, ptr noundef nonnull %len, i32 noundef 0, i32 noundef 1, i32 noundef 4609, i32 noundef %or, ptr noundef null, i32 noundef %29, i64 noundef %31, i1 noundef zeroext false) #13
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %call7 to i32
  br label %if.then100

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_netfs_issue_op.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_netfs_issue_op, %if.then13)) #13
          to label %do.end [label %if.then13], !srcloc !374

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %start, align 8
  %35 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len3, align 8
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %len, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_netfs_issue_op.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.55, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 272, ptr noundef nonnull @.str.53, i64 noundef %34, i32 noundef %36, i64 noundef %38) #13
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %39 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mapping, align 8
  %i_pages = getelementptr inbounds %struct.address_space, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %start, align 8
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %len, align 8
  %conv20 = trunc i64 %44 to i32
  call void @iov_iter_xarray(ptr noundef nonnull %iter, i32 noundef 0, ptr noundef %i_pages, i64 noundef %42, i32 noundef %conv20) #13
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %len, align 8
  %conv21 = trunc i64 %46 to i32
  %call22 = call i32 @iov_iter_get_pages_alloc(ptr noundef nonnull %iter, ptr noundef nonnull %pages, i32 noundef %conv21, ptr noundef nonnull %page_off) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %do.body25, label %if.end42

do.body25:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_netfs_issue_op.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_netfs_issue_op, %if.then37)) #13
          to label %if.then100 [label %if.then37], !srcloc !374

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_netfs_issue_op.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.57, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 276, ptr noundef nonnull @.str.53, i32 noundef %call22) #13
  br label %if.then100

if.end42:                                         ; preds = %do.end
  %47 = ptrtoint ptr %page_off to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %page_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool43.not = icmp eq i32 %48, 0
  br i1 %tobool43.not, label %if.end42.if.end86_crit_edge, label %land.rhs

if.end42.if.end86_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

land.rhs:                                         ; preds = %if.end42
  %.b151 = load i1, ptr @ceph_netfs_issue_op.__already_done, align 1
  br i1 %.b151, label %land.rhs.if.end86_crit_edge, label %if.then60, !prof !370

land.rhs.if.end86_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

if.then60:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ceph_netfs_issue_op.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 281, i32 noundef 9, ptr noundef null) #13
  br label %if.end86

if.end86:                                         ; preds = %if.then60, %land.rhs.if.end86_crit_edge, %if.end42.if.end86_crit_edge
  %conv94170 = zext i32 %call22 to i64
  %49 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv94170, ptr %len, align 8
  %50 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pages, align 4
  call void @osd_req_op_extent_osd_data_pages(ptr noundef %call7, i32 noundef 0, ptr noundef %51, i64 noundef %conv94170, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %r_callback = getelementptr inbounds %struct.ceph_osd_request, ptr %call7, i32 0, i32 15
  %52 = ptrtoint ptr %r_callback to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @finish_netfs_read, ptr %r_callback, align 8
  %r_priv = getelementptr inbounds %struct.ceph_osd_request, ptr %call7, i32 0, i32 18
  %53 = ptrtoint ptr %r_priv to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %subreq, ptr %r_priv, align 8
  %r_inode = getelementptr inbounds %struct.ceph_osd_request, ptr %call7, i32 0, i32 16
  %54 = ptrtoint ptr %r_inode to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %5, ptr %r_inode, align 4
  call void @ihold(ptr noundef %5) #13
  %r_osdc = getelementptr inbounds %struct.ceph_osd_request, ptr %call7, i32 0, i32 11
  %55 = ptrtoint ptr %r_osdc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %r_osdc, align 4
  %call95 = call i32 @ceph_osdc_start_request(ptr noundef %56, ptr noundef %call7, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %out.thread165, label %if.then97

out.thread165:                                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  call void @ceph_osdc_put_request(ptr noundef %call7) #13
  br label %do.body102

if.then97:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  call void @iput(ptr noundef %5) #13
  br label %if.then100

if.then100:                                       ; preds = %if.then97, %if.then37, %do.body25, %if.then
  %req.0.sink = phi ptr [ %call7, %if.then37 ], [ %call7, %if.then97 ], [ null, %if.then ], [ %call7, %do.body25 ]
  %err.0163 = phi i32 [ %call22, %if.then37 ], [ %call95, %if.then97 ], [ %32, %if.then ], [ %call22, %do.body25 ]
  call void @ceph_osdc_put_request(ptr noundef %req.0.sink) #13
  call void @netfs_subreq_terminated(ptr noundef %subreq, i32 noundef %err.0163, i1 noundef zeroext false) #13
  br label %do.body102

do.body102:                                       ; preds = %if.then100, %out.thread165
  %err.0164 = phi i32 [ %err.0163, %if.then100 ], [ 0, %out.thread165 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_netfs_issue_op.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_netfs_issue_op, %if.then114)) #13
          to label %do.end118 [label %if.then114], !srcloc !374

if.then114:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_netfs_issue_op.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.59, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 297, ptr noundef nonnull @.str.53, i32 noundef %err.0164) #13
  br label %do.end118

do.end118:                                        ; preds = %if.then114, %do.body102
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_off) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pages) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_netfs_check_write_begin(ptr nocapture noundef readonly %file, i64 noundef %pos, i32 noundef %len, ptr noundef %folio, ptr nocapture noundef readnone %_fsdata) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %call2 = tail call fastcc ptr @ceph_find_incompatible(ptr noundef %folio)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup26_crit_edge, label %if.then

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup26

if.then:                                          ; preds = %entry
  tail call void @folio_unlock(ptr noundef %folio) #13
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  %2 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i.i = icmp eq i32 %3, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !368

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.49) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !401
  unreachable

do.end5.i.i.i:                                    ; preds = %if.then
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !402
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #13, !srcloc !403
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !404
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ceph_netfs_check_write_begin, %if.then.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !374

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %folio, i32 noundef -1, i32 noundef %conv.i.i.i.i) #13
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %folio_put.exit

if.then.i:                                        ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__put_page(ptr noundef %folio) #13
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end

if.then4:                                         ; preds = %folio_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %call2 to i32
  br label %cleanup26

if.end:                                           ; preds = %folio_put.exit
  tail call void @ceph_queue_inode_work(ptr noundef %1, i32 noundef 0) #13
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1261) #13
  %call.i = tail call fastcc ptr @get_oldest_context(ptr noundef %1, ptr noundef null, ptr noundef null) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %context_is_writeable_or_written.exit.thread, label %context_is_writeable_or_written.exit

context_is_writeable_or_written.exit.thread:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ceph_put_snap_context(ptr noundef null) #13
  br label %if.end22.thread

context_is_writeable_or_written.exit:             ; preds = %if.end
  %seq.i = getelementptr inbounds %struct.ceph_snap_context, ptr %call2, i32 0, i32 1
  %6 = ptrtoint ptr %seq.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %seq.i, align 8
  %seq1.i = getelementptr inbounds %struct.ceph_snap_context, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %seq1.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %seq1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp.i42.not = icmp ugt i64 %7, %9
  tail call void @ceph_put_snap_context(ptr noundef nonnull %call.i) #13
  br i1 %cmp.i42.not, label %if.then11, label %context_is_writeable_or_written.exit.if.end22.thread_crit_edge

context_is_writeable_or_written.exit.if.end22.thread_crit_edge: ; preds = %context_is_writeable_or_written.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.thread

if.then11:                                        ; preds = %context_is_writeable_or_written.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %i_cap_wq = getelementptr i8, ptr %1, i32 -476
  %call1372 = call i32 @prepare_to_wait_event(ptr noundef %i_cap_wq, ptr noundef nonnull %__wq_entry, i32 noundef 258) #13
  %call.i4373 = call fastcc ptr @get_oldest_context(ptr noundef %1, ptr noundef null, ptr noundef null) #13
  %tobool.not.i4474 = icmp eq ptr %call.i4373, null
  br i1 %tobool.not.i4474, label %if.then11.context_is_writeable_or_written.exit50.thread_crit_edge, label %if.then11.context_is_writeable_or_written.exit50_crit_edge

if.then11.context_is_writeable_or_written.exit50_crit_edge: ; preds = %if.then11
  br label %context_is_writeable_or_written.exit50

if.then11.context_is_writeable_or_written.exit50.thread_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %context_is_writeable_or_written.exit50.thread

context_is_writeable_or_written.exit50.thread:    ; preds = %cleanup.context_is_writeable_or_written.exit50.thread_crit_edge, %if.then11.context_is_writeable_or_written.exit50.thread_crit_edge
  call void @ceph_put_snap_context(ptr noundef null) #13
  br label %if.end22.thread62

context_is_writeable_or_written.exit50:           ; preds = %cleanup.context_is_writeable_or_written.exit50_crit_edge, %if.then11.context_is_writeable_or_written.exit50_crit_edge
  %call.i4376 = phi ptr [ %call.i43, %cleanup.context_is_writeable_or_written.exit50_crit_edge ], [ %call.i4373, %if.then11.context_is_writeable_or_written.exit50_crit_edge ]
  %call1375 = phi i32 [ %call13, %cleanup.context_is_writeable_or_written.exit50_crit_edge ], [ %call1372, %if.then11.context_is_writeable_or_written.exit50_crit_edge ]
  %11 = ptrtoint ptr %seq.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %seq.i, align 8
  %seq1.i46 = getelementptr inbounds %struct.ceph_snap_context, ptr %call.i4376, i32 0, i32 1
  %13 = ptrtoint ptr %seq1.i46 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %seq1.i46, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %14)
  %cmp.i47.not = icmp ugt i64 %12, %14
  call void @ceph_put_snap_context(ptr noundef nonnull %call.i4376) #13
  br i1 %cmp.i47.not, label %if.end17, label %context_is_writeable_or_written.exit50.if.end22.thread62_crit_edge

context_is_writeable_or_written.exit50.if.end22.thread62_crit_edge: ; preds = %context_is_writeable_or_written.exit50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.thread62

if.end17:                                         ; preds = %context_is_writeable_or_written.exit50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1375)
  %tobool18.not = icmp eq i32 %call1375, 0
  br i1 %tobool18.not, label %cleanup, label %if.end22

cleanup:                                          ; preds = %if.end17
  call void @schedule() #13
  %call13 = call i32 @prepare_to_wait_event(ptr noundef %i_cap_wq, ptr noundef nonnull %__wq_entry, i32 noundef 258) #13
  %call.i43 = call fastcc ptr @get_oldest_context(ptr noundef %1, ptr noundef null, ptr noundef null) #13
  %tobool.not.i44 = icmp eq ptr %call.i43, null
  br i1 %tobool.not.i44, label %cleanup.context_is_writeable_or_written.exit50.thread_crit_edge, label %cleanup.context_is_writeable_or_written.exit50_crit_edge

cleanup.context_is_writeable_or_written.exit50_crit_edge: ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %context_is_writeable_or_written.exit50

cleanup.context_is_writeable_or_written.exit50.thread_crit_edge: ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %context_is_writeable_or_written.exit50.thread

if.end22.thread62:                                ; preds = %context_is_writeable_or_written.exit50.if.end22.thread62_crit_edge, %context_is_writeable_or_written.exit50.thread
  call void @finish_wait(ptr noundef %i_cap_wq, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  call void @ceph_put_snap_context(ptr noundef nonnull %call2) #13
  br label %cleanup26

if.end22.thread:                                  ; preds = %context_is_writeable_or_written.exit.if.end22.thread_crit_edge, %context_is_writeable_or_written.exit.thread
  tail call void @ceph_put_snap_context(ptr noundef nonnull %call2) #13
  br label %cleanup26

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  call void @ceph_put_snap_context(ptr noundef nonnull %call2) #13
  br label %cleanup26

cleanup26:                                        ; preds = %if.end22, %if.end22.thread, %if.end22.thread62, %if.then4, %entry.cleanup26_crit_edge
  %retval.1 = phi i32 [ %5, %if.then4 ], [ 0, %entry.cleanup26_crit_edge ], [ %call1375, %if.end22 ], [ -11, %if.end22.thread62 ], [ -11, %if.end22.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_readahead_cleanup(ptr nocapture noundef readonly %mapping, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -952
  %2 = ptrtoint ptr %priv to i32
  tail call void @ceph_put_cap_refs(ptr noundef %add.ptr.i, i32 noundef %2) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fscache_begin_read_operation(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_calc_file_object_mapping(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_xarray(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_get_pages_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @finish_netfs_read(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %r_inode = getelementptr inbounds %struct.ceph_osd_request, ptr %req, i32 0, i32 16
  %0 = ptrtoint ptr %r_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r_inode, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call ptr @osd_req_op_extent_osd_data(ptr noundef %req, i32 noundef 0) #13
  %r_priv = getelementptr inbounds %struct.ceph_osd_request, ptr %req, i32 0, i32 18
  %6 = ptrtoint ptr %r_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %r_priv, align 8
  %r_result = getelementptr inbounds %struct.ceph_osd_request, ptr %req, i32 0, i32 10
  %8 = ptrtoint ptr %r_result to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %r_result, align 8
  %mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %5, i32 0, i32 9
  %10 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdsc, align 8
  %r_start_latency = getelementptr inbounds %struct.ceph_osd_request, ptr %req, i32 0, i32 26
  %12 = ptrtoint ptr %r_start_latency to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %r_start_latency, align 8
  %r_end_latency = getelementptr inbounds %struct.ceph_osd_request, ptr %req, i32 0, i32 27
  %14 = ptrtoint ptr %r_end_latency to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %r_end_latency, align 8
  %length = getelementptr inbounds %struct.ceph_osd_data, ptr %call1, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %length, align 8
  %conv = trunc i64 %17 to i32
  %metric.i = getelementptr inbounds %struct.ceph_mds_client, ptr %11, i32 0, i32 49, i32 6
  tail call void @ceph_update_metrics(ptr noundef %metric.i, i64 noundef %13, i64 noundef %15, i32 noundef %conv, i32 noundef %9) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finish_netfs_read.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@finish_netfs_read, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !374

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %r_result to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %r_result, align 8
  %len = getelementptr inbounds %struct.netfs_read_subrequest, ptr %7, i32 0, i32 3
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 8
  %22 = ptrtoint ptr %r_inode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %r_inode, align 4
  %call8 = tail call fastcc i64 @i_size_read(ptr noundef %23)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finish_netfs_read.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.62, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 230, ptr noundef nonnull @.str.60, i32 noundef %19, i32 noundef %21, i64 noundef %call8) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %24 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %9, label %if.end15 [
    i32 -2, label %do.end.land.lhs.true_crit_edge
    i32 -108, label %if.end15.thread52
  ]

do.end.land.lhs.true_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.end15.thread52:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %blocklisted = getelementptr inbounds %struct.ceph_fs_client, ptr %5, i32 0, i32 5
  %25 = ptrtoint ptr %blocklisted to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %blocklisted, align 8
  br label %if.end22

if.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp16 = icmp sgt i32 %9, -1
  br i1 %cmp16, label %if.end15.land.lhs.true_crit_edge, label %if.end15.if.end22_crit_edge

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.end15.land.lhs.true_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end15.land.lhs.true_crit_edge, %do.end.land.lhs.true_crit_edge
  %err.051 = phi i32 [ %9, %if.end15.land.lhs.true_crit_edge ], [ 0, %do.end.land.lhs.true_crit_edge ]
  %len18 = getelementptr inbounds %struct.netfs_read_subrequest, ptr %7, i32 0, i32 3
  %26 = ptrtoint ptr %len18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len18, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %err.051, i32 %27)
  %cmp19 = icmp ult i32 %err.051, %27
  br i1 %cmp19, label %if.then21, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.netfs_read_subrequest, ptr %7, i32 0, i32 9
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %or.i = or i32 %29, 2
  store i32 %or.i, ptr %flags, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %land.lhs.true.if.end22_crit_edge, %if.end15.if.end22_crit_edge, %if.end15.thread52
  %err.050 = phi i32 [ %err.051, %if.then21 ], [ %err.051, %land.lhs.true.if.end22_crit_edge ], [ %9, %if.end15.if.end22_crit_edge ], [ -108, %if.end15.thread52 ]
  %30 = getelementptr inbounds %struct.ceph_osd_data, ptr %call1, i32 0, i32 1
  tail call void @netfs_subreq_terminated(ptr noundef %7, i32 noundef %err.050, i1 noundef zeroext true) #13
  %alignment = getelementptr inbounds %struct.ceph_osd_data, ptr %call1, i32 0, i32 1, i32 0, i32 2
  %31 = ptrtoint ptr %alignment to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %alignment, align 8
  %conv23 = zext i32 %32 to i64
  %33 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %length, align 8
  %add.i = add nuw nsw i64 %conv23, 4095
  %sub.i = add i64 %add.i, %34
  %shr.i = lshr i64 %sub.i, 12
  %shr2.i = lshr i64 %conv23, 12
  %sub3.i = sub nsw i64 %shr.i, %shr2.i
  %conv.i = trunc i64 %sub3.i to i32
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %30, align 8
  tail call void @ceph_put_page_vector(ptr noundef %36, i32 noundef %conv.i, i1 noundef zeroext false) #13
  %37 = ptrtoint ptr %r_inode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %r_inode, align 4
  tail call void @iput(ptr noundef %38) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netfs_subreq_terminated(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @osd_req_op_extent_osd_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_put_page_vector(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_update_metrics(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ceph_find_incompatible(ptr noundef %page) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -952
  %i_ceph_flags.i = getelementptr i8, ptr %3, i32 -868
  %4 = ptrtoint ptr %i_ceph_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %i_ceph_flags.i, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  %mount_state.i = getelementptr inbounds %struct.ceph_fs_client, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %mount_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %mount_state.i, align 4
  %and.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp sgt i32 %11, 3
  %spec.select.i = select i1 %tobool.not.i, i1 true, i1 %cmp.i
  br i1 %spec.select.i, label %do.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  tail call void @wait_on_page_writeback(ptr noundef %page) #13
  %12 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.not.i.i116 = icmp eq i32 %13, -1
  br i1 %cmp.i.not.i.i116, label %for.cond.preheader.if.then.i.i_crit_edge, label %PagePrivate.exit.i.lr.ph, !prof !368

for.cond.preheader.if.then.i.i_crit_edge:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

PagePrivate.exit.i.lr.ph:                         ; preds = %for.cond.preheader
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %i_head_snapc = getelementptr i8, ptr %3, i32 -396
  br label %PagePrivate.exit.i

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_find_incompatible.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_find_incompatible, %if.then5)) #13
          to label %cleanup68 [label %if.then5], !srcloc !374

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr.i, align 8
  %snap = getelementptr i8, ptr %3, i32 -944
  %16 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %snap, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_find_incompatible.__UNIQUE_ID_ddebug388, ptr noundef nonnull @.str.65, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1206, ptr noundef %page, i64 noundef %15, i64 noundef %17) #13
  br label %cleanup68

if.then.i.i:                                      ; preds = %cleanup64.if.then.i.i_crit_edge, %for.cond.preheader.if.then.i.i_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.40) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !380
  unreachable

PagePrivate.exit.i:                               ; preds = %cleanup64.PagePrivate.exit.i_crit_edge, %PagePrivate.exit.i.lr.ph
  %18 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %page, align 4
  %20 = and i32 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i98 = icmp eq i32 %20, 0
  br i1 %tobool.not.i98, label %PagePrivate.exit.i.cleanup68_crit_edge, label %page_snap_context.exit

PagePrivate.exit.i.cleanup68_crit_edge:           ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup68

page_snap_context.exit:                           ; preds = %PagePrivate.exit.i
  %21 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %private.i, align 4
  %23 = inttoptr i32 %22 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool13.not = icmp eq i32 %22, 0
  br i1 %tobool13.not, label %page_snap_context.exit.cleanup68_crit_edge, label %lor.lhs.false

page_snap_context.exit.cleanup68_crit_edge:       ; preds = %page_snap_context.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup68

lor.lhs.false:                                    ; preds = %page_snap_context.exit
  %24 = ptrtoint ptr %i_head_snapc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_head_snapc, align 4
  %cmp = icmp eq ptr %25, %23
  br i1 %cmp, label %lor.lhs.false.cleanup68_crit_edge, label %if.end15

lor.lhs.false.cleanup68_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup68

if.end15:                                         ; preds = %lor.lhs.false
  %call16 = tail call fastcc ptr @get_oldest_context(ptr noundef %3, ptr noundef null, ptr noundef null)
  %seq = getelementptr inbounds %struct.ceph_snap_context, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %seq, align 8
  %seq17 = getelementptr inbounds %struct.ceph_snap_context, ptr %call16, i32 0, i32 1
  %28 = ptrtoint ptr %seq17 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %seq17, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %29)
  %cmp18 = icmp ugt i64 %27, %29
  br i1 %cmp18, label %if.then19, label %if.end38

if.then19:                                        ; preds = %if.end15
  %30 = inttoptr i32 %22 to ptr
  tail call void @ceph_put_snap_context(ptr noundef %call16) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_find_incompatible.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_find_incompatible, %if.then32)) #13
          to label %do.end36 [label %if.then32], !srcloc !374

if.then32:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_find_incompatible.__UNIQUE_ID_ddebug389, ptr noundef nonnull @.str.67, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1227, ptr noundef %page, ptr noundef nonnull %30) #13
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %if.then19
  %call37 = tail call ptr @ceph_get_snap_context(ptr noundef nonnull %30) #13
  br label %cleanup68

if.end38:                                         ; preds = %if.end15
  tail call void @ceph_put_snap_context(ptr noundef %call16) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_find_incompatible.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_find_incompatible, %if.then51)) #13
          to label %do.end55 [label %if.then51], !srcloc !374

if.then51:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_find_incompatible.__UNIQUE_ID_ddebug390, ptr noundef nonnull @.str.69, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1233, ptr noundef %page, ptr noundef nonnull %23) #13
  br label %do.end55

do.end55:                                         ; preds = %if.then51, %if.end38
  %call56 = tail call zeroext i1 @clear_page_dirty_for_io(ptr noundef %page) #13
  br i1 %call56, label %if.then57, label %do.end55.cleanup64_crit_edge

do.end55.cleanup64_crit_edge:                     ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup64

if.then57:                                        ; preds = %do.end55
  %call58 = tail call fastcc i32 @writepage_nounlock(ptr noundef %page, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %cleanup.thread, label %if.then57.cleanup64_crit_edge

if.then57.cleanup64_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup64

cleanup.thread:                                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #15
  %31 = inttoptr i32 %call58 to ptr
  br label %cleanup68

cleanup64:                                        ; preds = %if.then57.cleanup64_crit_edge, %do.end55.cleanup64_crit_edge
  tail call void @wait_on_page_writeback(ptr noundef %page) #13
  %32 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %page, align 4
  %cmp.i.not.i.i = icmp eq i32 %33, -1
  br i1 %cmp.i.not.i.i, label %cleanup64.if.then.i.i_crit_edge, label %cleanup64.PagePrivate.exit.i_crit_edge, !prof !368

cleanup64.PagePrivate.exit.i_crit_edge:           ; preds = %cleanup64
  call void @__sanitizer_cov_trace_pc() #15
  br label %PagePrivate.exit.i

cleanup64.if.then.i.i_crit_edge:                  ; preds = %cleanup64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

cleanup68:                                        ; preds = %cleanup.thread, %do.end36, %lor.lhs.false.cleanup68_crit_edge, %page_snap_context.exit.cleanup68_crit_edge, %PagePrivate.exit.i.cleanup68_crit_edge, %if.then5, %do.body
  %retval.4 = phi ptr [ inttoptr (i32 -116 to ptr), %do.body ], [ inttoptr (i32 -116 to ptr), %if.then5 ], [ %31, %cleanup.thread ], [ %call37, %do.end36 ], [ null, %lor.lhs.false.cleanup68_crit_edge ], [ null, %page_snap_context.exit.cleanup68_crit_edge ], [ null, %PagePrivate.exit.i.cleanup68_crit_edge ]
  ret ptr %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_queue_inode_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_put_cap_refs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagevec_lookup_range_tag(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @writepages_finish(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %r_inode = getelementptr inbounds %struct.ceph_osd_request, ptr %req, i32 0, i32 16
  %0 = ptrtoint ptr %r_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r_inode, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -952
  %r_result = getelementptr inbounds %struct.ceph_osd_request, ptr %req, i32 0, i32 10
  %2 = ptrtoint ptr %r_result to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r_result, align 8
  %r_snapc = getelementptr inbounds %struct.ceph_osd_request, ptr %req, i32 0, i32 20
  %4 = ptrtoint ptr %r_snapc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %r_snapc, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @writepages_finish.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@writepages_finish, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !374

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @writepages_finish.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.119, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 672, ptr noundef %1, i32 noundef %3) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %do.end
  tail call void @__filemap_set_wb_err(ptr noundef %7, i32 noundef %3) #13
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %tobool4.not.i = icmp eq ptr %13, null
  br i1 %tobool4.not.i, label %if.then6.mapping_set_error.exit_crit_edge, label %if.then5.i

if.then6.mapping_set_error.exit_crit_edge:        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %mapping_set_error.exit

if.then5.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %i_sb.i228 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb.i228 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i228, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 50
  %call.i = tail call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef %3) #13
  br label %mapping_set_error.exit

mapping_set_error.exit:                           ; preds = %if.then5.i, %if.then6.mapping_set_error.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %3)
  %cmp.i = icmp eq i32 %3, -28
  %flags.i = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 10
  %..i = zext i1 %cmp.i to i32
  tail call void @_set_bit(i32 noundef %..i, ptr noundef %flags.i) #13
  %i_ceph_flags.i = getelementptr i8, ptr %1, i32 -868
  %16 = ptrtoint ptr %i_ceph_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %i_ceph_flags.i, align 4
  %and.i = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %mapping_set_error.exit.ceph_set_error_write.exit_crit_edge

mapping_set_error.exit.ceph_set_error_write.exit_crit_edge: ; preds = %mapping_set_error.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ceph_set_error_write.exit

if.then.i:                                        ; preds = %mapping_set_error.exit
  call void @__sanitizer_cov_trace_pc() #15
  %i_ceph_lock.i = getelementptr i8, ptr %1, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock.i) #13
  %18 = ptrtoint ptr %i_ceph_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ceph_flags.i, align 4
  %or.i = or i32 %19, 512
  store i32 %or.i, ptr %i_ceph_flags.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock.i) #13
  br label %ceph_set_error_write.exit

ceph_set_error_write.exit:                        ; preds = %if.then.i, %mapping_set_error.exit.ceph_set_error_write.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -108, i32 %3)
  %cmp7 = icmp eq i32 %3, -108
  br i1 %cmp7, label %if.then8, label %ceph_set_error_write.exit.if.end10_crit_edge

ceph_set_error_write.exit.if.end10_crit_edge:     ; preds = %ceph_set_error_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %ceph_set_error_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  %blocklisted = getelementptr inbounds %struct.ceph_fs_client, ptr %11, i32 0, i32 5
  %20 = ptrtoint ptr %blocklisted to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %blocklisted, align 8
  br label %if.end10

if.else:                                          ; preds = %do.end
  %i_ceph_flags.i229 = getelementptr i8, ptr %1, i32 -868
  %21 = ptrtoint ptr %i_ceph_flags.i229 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %i_ceph_flags.i229, align 4
  %and.i230 = and i32 %22, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i230)
  %tobool.not.i231 = icmp eq i32 %and.i230, 0
  br i1 %tobool.not.i231, label %if.else.if.end10_crit_edge, label %if.then.i233

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then.i233:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %i_ceph_lock.i232 = getelementptr i8, ptr %1, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock.i232) #13
  %23 = ptrtoint ptr %i_ceph_flags.i229 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_ceph_flags.i229, align 4
  %and2.i = and i32 %24, -513
  store i32 %and2.i, ptr %i_ceph_flags.i229, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock.i232) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then.i233, %if.else.if.end10_crit_edge, %if.then8, %ceph_set_error_write.exit.if.end10_crit_edge
  %i_ceph_lock.i234 = getelementptr i8, ptr %1, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock.i234) #13
  %call.i235 = tail call i32 @__ceph_caps_issued(ptr noundef %add.ptr.i, ptr noundef null) #13
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock.i234) #13
  %and = and i32 %call.i235, 33792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %r_num_ops = getelementptr inbounds %struct.ceph_osd_request, ptr %req, i32 0, i32 9
  %25 = ptrtoint ptr %r_num_ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %r_num_ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp16256.not = icmp eq i32 %26, 0
  br i1 %cmp16256.not, label %if.end10.for.end161_crit_edge, label %for.body.lr.ph

if.end10.for.end161_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end161

for.body.lr.ph:                                   ; preds = %if.end10
  %writeback_count = getelementptr inbounds %struct.ceph_fs_client, ptr %11, i32 0, i32 10
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %11, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %do.end157.for.body_crit_edge, %for.body.lr.ph
  %total_pages.0259 = phi i32 [ 0, %for.body.lr.ph ], [ %add46, %do.end157.for.body_crit_edge ]
  %i.0258 = phi i32 [ 0, %for.body.lr.ph ], [ %inc160, %do.end157.for.body_crit_edge ]
  %len.0257 = phi i32 [ 0, %for.body.lr.ph ], [ %conv42, %do.end157.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ceph_osd_request, ptr %req, i32 0, i32 30, i32 %i.0258
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8705, i16 %28)
  %cmp17.not = icmp eq i16 %28, 8705
  br i1 %cmp17.not, label %if.end20, label %for.body.for.end161_crit_edge

for.body.for.end161_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end161

if.end20:                                         ; preds = %for.body
  %call21 = tail call ptr @osd_req_op_extent_osd_data(ptr noundef %req, i32 noundef %i.0258) #13
  %29 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call21, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp23.not = icmp eq i32 %30, 1
  br i1 %cmp23.not, label %do.end40, label %do.body32, !prof !370

do.body32:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/addr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 697, 0\0A.popsection", ""() #13, !srcloc !428
  unreachable

do.end40:                                         ; preds = %if.end20
  %31 = getelementptr inbounds %struct.ceph_osd_data, ptr %call21, i32 0, i32 1
  %length = getelementptr inbounds %struct.ceph_osd_data, ptr %call21, i32 0, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %length, align 8
  %34 = trunc i64 %33 to i32
  %conv42 = add i32 %len.0257, %34
  %alignment = getelementptr inbounds %struct.ceph_osd_data, ptr %call21, i32 0, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %alignment to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %alignment, align 8
  %conv43 = zext i32 %36 to i64
  %add.i = add i64 %33, 4095
  %sub.i = add i64 %add.i, %conv43
  %shr.i = lshr i64 %sub.i, 12
  %shr2.i = lshr i64 %conv43, 12
  %sub3.i = sub nsw i64 %shr.i, %shr2.i
  %conv.i = trunc i64 %sub3.i to i32
  %add46 = add i32 %total_pages.0259, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp48254 = icmp sgt i32 %conv.i, 0
  br i1 %cmp48254, label %do.end40.for.body50_crit_edge, label %do.end40.do.body138_crit_edge

do.end40.do.body138_crit_edge:                    ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body138

do.end40.for.body50_crit_edge:                    ; preds = %do.end40
  br label %for.body50

for.body50:                                       ; preds = %if.end137.for.body50_crit_edge, %do.end40.for.body50_crit_edge
  %j.0255 = phi i32 [ %inc, %if.end137.for.body50_crit_edge ], [ 0, %do.end40.for.body50_crit_edge ]
  %37 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %31, align 8
  %arrayidx51 = getelementptr ptr, ptr %38, i32 %j.0255
  %39 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx51, align 4
  %tobool53.not = icmp eq ptr %40, null
  br i1 %tobool53.not, label %do.body63, label %do.end71, !prof !368

do.body63:                                        ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/addr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 704, 0\0A.popsection", ""() #13, !srcloc !429
  unreachable

do.end71:                                         ; preds = %for.body50
  %41 = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !370

if.then.i.i:                                      ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %43, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %40 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %44, %if.end.i.i ]
  %45 = inttoptr i32 %retval.0.i.i to ptr
  %46 = getelementptr inbounds %struct.page, ptr %45, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %and.i.i.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !370

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %49 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %49, ptr noundef nonnull @.str.39) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %45, align 4
  %52 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.i.not.i = icmp eq i32 %52, 0
  br i1 %tobool.i.not.i, label %do.end91, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !400
  br label %if.end97

do.end91:                                         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 705, i32 noundef 9, ptr noundef null) #13
  br label %if.end97

if.end97:                                         ; preds = %do.end91, %PageUptodate.exit
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %writeback_count, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !402
  tail call void @llvm.prefetch.p0(ptr %writeback_count, i32 1, i32 3, i32 1) #13
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %writeback_count, ptr %writeback_count, i32 1, ptr elementtype(i32) %writeback_count) #13, !srcloc !403
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %53, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !404
  %54 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mount_options, align 4
  %congestion_kb = getelementptr inbounds %struct.ceph_mount_options, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %congestion_kb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %congestion_kb, align 4
  %shr = lshr i32 %57, 2
  %shr109 = lshr i32 %57, 4
  %sub = sub nsw i32 %shr, %shr109
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i.i, i32 %sub)
  %cmp110 = icmp ult i32 %asmresult.i.i.i.i.i, %sub
  br i1 %cmp110, label %if.then112, label %if.end97.if.end114_crit_edge

if.end97.if.end114_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end114

if.then112:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  %call113 = tail call ptr @inode_to_bdi(ptr noundef %1) #13
  tail call void @clear_bdi_congested(ptr noundef %call113, i32 noundef 0) #13
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.end97.if.end114_crit_edge
  %58 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %41, align 4
  %and.i.i236 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i236)
  %tobool.not.i.i237 = icmp eq i32 %and.i.i236, 0
  br i1 %tobool.not.i.i237, label %if.end.i.i240, label %if.then.i.i239, !prof !370

if.then.i.i239:                                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i238 = add i32 %59, -1
  br label %detach_page_private.exit

if.end.i.i240:                                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %40 to i32
  br label %detach_page_private.exit

detach_page_private.exit:                         ; preds = %if.end.i.i240, %if.then.i.i239
  %retval.0.i.i241 = phi i32 [ %sub.i.i238, %if.then.i.i239 ], [ %60, %if.end.i.i240 ]
  %61 = inttoptr i32 %retval.0.i.i241 to ptr
  %call1.i = tail call fastcc ptr @folio_detach_private(ptr noundef %61) #13
  tail call void @ceph_put_snap_context(ptr noundef %call1.i) #13
  tail call void @end_page_writeback(ptr noundef nonnull %40) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @writepages_finish.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@writepages_finish, %if.then128)) #13
          to label %do.end132 [label %if.then128], !srcloc !374

if.then128:                                       ; preds = %detach_page_private.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @writepages_finish.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.121, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 715, ptr noundef nonnull %40) #13
  br label %do.end132

do.end132:                                        ; preds = %if.then128, %detach_page_private.exit
  br i1 %tobool12.not, label %if.then134, label %do.end132.if.end137_crit_edge

do.end132.if.end137_crit_edge:                    ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137

if.then134:                                       ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_mapping, align 8
  %call136 = tail call i32 @generic_error_remove_page(ptr noundef %63, ptr noundef nonnull %40) #13
  br label %if.end137

if.end137:                                        ; preds = %if.then134, %do.end132.if.end137_crit_edge
  tail call void @unlock_page(ptr noundef nonnull %40) #13
  %inc = add nuw nsw i32 %j.0255, 1
  %exitcond.not = icmp eq i32 %inc, %conv.i
  br i1 %exitcond.not, label %if.end137.do.body138_crit_edge, label %if.end137.for.body50_crit_edge

if.end137.for.body50_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body50

if.end137.do.body138_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body138

do.body138:                                       ; preds = %if.end137.do.body138_crit_edge, %do.end40.do.body138_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @writepages_finish.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@writepages_finish, %if.then150)) #13
          to label %do.end157 [label %if.then150], !srcloc !374

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %length, align 8
  %spec.select = select i1 %cmp, i32 0, i32 %conv.i
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @writepages_finish.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.123, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 724, ptr noundef %1, i64 noundef %65, i32 noundef %spec.select) #13
  br label %do.end157

do.end157:                                        ; preds = %if.then150, %do.body138
  %66 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %31, align 8
  tail call void @release_pages(ptr noundef %67, i32 noundef %conv.i) #13
  %inc160 = add nuw i32 %i.0258, 1
  %68 = ptrtoint ptr %r_num_ops to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %r_num_ops, align 4
  %cmp16 = icmp ult i32 %inc160, %69
  br i1 %cmp16, label %do.end157.for.body_crit_edge, label %do.end157.for.end161_crit_edge

do.end157.for.end161_crit_edge:                   ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end161

do.end157.for.body_crit_edge:                     ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end161:                                       ; preds = %do.end157.for.end161_crit_edge, %for.body.for.end161_crit_edge, %if.end10.for.end161_crit_edge
  %len.0.lcssa = phi i32 [ 0, %if.end10.for.end161_crit_edge ], [ %len.0257, %for.body.for.end161_crit_edge ], [ %conv42, %do.end157.for.end161_crit_edge ]
  %total_pages.0.lcssa = phi i32 [ 0, %if.end10.for.end161_crit_edge ], [ %total_pages.0259, %for.body.for.end161_crit_edge ], [ %add46, %do.end157.for.end161_crit_edge ]
  %mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %11, i32 0, i32 9
  %70 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mdsc, align 8
  %r_start_latency = getelementptr inbounds %struct.ceph_osd_request, ptr %req, i32 0, i32 26
  %72 = ptrtoint ptr %r_start_latency to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %r_start_latency, align 8
  %r_end_latency = getelementptr inbounds %struct.ceph_osd_request, ptr %req, i32 0, i32 27
  %74 = ptrtoint ptr %r_end_latency to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %r_end_latency, align 8
  %arrayidx.i = getelementptr %struct.ceph_mds_client, ptr %71, i32 0, i32 49, i32 6, i32 1
  tail call void @ceph_update_metrics(ptr noundef %arrayidx.i, i64 noundef %73, i64 noundef %75, i32 noundef %len.0.lcssa, i32 noundef %3) #13
  tail call void @ceph_put_wrbuffer_cap_refs(ptr noundef %add.ptr.i, i32 noundef %total_pages.0.lcssa, ptr noundef %5) #13
  %call162 = tail call ptr @osd_req_op_extent_osd_data(ptr noundef %req, i32 noundef 0) #13
  %76 = getelementptr inbounds %struct.ceph_osd_data, ptr %call162, i32 0, i32 1
  %pages_from_pool = getelementptr inbounds %struct.ceph_osd_data, ptr %call162, i32 0, i32 1, i32 0, i32 3
  %77 = ptrtoint ptr %pages_from_pool to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %pages_from_pool, align 4, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool163.not = icmp eq i8 %78, 0
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %76, align 8
  br i1 %tobool163.not, label %if.else166, label %if.then164

if.then164:                                       ; preds = %for.end161
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ceph_wb_pagevec_pool to i32))
  %81 = load ptr, ptr @ceph_wb_pagevec_pool, align 4
  tail call void @mempool_free(ptr noundef %80, ptr noundef %81) #13
  br label %if.end168

if.else166:                                       ; preds = %for.end161
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %80) #13
  br label %if.end168

if.end168:                                        ; preds = %if.else166, %if.then164
  tail call void @ceph_osdc_put_request(ptr noundef %req) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @osd_req_op_extent_dup_last(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @osd_req_op_extent_update(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_error_remove_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @attach_page_private(ptr noundef %page, ptr noundef %data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !370

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %6, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end5.i.i, !prof !368

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.48) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #13, !srcloc !425
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #13
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #13, !srcloc !426
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@attach_page_private, %if.then.i.i.i.i)) #13
          to label %folio_get.exit.i [label %if.then.i.i.i.i], !srcloc !374

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__page_ref_mod(ptr noundef %4, i32 noundef 1) #13
  br label %folio_get.exit.i

folio_get.exit.i:                                 ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %private.i = getelementptr inbounds %struct.anon.112, ptr %4, i32 0, i32 4
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data, ptr %private.i, align 4
  %9 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_attach_private.exit, label %if.then.i.i.i, !prof !370

if.then.i.i.i:                                    ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.39) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_attach_private.exit:                        ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 13, ptr noundef %4) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscache_set_page_dirty(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_try_get_caps(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netfs_readahead(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__filemap_get_folio(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netfs_write_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ceph_inode_set_size(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_check_caps(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_caps_issued(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__folio_alloc(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_filemap_fault(ptr noundef %vmf) #0 align 64 {
entry:
  %mask.i = alloca %struct.sigset_t, align 4
  %got = alloca i32, align 4
  %oldset = alloca %struct.sigset_t, align 4
  %rw_ctx = alloca %struct.ceph_rw_context, align 8
  call void @__sanitizer_cov_trace_pc() #15
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
  %add.ptr.i = getelementptr i8, ptr %5, i32 -952
  %private_data = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %pgoff = getelementptr inbounds %struct.anon.56, ptr %vmf, i32 0, i32 2
  %8 = ptrtoint ptr %pgoff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pgoff, align 4
  %conv = zext i32 %9 to i64
  %shl = shl nuw nsw i64 %conv, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %got) #13
  %10 = ptrtoint ptr %got to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %got, align 4, !annotation !375
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %oldset) #13
  %11 = ptrtoint ptr %oldset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %oldset, align 4, !annotation !375
  %12 = getelementptr inbounds [2 x i32], ptr %oldset, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4, !annotation !375
  %i_ceph_flags.i = getelementptr i8, ptr %5, i32 -868
  %14 = ptrtoint ptr %i_ceph_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %i_ceph_flags.i, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i.i, align 16
  %mount_state.i = getelementptr inbounds %struct.ceph_fs_client, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %mount_state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %mount_state.i, align 4
  %and.i = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp.i = icmp sgt i32 %21, 3
  %spec.select.i = select i1 %tobool.not.i, i1 true, i1 %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mask.i) #13
  %22 = getelementptr inbounds [2 x i32], ptr %mask.i, i32 0, i32 1
  %23 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -257, ptr %mask.i, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %22, align 4
  %call.i = call i32 @sigprocmask(i32 noundef 0, ptr noundef nonnull %mask.i, ptr noundef nonnull %oldset) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mask.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_filemap_fault.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_filemap_fault, %if.then8)) #13
          to label %do.end [label %if.then8], !srcloc !374

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %add.ptr.i, align 8
  %snap = getelementptr i8, ptr %5, i32 -944
  %27 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %snap, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_filemap_fault.__UNIQUE_ID_ddebug392, ptr noundef nonnull @.str.153, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1413, ptr noundef %5, i64 noundef %26, i64 noundef %28, i64 noundef %shl) #13
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %7, align 4
  %31 = and i16 %30, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool15.not = icmp eq i16 %31, 0
  %. = select i1 %tobool15.not, i32 1024, i32 33792
  %32 = ptrtoint ptr %got to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %got, align 4
  %33 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vm_file, align 4
  %call19 = call i32 @ceph_get_caps(ptr noundef %34, i32 noundef 2048, i32 noundef %., i64 noundef -1, ptr noundef nonnull %got) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %do.end.out_restore.thread_crit_edge, label %do.body23

do.end.out_restore.thread_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_restore.thread

do.body23:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_filemap_fault.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_filemap_fault, %if.then35)) #13
          to label %do.end40 [label %if.then35], !srcloc !374

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %got, align 4
  %call37 = call ptr @ceph_cap_string(i32 noundef %36) #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_filemap_fault.__UNIQUE_ID_ddebug393, ptr noundef nonnull @.str.155, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1425, ptr noundef %5, i64 noundef %shl, ptr noundef %call37) #13
  br label %do.end40

do.end40:                                         ; preds = %if.then35, %do.body23
  %37 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %got, align 4
  %and41 = and i32 %38, 33792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %lor.lhs.false, label %do.end40.if.then45_crit_edge

do.end40.if.then45_crit_edge:                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45

lor.lhs.false:                                    ; preds = %do.end40
  %i_inline_version = getelementptr i8, ptr %5, i32 -880
  %39 = ptrtoint ptr %i_inline_version to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %i_inline_version, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %40)
  %cmp43 = icmp eq i64 %40, -1
  br i1 %cmp43, label %lor.lhs.false.if.then45_crit_edge, label %if.end71

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false.if.then45_crit_edge, %do.end40.if.then45_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rw_ctx) #13
  %41 = getelementptr inbounds %struct.list_head, ptr %rw_ctx, i32 0, i32 1
  %42 = getelementptr inbounds %struct.ceph_rw_context, ptr %rw_ctx, i32 0, i32 1
  %43 = getelementptr inbounds %struct.ceph_rw_context, ptr %rw_ctx, i32 0, i32 2
  %44 = ptrtoint ptr %rw_ctx to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 0, ptr %rw_ctx, align 8
  %45 = call i32 @llvm.read_register.i32(metadata !358) #13
  %and.i184 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i184 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task, align 8
  %49 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %42, align 8
  %50 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %38, ptr %43, align 4
  %rw_contexts_lock.i = getelementptr inbounds %struct.ceph_file_info, ptr %7, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %rw_contexts_lock.i) #13
  %rw_contexts.i = getelementptr inbounds %struct.ceph_file_info, ptr %7, i32 0, i32 3
  %51 = ptrtoint ptr %rw_contexts.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rw_contexts.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %rw_ctx, ptr noundef %rw_contexts.i, ptr noundef %52) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then45.ceph_add_rw_context.exit_crit_edge

if.then45.ceph_add_rw_context.exit_crit_edge:     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %ceph_add_rw_context.exit

if.end.i.i.i:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %rw_ctx, ptr %prev1.i.i.i, align 4
  %54 = ptrtoint ptr %rw_ctx to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %52, ptr %rw_ctx, align 8
  %55 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %rw_contexts.i, ptr %41, align 4
  %56 = ptrtoint ptr %rw_contexts.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %rw_ctx, ptr %rw_contexts.i, align 4
  br label %ceph_add_rw_context.exit

ceph_add_rw_context.exit:                         ; preds = %if.end.i.i.i, %if.then45.ceph_add_rw_context.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %rw_contexts_lock.i) #13
  %call47 = call i32 @filemap_fault(ptr noundef %vmf) #13
  call void @_raw_spin_lock(ptr noundef %rw_contexts_lock.i) #13
  %call.i.i.i186 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %rw_ctx) #13
  br i1 %call.i.i.i186, label %if.end.i.i.i187, label %ceph_add_rw_context.exit.ceph_del_rw_context.exit_crit_edge

ceph_add_rw_context.exit.ceph_del_rw_context.exit_crit_edge: ; preds = %ceph_add_rw_context.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ceph_del_rw_context.exit

if.end.i.i.i187:                                  ; preds = %ceph_add_rw_context.exit
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %41, align 4
  %59 = ptrtoint ptr %rw_ctx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rw_ctx, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %ceph_del_rw_context.exit

ceph_del_rw_context.exit:                         ; preds = %if.end.i.i.i187, %ceph_add_rw_context.exit.ceph_del_rw_context.exit_crit_edge
  %63 = ptrtoint ptr %rw_ctx to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 256 to ptr), ptr %rw_ctx, align 8
  %64 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 290 to ptr), ptr %41, align 4
  call void @_raw_spin_unlock(ptr noundef %rw_contexts_lock.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_filemap_fault.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_filemap_fault, %if.then60)) #13
          to label %out_restore.thread207 [label %if.then60], !srcloc !374

if.then60:                                        ; preds = %ceph_del_rw_context.exit
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %got, align 4
  %call62 = call ptr @ceph_cap_string(i32 noundef %66) #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_filemap_fault.__UNIQUE_ID_ddebug394, ptr noundef nonnull @.str.157, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1434, ptr noundef %5, i64 noundef %shl, ptr noundef %call62, i32 noundef %call47) #13
  br label %out_restore.thread207

out_restore.thread207:                            ; preds = %if.then60, %ceph_del_rw_context.exit
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rw_ctx) #13
  %67 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %got, align 4
  call void @ceph_put_cap_refs(ptr noundef %add.ptr.i, i32 noundef %68) #13
  %call.i192210 = call i32 @sigprocmask(i32 noundef 2, ptr noundef nonnull %oldset, ptr noundef null) #13
  br label %cleanup

if.end71:                                         ; preds = %lor.lhs.false
  %69 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %got, align 4
  call void @ceph_put_cap_refs(ptr noundef %add.ptr.i, i32 noundef %70) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp72.not = icmp eq i32 %9, 0
  br i1 %cmp72.not, label %if.else75, label %if.end71.out_restore.thread_crit_edge

if.end71.out_restore.thread_crit_edge:            ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_restore.thread

if.else75:                                        ; preds = %if.end71
  %i_mapping = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %71 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i_mapping, align 8
  %invalidate_lock.i = getelementptr inbounds %struct.address_space, ptr %72, i32 0, i32 2
  call void @down_read(ptr noundef %invalidate_lock.i) #13
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %gfp_mask.i.i, align 4
  %and.i188 = and i32 %74, -129
  %call.i189 = call ptr @pagecache_get_page(ptr noundef %72, i32 noundef 0, i32 noundef 7, i32 noundef %and.i188) #13
  %tobool78.not = icmp eq ptr %call.i189, null
  br i1 %tobool78.not, label %if.else75.out_inline_crit_edge, label %if.end80

if.else75.out_inline_crit_edge:                   ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_inline

if.end80:                                         ; preds = %if.else75
  %call81 = call i32 @__ceph_do_getattr(ptr noundef %5, ptr noundef nonnull %call.i189, i32 noundef 2304, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.end80.if.then88_crit_edge, label %lor.lhs.false84

if.end80.if.then88_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then88

lor.lhs.false84:                                  ; preds = %if.end80
  %call85 = call fastcc i64 @i_size_read(ptr noundef %5)
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %call85)
  %cmp86.not = icmp slt i64 %shl, %call85
  br i1 %cmp86.not, label %if.end90, label %lor.lhs.false84.if.then88_crit_edge

lor.lhs.false84.if.then88_crit_edge:              ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then88

if.then88:                                        ; preds = %lor.lhs.false84.if.then88_crit_edge, %if.end80.if.then88_crit_edge
  call void @unlock_page(ptr noundef nonnull %call.i189) #13
  %75 = getelementptr inbounds %struct.page, ptr %call.i189, i32 0, i32 1
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %75, align 4
  %and.i.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !370

if.then.i.i:                                      ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %77, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #15
  %78 = ptrtoint ptr %call.i189 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %78, %if.end.i.i ]
  %79 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %79, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  %80 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.i.i.i.i = icmp eq i32 %81, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !368

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %79, ptr noundef nonnull @.str.49) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !401
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !402
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %82 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #13, !srcloc !403
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %82, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !404
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ceph_filemap_fault, %if.then.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !374

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %79, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__put_page(ptr noundef %79) #13
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call81)
  %cmp.i190 = icmp eq i32 %call81, -12
  %..i = select i1 %cmp.i190, i32 1, i32 2
  br label %out_inline

if.end90:                                         ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call81)
  %cmp91 = icmp ult i32 %call81, 4096
  br i1 %cmp91, label %if.then93, label %if.else94

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  call void @zero_user_segments(ptr noundef nonnull %call.i189, i32 noundef %call81, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #13
  br label %if.end95

if.else94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  call void @flush_dcache_page(ptr noundef nonnull %call.i189) #13
  br label %if.end95

if.end95:                                         ; preds = %if.else94, %if.then93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !373
  %83 = getelementptr inbounds %struct.page, ptr %call.i189, i32 0, i32 1
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %83, align 4
  %and.i.i.i.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !370

if.then.i.i.i:                                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef nonnull %call.i189, ptr noundef nonnull @.str.39) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call.i189) #13
  %page96 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %86 = ptrtoint ptr %page96 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call.i189, ptr %page96, align 4
  br label %out_inline

out_inline:                                       ; preds = %SetPageUptodate.exit, %put_page.exit, %if.else75.out_inline_crit_edge
  %ret.1 = phi i32 [ %..i, %put_page.exit ], [ 516, %SetPageUptodate.exit ], [ 1, %if.else75.out_inline_crit_edge ]
  %err.1 = phi i32 [ %call81, %put_page.exit ], [ %call81, %SetPageUptodate.exit ], [ -11, %if.else75.out_inline_crit_edge ]
  call void @up_read(ptr noundef %invalidate_lock.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_filemap_fault.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_filemap_fault, %if.then109)) #13
          to label %out_restore [label %if.then109], !srcloc !374

if.then109:                                       ; preds = %out_inline
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_filemap_fault.__UNIQUE_ID_ddebug395, ptr noundef nonnull @.str.159, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1476, ptr noundef %5, i64 noundef %shl, i32 noundef %ret.1) #13
  br label %out_restore

out_restore.thread:                               ; preds = %if.end71.out_restore.thread_crit_edge, %do.end.out_restore.thread_crit_edge
  %err.2.ph = phi i32 [ -11, %if.end71.out_restore.thread_crit_edge ], [ %call19, %do.end.out_restore.thread_crit_edge ]
  %call.i192204 = call i32 @sigprocmask(i32 noundef 2, ptr noundef nonnull %oldset, ptr noundef null) #13
  br label %if.then117

out_restore:                                      ; preds = %if.then109, %out_inline
  %call.i192 = call i32 @sigprocmask(i32 noundef 2, ptr noundef nonnull %oldset, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp115 = icmp slt i32 %err.1, 0
  br i1 %cmp115, label %out_restore.if.then117_crit_edge, label %out_restore.cleanup_crit_edge

out_restore.cleanup_crit_edge:                    ; preds = %out_restore
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

out_restore.if.then117_crit_edge:                 ; preds = %out_restore
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then117

if.then117:                                       ; preds = %out_restore.if.then117_crit_edge, %out_restore.thread
  %err.2206 = phi i32 [ %err.2.ph, %out_restore.thread ], [ %err.1, %out_restore.if.then117_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %err.2206)
  %cmp.i193 = icmp eq i32 %err.2206, -12
  %..i194 = select i1 %cmp.i193, i32 1, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.then117, %out_restore.cleanup_crit_edge, %out_restore.thread207, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %entry.cleanup_crit_edge ], [ %..i194, %if.then117 ], [ %ret.1, %out_restore.cleanup_crit_edge ], [ %call47, %out_restore.thread207 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oldset) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %got) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_page_mkwrite(ptr nocapture noundef readonly %vmf) #0 align 64 {
entry:
  %mask.i = alloca %struct.sigset_t, align 4
  %prealloc_cf = alloca ptr, align 4
  %got = alloca i32, align 4
  %oldset = alloca %struct.sigset_t, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
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
  %add.ptr.i = getelementptr i8, ptr %5, i32 -952
  %private_data = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prealloc_cf) #13
  %page4 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %8 = ptrtoint ptr %page4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %page4, align 4
  %index.i = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %11 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %call6 = tail call fastcc i64 @i_size_read(ptr noundef %5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %got) #13
  %12 = ptrtoint ptr %got to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %got, align 4, !annotation !375
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %oldset) #13
  %13 = ptrtoint ptr %oldset to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %oldset, align 4, !annotation !375
  %14 = getelementptr inbounds [2 x i32], ptr %oldset, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4, !annotation !375
  %i_ceph_flags.i = getelementptr i8, ptr %5, i32 -868
  %16 = ptrtoint ptr %i_ceph_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %i_ceph_flags.i, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i.i, align 4
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
  br i1 %spec.select.i, label %entry.cleanup159_crit_edge, label %if.end

entry.cleanup159_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

if.end:                                           ; preds = %entry
  %call8 = tail call ptr @ceph_alloc_cap_flush() #13
  %24 = ptrtoint ptr %prealloc_cf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call8, ptr %prealloc_cf, align 4
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.end.cleanup159_crit_edge, label %if.end10

if.end.cleanup159_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

if.end10:                                         ; preds = %if.end
  %25 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb.i.i, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %26, i32 0, i32 32, i32 2, i32 1
  tail call void @__might_sleep(ptr noundef nonnull @.str.167, i32 noundef 49) #13
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %26, i32 0, i32 32, i32 2, i32 1, i32 5
  %27 = tail call ptr @llvm.returnaddress(i32 0) #13
  %28 = ptrtoint ptr %27 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %28) #13
  %29 = tail call i32 @llvm.read_register.i32(metadata !358) #13
  %and.i.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %32, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !430
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end10.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.end10.rcu_sync_is_idle.exit.i.i.i_crit_edge:   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end10
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.168, i32 noundef 35, ptr noundef nonnull @.str.169) #13
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.end10.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %33 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool7.not.i.i.i.i = icmp eq i32 %34, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body7.i.i.i, label %if.else.i.i.i, !prof !370

do.body7.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !410
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %26, i32 0, i32 32, i32 2, i32 1, i32 1
  %36 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read_count.i.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %39 = tail call i32 @llvm.read_register.i32(metadata !358) #13
  %and.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %44, %38
  %45 = inttoptr i32 %add.i.i.i to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %add21.i.i.i = add i32 %47, 1
  store i32 %add21.i.i.i, ptr %45, align 4
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !411
  %and.i.i.i.i.i = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then41.i.i.i, label %do.body7.i.i.i.do.end43.i.i.i_crit_edge, !prof !368

do.body7.i.i.i.do.end43.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end43.i.i.i

if.then41.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end43.i.i.i

do.end43.i.i.i:                                   ; preds = %if.then41.i.i.i, %do.body7.i.i.i.do.end43.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #13, !srcloc !412
  br label %sb_start_pagefault.exit

if.else.i.i.i:                                    ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call50.i.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext false) #13
  br label %sb_start_pagefault.exit

sb_start_pagefault.exit:                          ; preds = %if.else.i.i.i, %do.end43.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !431
  %49 = tail call i32 @llvm.read_register.i32(metadata !358) #13
  %and.i.i.i58.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i58.i.i.i to ptr
  %preempt_count.i.i59.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i59.i.i.i, align 4
  %sub.i.i.i.i = add i32 %52, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i59.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mask.i) #13
  %53 = getelementptr inbounds [2 x i32], ptr %mask.i, i32 0, i32 1
  %54 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -257, ptr %mask.i, align 4
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %53, align 4
  %call.i = call i32 @sigprocmask(i32 noundef 0, ptr noundef nonnull %mask.i, ptr noundef nonnull %oldset) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mask.i) #13
  %i_inline_version = getelementptr i8, ptr %5, i32 -880
  %56 = ptrtoint ptr %i_inline_version to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %i_inline_version, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %57)
  %cmp.not = icmp eq i64 %57, -1
  br i1 %cmp.not, label %sb_start_pagefault.exit.if.end23_crit_edge, label %if.then11

sb_start_pagefault.exit.if.end23_crit_edge:       ; preds = %sb_start_pagefault.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then11:                                        ; preds = %sb_start_pagefault.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp12 = icmp eq i32 %11, 0
  br i1 %cmp12, label %if.then13, label %if.end14.thread

if.end14.thread:                                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vm_file, align 4
  %call16325 = call i32 @ceph_uninline_data(ptr noundef %59, ptr noundef null)
  br label %if.end19

if.then13:                                        ; preds = %if.then11
  call void @__might_sleep(ptr noundef nonnull @.str.149, i32 noundef 788) #13
  %60 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4
  %and.i.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !370

if.then.i.i:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %62, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %9 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %63, %if.end.i.i ]
  %64 = inttoptr i32 %retval.0.i.i to ptr
  %65 = getelementptr inbounds %struct.page, ptr %64, i32 0, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %65, align 4
  %and.i.i.i.i247 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i247)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i247, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !370

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %64, ptr noundef nonnull @.str.39) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i248 = call zeroext i1 @__kasan_check_write(ptr noundef %64, i32 noundef 4) #13
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %64, align 4
  %and.i.i4.i.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i249 = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i249, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %64, i32 1, i32 3, i32 1) #13
  %70 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 1, ptr elementtype(i32) %64) #13, !srcloc !377
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %70, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !378
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.if.end14_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

folio_trylock.exit.i.if.end14_crit_edge:          ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  call void @__folio_lock(ptr noundef %64) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then.i, %folio_trylock.exit.i.if.end14_crit_edge
  %71 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vm_file, align 4
  %call16 = call i32 @ceph_uninline_data(ptr noundef %72, ptr noundef %9)
  %tobool17.not = icmp eq ptr %9, null
  br i1 %tobool17.not, label %if.end14.if.end19_crit_edge, label %if.then18

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  call void @unlock_page(ptr noundef nonnull %9) #13
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14.if.end19_crit_edge, %if.end14.thread
  %call16327 = phi i32 [ %call16325, %if.end14.thread ], [ %call16, %if.then18 ], [ %call16, %if.end14.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16327)
  %cmp20 = icmp slt i32 %call16327, 0
  br i1 %cmp20, label %if.end19.out_free_crit_edge, label %if.end19.if.end23_crit_edge

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.end19.out_free_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end23:                                         ; preds = %if.end19.if.end23_crit_edge, %sb_start_pagefault.exit.if.end23_crit_edge
  %73 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %73, align 4
  %and.i.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i250 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i250, label %thp_size.exit, label %if.then.i.i251, !prof !370

if.then.i.i251:                                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.39) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 341, 0\0A.popsection", ""() #13, !srcloc !381
  unreachable

thp_size.exit:                                    ; preds = %if.end23
  %add = add nuw nsw i64 %shl.i, 4096
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call6)
  %cmp25.not = icmp sgt i64 %add, %call6
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %73, align 4
  %and.i.i.i256 = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i256)
  %tobool.not.i.i257 = icmp eq i32 %and.i.i.i256, 0
  br i1 %cmp25.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %thp_size.exit
  br i1 %tobool.not.i.i257, label %if.then27.do.body_crit_edge, label %if.then.i.i254, !prof !370

if.then27.do.body_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then.i.i254:                                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.39) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 341, 0\0A.popsection", ""() #13, !srcloc !381
  unreachable

if.else:                                          ; preds = %thp_size.exit
  br i1 %tobool.not.i.i257, label %thp_size.exit259, label %if.then.i.i258, !prof !370

if.then.i.i258:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.39) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 341, 0\0A.popsection", ""() #13, !srcloc !381
  unreachable

thp_size.exit259:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %conv29 = trunc i64 %call6 to i32
  %and = and i32 %conv29, 4095
  br label %do.body

do.body:                                          ; preds = %thp_size.exit259, %if.then27.do.body_crit_edge
  %len.0 = phi i32 [ %and, %thp_size.exit259 ], [ 4096, %if.then27.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_page_mkwrite.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_page_mkwrite, %if.then36)) #13
          to label %do.end [label %if.then36], !srcloc !374

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %add.ptr.i, align 8
  %snap = getelementptr i8, ptr %5, i32 -944
  %80 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %snap, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_page_mkwrite.__UNIQUE_ID_ddebug396, ptr noundef nonnull @.str.162, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1530, ptr noundef %5, i64 noundef %79, i64 noundef %81, i64 noundef %shl.i, i32 noundef %len.0, i64 noundef %call6) #13
  br label %do.end

do.end:                                           ; preds = %if.then36, %do.body
  %82 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %7, align 4
  %84 = and i16 %83, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool44.not = icmp eq i16 %84, 0
  %.240 = select i1 %tobool44.not, i32 8192, i32 40960
  %85 = ptrtoint ptr %got to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %got, align 4
  %86 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %vm_file, align 4
  %conv49 = zext i32 %len.0 to i64
  %add50 = add nuw nsw i64 %shl.i, %conv49
  %call51 = call i32 @ceph_get_caps(ptr noundef %87, i32 noundef 4096, i32 noundef %.240, i64 noundef %add50, ptr noundef nonnull %got) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %do.end.out_free_crit_edge, label %do.body56

do.end.out_free_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

do.body56:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_page_mkwrite.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_page_mkwrite, %if.then68)) #13
          to label %do.end73 [label %if.then68], !srcloc !374

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #15
  %88 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %got, align 4
  %call70 = call ptr @ceph_cap_string(i32 noundef %89) #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_page_mkwrite.__UNIQUE_ID_ddebug397, ptr noundef nonnull @.str.164, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1542, ptr noundef %5, i64 noundef %shl.i, i32 noundef %len.0, ptr noundef %call70) #13
  br label %do.end73

do.end73:                                         ; preds = %if.then68, %do.body56
  %90 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %vm_file, align 4
  %call75 = call i32 @file_update_time(ptr noundef %91) #13
  %i_version.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 38
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i, i32 noundef 8) #13
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %i_version.i) #13
  %92 = ptrtoint ptr %9 to i32
  %mapping.i = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1, i32 0, i32 1
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %i_cap_wq = getelementptr i8, ptr %5, i32 -476
  br label %do.body76

do.body76:                                        ; preds = %cleanup115.do.body76_crit_edge, %do.end73
  %err.0 = phi i32 [ %call51, %do.end73 ], [ 0, %cleanup115.do.body76_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.149, i32 noundef 788) #13
  %93 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %73, align 4
  %and.i.i262 = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i262)
  %tobool.not.i.i263 = icmp eq i32 %and.i.i262, 0
  br i1 %tobool.not.i.i263, label %do.body76._compound_head.exit.i270_crit_edge, label %if.then.i.i265, !prof !370

do.body76._compound_head.exit.i270_crit_edge:     ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #15
  br label %_compound_head.exit.i270

if.then.i.i265:                                   ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i264 = add i32 %94, -1
  br label %_compound_head.exit.i270

_compound_head.exit.i270:                         ; preds = %if.then.i.i265, %do.body76._compound_head.exit.i270_crit_edge
  %retval.0.i.i267 = phi i32 [ %sub.i.i264, %if.then.i.i265 ], [ %92, %do.body76._compound_head.exit.i270_crit_edge ]
  %95 = inttoptr i32 %retval.0.i.i267 to ptr
  %96 = getelementptr inbounds %struct.page, ptr %95, i32 0, i32 1
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %96, align 4
  %and.i.i.i.i268 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i268)
  %tobool.not.i.i.i269 = icmp eq i32 %and.i.i.i.i268, 0
  br i1 %tobool.not.i.i.i269, label %folio_flags.exit.i.i275, label %if.then.i.i.i271, !prof !370

if.then.i.i.i271:                                 ; preds = %_compound_head.exit.i270
  call void @__sanitizer_cov_trace_pc() #15
  %99 = inttoptr i32 %retval.0.i.i267 to ptr
  call void @dump_page(ptr noundef %99, ptr noundef nonnull @.str.39) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !372
  unreachable

folio_flags.exit.i.i275:                          ; preds = %_compound_head.exit.i270
  %call.i.i.i.i272 = call zeroext i1 @__kasan_check_write(ptr noundef %95, i32 noundef 4) #13
  %100 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %95, align 4
  %and.i.i4.i.i273 = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i273)
  %tobool.not.i.i.i.i274 = icmp eq i32 %and.i.i4.i.i273, 0
  br i1 %tobool.not.i.i.i.i274, label %folio_trylock.exit.i279, label %folio_flags.exit.i.i275.if.then.i280_crit_edge

folio_flags.exit.i.i275.if.then.i280_crit_edge:   ; preds = %folio_flags.exit.i.i275
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i280

folio_trylock.exit.i279:                          ; preds = %folio_flags.exit.i.i275
  call void @llvm.prefetch.p0(ptr %95, i32 1, i32 3, i32 1) #13
  %102 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %95, ptr %95, i32 1, ptr elementtype(i32) %95) #13, !srcloc !377
  %asmresult.i.i.i.i.i.i.i276 = extractvalue { i32, i32, i32 } %102, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !378
  %and1.i.i.i.i277 = and i32 %asmresult.i.i.i.i.i.i.i276, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i277)
  %phi.cmp.i.i.i278 = icmp eq i32 %and1.i.i.i.i277, 0
  br i1 %phi.cmp.i.i.i278, label %folio_trylock.exit.i279.lock_page.exit281_crit_edge, label %folio_trylock.exit.i279.if.then.i280_crit_edge

folio_trylock.exit.i279.if.then.i280_crit_edge:   ; preds = %folio_trylock.exit.i279
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i280

folio_trylock.exit.i279.lock_page.exit281_crit_edge: ; preds = %folio_trylock.exit.i279
  call void @__sanitizer_cov_trace_pc() #15
  br label %lock_page.exit281

if.then.i280:                                     ; preds = %folio_trylock.exit.i279.if.then.i280_crit_edge, %folio_flags.exit.i.i275.if.then.i280_crit_edge
  call void @__folio_lock(ptr noundef %95) #13
  br label %lock_page.exit281

lock_page.exit281:                                ; preds = %if.then.i280, %folio_trylock.exit.i279.lock_page.exit281_crit_edge
  %call.i282 = call fastcc i64 @i_size_read(ptr noundef %5) #13
  %103 = lshr i64 %call.i282, 12
  %conv.i283 = trunc i64 %103 to i32
  %104 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mapping.i, align 4
  %106 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %i_mapping.i, align 8
  %cmp.not.i = icmp eq ptr %105, %107
  br i1 %cmp.not.i, label %if.end.i, label %lock_page.exit281.if.then80_crit_edge

lock_page.exit281.if.then80_crit_edge:            ; preds = %lock_page.exit281
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then80

if.end.i:                                         ; preds = %lock_page.exit281
  %108 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %conv.i283)
  %cmp4.i = icmp ult i32 %109, %conv.i283
  br i1 %cmp4.i, label %if.end.i.if.end81_crit_edge, label %if.end7.i

if.end.i.if.end81_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %conv.i283)
  %cmp9.i = icmp ugt i32 %109, %conv.i283
  %and.i284363 = and i64 %call.i282, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i284363)
  %tobool.not.i285 = icmp eq i64 %and.i284363, 0
  %or.cond.i = select i1 %cmp9.i, i1 true, i1 %tobool.not.i285
  br i1 %or.cond.i, label %if.end7.i.if.then80_crit_edge, label %if.end7.i.if.end81_crit_edge

if.end7.i.if.end81_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.end7.i.if.then80_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then80

if.then80:                                        ; preds = %if.end7.i.if.then80_crit_edge, %lock_page.exit281.if.then80_crit_edge
  call void @unlock_page(ptr noundef %9) #13
  br label %lor.lhs.false

if.end81:                                         ; preds = %if.end7.i.if.end81_crit_edge, %if.end.i.if.end81_crit_edge
  %call82 = call fastcc ptr @ceph_find_incompatible(ptr noundef %9)
  %tobool83.not = icmp eq ptr %call82, null
  br i1 %tobool83.not, label %do.end121, label %if.end86

if.end86:                                         ; preds = %if.end81
  call void @unlock_page(ptr noundef %9) #13
  %cmp.i288 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i288, label %if.end86.lor.lhs.false_crit_edge, label %if.end89

if.end86.lor.lhs.false_crit_edge:                 ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

if.end89:                                         ; preds = %if.end86
  call void @ceph_queue_inode_work(ptr noundef %5, i32 noundef 0) #13
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1576) #13
  %call.i289 = call fastcc ptr @get_oldest_context(ptr noundef %5, ptr noundef null, ptr noundef null) #13
  %tobool.not.i290 = icmp eq ptr %call.i289, null
  br i1 %tobool.not.i290, label %context_is_writeable_or_written.exit.thread, label %context_is_writeable_or_written.exit

context_is_writeable_or_written.exit.thread:      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  call void @ceph_put_snap_context(ptr noundef null) #13
  br label %cleanup115

context_is_writeable_or_written.exit:             ; preds = %if.end89
  %seq.i = getelementptr inbounds %struct.ceph_snap_context, ptr %call82, i32 0, i32 1
  %110 = ptrtoint ptr %seq.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %seq.i, align 8
  %seq1.i = getelementptr inbounds %struct.ceph_snap_context, ptr %call.i289, i32 0, i32 1
  %112 = ptrtoint ptr %seq1.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %seq1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %111, i64 %113)
  %cmp.i291.not = icmp ugt i64 %111, %113
  call void @ceph_put_snap_context(ptr noundef nonnull %call.i289) #13
  br i1 %cmp.i291.not, label %if.then98, label %context_is_writeable_or_written.exit.cleanup115_crit_edge

context_is_writeable_or_written.exit.cleanup115_crit_edge: ; preds = %context_is_writeable_or_written.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup115

if.then98:                                        ; preds = %context_is_writeable_or_written.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %114 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %call100377 = call i32 @prepare_to_wait_event(ptr noundef %i_cap_wq, ptr noundef nonnull %__wq_entry, i32 noundef 258) #13
  %call.i292378 = call fastcc ptr @get_oldest_context(ptr noundef %5, ptr noundef null, ptr noundef null) #13
  %tobool.not.i293379 = icmp eq ptr %call.i292378, null
  br i1 %tobool.not.i293379, label %if.then98.context_is_writeable_or_written.exit299.thread_crit_edge, label %if.then98.context_is_writeable_or_written.exit299_crit_edge

if.then98.context_is_writeable_or_written.exit299_crit_edge: ; preds = %if.then98
  br label %context_is_writeable_or_written.exit299

if.then98.context_is_writeable_or_written.exit299.thread_crit_edge: ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #15
  br label %context_is_writeable_or_written.exit299.thread

context_is_writeable_or_written.exit299.thread:   ; preds = %cleanup108.context_is_writeable_or_written.exit299.thread_crit_edge, %if.then98.context_is_writeable_or_written.exit299.thread_crit_edge
  call void @ceph_put_snap_context(ptr noundef null) #13
  br label %for.end

context_is_writeable_or_written.exit299:          ; preds = %cleanup108.context_is_writeable_or_written.exit299_crit_edge, %if.then98.context_is_writeable_or_written.exit299_crit_edge
  %call.i292381 = phi ptr [ %call.i292, %cleanup108.context_is_writeable_or_written.exit299_crit_edge ], [ %call.i292378, %if.then98.context_is_writeable_or_written.exit299_crit_edge ]
  %call100380 = phi i32 [ %call100, %cleanup108.context_is_writeable_or_written.exit299_crit_edge ], [ %call100377, %if.then98.context_is_writeable_or_written.exit299_crit_edge ]
  %115 = ptrtoint ptr %seq.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %seq.i, align 8
  %seq1.i295 = getelementptr inbounds %struct.ceph_snap_context, ptr %call.i292381, i32 0, i32 1
  %117 = ptrtoint ptr %seq1.i295 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %seq1.i295, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %116, i64 %118)
  %cmp.i296.not = icmp ugt i64 %116, %118
  call void @ceph_put_snap_context(ptr noundef nonnull %call.i292381) #13
  br i1 %cmp.i296.not, label %if.end104, label %context_is_writeable_or_written.exit299.for.end_crit_edge

context_is_writeable_or_written.exit299.for.end_crit_edge: ; preds = %context_is_writeable_or_written.exit299
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end104:                                        ; preds = %context_is_writeable_or_written.exit299
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100380)
  %tobool105.not = icmp eq i32 %call100380, 0
  br i1 %tobool105.not, label %cleanup108, label %if.end104.__out_crit_edge

if.end104.__out_crit_edge:                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  br label %__out

cleanup108:                                       ; preds = %if.end104
  call void @schedule() #13
  %call100 = call i32 @prepare_to_wait_event(ptr noundef %i_cap_wq, ptr noundef nonnull %__wq_entry, i32 noundef 258) #13
  %call.i292 = call fastcc ptr @get_oldest_context(ptr noundef %5, ptr noundef null, ptr noundef null) #13
  %tobool.not.i293 = icmp eq ptr %call.i292, null
  br i1 %tobool.not.i293, label %cleanup108.context_is_writeable_or_written.exit299.thread_crit_edge, label %cleanup108.context_is_writeable_or_written.exit299_crit_edge

cleanup108.context_is_writeable_or_written.exit299_crit_edge: ; preds = %cleanup108
  call void @__sanitizer_cov_trace_pc() #15
  br label %context_is_writeable_or_written.exit299

cleanup108.context_is_writeable_or_written.exit299.thread_crit_edge: ; preds = %cleanup108
  call void @__sanitizer_cov_trace_pc() #15
  br label %context_is_writeable_or_written.exit299.thread

for.end:                                          ; preds = %context_is_writeable_or_written.exit299.for.end_crit_edge, %context_is_writeable_or_written.exit299.thread
  call void @finish_wait(ptr noundef %i_cap_wq, ptr noundef nonnull %__wq_entry) #13
  br label %__out

__out:                                            ; preds = %for.end, %if.end104.__out_crit_edge
  %__ret99.1336 = phi i32 [ 0, %for.end ], [ %call100380, %if.end104.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %cleanup115

cleanup115:                                       ; preds = %__out, %context_is_writeable_or_written.exit.cleanup115_crit_edge, %context_is_writeable_or_written.exit.thread
  %__ret.0 = phi i32 [ 0, %context_is_writeable_or_written.exit.cleanup115_crit_edge ], [ %__ret99.1336, %__out ], [ 0, %context_is_writeable_or_written.exit.thread ]
  call void @ceph_put_snap_context(ptr noundef nonnull %call82) #13
  %cmp119 = icmp eq i32 %__ret.0, 0
  br i1 %cmp119, label %cleanup115.do.body76_crit_edge, label %cleanup115.lor.lhs.false_crit_edge

cleanup115.lor.lhs.false_crit_edge:               ; preds = %cleanup115
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

cleanup115.do.body76_crit_edge:                   ; preds = %cleanup115
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body76

do.end121:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  %call85 = call zeroext i1 @set_page_dirty(ptr noundef %9) #13
  br label %if.then127

lor.lhs.false:                                    ; preds = %cleanup115.lor.lhs.false_crit_edge, %if.end86.lor.lhs.false_crit_edge, %if.then80
  %err.1347358 = phi i32 [ %err.0, %if.then80 ], [ %err.0, %if.end86.lor.lhs.false_crit_edge ], [ %__ret.0, %cleanup115.lor.lhs.false_crit_edge ]
  %ret.1348355 = phi i32 [ 256, %if.then80 ], [ 2, %cleanup115.lor.lhs.false_crit_edge ], [ 2, %if.end86.lor.lhs.false_crit_edge ]
  %119 = ptrtoint ptr %i_inline_version to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %i_inline_version, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %120)
  %cmp125.not = icmp eq i64 %120, -1
  br i1 %cmp125.not, label %lor.lhs.false.do.body135_crit_edge, label %lor.lhs.false.if.then127_crit_edge

lor.lhs.false.if.then127_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then127

lor.lhs.false.do.body135_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body135

if.then127:                                       ; preds = %lor.lhs.false.if.then127_crit_edge, %do.end121
  %err.1347356 = phi i32 [ %err.1347358, %lor.lhs.false.if.then127_crit_edge ], [ %err.0, %do.end121 ]
  %ret.1348353 = phi i32 [ %ret.1348355, %lor.lhs.false.if.then127_crit_edge ], [ 512, %do.end121 ]
  %i_ceph_lock = getelementptr i8, ptr %5, i32 -936
  call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #13
  %121 = ptrtoint ptr %i_inline_version to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 -1, ptr %i_inline_version, align 8
  %call129 = call i32 @__ceph_mark_dirty_caps(ptr noundef %add.ptr.i, i32 noundef 4096, ptr noundef nonnull %prealloc_cf) #13
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool131.not = icmp eq i32 %call129, 0
  br i1 %tobool131.not, label %if.then127.do.body135_crit_edge, label %if.then132

if.then127.do.body135_crit_edge:                  ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body135

if.then132:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #15
  call void @__mark_inode_dirty(ptr noundef %5, i32 noundef %call129) #13
  br label %do.body135

do.body135:                                       ; preds = %if.then132, %if.then127.do.body135_crit_edge, %lor.lhs.false.do.body135_crit_edge
  %err.1347357 = phi i32 [ %err.1347356, %if.then127.do.body135_crit_edge ], [ %err.1347356, %if.then132 ], [ %err.1347358, %lor.lhs.false.do.body135_crit_edge ]
  %ret.1348354 = phi i32 [ %ret.1348353, %if.then127.do.body135_crit_edge ], [ %ret.1348353, %if.then132 ], [ %ret.1348355, %lor.lhs.false.do.body135_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_page_mkwrite.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_page_mkwrite, %if.then147)) #13
          to label %do.end152 [label %if.then147], !srcloc !374

if.then147:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #15
  %122 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %got, align 4
  %call149 = call ptr @ceph_cap_string(i32 noundef %123) #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_page_mkwrite.__UNIQUE_ID_ddebug398, ptr noundef nonnull @.str.166, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1593, ptr noundef %5, i64 noundef %shl.i, i32 noundef %len.0, ptr noundef %call149, i32 noundef %ret.1348354) #13
  br label %do.end152

do.end152:                                        ; preds = %if.then147, %do.body135
  %124 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %got, align 4
  call void @ceph_put_cap_refs_async(ptr noundef %add.ptr.i, i32 noundef %125) #13
  br label %out_free

out_free:                                         ; preds = %do.end152, %do.end.out_free_crit_edge, %if.end19.out_free_crit_edge
  %err.2 = phi i32 [ %call16327, %if.end19.out_free_crit_edge ], [ %call51, %do.end.out_free_crit_edge ], [ %err.1347357, %do.end152 ]
  %ret.2 = phi i32 [ 2, %if.end19.out_free_crit_edge ], [ 2, %do.end.out_free_crit_edge ], [ %ret.1348354, %do.end152 ]
  %call.i300 = call i32 @sigprocmask(i32 noundef 2, ptr noundef nonnull %oldset, ptr noundef null) #13
  %126 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %i_sb.i.i, align 4
  %add.ptr1.i.i301 = getelementptr %struct.super_block, ptr %127, i32 0, i32 32, i32 2, i32 1
  %dep_map.i.i.i302 = getelementptr %struct.super_block, ptr %127, i32 0, i32 32, i32 2, i32 1, i32 5
  call void @lock_release(ptr noundef %dep_map.i.i.i302, i32 noundef %28) #13
  %128 = call i32 @llvm.read_register.i32(metadata !358) #13
  %and.i.i.i.i.i.i303 = and i32 %128, -16384
  %129 = inttoptr i32 %and.i.i.i.i.i.i303 to ptr
  %preempt_count.i.i.i.i.i304 = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %preempt_count.i.i.i.i.i304 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %preempt_count.i.i.i.i.i304, align 4
  %add.i.i.i.i305 = add i32 %131, 1
  store volatile i32 %add.i.i.i.i305, ptr %preempt_count.i.i.i.i.i304, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !432
  %call.i.i.i.i306 = call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i306)
  %tobool.not.i.i.i.i307 = icmp eq i32 %call.i.i.i.i306, 0
  br i1 %tobool.not.i.i.i.i307, label %land.lhs.true.i.i.i.i310, label %out_free.rcu_sync_is_idle.exit.i.i.i315_crit_edge

out_free.rcu_sync_is_idle.exit.i.i.i315_crit_edge: ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i.i.i315

land.lhs.true.i.i.i.i310:                         ; preds = %out_free
  %call1.i.i.i.i308 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i308)
  %tobool2.not.i.i.i.i309 = icmp eq i32 %call1.i.i.i.i308, 0
  br i1 %tobool2.not.i.i.i.i309, label %land.lhs.true.i.i.i.i310.rcu_sync_is_idle.exit.i.i.i315_crit_edge, label %land.lhs.true3.i.i.i.i312

land.lhs.true.i.i.i.i310.rcu_sync_is_idle.exit.i.i.i315_crit_edge: ; preds = %land.lhs.true.i.i.i.i310
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i.i.i315

land.lhs.true3.i.i.i.i312:                        ; preds = %land.lhs.true.i.i.i.i310
  %.b8.i.i.i.i311 = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i311, label %land.lhs.true3.i.i.i.i312.rcu_sync_is_idle.exit.i.i.i315_crit_edge, label %if.then.i.i.i.i313

land.lhs.true3.i.i.i.i312.rcu_sync_is_idle.exit.i.i.i315_crit_edge: ; preds = %land.lhs.true3.i.i.i.i312
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i.i.i315

if.then.i.i.i.i313:                               ; preds = %land.lhs.true3.i.i.i.i312
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.168, i32 noundef 35, ptr noundef nonnull @.str.169) #13
  br label %rcu_sync_is_idle.exit.i.i.i315

rcu_sync_is_idle.exit.i.i.i315:                   ; preds = %if.then.i.i.i.i313, %land.lhs.true3.i.i.i.i312.rcu_sync_is_idle.exit.i.i.i315_crit_edge, %land.lhs.true.i.i.i.i310.rcu_sync_is_idle.exit.i.i.i315_crit_edge, %out_free.rcu_sync_is_idle.exit.i.i.i315_crit_edge
  %132 = ptrtoint ptr %add.ptr1.i.i301 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %add.ptr1.i.i301, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool7.not.i.i.i.i314 = icmp eq i32 %133, 0
  br i1 %tobool7.not.i.i.i.i314, label %do.body3.i.i.i, label %do.end49.i.i.i, !prof !370

do.body3.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i315
  %134 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !410
  %read_count.i.i.i316 = getelementptr %struct.super_block, ptr %127, i32 0, i32 32, i32 2, i32 1, i32 1
  %135 = ptrtoint ptr %read_count.i.i.i316 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %read_count.i.i.i316, align 4
  %137 = ptrtoint ptr %136 to i32
  %138 = call i32 @llvm.read_register.i32(metadata !358) #13
  %and.i.i.i.i317 = and i32 %138, -16384
  %139 = inttoptr i32 %and.i.i.i.i317 to ptr
  %cpu.i.i.i318 = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 3
  %140 = ptrtoint ptr %cpu.i.i.i318 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %cpu.i.i.i318, align 4
  %arrayidx.i.i.i319 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %141
  %142 = ptrtoint ptr %arrayidx.i.i.i319 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx.i.i.i319, align 4
  %add.i.i.i320 = add i32 %143, %137
  %144 = inttoptr i32 %add.i.i.i320 to ptr
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %144, align 4
  %add17.i.i.i = add i32 %146, -1
  store i32 %add17.i.i.i, ptr %144, align 4
  %147 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !411
  %and.i.i.i.i.i321 = and i32 %147, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i321)
  %tobool28.not.i.i.i = icmp eq i32 %and.i.i.i.i.i321, 0
  br i1 %tobool28.not.i.i.i, label %if.then37.i.i.i, label %do.body3.i.i.i.do.end39.i.i.i_crit_edge, !prof !368

do.body3.i.i.i.do.end39.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39.i.i.i

if.then37.i.i.i:                                  ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %if.then37.i.i.i, %do.body3.i.i.i.do.end39.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %134) #13, !srcloc !412
  br label %sb_end_pagefault.exit

do.end49.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i315
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !433
  %148 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !410
  %read_count75.i.i.i = getelementptr %struct.super_block, ptr %127, i32 0, i32 32, i32 2, i32 1, i32 1
  %149 = ptrtoint ptr %read_count75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %read_count75.i.i.i, align 4
  %151 = ptrtoint ptr %150 to i32
  %152 = call i32 @llvm.read_register.i32(metadata !358) #13
  %and.i122.i.i.i = and i32 %152, -16384
  %153 = inttoptr i32 %and.i122.i.i.i to ptr
  %cpu78.i.i.i = getelementptr inbounds %struct.thread_info, ptr %153, i32 0, i32 3
  %154 = ptrtoint ptr %cpu78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %cpu78.i.i.i, align 4
  %arrayidx79.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %155
  %156 = ptrtoint ptr %arrayidx79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx79.i.i.i, align 4
  %add80.i.i.i = add i32 %157, %151
  %158 = inttoptr i32 %add80.i.i.i to ptr
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %158, align 4
  %add81.i.i.i = add i32 %160, -1
  store i32 %add81.i.i.i, ptr %158, align 4
  %161 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !411
  %and.i.i123.i.i.i = and i32 %161, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i.i)
  %tobool92.not.i.i.i = icmp eq i32 %and.i.i123.i.i.i, 0
  br i1 %tobool92.not.i.i.i, label %if.then101.i.i.i, label %do.end49.i.i.i.do.end104.i.i.i_crit_edge, !prof !368

do.end49.i.i.i.do.end104.i.i.i_crit_edge:         ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end104.i.i.i

if.then101.i.i.i:                                 ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %do.end104.i.i.i

do.end104.i.i.i:                                  ; preds = %if.then101.i.i.i, %do.end49.i.i.i.do.end104.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %148) #13, !srcloc !412
  %writer.i.i.i = getelementptr %struct.super_block, ptr %127, i32 0, i32 32, i32 2, i32 1, i32 2
  %call111.i.i.i = call i32 @rcuwait_wake_up(ptr noundef %writer.i.i.i) #13
  br label %sb_end_pagefault.exit

sb_end_pagefault.exit:                            ; preds = %do.end104.i.i.i, %do.end39.i.i.i
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !434
  %162 = call i32 @llvm.read_register.i32(metadata !358) #13
  %and.i.i.i120.i.i.i = and i32 %162, -16384
  %163 = inttoptr i32 %and.i.i.i120.i.i.i to ptr
  %preempt_count.i.i121.i.i.i = getelementptr inbounds %struct.thread_info, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %preempt_count.i.i121.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %preempt_count.i.i121.i.i.i, align 4
  %sub.i.i.i.i322 = add i32 %165, -1
  store volatile i32 %sub.i.i.i.i322, ptr %preempt_count.i.i121.i.i.i, align 4
  %166 = ptrtoint ptr %prealloc_cf to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %prealloc_cf, align 4
  call void @ceph_free_cap_flush(ptr noundef %167) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %cmp154 = icmp slt i32 %err.2, 0
  br i1 %cmp154, label %if.then156, label %sb_end_pagefault.exit.cleanup159_crit_edge

sb_end_pagefault.exit.cleanup159_crit_edge:       ; preds = %sb_end_pagefault.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

if.then156:                                       ; preds = %sb_end_pagefault.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %err.2)
  %cmp.i323 = icmp eq i32 %err.2, -12
  %..i = select i1 %cmp.i323, i32 1, i32 2
  br label %cleanup159

cleanup159:                                       ; preds = %if.then156, %sb_end_pagefault.exit.cleanup159_crit_edge, %if.end.cleanup159_crit_edge, %entry.cleanup159_crit_edge
  %retval.0 = phi i32 [ 2, %entry.cleanup159_crit_edge ], [ 1, %if.end.cleanup159_crit_edge ], [ %..i, %if.then156 ], [ %ret.2, %sb_end_pagefault.exit.cleanup159_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oldset) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %got) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prealloc_cf) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_get_caps(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_cap_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fault(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_alloc_cap_flush() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_mark_dirty_caps(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_put_cap_refs_async(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_free_cap_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_osdc_alloc_request(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @osd_req_op_init(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_oid_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_osdc_alloc_messages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_oloc_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_oid_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_alloc_page_vector(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @osd_req_op_raw_data_in_pages(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_release_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 184)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 184)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !93, !95, !97, !99, !100, !101, !102, !104, !106, !107, !108, !109, !111, !112, !113, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !143, !144, !145, !147, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !235, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !251, !253, !254, !255, !257, !258, !259, !260, !262, !263, !264, !266, !267, !269, !271, !272, !273, !274, !276, !277, !278, !279, !281, !282, !283, !285, !286, !287, !288, !289, !290, !292, !294, !296, !298, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311, !312, !313, !315, !316, !317, !318, !320, !321, !322, !324, !325, !326, !328, !330, !331, !332, !334, !335, !336, !338, !339, !341, !342, !343, !344, !346, !347, !348, !350, !352, !353, !354, !356, !357}
!llvm.named.register.sp = !{!358}
!llvm.module.flags = !{!359, !360, !361, !362, !363, !364, !365, !366}
!llvm.ident = !{!367}

!0 = !{ptr @ceph_aops, !1, !"ceph_aops", i1 false, i1 false}
!1 = !{!"../fs/ceph/addr.c", i32 1368, i32 39}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ceph/addr.c", i32 1627, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ceph_fill_inline_data.__UNIQUE_ID_ddebug399, !3, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!8 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ceph/addr.c", i32 1663, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ceph_uninline_data.__UNIQUE_ID_ddebug401, !11, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ceph/addr.c", i32 1740, i32 10}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ceph/addr.c", i32 1751, i32 7}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ceph/addr.c", i32 1780, i32 2}
!21 = !{ptr @ceph_uninline_data.__UNIQUE_ID_ddebug402, !20, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!22 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ceph/addr.c", i32 2013, i32 4}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ceph_pool_perm_check.__UNIQUE_ID_ddebug407, !24, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!27 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ceph/addr.c", i32 2018, i32 4}
!30 = !{ptr @ceph_pool_perm_check.__UNIQUE_ID_ddebug408, !29, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!31 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../fs/ceph/addr.c", i32 2025, i32 12}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ceph/addr.c", i32 531, i32 2}
!37 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @writepage_nounlock.__UNIQUE_ID_ddebug348, !36, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!39 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ceph/addr.c", i32 536, i32 3}
!42 = !{ptr @writepage_nounlock.__UNIQUE_ID_ddebug349, !41, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!43 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ceph/addr.c", i32 541, i32 3}
!46 = !{ptr @writepage_nounlock.__UNIQUE_ID_ddebug350, !45, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!47 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ceph/addr.c", i32 553, i32 3}
!50 = !{ptr @writepage_nounlock.__UNIQUE_ID_ddebug351, !49, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!51 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ceph/addr.c", i32 561, i32 2}
!54 = !{ptr @writepage_nounlock.__UNIQUE_ID_ddebug352, !53, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!55 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../fs/ceph/addr.c", i32 581, i32 2}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ceph/addr.c", i32 583, i32 2}
!60 = !{ptr @writepage_nounlock.__UNIQUE_ID_ddebug353, !59, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!61 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ceph/addr.c", i32 603, i32 4}
!64 = !{ptr @writepage_nounlock.__UNIQUE_ID_ddebug354, !63, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!65 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ceph/addr.c", i32 610, i32 3}
!68 = !{ptr @writepage_nounlock.__UNIQUE_ID_ddebug355, !67, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!69 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ceph/addr.c", i32 615, i32 3}
!72 = !{ptr @writepage_nounlock.__UNIQUE_ID_ddebug356, !71, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!73 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../fs/ceph/addr.c", i32 619, i32 2}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/huge_mm.h", i32 341, i32 2}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ceph/addr.c", i32 437, i32 3}
!82 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @get_oldest_context.__UNIQUE_ID_ddebug346, !81, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!84 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/ceph/addr.c", i32 470, i32 3}
!87 = !{ptr @get_oldest_context.__UNIQUE_ID_ddebug347, !86, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!88 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/linux/netfs.h", i32 41, i32 2}
!91 = distinct !{null, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/mm.h", i32 717, i32 2}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/ceph/addr.c", i32 345, i32 2}
!99 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ceph_readpage.__UNIQUE_ID_ddebug343, !98, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!101 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @ceph_netfs_read_ops, !103, !"ceph_netfs_read_ops", i1 false, i1 false}
!103 = !{!"../fs/ceph/addr.c", i32 310, i32 44}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/ceph/addr.c", i32 272, i32 2}
!106 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @ceph_netfs_issue_op.__UNIQUE_ID_ddebug340, !105, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!108 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/ceph/addr.c", i32 276, i32 3}
!111 = !{ptr @ceph_netfs_issue_op.__UNIQUE_ID_ddebug341, !110, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!112 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../fs/ceph/addr.c", i32 281, i32 2}
!115 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/ceph/addr.c", i32 297, i32 2}
!117 = !{ptr @ceph_netfs_issue_op.__UNIQUE_ID_ddebug342, !116, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!118 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/ceph/addr.c", i32 229, i32 2}
!121 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @finish_netfs_read.__UNIQUE_ID_ddebug339, !120, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!123 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/ceph/addr.c", i32 1205, i32 3}
!126 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @ceph_find_incompatible.__UNIQUE_ID_ddebug388, !125, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!128 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/ceph/addr.c", i32 1227, i32 4}
!131 = !{ptr @ceph_find_incompatible.__UNIQUE_ID_ddebug389, !130, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!132 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/ceph/addr.c", i32 1233, i32 3}
!135 = !{ptr @ceph_find_incompatible.__UNIQUE_ID_ddebug390, !134, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!136 = !{ptr @.str.69, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/ceph/addr.c", i32 763, i32 2}
!139 = !{ptr @.str.71, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @ceph_writepages_start.__UNIQUE_ID_ddebug360, !138, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!141 = !{ptr @.str.72, !138, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.73, !138, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.74, !138, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.75, !138, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.76, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/ceph/addr.c", i32 769, i32 4}
!147 = !{ptr @ceph_writepages_start._rs, !146, !"_rs", i1 false, i1 false}
!148 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @ceph_writepages_start._entry, !146, !"_entry", i1 false, i1 false}
!150 = !{ptr @ceph_writepages_start._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.78, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/ceph/addr.c", i32 790, i32 3}
!153 = !{ptr @ceph_writepages_start.__UNIQUE_ID_ddebug361, !152, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!154 = !{ptr @.str.79, !152, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.80, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/ceph/addr.c", i32 793, i32 2}
!157 = !{ptr @ceph_writepages_start.__UNIQUE_ID_ddebug362, !156, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!158 = !{ptr @.str.81, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/ceph/addr.c", i32 804, i32 4}
!161 = !{ptr @ceph_writepages_start.__UNIQUE_ID_ddebug363, !160, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!162 = !{ptr @.str.83, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.84, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/ceph/addr.c", i32 810, i32 4}
!165 = !{ptr @ceph_writepages_start.__UNIQUE_ID_ddebug364, !164, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!166 = !{ptr @.str.85, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.86, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/ceph/addr.c", i32 819, i32 3}
!169 = !{ptr @ceph_writepages_start.__UNIQUE_ID_ddebug365, !168, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!170 = !{ptr @.str.87, !168, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.88, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/ceph/addr.c", i32 839, i32 3}
!173 = !{ptr @ceph_writepages_start.__UNIQUE_ID_ddebug366, !172, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!174 = !{ptr @.str.89, !172, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.90, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/ceph/addr.c", i32 844, i32 4}
!177 = !{ptr @ceph_writepages_start.__UNIQUE_ID_ddebug367, !176, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!178 = !{ptr @.str.91, !176, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.92, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/ceph/addr.c", i32 853, i32 5}
!181 = !{ptr @ceph_writepages_start.__UNIQUE_ID_ddebug368, !180, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!182 = !{ptr @.str.93, !180, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.94, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/ceph/addr.c", i32 860, i32 5}
!185 = !{ptr @ceph_writepages_start.__UNIQUE_ID_ddebug369, !184, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!186 = !{ptr @.str.95, !184, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @ceph_writepages_start.__UNIQUE_ID_ddebug370, !188, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!188 = !{!"../fs/ceph/addr.c", i32 870, i32 5}
!189 = !{ptr @.str.96, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/ceph/addr.c", i32 881, i32 5}
!191 = !{ptr @ceph_writepages_start.__UNIQUE_ID_ddebug371, !190, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!192 = !{ptr @.str.97, !190, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.98, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/ceph/addr.c", i32 887, i32 6}
!195 = !{ptr @ceph_writepages_start.__UNIQUE_ID_ddebug372, !194, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!196 = !{ptr @.str.99, !194, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.100, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/ceph/addr.c", i32 891, i32 5}
!199 = !{ptr @ceph_writepages_start.__UNIQUE_ID_ddebug373, !198, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!200 = !{ptr @.str.101, !198, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.102, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/ceph/addr.c", i32 897, i32 5}
!203 = !{ptr @ceph_writepages_start.__UNIQUE_ID_ddebug374, !202, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!204 = !{ptr @.str.103, !202, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.104, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/ceph/addr.c", i32 952, i32 4}
!207 = !{ptr @ceph_writepages_start.__UNIQUE_ID_ddebug375, !206, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!208 = !{ptr @.str.105, !206, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.106, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/ceph/addr.c", i32 986, i32 5}
!211 = !{ptr @ceph_writepages_start.__UNIQUE_ID_ddebug376, !210, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!212 = !{ptr @.str.107, !210, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.108, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/ceph/addr.c", i32 1041, i32 5}
!215 = !{ptr @ceph_writepages_start.__UNIQUE_ID_ddebug379, !214, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!216 = !{ptr @.str.109, !214, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @ceph_writepages_start.__UNIQUE_ID_ddebug384, !218, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!218 = !{!"../fs/ceph/addr.c", i32 1072, i32 3}
!219 = !{ptr @.str.110, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/ceph/addr.c", i32 1125, i32 3}
!221 = !{ptr @ceph_writepages_start.__UNIQUE_ID_ddebug385, !220, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!222 = !{ptr @.str.111, !220, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.112, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/ceph/addr.c", i32 1132, i32 3}
!225 = !{ptr @ceph_writepages_start.__UNIQUE_ID_ddebug386, !224, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!226 = !{ptr @.str.113, !224, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.114, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/ceph/addr.c", i32 1168, i32 2}
!229 = !{ptr @ceph_writepages_start.__UNIQUE_ID_ddebug387, !228, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!230 = !{ptr @.str.115, !228, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.116, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../include/linux/page-flags.h", i32 420, i32 1}
!233 = !{ptr @.str.117, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/ceph/addr.c", i32 672, i32 2}
!235 = !{ptr @.str.118, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @writepages_finish.__UNIQUE_ID_ddebug357, !234, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!237 = !{ptr @.str.119, !234, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.120, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../fs/ceph/addr.c", i32 715, i32 4}
!240 = !{ptr @writepages_finish.__UNIQUE_ID_ddebug358, !239, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!241 = !{ptr @.str.121, !239, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.122, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../fs/ceph/addr.c", i32 723, i32 3}
!244 = !{ptr @writepages_finish.__UNIQUE_ID_ddebug359, !243, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!245 = !{ptr @.str.123, !243, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.124, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../fs/ceph/addr.c", i32 87, i32 3}
!248 = !{ptr @.str.125, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @ceph_set_page_dirty.__UNIQUE_ID_ddebug332, !247, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!250 = !{ptr @.str.126, !247, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.127, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../fs/ceph/addr.c", i32 114, i32 2}
!253 = !{ptr @ceph_set_page_dirty.__UNIQUE_ID_ddebug333, !252, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!254 = !{ptr @.str.128, !252, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @.str.129, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../fs/ceph/addr.c", i32 372, i32 4}
!257 = !{ptr @.str.130, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @ceph_readahead.__UNIQUE_ID_ddebug344, !256, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!259 = !{ptr @.str.131, !256, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.132, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../fs/ceph/addr.c", i32 374, i32 4}
!262 = !{ptr @ceph_readahead.__UNIQUE_ID_ddebug345, !261, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!263 = !{ptr @.str.133, !261, !"<string literal>", i1 false, i1 false}
!264 = distinct !{null, !265, !"__already_done", i1 false, i1 false}
!265 = !{!"../fs/ceph/addr.c", i32 1302, i32 5}
!266 = !{ptr @.str.134, !265, !"<string literal>", i1 false, i1 false}
!267 = distinct !{null, !268, !"__already_done", i1 false, i1 false}
!268 = !{!"../fs/ceph/addr.c", i32 1322, i32 3}
!269 = !{ptr @.str.136, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../fs/ceph/addr.c", i32 1340, i32 2}
!271 = !{ptr @.str.137, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @ceph_write_end.__UNIQUE_ID_ddebug391, !270, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!273 = !{ptr @.str.138, !270, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.139, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../fs/ceph/addr.c", i32 148, i32 3}
!276 = !{ptr @.str.140, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @ceph_invalidatepage.__UNIQUE_ID_ddebug334, !275, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!278 = !{ptr @.str.141, !275, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @.str.142, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../fs/ceph/addr.c", i32 155, i32 3}
!281 = !{ptr @ceph_invalidatepage.__UNIQUE_ID_ddebug335, !280, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!282 = !{ptr @.str.143, !280, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.144, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../fs/ceph/addr.c", i32 170, i32 2}
!285 = !{ptr @.str.145, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @ceph_releasepage.__UNIQUE_ID_ddebug336, !284, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!287 = !{ptr @.str.146, !284, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.147, !284, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @.str.148, !284, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @.str.149, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!292 = distinct !{null, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../include/linux/gfp.h", i32 579, i32 2}
!294 = !{ptr @ceph_vmops, !295, !"ceph_vmops", i1 false, i1 false}
!295 = !{!"../fs/ceph/addr.c", i32 1785, i32 42}
!296 = !{ptr @.str.151, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../fs/ceph/addr.c", i32 1412, i32 2}
!298 = !{ptr @.str.152, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @ceph_filemap_fault.__UNIQUE_ID_ddebug392, !297, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!300 = !{ptr @.str.153, !297, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @.str.154, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../fs/ceph/addr.c", i32 1424, i32 2}
!303 = !{ptr @ceph_filemap_fault.__UNIQUE_ID_ddebug393, !302, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!304 = !{ptr @.str.155, !302, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @.str.156, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../fs/ceph/addr.c", i32 1433, i32 3}
!307 = !{ptr @ceph_filemap_fault.__UNIQUE_ID_ddebug394, !306, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!308 = !{ptr @.str.157, !306, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.158, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../fs/ceph/addr.c", i32 1475, i32 3}
!311 = !{ptr @ceph_filemap_fault.__UNIQUE_ID_ddebug395, !310, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!312 = !{ptr @.str.159, !310, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.160, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../fs/ceph/addr.c", i32 1529, i32 2}
!315 = !{ptr @.str.161, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @ceph_page_mkwrite.__UNIQUE_ID_ddebug396, !314, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!317 = !{ptr @.str.162, !314, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @.str.163, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../fs/ceph/addr.c", i32 1541, i32 2}
!320 = !{ptr @ceph_page_mkwrite.__UNIQUE_ID_ddebug397, !319, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!321 = !{ptr @.str.164, !319, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @.str.165, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../fs/ceph/addr.c", i32 1592, i32 2}
!324 = !{ptr @ceph_page_mkwrite.__UNIQUE_ID_ddebug398, !323, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!325 = !{ptr @.str.166, !323, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @.str.167, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!328 = distinct !{null, !329, !"__warned", i1 false, i1 false}
!329 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!330 = !{ptr @.str.168, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @.str.169, !329, !"<string literal>", i1 false, i1 false}
!332 = distinct !{null, !333, !"__warned", i1 false, i1 false}
!333 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!334 = !{ptr @.str.170, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @.str.171, !333, !"<string literal>", i1 false, i1 false}
!336 = distinct !{null, !337, !"__warned", i1 false, i1 false}
!337 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!338 = !{ptr @.str.172, !337, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @.str.173, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../fs/ceph/addr.c", i32 1845, i32 3}
!341 = !{ptr @.str.174, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @__ceph_pool_perm_get.__UNIQUE_ID_ddebug403, !340, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!343 = !{ptr @.str.175, !340, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @.str.176, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../fs/ceph/addr.c", i32 1848, i32 3}
!346 = !{ptr @__ceph_pool_perm_get.__UNIQUE_ID_ddebug404, !345, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!347 = !{ptr @.str.177, !345, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @.str.178, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../fs/ceph/addr.c", i32 1891, i32 39}
!350 = !{ptr @.str.179, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../fs/ceph/addr.c", i32 1975, i32 3}
!352 = !{ptr @__ceph_pool_perm_get.__UNIQUE_ID_ddebug405, !351, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!353 = !{ptr @.str.180, !351, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @.str.181, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../fs/ceph/addr.c", i32 1978, i32 3}
!356 = !{ptr @__ceph_pool_perm_get.__UNIQUE_ID_ddebug406, !355, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!357 = !{ptr @.str.182, !355, !"<string literal>", i1 false, i1 false}
!358 = !{!"sp"}
!359 = !{i32 1, !"wchar_size", i32 2}
!360 = !{i32 1, !"min_enum_size", i32 4}
!361 = !{i32 8, !"branch-target-enforcement", i32 0}
!362 = !{i32 8, !"sign-return-address", i32 0}
!363 = !{i32 8, !"sign-return-address-all", i32 0}
!364 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!365 = !{i32 7, !"uwtable", i32 1}
!366 = !{i32 7, !"frame-pointer", i32 2}
!367 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!368 = !{!"branch_weights", i32 1, i32 2000}
!369 = !{i64 2156235619, i64 2156236098, i64 2156235656, i64 2156235712, i64 2156235746, i64 2156235770, i64 2156235811, i64 2156235832, i64 2156235860, i64 2156235894}
!370 = !{!"branch_weights", i32 2000, i32 1}
!371 = !{i64 2151390582, i64 2151391073, i64 2151390619, i64 2151390675, i64 2151390709, i64 2151390733, i64 2151390774, i64 2151390795, i64 2151390823, i64 2151390857}
!372 = !{i64 2150627857, i64 2150628348, i64 2150627894, i64 2150627950, i64 2150627984, i64 2150628008, i64 2150628049, i64 2150628070, i64 2150628098, i64 2150628132}
!373 = !{i64 2151378820}
!374 = !{i64 2148773741, i64 2148773746, i64 2148773759, i64 2148773803, i64 2148773837, i64 2148773858}
!375 = !{!"auto-init"}
!376 = !{i8 0, i8 2}
!377 = !{i64 2148300784, i64 2148300816, i64 2148300845, i64 2148300879, i64 2148300910, i64 2148300933}
!378 = !{i64 2148389865}
!379 = !{i64 2150737766, i64 2150738257, i64 2150737803, i64 2150737859, i64 2150737893, i64 2150737917, i64 2150737958, i64 2150737979, i64 2150738007, i64 2150738041}
!380 = !{i64 2151086563, i64 2151087054, i64 2151086600, i64 2151086656, i64 2151086690, i64 2151086714, i64 2151086755, i64 2151086776, i64 2151086804, i64 2151086838}
!381 = !{i64 2153659287, i64 2153659775, i64 2153659324, i64 2153659380, i64 2153659414, i64 2153659438, i64 2153659479, i64 2153659500, i64 2153659528, i64 2153659562}
!382 = !{i64 2151143711, i64 2151144202, i64 2151143748, i64 2151143804, i64 2151143838, i64 2151143862, i64 2151143903, i64 2151143924, i64 2151143952, i64 2151143986}
!383 = !{i64 2151098706, i64 2151099197, i64 2151098743, i64 2151098799, i64 2151098833, i64 2151098857, i64 2151098898, i64 2151098919, i64 2151098947, i64 2151098981}
!384 = !{i64 2156299806, i64 2156300285, i64 2156299843, i64 2156299899, i64 2156299933, i64 2156299957, i64 2156299998, i64 2156300019, i64 2156300047, i64 2156300081}
!385 = !{i64 2156301633, i64 2156302112, i64 2156301670, i64 2156301726, i64 2156301760, i64 2156301784, i64 2156301825, i64 2156301846, i64 2156301874, i64 2156301908}
!386 = !{i64 2148377337}
!387 = !{i64 2148292646, i64 2148292678, i64 2148292707, i64 2148292741, i64 2148292772, i64 2148292795}
!388 = !{i64 2148377566}
!389 = !{i64 2156310761, i64 2156311241, i64 2156310798, i64 2156310854, i64 2156310888, i64 2156310912, i64 2156310953, i64 2156310974, i64 2156311002, i64 2156311036}
!390 = !{i64 2156312457, i64 2156312937, i64 2156312494, i64 2156312550, i64 2156312584, i64 2156312608, i64 2156312649, i64 2156312670, i64 2156312698, i64 2156312732}
!391 = !{i64 2156327183, i64 2156327663, i64 2156327220, i64 2156327276, i64 2156327310, i64 2156327334, i64 2156327375, i64 2156327396, i64 2156327424, i64 2156327458}
!392 = !{i64 2156328777, i64 2156329257, i64 2156328814, i64 2156328870, i64 2156328904, i64 2156328928, i64 2156328969, i64 2156328990, i64 2156329018, i64 2156329052}
!393 = !{i64 2156330607, i64 2156331087, i64 2156330644, i64 2156330700, i64 2156330734, i64 2156330758, i64 2156330799, i64 2156330820, i64 2156330848, i64 2156330882}
!394 = !{i64 2156332201, i64 2156332681, i64 2156332238, i64 2156332294, i64 2156332328, i64 2156332352, i64 2156332393, i64 2156332414, i64 2156332442, i64 2156332476}
!395 = !{i64 2156333761, i64 2156334241, i64 2156333798, i64 2156333854, i64 2156333888, i64 2156333912, i64 2156333953, i64 2156333974, i64 2156334002, i64 2156334036}
!396 = !{i64 2156136928, i64 2156137406, i64 2156136965, i64 2156137021, i64 2156137055, i64 2156137079, i64 2156137120, i64 2156137141, i64 2156137169, i64 2156137203}
!397 = !{i64 2156138500, i64 2156138978, i64 2156138537, i64 2156138593, i64 2156138627, i64 2156138651, i64 2156138692, i64 2156138713, i64 2156138741, i64 2156138775}
!398 = !{i64 2156141692, i64 2156142171, i64 2156141729, i64 2156141785, i64 2156141819, i64 2156141843, i64 2156141884, i64 2156141905, i64 2156141933, i64 2156141967}
!399 = !{i64 2156147701, i64 2156148180, i64 2156147738, i64 2156147794, i64 2156147828, i64 2156147852, i64 2156147893, i64 2156147914, i64 2156147942, i64 2156147976}
!400 = !{i64 2151377749}
!401 = !{i64 2153670279, i64 2153670762, i64 2153670316, i64 2153670372, i64 2153670406, i64 2153670430, i64 2153670471, i64 2153670492, i64 2153670520, i64 2153670554}
!402 = !{i64 2148380378}
!403 = !{i64 2148295111, i64 2148295143, i64 2148295172, i64 2148295206, i64 2148295237, i64 2148295260}
!404 = !{i64 2148380607}
!405 = !{i64 2150635290, i64 2150635781, i64 2150635327, i64 2150635383, i64 2150635417, i64 2150635441, i64 2150635482, i64 2150635503, i64 2150635531, i64 2150635565}
!406 = !{i64 2154082862}
!407 = !{i64 2152234408}
!408 = !{i64 2152234615}
!409 = !{i64 2154085633}
!410 = !{i64 684407, i64 684468}
!411 = !{i64 687139}
!412 = !{i64 687424}
!413 = !{i64 2152562042}
!414 = !{i64 2152561884}
!415 = !{i64 2152562212}
!416 = !{i64 2150147927}
!417 = !{i64 2149531558}
!418 = !{i64 775662, i64 775686, i64 775707, i64 775724, i64 775741}
!419 = !{i64 2149531824}
!420 = !{i64 2148381457}
!421 = !{i64 2148295921, i64 2148295953, i64 2148295982, i64 2148296016, i64 2148296047, i64 2148296070}
!422 = !{i64 2150429756}
!423 = !{i64 2148293456, i64 2148293488, i64 2148293517, i64 2148293551, i64 2148293582, i64 2148293605}
!424 = !{i64 2154904008, i64 2154904493, i64 2154904045, i64 2154904101, i64 2154904135, i64 2154904159, i64 2154904200, i64 2154904221, i64 2154904249, i64 2154904283}
!425 = !{i64 2153690191, i64 2153690675, i64 2153690228, i64 2153690284, i64 2153690318, i64 2153690342, i64 2153690383, i64 2153690404, i64 2153690432, i64 2153690466}
!426 = !{i64 2148291926, i64 2148291952, i64 2148291981, i64 2148292015, i64 2148292046, i64 2148292069}
!427 = !{i64 2148682460, i64 2148682740, i64 2148683074, i64 2148683408}
!428 = !{i64 2156240384, i64 2156240863, i64 2156240421, i64 2156240477, i64 2156240511, i64 2156240535, i64 2156240576, i64 2156240597, i64 2156240625, i64 2156240659}
!429 = !{i64 2156241935, i64 2156242414, i64 2156241972, i64 2156242028, i64 2156242062, i64 2156242086, i64 2156242127, i64 2156242148, i64 2156242176, i64 2156242210}
!430 = !{i64 2152402353}
!431 = !{i64 2152411203}
!432 = !{i64 2152421157}
!433 = !{i64 2152430652}
!434 = !{i64 2152440129}
