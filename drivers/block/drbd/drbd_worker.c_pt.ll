; ModuleID = '/llk/IR_all_yes/drivers/block/drbd/drbd_worker.c_pt.bc'
source_filename = "../drivers/block/drbd/drbd_worker.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sib_info = type { i32, %union.anon.199 }
%union.anon.199 = type { %struct.anon.200 }
%struct.anon.200 = type { ptr, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.169, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.169 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.drbd_device = type { ptr, %struct.list_head, %struct.list_head, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.kref, i32, ptr, i64, ptr, ptr, i32, %struct.drbd_work, %struct.drbd_work, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %union.drbd_state, %union.drbd_dev_state, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.rb_root, %struct.rb_root, [2 x %struct.list_head], [2 x %struct.list_head], i8, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, i32, i64, i64, i64, i64, i64, i32, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.drbd_md_io, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.wait_queue_head, %struct.atomic_t, i32, %struct.spinlock, i32, %struct.bm_io_work, i64, %struct.mutex, ptr, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, %struct.submit_worker }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drbd_work = type { %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.drbd_state = type { %struct.anon.191 }
%struct.anon.191 = type { i32 }
%union.drbd_dev_state = type { %struct.anon.192 }
%struct.anon.192 = type { i32 }
%struct.rb_root = type { ptr }
%struct.drbd_md_io = type { ptr, i32, i32, ptr, %struct.atomic_t, i32, i32 }
%struct.bm_io_work = type { %struct.drbd_work, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.submit_worker = type { ptr, %struct.work_struct, %struct.list_head }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.drbd_peer_device = type { %struct.list_head, ptr, ptr, %struct.work_struct, ptr }
%struct.drbd_connection = type { %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.idr, i32, %struct.mutex, i32, i32, ptr, %struct.wait_queue_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, %struct.drbd_socket, %struct.drbd_socket, i32, i32, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.blk_plug, %struct.drbd_thread, %struct.drbd_thread, %struct.drbd_thread, ptr, ptr, ptr, ptr, %struct.drbd_work_queue, i32, i32, [16 x %struct.drbd_thread_timing_details], [16 x %struct.drbd_thread_timing_details], %struct.anon.197 }
%struct.__kernel_sockaddr_storage = type { %union.anon.193 }
%union.anon.193 = type { ptr, [124 x i8] }
%struct.drbd_socket = type { %struct.mutex, ptr, ptr, ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.drbd_thread = type { %struct.spinlock, ptr, %struct.completion, i32, ptr, ptr, ptr, i32, ptr }
%struct.drbd_work_queue = type { %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.drbd_thread_timing_details = type { i32, ptr, ptr, i32, i32 }
%struct.anon.197 = type { i32, i8, i32, i32 }
%struct.drbd_interval = type { %struct.rb_node, i64, i32, i64, i8 }
%struct.drbd_peer_request = type { %struct.drbd_work, ptr, ptr, ptr, %struct.atomic_t, %struct.drbd_interval, i32, i32, %union.anon.198 }
%union.anon.198 = type { i64 }
%struct.drbd_resource = type { ptr, ptr, ptr, ptr, ptr, %struct.kref, %struct.idr, %struct.list_head, %struct.list_head, %struct.res_opts, %struct.mutex, %struct.mutex, %struct.spinlock, i8, i32, ptr }
%struct.res_opts = type { [32 x i8], i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drbd_backing_dev = type { ptr, ptr, %struct.drbd_md, ptr, i64 }
%struct.drbd_md = type { i64, i64, %struct.spinlock, [4 x i64], i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.disk_conf = type { [128 x i8], i32, [128 x i8], i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.bio_and_error = type { ptr, i32 }
%struct.drbd_request = type { %struct.drbd_work, ptr, ptr, %struct.drbd_interval, i32, %struct.list_head, ptr, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.kref, i32 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.153, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.153 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon.6, %union.anon.159, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.159 = type { %struct.atomic_t }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.83, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.123, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.124, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.45, %union.anon.47, %union.anon.48, i16, i8, i8, i32, %union.anon.50, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.75, [0 x i32], %union.anon.76, i16, i16, %union.anon.77, %struct.refcount_struct, [0 x i32], %union.anon.78 }
%union.anon.45 = type { i64 }
%union.anon.47 = type { i32 }
%union.anon.48 = type { i32 }
%union.anon.50 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.74 }
%union.anon.74 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { i32 }
%union.anon.76 = type { %struct.hlist_node }
%union.anon.77 = type { i32 }
%union.anon.78 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.83 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.123 = type { ptr }
%union.anon.124 = type { ptr }
%struct.sk_buff_head = type { %union.anon.81, i32, %struct.spinlock }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.fifo_buffer = type { i32, i32, i32, [0 x i32] }
%struct.drbd_device_work = type { %struct.drbd_work, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.digest_info = type { i32, ptr }
%struct.p_barrier = type { i32, i32 }
%struct.disk_stats = type { [4 x i64], [4 x i32], [4 x i32], [4 x i32], i32, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic_t }
%struct.net_conf = type { [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32 }

@__func__.drbd_endio_write_sec_final = private unnamed_addr constant [27 x i8] c"drbd_endio_write_sec_final\00", align 1
@drbd_ratelimit_state = external dso_local global %struct.ratelimit_state, align 4
@__func__.drbd_peer_request_endio = private unnamed_addr constant [24 x i8] c"drbd_peer_request_endio\00", align 1
@drbd_peer_request_endio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @__func__.drbd_peer_request_endio, ptr @.str.1, i32 183, ptr @.str.2, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: error=%d s=%llus\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/block/drbd/drbd_worker.c\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@drbd_peer_request_endio._entry_ptr = internal global ptr @drbd_peer_request_endio._entry, section ".printk_index", align 4
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"discard\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@__func__.drbd_request_endio = private unnamed_addr constant [19 x i8] c"drbd_request_endio\00", align 1
@drbd_request_endio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.drbd_request_endio, ptr @.str.1, i32 244, ptr @.str.8, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"delayed completion of aborted local request; disk-timeout may be too aggressive\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\010\00", [29 x i8] zeroinitializer }, align 32
@drbd_request_endio._entry_ptr = internal global ptr @drbd_request_endio._entry, section ".printk_index", align 4
@drbd_resync_finished._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.1, i32 881, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Warn failed to drbd_rs_del_all() and to kmalloc(dw).\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drbd_resync_finished\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@drbd_resync_finished._entry_ptr = internal global ptr @drbd_resync_finished._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@drbd_resync_finished._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.1, i32 916, ptr @.str.14, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s done (total %lu sec; paused %lu sec; %lu K/sec)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@drbd_resync_finished._entry_ptr.15 = internal global ptr @drbd_resync_finished._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Online verify\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Resync\00", [25 x i8] zeroinitializer }, align 32
@drbd_resync_finished._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.1, i32 923, ptr @.str.20, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Online verify found %lu %dk block out of sync!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@drbd_resync_finished._entry_ptr.21 = internal global ptr @drbd_resync_finished._entry.18, section ".printk_index", align 4
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"out-of-sync\00", [20 x i8] zeroinitializer }, align 32
@drbd_resync_finished._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.10, ptr @.str.1, i32 927, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ASSERT( (n_oos - device->rs_failed) == 0 ) in %s:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@drbd_resync_finished._entry_ptr.25 = internal global ptr @drbd_resync_finished._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"after-resync-target\00", [44 x i8] zeroinitializer }, align 32
@drbd_resync_finished._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.10, ptr @.str.1, i32 943, ptr @.str.14, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%u %% had equal checksums, eliminated: %luK; transferred %luK total %luK\0A\00", [54 x i8] zeroinitializer }, align 32
@drbd_resync_finished._entry_ptr.29 = internal global ptr @drbd_resync_finished._entry.27, section ".printk_index", align 4
@drbd_resync_finished._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.10, ptr @.str.1, i32 948, ptr @.str.14, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"            %lu failed blocks\0A\00", [33 x i8] zeroinitializer }, align 32
@drbd_resync_finished._entry_ptr.32 = internal global ptr @drbd_resync_finished._entry.30, section ".printk_index", align 4
@drbd_resync_finished._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.10, ptr @.str.1, i32 969, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"device->p_uuid is NULL! BUG\0A\00", [35 x i8] zeroinitializer }, align 32
@drbd_resync_finished._entry_ptr.35 = internal global ptr @drbd_resync_finished._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"updated UUIDs\00", [18 x i8] zeroinitializer }, align 32
@drbd_resync_finished.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unfence-peer\00", [19 x i8] zeroinitializer }, align 32
@__func__.w_e_end_data_req = private unnamed_addr constant [17 x i8] c"w_e_end_data_req\00", align 1
@w_e_end_data_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @__func__.w_e_end_data_req, ptr @.str.1, i32 1072, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Sending NegDReply. sector=%llus.\0A\00", [62 x i8] zeroinitializer }, align 32
@w_e_end_data_req._entry_ptr = internal global ptr @w_e_end_data_req._entry, section ".printk_index", align 4
@w_e_end_data_req._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @__func__.w_e_end_data_req, ptr @.str.1, i32 1082, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drbd_send_block() failed\0A\00", [38 x i8] zeroinitializer }, align 32
@w_e_end_data_req._entry_ptr.42 = internal global ptr @w_e_end_data_req._entry.40, section ".printk_index", align 4
@__func__.w_e_end_rsdata_req = private unnamed_addr constant [19 x i8] c"w_e_end_rsdata_req\00", align 1
@w_e_end_rsdata_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @__func__.w_e_end_rsdata_req, ptr @.str.1, i32 1145, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Not sending RSDataReply, partner DISKLESS!\0A\00", [52 x i8] zeroinitializer }, align 32
@w_e_end_rsdata_req._entry_ptr = internal global ptr @w_e_end_rsdata_req._entry, section ".printk_index", align 4
@w_e_end_rsdata_req._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @__func__.w_e_end_rsdata_req, ptr @.str.1, i32 1151, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Sending NegRSDReply. sector %llus.\0A\00", [60 x i8] zeroinitializer }, align 32
@w_e_end_rsdata_req._entry_ptr.46 = internal global ptr @w_e_end_rsdata_req._entry.44, section ".printk_index", align 4
@w_e_end_rsdata_req._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @__func__.w_e_end_rsdata_req, ptr @.str.1, i32 1164, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@w_e_end_rsdata_req._entry_ptr.48 = internal global ptr @w_e_end_rsdata_req._entry.47, section ".printk_index", align 4
@__func__.w_e_end_csum_rs_req = private unnamed_addr constant [20 x i8] c"w_e_end_csum_rs_req\00", align 1
@w_e_end_csum_rs_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @__func__.w_e_end_csum_rs_req, ptr @.str.1, i32 1197, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ASSERT( digest_size == di->digest_size ) in %s:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@w_e_end_csum_rs_req._entry_ptr = internal global ptr @w_e_end_csum_rs_req._entry, section ".printk_index", align 4
@w_e_end_csum_rs_req._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @__func__.w_e_end_csum_rs_req, ptr @.str.1, i32 1221, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Sending NegDReply. I guess it gets messy.\0A\00", [53 x i8] zeroinitializer }, align 32
@w_e_end_csum_rs_req._entry_ptr.52 = internal global ptr @w_e_end_csum_rs_req._entry.50, section ".printk_index", align 4
@w_e_end_csum_rs_req._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @__func__.w_e_end_csum_rs_req, ptr @.str.1, i32 1228, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drbd_send_block/ack() failed\0A\00", [34 x i8] zeroinitializer }, align 32
@w_e_end_csum_rs_req._entry_ptr.55 = internal global ptr @w_e_end_csum_rs_req._entry.53, section ".printk_index", align 4
@__func__.w_e_end_ov_req = private unnamed_addr constant [15 x i8] c"w_e_end_ov_req\00", align 1
@__func__.w_e_end_ov_reply = private unnamed_addr constant [17 x i8] c"w_e_end_ov_reply\00", align 1
@w_e_end_ov_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @__func__.w_e_end_ov_reply, ptr @.str.1, i32 1323, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@w_e_end_ov_reply._entry_ptr = internal global ptr @w_e_end_ov_reply._entry, section ".printk_index", align 4
@drbd_io_bio_set = external dso_local global %struct.bio_set, align 4
@drbd_resync_after_valid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@drbd_rs_controller_reset.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@drbd_start_resync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.1, i32 1745, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Resync already running!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drbd_start_resync\00", [46 x i8] zeroinitializer }, align 32
@drbd_start_resync._entry_ptr = internal global ptr @drbd_start_resync._entry, section ".printk_index", align 4
@drbd_start_resync._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.1, i32 1750, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No connection to peer, aborting!\0A\00", [62 x i8] zeroinitializer }, align 32
@drbd_start_resync._entry_ptr.60 = internal global ptr @drbd_start_resync._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"before-resync-target\00", [43 x i8] zeroinitializer }, align 32
@drbd_start_resync._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.57, ptr @.str.1, i32 1763, ptr @.str.14, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"before-resync-target handler returned %d, dropping connection.\0A\00", [32 x i8] zeroinitializer }, align 32
@drbd_start_resync._entry_ptr.64 = internal global ptr @drbd_start_resync._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"before-resync-source\00", [43 x i8] zeroinitializer }, align 32
@drbd_start_resync._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.57, ptr @.str.1, i32 1773, ptr @.str.14, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"before-resync-source handler returned %d, ignoring. Old userland tools?\00", [56 x i8] zeroinitializer }, align 32
@drbd_start_resync._entry_ptr.68 = internal global ptr @drbd_start_resync._entry.66, section ".printk_index", align 4
@drbd_start_resync._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.57, ptr @.str.1, i32 1776, ptr @.str.14, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"before-resync-source handler returned %d, dropping connection.\0A\00", [32 x i8] zeroinitializer }, align 32
@drbd_start_resync._entry_ptr.71 = internal global ptr @drbd_start_resync._entry.69, section ".printk_index", align 4
@drbd_start_resync._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.57, ptr @.str.1, i32 1860, ptr @.str.14, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Began resync as %s (will sync %lu KB [%lu bits set]).\0A\00", [41 x i8] zeroinitializer }, align 32
@drbd_start_resync._entry_ptr.74 = internal global ptr @drbd_start_resync._entry.72, section ".printk_index", align 4
@drbd_start_resync.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.drbd_worker = private unnamed_addr constant [12 x i8] c"drbd_worker\00", align 1
@drbd_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @__func__.drbd_worker, ptr @.str.1, i32 2191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014drbd %s: Worker got an unexpected signal\0A\00", [52 x i8] zeroinitializer }, align 32
@drbd_worker._entry_ptr = internal global ptr @drbd_worker._entry, section ".printk_index", align 4
@drbd_worker._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @__func__.drbd_worker, ptr @.str.1, i32 2228, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"ASSERT( device->state.disk == D_DISKLESS && device->state.conn == C_STANDALONE ) in %s:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@drbd_worker._entry_ptr.78 = internal global ptr @drbd_worker._entry.76, section ".printk_index", align 4
@put_ldev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.81, i32 2099, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ASSERT( i >= 0 ) in %s:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"put_ldev\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/block/drbd/drbd_int.h\00", [34 x i8] zeroinitializer }, align 32
@put_ldev._entry_ptr = internal global ptr @put_ldev._entry, section ".printk_index", align 4
@__drbd_chk_io_error_.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.__drbd_chk_io_error_ = private unnamed_addr constant [21 x i8] c"__drbd_chk_io_error_\00", align 1
@__drbd_chk_io_error_._entry = internal constant %struct.pi_entry { ptr @.str.82, ptr @__func__.__drbd_chk_io_error_, ptr @.str.81, i32 1728, ptr @.str.11, ptr @.str.3 }, align 1
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Local IO failed in %s.\0A\00", [40 x i8] zeroinitializer }, align 32
@__drbd_chk_io_error_._entry_ptr = internal global ptr @__drbd_chk_io_error_._entry, section ".printk_index", align 4
@__drbd_chk_io_error_._entry.83 = internal constant %struct.pi_entry { ptr @.str.84, ptr @__func__.__drbd_chk_io_error_, ptr @.str.81, i32 1764, ptr @.str.11, ptr @.str.3 }, align 1
@.str.84 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Local IO failed in %s. Detaching...\0A\00", [59 x i8] zeroinitializer }, align 32
@__drbd_chk_io_error_._entry_ptr.85 = internal global ptr @__drbd_chk_io_error_._entry.83, section ".printk_index", align 4
@__func__.drbd_endio_read_sec_final = private unnamed_addr constant [26 x i8] c"drbd_endio_read_sec_final\00", align 1
@.str.86 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"drbd%u %s/%u potential random memory corruption caused by delayed completion of aborted local request\0A\00", [57 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@make_resync_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.1, i32 615, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Disk broke down during resync!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"make_resync_request\00", [44 x i8] zeroinitializer }, align 32
@make_resync_request._entry_ptr = internal global ptr @make_resync_request._entry, section ".printk_index", align 4
@make_resync_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@make_resync_request._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.1, i32 742, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drbd_send_drequest() failed, aborting...\0A\00", [54 x i8] zeroinitializer }, align 32
@make_resync_request._entry_ptr.91 = internal global ptr @make_resync_request._entry.89, section ".printk_index", align 4
@drbd_rs_number_requests.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@drbd_rs_number_requests.__warned.92 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@drbd_get_max_buffers.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@drbd_rs_controller.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@drbd_rs_controller.__warned.93 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@w_e_send_csum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.1, i32 377, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"kmalloc() of digest failed.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"w_e_send_csum\00", [18 x i8] zeroinitializer }, align 32
@w_e_send_csum._entry_ptr = internal global ptr @w_e_send_csum._entry, section ".printk_index", align 4
@w_e_send_csum._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.1, i32 386, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drbd_send_drequest(..., csum) failed\0A\00", [58 x i8] zeroinitializer }, align 32
@w_e_send_csum._entry_ptr.98 = internal global ptr @w_e_send_csum._entry.96, section ".printk_index", align 4
@__func__.make_ov_request = private unnamed_addr constant [16 x i8] c"make_ov_request\00", align 1
@ov_out_of_sync_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.81, i32 1513, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Out of sync: start=%llu, size=%lu (sectors)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ov_out_of_sync_print\00", [43 x i8] zeroinitializer }, align 32
@ov_out_of_sync_print._entry_ptr = internal global ptr @ov_out_of_sync_print._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.103 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@_dec_unacked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.81, i32 2046, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"in %s:%d: unacked_cnt = %d < 0 !\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_dec_unacked\00", [19 x i8] zeroinitializer }, align 32
@_dec_unacked._entry_ptr = internal global ptr @_dec_unacked._entry, section ".printk_index", align 4
@drbd_pp_wait = external dso_local global %struct.wait_queue_head, align 4
@_dec_rs_pending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.81, i32 2025, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"in %s:%d: rs_pending_cnt = %d < 0 !\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_dec_rs_pending\00", [16 x i8] zeroinitializer }, align 32
@_dec_rs_pending._entry_ptr = internal global ptr @_dec_rs_pending._entry, section ".printk_index", align 4
@drbd_devices = external dso_local global %struct.idr, align 4
@_drbd_may_sync_now.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@use_checksum_based_resync.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wait_for_work.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wait_for_work.__warned.108 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@do_md_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.1, i32 1991, ptr @.str.2, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"md_sync_timer expired! Worker calls drbd_md_sync().\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"do_md_sync\00", [21 x i8] zeroinitializer }, align 32
@do_md_sync._entry_ptr = internal global ptr @do_md_sync._entry, section ".printk_index", align 4
@__const.update_on_disk_bitmap.sib = private unnamed_addr constant %struct.sib_info { i32 5, %union.anon.199 zeroinitializer }, align 4
@go_diskless._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.1, i32 1953, ptr @.str.11, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ASSERT( device->state.disk == D_FAILED ) in %s:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"go_diskless\00", [20 x i8] zeroinitializer }, align 32
@go_diskless._entry_ptr = internal global ptr @go_diskless._entry, section ".printk_index", align 4
@.str.113 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"detach\00", [25 x i8] zeroinitializer }, align 32
@do_start_resync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.1, i32 1707, ptr @.str.2, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"postponing start_resync ...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"do_start_resync\00", [16 x i8] zeroinitializer }, align 32
@do_start_resync._entry_ptr = internal global ptr @do_start_resync._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.117 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 3, i64 9]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 18]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 21]
@__sancov_gen_cov_switch_values.120 = internal global [6 x i64] [i64 4, i64 32, i64 17, i64 18, i64 19, i64 21]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 180, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 244, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 881, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 914, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 922, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 924, i32 18 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 927, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 930, i32 18 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 938, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 948, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 969, i32 5 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 977, i32 29 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1000, i32 8 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1012, i32 29 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1071, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1082, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1144, i32 5 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1150, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1164, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1197, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1221, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1228, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1323, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1745, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1750, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1759, i32 29 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1762, i32 5 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1768, i32 29 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1772, i32 6 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1775, i32 6 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1857, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 2191, i32 5 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 2228, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2099, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1728, i32 5 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1763, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 200, i32 8 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 615, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 742, i32 5 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 377, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 386, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1511, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 695, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 723, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2046, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant [33 x i8] c"../drivers/block/drbd/drbd_int.h\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2025, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1991, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1953, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1978, i32 6 }
@___asan_gen_.443 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.449 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.450 = private constant [36 x i8] c"../drivers/block/drbd/drbd_worker.c\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1707, i32 3 }
@llvm.compiler.used = appending global [151 x ptr] [ptr @__drbd_chk_io_error_._entry, ptr @__drbd_chk_io_error_._entry.83, ptr @__drbd_chk_io_error_._entry_ptr, ptr @__drbd_chk_io_error_._entry_ptr.85, ptr @_dec_rs_pending._entry, ptr @_dec_rs_pending._entry_ptr, ptr @_dec_unacked._entry, ptr @_dec_unacked._entry_ptr, ptr @do_md_sync._entry, ptr @do_md_sync._entry_ptr, ptr @do_start_resync._entry, ptr @do_start_resync._entry_ptr, ptr @drbd_peer_request_endio._entry, ptr @drbd_peer_request_endio._entry_ptr, ptr @drbd_request_endio._entry, ptr @drbd_request_endio._entry_ptr, ptr @drbd_resync_finished._entry, ptr @drbd_resync_finished._entry.12, ptr @drbd_resync_finished._entry.18, ptr @drbd_resync_finished._entry.23, ptr @drbd_resync_finished._entry.27, ptr @drbd_resync_finished._entry.30, ptr @drbd_resync_finished._entry.33, ptr @drbd_resync_finished._entry_ptr, ptr @drbd_resync_finished._entry_ptr.15, ptr @drbd_resync_finished._entry_ptr.21, ptr @drbd_resync_finished._entry_ptr.25, ptr @drbd_resync_finished._entry_ptr.29, ptr @drbd_resync_finished._entry_ptr.32, ptr @drbd_resync_finished._entry_ptr.35, ptr @drbd_start_resync._entry, ptr @drbd_start_resync._entry.58, ptr @drbd_start_resync._entry.62, ptr @drbd_start_resync._entry.66, ptr @drbd_start_resync._entry.69, ptr @drbd_start_resync._entry.72, ptr @drbd_start_resync._entry_ptr, ptr @drbd_start_resync._entry_ptr.60, ptr @drbd_start_resync._entry_ptr.64, ptr @drbd_start_resync._entry_ptr.68, ptr @drbd_start_resync._entry_ptr.71, ptr @drbd_start_resync._entry_ptr.74, ptr @drbd_worker._entry, ptr @drbd_worker._entry.76, ptr @drbd_worker._entry_ptr, ptr @drbd_worker._entry_ptr.78, ptr @go_diskless._entry, ptr @go_diskless._entry_ptr, ptr @make_resync_request._entry, ptr @make_resync_request._entry.89, ptr @make_resync_request._entry_ptr, ptr @make_resync_request._entry_ptr.91, ptr @ov_out_of_sync_print._entry, ptr @ov_out_of_sync_print._entry_ptr, ptr @put_ldev._entry, ptr @put_ldev._entry_ptr, ptr @w_e_end_csum_rs_req._entry, ptr @w_e_end_csum_rs_req._entry.50, ptr @w_e_end_csum_rs_req._entry.53, ptr @w_e_end_csum_rs_req._entry_ptr, ptr @w_e_end_csum_rs_req._entry_ptr.52, ptr @w_e_end_csum_rs_req._entry_ptr.55, ptr @w_e_end_data_req._entry, ptr @w_e_end_data_req._entry.40, ptr @w_e_end_data_req._entry_ptr, ptr @w_e_end_data_req._entry_ptr.42, ptr @w_e_end_ov_reply._entry, ptr @w_e_end_ov_reply._entry_ptr, ptr @w_e_end_rsdata_req._entry, ptr @w_e_end_rsdata_req._entry.44, ptr @w_e_end_rsdata_req._entry.47, ptr @w_e_end_rsdata_req._entry_ptr, ptr @w_e_end_rsdata_req._entry_ptr.46, ptr @w_e_end_rsdata_req._entry_ptr.48, ptr @w_e_send_csum._entry, ptr @w_e_send_csum._entry.96, ptr @w_e_send_csum._entry_ptr, ptr @w_e_send_csum._entry_ptr.98, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115], section "llvm.metadata"
@0 = internal global [110 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_peer_request_endio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_request_endio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_resync_finished._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_resync_finished._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_resync_finished._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_resync_finished._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_resync_finished._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_resync_finished._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_resync_finished._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w_e_end_data_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w_e_end_data_req._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w_e_end_rsdata_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w_e_end_rsdata_req._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w_e_end_rsdata_req._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w_e_end_csum_rs_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w_e_end_csum_rs_req._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w_e_end_csum_rs_req._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w_e_end_ov_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_start_resync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_start_resync._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_start_resync._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_start_resync._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_start_resync._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_start_resync._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_worker._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_ldev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_resync_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_resync_request._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w_e_send_csum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w_e_send_csum._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov_out_of_sync_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dec_unacked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dec_rs_pending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_md_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go_diskless._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_start_resync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_md_endio(ptr noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  %call = tail call i32 @blk_status_to_errno(i8 noundef zeroext %3) #14
  %error = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 80, i32 6
  %4 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %error, align 8
  %ldev = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ldev, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @put_ldev(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @bio_put(ptr noundef %bio) #14
  tail call void @drbd_md_put_buffer(ptr noundef %1) #14
  %done = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 80, i32 5
  %7 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %done, align 4
  %misc_wait = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %misc_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_ldev(ptr noundef %device) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %state = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %state, align 8
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 15
  %local_cnt = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !266
  tail call void @llvm.prefetch.p0(ptr %local_cnt, i32 1, i32 3, i32 1) #14
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt, ptr %local_cnt, i32 1, ptr elementtype(i32) %local_cnt) #14, !srcloc !267
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !268
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult.i.i.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, -1
  br i1 %cmp, label %do.end3, label %do.end3.thread

do.end3.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.81, i32 noundef 2099) #17
  br label %if.end15

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp4 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp4, label %if.then5, label %do.end3.if.end15_crit_edge

do.end3.if.end15_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then5:                                         ; preds = %do.end3
  %6 = zext i32 %bf.clear to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.clear, label %if.then5.if.end14_crit_edge [
    i32 0, label %if.then7
    i32 2, label %if.then10
  ]

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then7:                                         ; preds = %if.then5
  %flags.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 24, ptr noundef %flags.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then7.if.end14_crit_edge

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then.i:                                        ; preds = %if.then7
  %peer_devices.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %7 = ptrtoint ptr %peer_devices.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %peer_devices.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %8, %peer_devices.i.i
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %8
  %connection2.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %connection2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %connection2.i, align 4
  %flags3.i = getelementptr inbounds %struct.drbd_connection, ptr %10, i32 0, i32 10
  %call4.i = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags3.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end14.sink.split_crit_edge, label %if.then.i.if.end14_crit_edge

if.then.i.if.end14_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then.i.if.end14.sink.split_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.sink.split

if.then10:                                        ; preds = %if.then5
  %flags = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %call11 = tail call i32 @_test_and_set_bit(i32 noundef 22, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then12, label %if.then10.if.end14_crit_edge

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then12:                                        ; preds = %if.then10
  %call.i25 = tail call i32 @_test_and_set_bit(i32 noundef 23, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool.not.i26 = icmp eq i32 %call.i25, 0
  br i1 %tobool.not.i26, label %if.then.i34, label %if.then12.if.end14_crit_edge

if.then12.if.end14_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then.i34:                                      ; preds = %if.then12
  %peer_devices.i.i27 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %11 = ptrtoint ptr %peer_devices.i.i27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %peer_devices.i.i27, align 4
  %cmp.not.i.i28 = icmp eq ptr %12, %peer_devices.i.i27
  %spec.select.i.i29 = select i1 %cmp.not.i.i28, ptr null, ptr %12
  %connection2.i30 = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i29, i32 0, i32 2
  %13 = ptrtoint ptr %connection2.i30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %connection2.i30, align 4
  %flags3.i31 = getelementptr inbounds %struct.drbd_connection, ptr %14, i32 0, i32 10
  %call4.i32 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags3.i31) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i32)
  %tobool5.not.i33 = icmp eq i32 %call4.i32, 0
  br i1 %tobool5.not.i33, label %if.then.i34.if.end14.sink.split_crit_edge, label %if.then.i34.if.end14_crit_edge

if.then.i34.if.end14_crit_edge:                   ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then.i34.if.end14.sink.split_crit_edge:        ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.then.i34.if.end14.sink.split_crit_edge, %if.then.i.if.end14.sink.split_crit_edge
  %.sink = phi ptr [ %10, %if.then.i.if.end14.sink.split_crit_edge ], [ %14, %if.then.i34.if.end14.sink.split_crit_edge ]
  %q_wait.i35 = getelementptr inbounds %struct.drbd_connection, ptr %.sink, i32 0, i32 45, i32 2
  tail call void @__wake_up(ptr noundef %q_wait.i35, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.then.i34.if.end14_crit_edge, %if.then12.if.end14_crit_edge, %if.then10.if.end14_crit_edge, %if.then.i.if.end14_crit_edge, %if.then7.if.end14_crit_edge, %if.then5.if.end14_crit_edge
  %misc_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %misc_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %do.end3.if.end15_crit_edge, %do.end3.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_md_put_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_endio_write_sec_final(ptr noundef %peer_req) local_unnamed_addr #0 align 64 {
entry:
  %i = alloca %struct.drbd_interval, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_device1 = getelementptr inbounds %struct.drbd_peer_request, ptr %peer_req, i32 0, i32 1
  %0 = ptrtoint ptr %peer_device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer_device1, align 4
  %device2 = getelementptr inbounds %struct.drbd_peer_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %connection3 = getelementptr inbounds %struct.drbd_peer_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %connection3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connection3, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %i) #14
  %i4 = getelementptr inbounds %struct.drbd_peer_request, ptr %peer_req, i32 0, i32 5
  %6 = call ptr @memcpy(ptr %i, ptr %i4, i32 48)
  %flags5 = getelementptr inbounds %struct.drbd_peer_request, ptr %peer_req, i32 0, i32 6
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags5, align 8
  %and = and i32 %8, 1
  %9 = getelementptr inbounds %struct.drbd_peer_request, ptr %peer_req, i32 0, i32 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  %and7 = and i32 %8, -2
  store i32 %and7, ptr %flags5, align 8
  %and9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %entry.do.body17_crit_edge, label %if.then

entry.do.body17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body17

if.then:                                          ; preds = %entry
  %or.i = or i32 %and7, 256
  %12 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i, ptr %flags5, align 4
  %13 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %if.then12, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %unacked_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 40
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %unacked_cnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %unacked_cnt.i, i32 1, i32 3, i32 1) #14
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %unacked_cnt.i, ptr %unacked_cnt.i, i32 1, ptr elementtype(i32) %unacked_cnt.i) #14, !srcloc !269
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then.if.end_crit_edge
  %sector = getelementptr inbounds %struct.drbd_peer_request, ptr %peer_req, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %sector, align 8
  %size = getelementptr inbounds %struct.drbd_peer_request, ptr %peer_req, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 8
  %call15 = tail call i32 @__drbd_change_sync(ptr noundef %3, i64 noundef %16, i32 noundef %18, i32 noundef 1) #14
  br label %do.body17

do.body17:                                        ; preds = %if.end, %entry.do.body17_crit_edge
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 8
  %req_lock = getelementptr inbounds %struct.drbd_resource, ptr %20, i32 0, i32 12
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #14
  %size23 = getelementptr inbounds %struct.drbd_peer_request, ptr %peer_req, i32 0, i32 5, i32 2
  %21 = ptrtoint ptr %size23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size23, align 8
  %shr = lshr i32 %22, 9
  %writ_cnt = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 33
  %23 = ptrtoint ptr %writ_cnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %writ_cnt, align 8
  %add = add i32 %24, %shr
  store i32 %add, ptr %writ_cnt, align 8
  %done_ee = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 72
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %peer_req) #14
  br i1 %call.i.i, label %if.end.i.i, label %do.body17.__list_del_entry.exit.i_crit_edge

do.body17.__list_del_entry.exit.i_crit_edge:      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %peer_req, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %peer_req to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %peer_req, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %do.body17.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 72, i32 1
  %31 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i83 = tail call zeroext i1 @__list_add_valid(ptr noundef %peer_req, ptr noundef %32, ptr noundef %done_ee) #14
  br i1 %call.i.i.i83, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %peer_req, ptr %prev.i2.i, align 4
  %34 = ptrtoint ptr %peer_req to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %done_ee, ptr %peer_req, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %peer_req, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %peer_req, ptr %32, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %11)
  %cmp24 = icmp eq i64 %11, -1
  %sync_ee = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 71
  %active_ee = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 70
  %cond = select i1 %cmp24, ptr %sync_ee, ptr %active_ee
  %37 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %cond, align 4
  %cmp.i.not = icmp eq ptr %38, %cond
  %39 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags5, align 8
  %and28 = and i32 %40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %list_move_tail.exit.if.end31_crit_edge, label %if.then30

list_move_tail.exit.if.end31_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then30:                                        ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @__drbd_chk_io_error_(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @__func__.drbd_endio_write_sec_final)
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %list_move_tail.exit.if.end31_crit_edge
  %cstate = getelementptr inbounds %struct.drbd_connection, ptr %5, i32 0, i32 7
  %41 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %42)
  %cmp32 = icmp ugt i32 %42, 8
  br i1 %cmp32, label %if.then34, label %if.end31.if.end40_crit_edge

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then34:                                        ; preds = %if.end31
  %kref = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !270
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then34.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !271

if.then34.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then34
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %44 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %.not.i.i.i.i = icmp sgt i32 %44, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !272

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then34.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then34.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #14
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %ack_sender = getelementptr inbounds %struct.drbd_connection, ptr %5, i32 0, i32 41
  %45 = ptrtoint ptr %ack_sender to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ack_sender, align 4
  %send_acks_work = getelementptr inbounds %struct.drbd_peer_device, ptr %1, i32 0, i32 3
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %46, ptr noundef %send_acks_work) #14
  br i1 %call.i, label %kref_get.exit.if.end40_crit_edge, label %if.then36

kref_get.exit.if.end40_crit_edge:                 ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then36:                                        ; preds = %kref_get.exit
  %call.i.i.i.i.i.i84 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !273
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !274
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i85 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i85, label %if.end5.i.i.i.i.if.end40_crit_edge, label %if.then10.i.i.i.i, !prof !272

if.end5.i.i.i.i.if.end40_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #14
  br label %if.end40

if.then.i:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !275
  tail call void @drbd_destroy_device(ptr noundef %kref) #14
  br label %if.end40

if.end40:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end40_crit_edge, %kref_get.exit.if.end40_crit_edge, %if.end31.if.end40_crit_edge
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 8
  %req_lock42 = getelementptr inbounds %struct.drbd_resource, ptr %49, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock42, i32 noundef %call19) #14
  br i1 %cmp24, label %if.then45, label %if.end40.if.end47_crit_edge

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %sector46 = getelementptr inbounds %struct.drbd_interval, ptr %i, i32 0, i32 1
  %50 = ptrtoint ptr %sector46 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %sector46, align 8
  tail call void @drbd_rs_complete_io(ptr noundef %3, i64 noundef %51) #14
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end40.if.end47_crit_edge
  br i1 %cmp.i.not, label %if.then49, label %if.end47.if.end50_crit_edge

if.end47.if.end50_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  %ee_wait = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 79
  tail call void @__wake_up(ptr noundef %ee_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end47.if.end50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %if.end50.if.end53_crit_edge, label %if.then52

if.end50.if.end53_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  call void @drbd_al_complete_io(ptr noundef %3, ptr noundef nonnull %i) #14
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end50.if.end53_crit_edge
  call fastcc void @put_ldev(ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drbd_change_sync(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__drbd_chk_io_error_(ptr noundef %device, i32 noundef %df, ptr noundef %where) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !276
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 696, ptr noundef nonnull @.str.102) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %ldev = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 15
  %4 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ldev, align 4
  %disk_conf = getelementptr inbounds %struct.drbd_backing_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %disk_conf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %disk_conf, align 8
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b80 = load i1, ptr @__drbd_chk_io_error_.__warned, align 1
  br i1 %.b80, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__drbd_chk_io_error_.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.81, i32 noundef 1722, ptr noundef nonnull @.str.37) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %on_io_error = getelementptr inbounds %struct.disk_conf, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %on_io_error to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %on_io_error, align 4
  %call.i81 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i81, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i84

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i84:                                ; preds = %do.end7
  %call1.i82 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82)
  %tobool.not.i83 = icmp eq i32 %call1.i82, 0
  br i1 %tobool.not.i83, label %land.lhs.true.i84.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i86

land.lhs.true.i84.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i86:                               ; preds = %land.lhs.true.i84
  %.b4.i85 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i85, label %land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge, label %if.then.i87

land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i87:                                      ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 724, ptr noundef nonnull @.str.103) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i87, %land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i84.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !277
  %10 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i88 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i88 to ptr
  %preempt_count.i.i.i.i89 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i89, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i89, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %14 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %9, label %rcu_read_unlock.exit.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %rcu_read_unlock.exit.sw.bb30_crit_edge
    i32 1, label %rcu_read_unlock.exit.sw.bb30_crit_edge107
  ]

rcu_read_unlock.exit.sw.bb30_crit_edge107:        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb30

rcu_read_unlock.exit.sw.bb30_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb30

rcu_read_unlock.exit.sw.epilog_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %rcu_read_unlock.exit
  %call11 = tail call i32 @___ratelimit(ptr noundef nonnull @drbd_ratelimit_state, ptr noundef nonnull @__func__.__drbd_chk_io_error_) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %sw.bb.if.end17_crit_edge, label %do.end16

sw.bb.if.end17_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

do.end16:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %15 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %18, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device, ptr noundef nonnull @.str.82, ptr noundef %where) #17
  br label %if.end17

if.end17:                                         ; preds = %do.end16, %sw.bb.if.end17_crit_edge
  %state = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load = load i32, ptr %state, align 8
  %20 = and i32 %bf.load, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %20)
  %cmp18 = icmp ugt i32 %20, 2048
  br i1 %cmp18, label %if.then19, label %if.end17.sw.epilog_crit_edge

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 8
  %susp.i = getelementptr inbounds %struct.drbd_resource, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %susp.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %susp.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %bf.shl.i = shl nuw nsw i32 %bf.cast.i, 17
  %bf.clear.i = and i32 %bf.load, -6430209
  %bf.set.i = or i32 %bf.shl.i, %bf.clear.i
  %bf.lshr4.i = lshr i8 %bf.load.i, 6
  %bf.value8.i = zext i8 %bf.lshr4.i to i32
  %bf.shl9.i = shl nuw nsw i32 %bf.value8.i, 21
  %bf.lshr13.i = lshr i8 %bf.load.i, 5
  %24 = and i8 %bf.lshr13.i, 1
  %bf.value17.i = zext i8 %24 to i32
  %bf.shl18.i = shl nuw nsw i32 %bf.value17.i, 22
  %bf.shl9.masked.i = and i32 %bf.shl9.i, 2097152
  %bf.clear19.i = or i32 %bf.set.i, %bf.shl9.masked.i
  %bf.set20.i = or i32 %bf.clear19.i, %bf.shl18.i
  %bf.set = or i32 %bf.set20.i, 2048
  %.fca.0.insert64 = insertvalue [1 x i32] poison, i32 %bf.set, 0
  %call27 = tail call i32 @_drbd_set_state(ptr noundef %device, [1 x i32] %.fca.0.insert64, i32 noundef 1, ptr noundef null) #14
  br label %sw.epilog

sw.bb30:                                          ; preds = %rcu_read_unlock.exit.sw.bb30_crit_edge, %rcu_read_unlock.exit.sw.bb30_crit_edge107
  %flags = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %df)
  %cmp31 = icmp eq i32 %df, 0
  br i1 %cmp31, label %if.then32, label %sw.bb30.if.end38_crit_edge

sw.bb30.if.end38_crit_edge:                       ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then32:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 11, ptr noundef %flags) #14
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %sw.bb30.if.end38_crit_edge
  %state39 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %25 = ptrtoint ptr %state39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load40 = load i32, ptr %state39, align 8
  %26 = and i32 %bf.load40, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %26)
  %cmp43 = icmp ugt i32 %26, 1024
  br i1 %cmp43, label %if.then44, label %if.end38.sw.epilog_crit_edge

if.end38.sw.epilog_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device, align 8
  %susp.i91 = getelementptr inbounds %struct.drbd_resource, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %susp.i91 to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i92 = load i8, ptr %susp.i91, align 4
  %bf.lshr.i93 = lshr i8 %bf.load.i92, 7
  %bf.cast.i94 = zext i8 %bf.lshr.i93 to i32
  %bf.shl.i95 = shl nuw nsw i32 %bf.cast.i94, 17
  %bf.clear.i96 = and i32 %bf.load40, -6430209
  %bf.set.i97 = or i32 %bf.shl.i95, %bf.clear.i96
  %bf.lshr4.i98 = lshr i8 %bf.load.i92, 6
  %bf.value8.i99 = zext i8 %bf.lshr4.i98 to i32
  %bf.shl9.i100 = shl nuw nsw i32 %bf.value8.i99, 21
  %bf.lshr13.i101 = lshr i8 %bf.load.i92, 5
  %30 = and i8 %bf.lshr13.i101, 1
  %bf.value17.i102 = zext i8 %30 to i32
  %bf.shl18.i103 = shl nuw nsw i32 %bf.value17.i102, 22
  %bf.shl9.masked.i104 = and i32 %bf.shl9.i100, 2097152
  %bf.clear19.i105 = or i32 %bf.set.i97, %bf.shl9.masked.i104
  %bf.set20.i106 = or i32 %bf.clear19.i105, %bf.shl18.i103
  %bf.set53 = or i32 %bf.set20.i106, 1024
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %bf.set53, 0
  %call56 = tail call i32 @_drbd_set_state(ptr noundef %device, [1 x i32] %.fca.0.insert, i32 noundef 1, ptr noundef null) #14
  %vdisk60 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %31 = ptrtoint ptr %vdisk60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vdisk60, align 4
  %part061 = getelementptr inbounds %struct.gendisk, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %part061 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %part061, align 4
  %bd_device62 = getelementptr inbounds %struct.block_device, ptr %34, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device62, ptr noundef nonnull @.str.84, ptr noundef %where) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then44, %if.end38.sw.epilog_crit_edge, %if.then19, %if.end17.sw.epilog_crit_edge, %rcu_read_unlock.exit.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_destroy_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_rs_complete_io(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_al_complete_io(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_peer_request_endio(ptr noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %peer_device = getelementptr inbounds %struct.drbd_peer_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %peer_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %peer_device, align 4
  %device1 = getelementptr inbounds %struct.drbd_peer_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device1, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %6 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bi_opf, align 8
  %and = and i32 %7, 255
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and)
  %cmp4 = icmp eq i32 %and, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp7 = icmp eq i32 %and, 3
  %8 = or i1 %cmp4, %cmp7
  %9 = select i1 %8, ptr @.str.4, ptr @.str.5
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %10 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %land.lhs.true

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

land.lhs.true:                                    ; preds = %entry
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @drbd_ratelimit_state, ptr noundef nonnull @__func__.drbd_peer_request_endio) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %5, i32 0, i32 18
  %12 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 10
  %spec.select = select i1 %tobool.i.not, ptr @.str.6, ptr %9
  %16 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bi_status, align 2
  %conv18 = zext i8 %17 to i32
  %sector = getelementptr inbounds %struct.drbd_peer_request, ptr %1, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %sector, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.2, ptr noundef %bd_device, ptr noundef nonnull @.str, ptr noundef nonnull %spec.select, i32 noundef %conv18, i64 noundef %19) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge
  %20 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %20)
  %.pr = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool20.not = icmp eq i8 %.pr, 0
  br i1 %tobool20.not, label %if.end.if.end22_crit_edge, label %if.then21

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.drbd_peer_request, ptr %1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #14
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end.if.end22_crit_edge, %entry.if.end22_crit_edge
  tail call void @bio_put(ptr noundef %bio) #14
  %pending_bios = getelementptr inbounds %struct.drbd_peer_request, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_bios, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !266
  tail call void @llvm.prefetch.p0(ptr %pending_bios, i32 1, i32 3, i32 1) #14
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_bios, ptr %pending_bios, i32 1, ptr elementtype(i32) %pending_bios) #14, !srcloc !267
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !268
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then24, label %if.end22.if.end28_crit_edge

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then24:                                        ; preds = %if.end22
  br i1 %tobool.i.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @drbd_endio_write_sec_final(ptr noundef %1)
  br label %if.end28

if.else:                                          ; preds = %if.then24
  %22 = ptrtoint ptr %peer_device to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %peer_device, align 4
  %device2.i = getelementptr inbounds %struct.drbd_peer_device, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device2.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %req_lock.i = getelementptr inbounds %struct.drbd_resource, ptr %27, i32 0, i32 12
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock.i) #14
  %size.i = getelementptr inbounds %struct.drbd_peer_request, ptr %1, i32 0, i32 5, i32 2
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i, align 8
  %shr.i = lshr i32 %29, 9
  %read_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %25, i32 0, i32 32
  %30 = ptrtoint ptr %read_cnt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %read_cnt.i, align 4
  %add.i = add i32 %31, %shr.i
  store i32 %add.i, ptr %read_cnt.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.list_del.exit.i_crit_edge

if.else.list_del.exit.i_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.else.list_del.exit.i_crit_edge
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %read_ee.i = getelementptr inbounds %struct.drbd_device, ptr %25, i32 0, i32 73
  %40 = ptrtoint ptr %read_ee.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %read_ee.i, align 4
  %cmp.i.not.i = icmp eq ptr %41, %read_ee.i
  br i1 %cmp.i.not.i, label %if.then.i, label %list_del.exit.i.if.end.i_crit_edge

list_del.exit.i.if.end.i_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %ee_wait.i = getelementptr inbounds %struct.drbd_device, ptr %25, i32 0, i32 79
  tail call void @__wake_up(ptr noundef %ee_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %list_del.exit.i.if.end.i_crit_edge
  %flags8.i = getelementptr inbounds %struct.drbd_peer_request, ptr %1, i32 0, i32 6
  %42 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %flags8.i, align 4
  %44 = and i32 %43, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool10.not.i = icmp eq i32 %44, 0
  br i1 %tobool10.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then11.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @__drbd_chk_io_error_(ptr noundef %25, i32 noundef 0, ptr noundef nonnull @__func__.drbd_endio_read_sec_final) #14
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end.i.if.end12.i_crit_edge
  %45 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %25, align 8
  %req_lock14.i = getelementptr inbounds %struct.drbd_resource, ptr %46, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock14.i, i32 noundef %call4.i) #14
  %connection.i = getelementptr inbounds %struct.drbd_peer_device, ptr %23, i32 0, i32 2
  %47 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %connection.i, align 4
  %sender_work.i = getelementptr inbounds %struct.drbd_connection, ptr %48, i32 0, i32 45
  %q_lock.i.i = getelementptr inbounds %struct.drbd_connection, ptr %48, i32 0, i32 45, i32 1
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock.i.i) #14
  %prev.i.i27.i = getelementptr inbounds %struct.drbd_connection, ptr %48, i32 0, i32 45, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i27.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %50, ptr noundef %sender_work.i) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end12.i.drbd_endio_read_sec_final.exit_crit_edge

if.end12.i.drbd_endio_read_sec_final.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %drbd_endio_read_sec_final.exit

if.end.i.i.i.i:                                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %prev.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %1, ptr %prev.i.i27.i, align 4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %sender_work.i, ptr %1, align 4
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %1, ptr %50, align 4
  br label %drbd_endio_read_sec_final.exit

drbd_endio_read_sec_final.exit:                   ; preds = %if.end.i.i.i.i, %if.end12.i.drbd_endio_read_sec_final.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock.i.i, i32 noundef %call2.i.i) #14
  %q_wait.i.i = getelementptr inbounds %struct.drbd_connection, ptr %48, i32 0, i32 45, i32 2
  tail call void @__wake_up(ptr noundef %q_wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  tail call fastcc void @put_ldev(ptr noundef %25) #14
  br label %if.end28

if.end28:                                         ; preds = %drbd_endio_read_sec_final.exit, %if.then26, %if.end22.if.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_request_endio(ptr noundef %bio) #0 align 64 {
entry:
  %m = alloca %struct.bio_and_error, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %device1 = getelementptr inbounds %struct.drbd_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m) #14
  %4 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %m, align 4, !annotation !278
  %5 = getelementptr inbounds %struct.bio_and_error, ptr %m, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !278
  %rq_state = getelementptr inbounds %struct.drbd_request, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %rq_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rq_state, align 8
  %and = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then, !prof !272

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @drbd_ratelimit_state, ptr noundef nonnull @__func__.drbd_request_endio) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %9 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %12, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %bd_device, ptr noundef nonnull @.str.7) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %13 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not = icmp eq i8 %14, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %minor.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %minor.i, align 8
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %vnr.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 11
  %21 = ptrtoint ptr %vnr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vnr.i, align 4
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.86, i32 noundef %16, ptr noundef %20, i32 noundef %22) #18
  unreachable

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  %bi_status10 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %23 = ptrtoint ptr %bi_status10 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bi_status10, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool11.not = icmp eq i8 %24, 0
  br i1 %tobool11.not, label %if.end9.if.end33_crit_edge, label %if.then18, !prof !272

if.end9.if.end33_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then18:                                        ; preds = %if.end9
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %25 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bi_opf, align 8
  %trunc = trunc i32 %26 to i8
  %27 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.117)
  switch i8 %trunc, label %if.then18.if.end33_crit_edge [
    i8 9, label %if.then18.sw.bb_crit_edge
    i8 3, label %if.then18.sw.bb_crit_edge70
    i8 0, label %sw.bb24
  ]

if.then18.sw.bb_crit_edge70:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.then18.sw.bb_crit_edge:                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.then18.if.end33_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

sw.bb:                                            ; preds = %if.then18.sw.bb_crit_edge, %if.then18.sw.bb_crit_edge70
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp = icmp eq i8 %24, 1
  %. = select i1 %cmp, i32 25, i32 26
  br label %if.end33

sw.bb24:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  %28 = and i32 %26, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool28.not = icmp eq i32 %28, 0
  %.69 = select i1 %tobool28.not, i32 22, i32 23
  br label %if.end33

if.end33:                                         ; preds = %sw.bb24, %sw.bb, %if.then18.if.end33_crit_edge, %if.end9.if.end33_crit_edge
  %what.0 = phi i32 [ %., %sw.bb ], [ %.69, %sw.bb24 ], [ 24, %if.then18.if.end33_crit_edge ], [ 21, %if.end9.if.end33_crit_edge ]
  %call35 = tail call i32 @blk_status_to_errno(i8 noundef zeroext %24) #14
  %29 = inttoptr i32 %call35 to ptr
  %private_bio = getelementptr inbounds %struct.drbd_request, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %private_bio to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %private_bio, align 8
  tail call void @bio_put(ptr noundef %bio) #14
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 8
  %req_lock = getelementptr inbounds %struct.drbd_resource, ptr %32, i32 0, i32 12
  %call42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #14
  %call47 = call i32 @__req_mod(ptr noundef %1, i32 noundef %what.0, ptr noundef nonnull %m) #14
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 8
  %req_lock49 = getelementptr inbounds %struct.drbd_resource, ptr %34, i32 0, i32 12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock49, i32 noundef %call42) #14
  call fastcc void @put_ldev(ptr noundef %3)
  %35 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %m, align 4
  %tobool51.not = icmp eq ptr %36, null
  br i1 %tobool51.not, label %if.end33.if.end53_crit_edge, label %if.then52

if.end33.if.end53_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.then52:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  call void @complete_master_bio(ptr noundef %3, ptr noundef nonnull %m) #14
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end33.if.end53_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__req_mod(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_master_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_csum_ee(ptr noundef %tfm, ptr nocapture noundef readonly %peer_req, ptr noundef %digest) local_unnamed_addr #0 align 64 {
entry:
  %__desc_desc = alloca [376 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__desc_desc) #14
  %0 = call ptr @memset(ptr %__desc_desc, i32 255, i32 376)
  %pages = getelementptr inbounds %struct.drbd_peer_request, ptr %peer_req, i32 0, i32 3
  %1 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pages, align 4
  %3 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tfm, ptr %__desc_desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 0, i32 2
  %4 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.crypto_shash_init.exit_crit_edge

entry.crypto_shash_init.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %crypto_shash_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 -256
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %9(ptr noundef nonnull %__desc_desc) #14
  br label %crypto_shash_init.exit

crypto_shash_init.exit:                           ; preds = %if.end.i, %entry.crypto_shash_init.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %10 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %10, 512
  %11 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !279
  %15 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i1.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 213
  %19 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %20, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !280
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %2, i32 noundef %or.i) #14
  %private.i45 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1, i32 0, i32 3
  %21 = ptrtoint ptr %private.i45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %private.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not46 = icmp eq i32 %22, 0
  br i1 %tobool.not46, label %crypto_shash_init.exit.while.end_crit_edge, label %crypto_shash_init.exit.while.body_crit_edge

crypto_shash_init.exit.while.body_crit_edge:      ; preds = %crypto_shash_init.exit
  br label %while.body

crypto_shash_init.exit.while.end_crit_edge:       ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %crypto_shash_init.exit.while.body_crit_edge
  %23 = phi i32 [ %47, %while.body.while.body_crit_edge ], [ %22, %crypto_shash_init.exit.while.body_crit_edge ]
  %src.047 = phi ptr [ %call.i.i37, %while.body.while.body_crit_edge ], [ %call.i.i, %crypto_shash_init.exit.while.body_crit_edge ]
  %24 = inttoptr i32 %23 to ptr
  %call4 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef %src.047, i32 noundef 4096) #14
  call void @kunmap_local_indexed(ptr noundef %src.047) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !281
  %25 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i1.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 213
  %29 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %30, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !282
  %31 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %35 = load i32, ptr @pgprot_kernel, align 4
  %or.i29 = or i32 %35, 512
  %36 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i30 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i30 to ptr
  %preempt_count.i.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i31, align 4
  %add.i.i.i32 = add i32 %39, 1
  store volatile i32 %add.i.i.i32, ptr %preempt_count.i.i.i.i31, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !279
  %40 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i1.i.i33 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i1.i.i33 to ptr
  %task.i.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task.i.i.i.i34, align 8
  %pagefault_disabled.i.i.i.i35 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 213
  %44 = ptrtoint ptr %pagefault_disabled.i.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pagefault_disabled.i.i.i.i35, align 8
  %inc.i.i.i.i36 = add i32 %45, 1
  store i32 %inc.i.i.i.i36, ptr %pagefault_disabled.i.i.i.i35, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !280
  %call.i.i37 = call ptr @__kmap_local_page_prot(ptr noundef nonnull %24, i32 noundef %or.i29) #14
  %private.i = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1, i32 0, i32 3
  %46 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %private.i, align 4
  %tobool.not = icmp eq i32 %47, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %crypto_shash_init.exit.while.end_crit_edge
  %src.0.lcssa = phi ptr [ %call.i.i, %crypto_shash_init.exit.while.end_crit_edge ], [ %call.i.i37, %while.body.while.end_crit_edge ]
  %size = getelementptr inbounds %struct.drbd_peer_request, ptr %peer_req, i32 0, i32 5, i32 2
  %48 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size, align 8
  %and = and i32 %49, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %. = select i1 %tobool9.not, i32 4096, i32 %and
  %call10 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef %src.0.lcssa, i32 noundef %.) #14
  call void @kunmap_local_indexed(ptr noundef %src.0.lcssa) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !281
  %50 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i1.i38 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i1.i38 to ptr
  %task.i.i.i39 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task.i.i.i39, align 8
  %pagefault_disabled.i.i.i40 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 213
  %54 = ptrtoint ptr %pagefault_disabled.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pagefault_disabled.i.i.i40, align 8
  %dec.i.i.i41 = add i32 %55, -1
  store i32 %dec.i.i.i41, ptr %pagefault_disabled.i.i.i40, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !282
  %56 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i42 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i42 to ptr
  %preempt_count.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i43, align 4
  %sub.i.i44 = add i32 %59, -1
  store volatile i32 %sub.i.i44, ptr %preempt_count.i.i.i43, align 4
  %call17 = call i32 @crypto_shash_final(ptr noundef nonnull %__desc_desc, ptr noundef %digest) #14
  %60 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %__desc_desc, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 128
  %add.i = add i32 %63, 8
  %64 = call ptr @memset(ptr %__desc_desc, i32 0, i32 %add.i)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %__desc_desc) #14, !srcloc !283
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__desc_desc) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_csum_bio(ptr noundef %tfm, ptr nocapture noundef readonly %bio, ptr noundef %digest) local_unnamed_addr #0 align 64 {
entry:
  %__desc_desc = alloca [376 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__desc_desc) #14
  %0 = call ptr @memset(ptr %__desc_desc, i32 255, i32 376)
  %1 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tfm, ptr %__desc_desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 0, i32 2
  %2 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.crypto_shash_init.exit_crit_edge

entry.crypto_shash_init.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %crypto_shash_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 -256
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %7(ptr noundef nonnull %__desc_desc) #14
  br label %crypto_shash_init.exit

crypto_shash_init.exit:                           ; preds = %if.end.i, %entry.crypto_shash_init.exit_crit_edge
  %iter.sroa.6.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %iter.sroa.6.0.copyload = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx, align 8
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload)
  %tobool.not74 = icmp eq i32 %iter.sroa.6.0.copyload, 0
  br i1 %tobool.not74, label %crypto_shash_init.exit.for.end_crit_edge, label %land.rhs.lr.ph

crypto_shash_init.exit.for.end_crit_edge:         ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %crypto_shash_init.exit
  %iter.sroa.16.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 3
  %9 = ptrtoint ptr %iter.sroa.16.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %iter.sroa.16.0.copyload = load i32, ptr %iter.sroa.16.0.bi_iter.sroa_idx, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 2
  %10 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %iter.sroa.10.0.copyload = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %bio_advance_iter_single.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %iter.sroa.6.077 = phi i32 [ %iter.sroa.6.0.copyload, %land.rhs.lr.ph ], [ %sub.i.i63, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.10.076 = phi i32 [ %iter.sroa.10.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.10.2, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.16.075 = phi i32 [ %iter.sroa.16.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.16.1, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %11 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bi_io_vec, align 8
  %arrayidx = getelementptr %struct.bio_vec, ptr %12, i32 %iter.sroa.10.076
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %12, i32 %iter.sroa.10.076, i32 2
  %15 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bv_offset, align 4
  %add = add i32 %16, %iter.sroa.16.075
  %div62 = lshr i32 %add, 12
  %add.ptr = getelementptr %struct.page, ptr %14, i32 %div62
  %bv_len10 = getelementptr %struct.bio_vec, ptr %12, i32 %iter.sroa.10.076, i32 1
  %17 = ptrtoint ptr %bv_len10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bv_len10, align 4
  %sub = sub i32 %18, %iter.sroa.16.075
  %19 = call i32 @llvm.umin.i32(i32 %iter.sroa.6.077, i32 %sub)
  %rem = and i32 %add, 4095
  %sub18 = sub nuw nsw i32 4096, %rem
  %20 = call i32 @llvm.umin.i32(i32 %19, i32 %sub18)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %21 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %21, 512
  %22 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !279
  %26 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i1.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 213
  %30 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %31, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !280
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #14
  %add.ptr36 = getelementptr i8, ptr %call.i.i, i32 %rem
  %call38 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef %add.ptr36, i32 noundef %20) #14
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !281
  %32 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i1.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 213
  %36 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %37, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !282
  %38 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %42 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bi_opf, align 8
  %and = and i32 %43, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and)
  %cmp42 = icmp eq i32 %and, 7
  br i1 %cmp42, label %land.rhs.for.end_crit_edge, label %for.inc

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc:                                          ; preds = %land.rhs
  %44 = add nsw i32 %and, -3
  %switch.and.i.i = and i32 %44, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %for.inc.bio_advance_iter_single.exit_crit_edge, label %if.else.i

for.inc.bio_advance_iter_single.exit_crit_edge:   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_advance_iter_single.exit

if.else.i:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bi_io_vec, align 8
  %add.i.i = add i32 %20, %iter.sroa.16.075
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %46, i32 %iter.sroa.10.076, i32 1
  %47 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %48)
  %cmp.i.i = icmp eq i32 %add.i.i, %48
  %spec.select = select i1 %cmp.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp.i.i to i32
  %spec.select73 = add i32 %iter.sroa.10.076, %inc.i.i
  br label %bio_advance_iter_single.exit

bio_advance_iter_single.exit:                     ; preds = %if.else.i, %for.inc.bio_advance_iter_single.exit_crit_edge
  %iter.sroa.16.1 = phi i32 [ %iter.sroa.16.075, %for.inc.bio_advance_iter_single.exit_crit_edge ], [ %spec.select, %if.else.i ]
  %iter.sroa.10.2 = phi i32 [ %iter.sroa.10.076, %for.inc.bio_advance_iter_single.exit_crit_edge ], [ %spec.select73, %if.else.i ]
  %sub.i.i63 = sub i32 %iter.sroa.6.077, %20
  %tobool.not = icmp eq i32 %sub.i.i63, 0
  br i1 %tobool.not, label %bio_advance_iter_single.exit.for.end_crit_edge, label %bio_advance_iter_single.exit.land.rhs_crit_edge

bio_advance_iter_single.exit.land.rhs_crit_edge:  ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

bio_advance_iter_single.exit.for.end_crit_edge:   ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %bio_advance_iter_single.exit.for.end_crit_edge, %land.rhs.for.end_crit_edge, %crypto_shash_init.exit.for.end_crit_edge
  %call44 = call i32 @crypto_shash_final(ptr noundef nonnull %__desc_desc, ptr noundef %digest) #14
  %49 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %__desc_desc, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 128
  %add.i65 = add i32 %52, 8
  %53 = call ptr @memset(ptr %__desc_desc, i32 0, i32 %add.i65)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %__desc_desc) #14, !srcloc !283
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__desc_desc) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w_resync_timer(ptr noundef %w, i32 noundef %cancel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -92
  %state = getelementptr i8, ptr %w, i32 220
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %state, align 8
  %bf.lshr = lshr i32 %bf.load, 4
  %bf.clear = and i32 %bf.lshr, 31
  %1 = zext i32 %bf.clear to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %bf.clear, label %entry.sw.epilog_crit_edge [
    i32 18, label %sw.bb
    i32 17, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %vdisk.i = getelementptr i8, ptr %w, i32 -8
  %2 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk.i, align 4
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0.i.i, align 4
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cancel)
  %tobool.not.i = icmp eq i32 %cancel, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.sw.epilog_crit_edge, !prof !272

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %call3.i = tail call fastcc i32 @drbd_rs_number_requests(ptr noundef %add.ptr) #14
  %ov_position.i = getelementptr i8, ptr %w, i32 532
  %8 = ptrtoint ptr %ov_position.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ov_position.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp13.i = icmp sgt i32 %call3.i, 0
  br i1 %cmp13.i, label %for.body.lr.ph.i, label %if.end.i.requeue.thread.i_crit_edge

if.end.i.requeue.thread.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %requeue.thread.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %peer_devices.i.i.i = getelementptr i8, ptr %w, i32 -88
  %ov_stop_sector.i = getelementptr i8, ptr %w, i32 524
  %rs_pending_cnt.i.i = getelementptr i8, ptr %w, i32 364
  br label %for.body.i

for.body.i:                                       ; preds = %if.end27.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %sector.015.i = phi i64 [ %9, %for.body.lr.ph.i ], [ %add.i, %if.end27.i.for.body.i_crit_edge ]
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end27.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %sector.015.i)
  %cmp4.not.i = icmp ugt i64 %7, %sector.015.i
  br i1 %cmp4.not.i, label %if.end6.i, label %for.body.i.sw.epilog_crit_edge

for.body.i.sw.epilog_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end6.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.014.i)
  %cmp7.not.i = icmp eq i32 %i.014.i, 0
  br i1 %cmp7.not.i, label %if.end6.i.if.end12.i_crit_edge, label %land.lhs.true.i

if.end6.i.if.end12.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  %10 = ptrtoint ptr %peer_devices.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %peer_devices.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %11, %peer_devices.i.i.i
  %spec.select.i.i.i = select i1 %cmp.not.i.i.i, ptr null, ptr %11
  %connection.i.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %connection.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %connection.i.i, align 4
  %agreed_pro_version.i.i = getelementptr inbounds %struct.drbd_connection, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %agreed_pro_version.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %agreed_pro_version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %15)
  %cmp.i.i = icmp sgt i32 %15, 96
  br i1 %cmp.i.i, label %verify_can_do_stop_sector.exit.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

verify_can_do_stop_sector.exit.i:                 ; preds = %land.lhs.true.i
  %16 = ptrtoint ptr %peer_devices.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %peer_devices.i.i.i, align 4
  %cmp.not.i7.i.i = icmp eq ptr %17, %peer_devices.i.i.i
  %spec.select.i8.i.i = select i1 %cmp.not.i7.i.i, ptr null, ptr %17
  %connection2.i.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i8.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %connection2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %connection2.i.i, align 4
  %agreed_pro_version3.i.i = getelementptr inbounds %struct.drbd_connection, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %agreed_pro_version3.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %agreed_pro_version3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %21)
  %cmp4.i.not.i = icmp eq i32 %21, 100
  br i1 %cmp4.i.not.i, label %verify_can_do_stop_sector.exit.i.if.end12.i_crit_edge, label %land.end.i

verify_can_do_stop_sector.exit.i.if.end12.i_crit_edge: ; preds = %verify_can_do_stop_sector.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

land.end.i:                                       ; preds = %verify_can_do_stop_sector.exit.i
  %22 = ptrtoint ptr %ov_stop_sector.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %ov_stop_sector.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sector.015.i, i64 %23)
  %cmp9.not.i = icmp ult i64 %sector.015.i, %23
  br i1 %cmp9.not.i, label %land.end.i.if.end12.i_crit_edge, label %requeue.i

land.end.i.if.end12.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

if.end12.i:                                       ; preds = %land.end.i.if.end12.i_crit_edge, %verify_can_do_stop_sector.exit.i.if.end12.i_crit_edge, %land.lhs.true.i.if.end12.i_crit_edge, %if.end6.i.if.end12.i_crit_edge
  %call13.i = tail call i32 @drbd_try_rs_begin_io(ptr noundef %add.ptr, i64 noundef %sector.015.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end17.i, label %if.end12.i.requeue.thread.i_crit_edge

if.end12.i.requeue.thread.i_crit_edge:            ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %requeue.thread.i

if.end17.i:                                       ; preds = %if.end12.i
  %add.i = add i64 %sector.015.i, 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %7)
  %cmp18.i = icmp ugt i64 %add.i, %7
  %sub.i = sub i64 %7, %sector.015.i
  %sub.tr.i = trunc i64 %sub.i to i32
  %conv21.i = shl i32 %sub.tr.i, 9
  %size.0.i = select i1 %cmp18.i, i32 %conv21.i, i32 4096
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rs_pending_cnt.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %rs_pending_cnt.i.i, i32 1, i32 3, i32 1) #14
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rs_pending_cnt.i.i, ptr %rs_pending_cnt.i.i, i32 1, ptr elementtype(i32) %rs_pending_cnt.i.i) #14, !srcloc !269
  %25 = ptrtoint ptr %peer_devices.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %peer_devices.i.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %26, %peer_devices.i.i.i
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %26
  %call24.i = tail call i32 @drbd_send_ov_request(ptr noundef %spec.select.i.i, i64 noundef %sector.015.i, i32 noundef %size.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end17.i
  %call.i.i.i6.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rs_pending_cnt.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %rs_pending_cnt.i.i, i32 1, i32 3, i32 1) #14
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rs_pending_cnt.i.i, ptr %rs_pending_cnt.i.i, i32 1, ptr elementtype(i32) %rs_pending_cnt.i.i) #14, !srcloc !284
  %call.i.i7.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rs_pending_cnt.i.i, i32 noundef 4) #14
  %28 = ptrtoint ptr %rs_pending_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %rs_pending_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i7.i = icmp slt i32 %29, 0
  br i1 %cmp.i7.i, label %do.end.i.i, label %if.then26.i.sw.epilog_crit_edge

if.then26.i.sw.epilog_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.end.i.i:                                       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vdisk.i, align 4
  %part0.i8.i = getelementptr inbounds %struct.gendisk, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %part0.i8.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %part0.i8.i, align 4
  %bd_device.i.i = getelementptr inbounds %struct.block_device, ptr %33, i32 0, i32 10
  %call.i.i8.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rs_pending_cnt.i.i, i32 noundef 4) #14
  %34 = ptrtoint ptr %rs_pending_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %rs_pending_cnt.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device.i.i, ptr noundef nonnull @.str.106, ptr noundef nonnull @__func__.make_ov_request, i32 noundef 806, i32 noundef %35) #17
  br label %sw.epilog

if.end27.i:                                       ; preds = %if.end17.i
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call3.i
  br i1 %exitcond.not.i, label %if.end27.i.requeue.thread.i_crit_edge, label %if.end27.i.for.body.i_crit_edge

if.end27.i.for.body.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end27.i.requeue.thread.i_crit_edge:            ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %requeue.thread.i

requeue.thread.i:                                 ; preds = %if.end27.i.requeue.thread.i_crit_edge, %if.end12.i.requeue.thread.i_crit_edge, %if.end.i.requeue.thread.i_crit_edge
  %i.0.lcssa.ph.i = phi i32 [ 0, %if.end.i.requeue.thread.i_crit_edge ], [ %call3.i, %if.end27.i.requeue.thread.i_crit_edge ], [ %i.014.i, %if.end12.i.requeue.thread.i_crit_edge ]
  %sector.0.lcssa.ph.i = phi i64 [ %9, %if.end.i.requeue.thread.i_crit_edge ], [ %add.i, %if.end27.i.requeue.thread.i_crit_edge ], [ %sector.015.i, %if.end12.i.requeue.thread.i_crit_edge ]
  %36 = ptrtoint ptr %ov_position.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %sector.0.lcssa.ph.i, ptr %ov_position.i, align 8
  %shl3027.i = shl i32 %i.0.lcssa.ph.i, 3
  %rs_in_flight28.i = getelementptr i8, ptr %w, i32 1104
  %37 = ptrtoint ptr %rs_in_flight28.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rs_in_flight28.i, align 4
  %add3129.i = add i32 %38, %shl3027.i
  store i32 %add3129.i, ptr %rs_in_flight28.i, align 4
  %resync_timer.i = getelementptr i8, ptr %w, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %add36.i = add i32 %39, 10
  %call37.i = tail call i32 @mod_timer(ptr noundef %resync_timer.i, i32 noundef %add36.i) #14
  br label %sw.epilog

requeue.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %ov_position.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %sector.015.i, ptr %ov_position.i, align 8
  %shl30.i = shl i32 %i.014.i, 3
  %rs_in_flight.i = getelementptr i8, ptr %w, i32 1104
  %41 = ptrtoint ptr %rs_in_flight.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rs_in_flight.i, align 4
  %add31.i = add i32 %42, %shl30.i
  store i32 %add31.i, ptr %rs_in_flight.i, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %peer_devices.i.i = getelementptr i8, ptr %w, i32 -88
  %43 = ptrtoint ptr %peer_devices.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %peer_devices.i.i, align 4
  %cmp.not.i.i6 = icmp eq ptr %44, %peer_devices.i.i
  %spec.select.i.i7 = select i1 %cmp.not.i.i6, ptr null, ptr %44
  %tobool.not.i8 = icmp eq ptr %spec.select.i.i7, null
  br i1 %tobool.not.i8, label %sw.bb1.cond.end.i_crit_edge, label %cond.true.i

sw.bb1.cond.end.i_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

cond.true.i:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  %connection1.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i7, i32 0, i32 2
  %45 = ptrtoint ptr %connection1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %connection1.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %sw.bb1.cond.end.i_crit_edge
  %cond.i = phi ptr [ %46, %cond.true.i ], [ null, %sw.bb1.cond.end.i_crit_edge ]
  %vdisk.i9 = getelementptr i8, ptr %w, i32 -8
  %47 = ptrtoint ptr %vdisk.i9 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vdisk.i9, align 4
  %part0.i.i10 = getelementptr inbounds %struct.gendisk, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %part0.i.i10 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %part0.i.i10, align 4
  %bd_nr_sectors.i.i.i11 = getelementptr inbounds %struct.block_device, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %bd_nr_sectors.i.i.i11 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %bd_nr_sectors.i.i.i11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cancel)
  %tobool3.not.i = icmp eq i32 %cancel, 0
  br i1 %tobool3.not.i, label %if.end.i12, label %cond.end.i.sw.epilog_crit_edge, !prof !272

cond.end.i.sw.epilog_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.i12:                                       ; preds = %cond.end.i
  %rs_total.i = getelementptr i8, ptr %w, i32 424
  %53 = ptrtoint ptr %rs_total.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rs_total.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i = icmp eq i32 %54, 0
  br i1 %cmp.i, label %if.then6.i, label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #16
  %call7.i = tail call i32 @drbd_resync_finished(ptr noundef %add.ptr) #14
  br label %sw.epilog

if.end8.i:                                        ; preds = %if.end.i12
  %55 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load.i.i = load i32, ptr %state, align 8
  %56 = and i32 %bf.load.i.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i.i13 = icmp eq i32 %56, 0
  br i1 %cmp.i.i13, label %if.end8.i.do.end.i_crit_edge, label %if.end.i.i

if.end8.i.do.end.i_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end8.i
  %local_cnt.i.i = getelementptr i8, ptr %w, i32 372
  %call.i.i.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i.i, i32 1, i32 3, i32 1) #14
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i.i, ptr %local_cnt.i.i, i32 1, ptr elementtype(i32) %local_cnt.i.i) #14, !srcloc !269
  %58 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load2.i.i = load i32, ptr %state, align 8
  %59 = and i32 %bf.load2.i.i, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp5.not.i.i = icmp eq i32 %59, 0
  br i1 %cmp5.not.i.i, label %if.then6.i.i, label %if.end16.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @put_ldev(ptr noundef %add.ptr) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i.i, %if.end8.i.do.end.i_crit_edge
  %60 = ptrtoint ptr %vdisk.i9 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vdisk.i9, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %63, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device.i, ptr noundef nonnull @.str.87) #17
  br label %sw.epilog

if.end16.i:                                       ; preds = %if.end.i.i
  %agreed_features.i = getelementptr inbounds %struct.drbd_connection, ptr %cond.i, i32 0, i32 20
  %64 = ptrtoint ptr %agreed_features.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %agreed_features.i, align 4
  %and.i = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool17.not.i, label %if.end16.i.if.end35.i_crit_edge, label %if.then18.i

if.end16.i.if.end35.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35.i

if.then18.i:                                      ; preds = %if.end16.i
  %66 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %69, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !276
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %if.then18.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then18.i.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then18.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 696, ptr noundef nonnull @.str.102) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then18.i.rcu_read_lock.exit.i_crit_edge
  %ldev.i = getelementptr i8, ptr %w, i32 -24
  %70 = ptrtoint ptr %ldev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ldev.i, align 4
  %disk_conf.i = getelementptr inbounds %struct.drbd_backing_dev, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %disk_conf.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %disk_conf.i, align 8
  %call24.i15 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i15)
  %tobool25.not.i16 = icmp eq i32 %call24.i15, 0
  br i1 %tobool25.not.i16, label %land.lhs.true.i17, label %rcu_read_lock.exit.i.do.end33.i_crit_edge

rcu_read_lock.exit.i.do.end33.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

land.lhs.true.i17:                                ; preds = %rcu_read_lock.exit.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true.i17.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true.i17.do.end33.i_crit_edge:           ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true.i17
  %.b1.i = load i1, ptr @make_resync_request.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @make_resync_request.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 621, ptr noundef nonnull @.str.37) #14
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true.i17.do.end33.i_crit_edge, %rcu_read_lock.exit.i.do.end33.i_crit_edge
  %rs_discard_granularity.i = getelementptr inbounds %struct.disk_conf, ptr %73, i32 0, i32 19
  %74 = ptrtoint ptr %rs_discard_granularity.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rs_discard_granularity.i, align 4
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i2.i, label %do.end33.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i5.i

do.end33.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

land.lhs.true.i5.i:                               ; preds = %do.end33.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 724, ptr noundef nonnull @.str.103) #14
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, %do.end33.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !277
  %76 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i9.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %79, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %if.end35.i

if.end35.i:                                       ; preds = %rcu_read_unlock.exit.i, %if.end16.i.if.end35.i_crit_edge
  %discard_granularity.0.i = phi i32 [ %75, %rcu_read_unlock.exit.i ], [ 0, %if.end16.i.if.end35.i_crit_edge ]
  %rq_queue.i = getelementptr i8, ptr %w, i32 -12
  %80 = ptrtoint ptr %rq_queue.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rq_queue.i, align 8
  %max_hw_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %81, i32 0, i32 37, i32 3
  %82 = ptrtoint ptr %max_hw_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_hw_sectors.i.i, align 4
  %shl.i = shl i32 %83, 9
  %call37.i18 = tail call fastcc i32 @drbd_rs_number_requests(ptr noundef %add.ptr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call37.i18)
  %cmp38.i = icmp slt i32 %call37.i18, 1
  br i1 %cmp38.i, label %if.end35.i.requeue175.i_crit_edge, label %for.body.lr.ph.i20

if.end35.i.requeue175.i_crit_edge:                ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %requeue175.i

for.body.lr.ph.i20:                               ; preds = %if.end35.i
  %data.i = getelementptr inbounds %struct.drbd_connection, ptr %cond.i, i32 0, i32 17
  %socket.i = getelementptr inbounds %struct.drbd_connection, ptr %cond.i, i32 0, i32 17, i32 1
  %bm_resync_fo.i = getelementptr i8, ptr %w, i32 564
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %discard_granularity.0.i)
  %tobool99.not.i = icmp ne i32 %discard_granularity.0.i, 0
  %use_csums.i = getelementptr i8, ptr %w, i32 420
  %device1.i.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i7, i32 0, i32 1
  %rs_pending_cnt.i.i19 = getelementptr i8, ptr %w, i32 364
  br label %for.body.i21

for.body.i21:                                     ; preds = %for.inc.i.for.body.i21_crit_edge, %for.body.lr.ph.i20
  %i.0110.i = phi i32 [ 0, %for.body.lr.ph.i20 ], [ %inc168.i, %for.inc.i.for.body.i21_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %data.i, i32 noundef 0) #14
  %84 = ptrtoint ptr %socket.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %socket.i, align 4
  %tobool43.not.i = icmp eq ptr %85, null
  br i1 %tobool43.not.i, label %for.body.i21.if.end55.thread.i_crit_edge, label %if.then44.i

for.body.i21.if.end55.thread.i_crit_edge:         ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55.thread.i

if.then44.i:                                      ; preds = %for.body.i21
  %sk47.i = getelementptr inbounds %struct.socket, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %sk47.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sk47.i, align 16
  %sk_wmem_queued.i = getelementptr inbounds %struct.sock, ptr %87, i32 0, i32 22
  %88 = ptrtoint ptr %sk_wmem_queued.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sk_wmem_queued.i, align 8
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %87, i32 0, i32 21
  %90 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sk_sndbuf.i, align 4
  %div.i = sdiv i32 %91, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %div.i)
  %cmp48.i = icmp sgt i32 %89, %div.i
  br i1 %cmp48.i, label %if.then49.i, label %if.end55.i

if.then49.i:                                      ; preds = %if.then44.i
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %87, i32 0, i32 71
  %92 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sk_socket.i, align 8
  %tobool50.not.i = icmp eq ptr %93, null
  br i1 %tobool50.not.i, label %if.then49.i.if.end55.thread.i_crit_edge, label %if.then51.i

if.then49.i.if.end55.thread.i_crit_edge:          ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55.thread.i

if.then51.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #16
  %flags.i = getelementptr inbounds %struct.socket, ptr %93, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i) #14
  br label %if.end55.thread.i

if.end55.thread.i:                                ; preds = %if.then51.i, %if.then49.i.if.end55.thread.i_crit_edge, %for.body.i21.if.end55.thread.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %data.i) #14
  br label %requeue175.i

if.end55.i:                                       ; preds = %if.then44.i
  tail call void @mutex_unlock(ptr noundef %data.i) #14
  %94 = ptrtoint ptr %bm_resync_fo.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bm_resync_fo.i, align 8
  %call6182.i = tail call i32 @drbd_bm_find_next(ptr noundef %add.ptr, i32 noundef %95) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6182.i)
  %cmp6283.i = icmp eq i32 %call6182.i, -1
  br i1 %cmp6283.i, label %if.end55.i.if.then63.i_crit_edge, label %if.end55.i.if.end66.i_crit_edge

if.end55.i.if.end66.i_crit_edge:                  ; preds = %if.end55.i
  br label %if.end66.i

if.end55.i.if.then63.i_crit_edge:                 ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then63.i

if.then63.i:                                      ; preds = %if.then83.i.if.then63.i_crit_edge, %if.end55.i.if.then63.i_crit_edge
  %call64.i = tail call i32 @drbd_bm_bits(ptr noundef %add.ptr) #14
  %96 = ptrtoint ptr %bm_resync_fo.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %call64.i, ptr %bm_resync_fo.i, align 8
  tail call fastcc void @put_ldev(ptr noundef %add.ptr) #14
  br label %sw.epilog

if.end66.i:                                       ; preds = %if.then83.i.if.end66.i_crit_edge, %if.end55.i.if.end66.i_crit_edge
  %call6184.i = phi i32 [ %call61.i, %if.then83.i.if.end66.i_crit_edge ], [ %call6182.i, %if.end55.i.if.end66.i_crit_edge ]
  %conv.i = zext i32 %call6184.i to i64
  %shl67.i = shl nuw nsw i64 %conv.i, 3
  %call68.i = tail call i32 @drbd_try_rs_begin_io(ptr noundef %add.ptr, i64 noundef %shl67.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool69.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.not.i, label %if.end72.i, label %if.then70.i

if.then70.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #16
  %97 = ptrtoint ptr %bm_resync_fo.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call6184.i, ptr %bm_resync_fo.i, align 8
  br label %requeue175.i

if.end72.i:                                       ; preds = %if.end66.i
  %add.i22 = add nuw i32 %call6184.i, 1
  %98 = ptrtoint ptr %bm_resync_fo.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add.i22, ptr %bm_resync_fo.i, align 8
  %call74.i = tail call i32 @drbd_bm_test_bit(ptr noundef %add.ptr, i32 noundef %call6184.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %cmp75.i = icmp eq i32 %call74.i, 0
  br i1 %cmp75.i, label %if.then83.i, label %while.cond.preheader.i, !prof !271

while.cond.preheader.i:                           ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call37.i18, i32 %i.0110.i)
  %cmp8586.i = icmp sgt i32 %call37.i18, %i.0110.i
  br i1 %cmp8586.i, label %while.body.preheader.i, label %while.cond.preheader.i.if.end130.i_crit_edge

while.cond.preheader.i.if.end130.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end130.i

while.body.preheader.i:                           ; preds = %while.cond.preheader.i
  %reass.add = sub i32 %call37.i18, %i.0110.i
  %reass.mul = shl i32 %reass.add, 12
  %99 = add i32 %reass.mul, 4096
  %100 = and i32 %call6184.i, 4095
  %101 = xor i32 %100, 4095
  %102 = add i32 %101, %i.0110.i
  br label %while.body.i

if.then83.i:                                      ; preds = %if.end72.i
  tail call void @drbd_rs_complete_io(ptr noundef %add.ptr, i64 noundef %shl67.i) #14
  %103 = ptrtoint ptr %bm_resync_fo.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bm_resync_fo.i, align 8
  %call61.i = tail call i32 @drbd_bm_find_next(ptr noundef %add.ptr, i32 noundef %104) #14
  %cmp62.i = icmp eq i32 %call61.i, -1
  br i1 %cmp62.i, label %if.then83.i.if.then63.i_crit_edge, label %if.then83.i.if.end66.i_crit_edge

if.then83.i.if.end66.i_crit_edge:                 ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66.i

if.then83.i.if.then63.i_crit_edge:                ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then63.i

while.body.i:                                     ; preds = %if.end116.i.while.body.i_crit_edge, %while.body.preheader.i
  %bit.090.i = phi i32 [ %add105.i, %if.end116.i.while.body.i_crit_edge ], [ %call6184.i, %while.body.preheader.i ]
  %i.189.i = phi i32 [ %inc124.i, %if.end116.i.while.body.i_crit_edge ], [ %i.0110.i, %while.body.preheader.i ]
  %align.088.i = phi i32 [ %spec.select.i, %if.end116.i.while.body.i_crit_edge ], [ 1, %while.body.preheader.i ]
  %size.087.i = phi i32 [ %add87.i, %if.end116.i.while.body.i_crit_edge ], [ 4096, %while.body.preheader.i ]
  %add87.i = add nuw nsw i32 %size.087.i, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add87.i, i32 %shl.i)
  %cmp88.i = icmp sgt i32 %add87.i, %shl.i
  br i1 %cmp88.i, label %while.body.i.while.end.i_crit_edge, label %if.end91.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.end91.i:                                       ; preds = %while.body.i
  %add92.i = add i32 %align.088.i, 3
  %notmask.i = shl nsw i32 -1, %add92.i
  %sub.i23 = xor i32 %notmask.i, -1
  %conv94.i = sext i32 %sub.i23 to i64
  %and95.i = and i64 %shl67.i, %conv94.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and95.i)
  %tobool96.not.i = icmp ne i64 %and95.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %size.087.i, i32 %discard_granularity.0.i)
  %cmp101.i = icmp eq i32 %size.087.i, %discard_granularity.0.i
  %or.cond.i = select i1 %tobool99.not.i, i1 %cmp101.i, i1 false
  %or.cond113.i = select i1 %tobool96.not.i, i1 true, i1 %or.cond.i
  br i1 %or.cond113.i, label %if.end91.i.while.end.i_crit_edge, label %if.end104.i

if.end91.i.while.end.i_crit_edge:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.end104.i:                                      ; preds = %if.end91.i
  %add105.i = add i32 %bit.090.i, 1
  %and106.i = and i32 %add105.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %cmp107.i = icmp eq i32 %and106.i, 0
  br i1 %cmp107.i, label %if.end104.i.while.end.i_crit_edge, label %if.end110.i

if.end104.i.while.end.i_crit_edge:                ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.end110.i:                                      ; preds = %if.end104.i
  %call112.i = tail call i32 @drbd_bm_test_bit(ptr noundef %add.ptr, i32 noundef %add105.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call112.i)
  %cmp113.not.i = icmp eq i32 %call112.i, 1
  br i1 %cmp113.not.i, label %if.end116.i, label %if.end110.i.while.end.i_crit_edge

if.end110.i.while.end.i_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.end116.i:                                      ; preds = %if.end110.i
  %shl118.i = shl i32 4096, %align.088.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl118.i, i32 %add87.i)
  %cmp119.not.i = icmp sle i32 %shl118.i, %add87.i
  %inc122.i = zext i1 %cmp119.not.i to i32
  %spec.select.i = add i32 %align.088.i, %inc122.i
  %inc124.i = add nsw i32 %i.189.i, 1
  %exitcond.not.i24 = icmp eq i32 %inc124.i, %call37.i18
  br i1 %exitcond.not.i24, label %if.end116.i.while.end.i_crit_edge, label %if.end116.i.while.body.i_crit_edge

if.end116.i.while.body.i_crit_edge:               ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end116.i.while.end.i_crit_edge:                ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %if.end116.i.while.end.i_crit_edge, %if.end110.i.while.end.i_crit_edge, %if.end104.i.while.end.i_crit_edge, %if.end91.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %size.0.lcssa.i = phi i32 [ %99, %if.end116.i.while.end.i_crit_edge ], [ %size.087.i, %while.body.i.while.end.i_crit_edge ], [ %size.087.i, %if.end91.i.while.end.i_crit_edge ], [ %size.087.i, %if.end104.i.while.end.i_crit_edge ], [ %size.087.i, %if.end110.i.while.end.i_crit_edge ]
  %i.1.lcssa.i = phi i32 [ %call37.i18, %if.end116.i.while.end.i_crit_edge ], [ %i.189.i, %while.body.i.while.end.i_crit_edge ], [ %i.189.i, %if.end91.i.while.end.i_crit_edge ], [ %102, %if.end104.i.while.end.i_crit_edge ], [ %i.189.i, %if.end110.i.while.end.i_crit_edge ]
  %bit.0.lcssa.i = phi i32 [ %add105.i, %if.end116.i.while.end.i_crit_edge ], [ %bit.090.i, %while.body.i.while.end.i_crit_edge ], [ %bit.090.i, %if.end91.i.while.end.i_crit_edge ], [ %bit.090.i, %if.end104.i.while.end.i_crit_edge ], [ %bit.090.i, %if.end110.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size.0.lcssa.i)
  %cmp125.i = icmp sgt i32 %size.0.lcssa.i, 4096
  br i1 %cmp125.i, label %if.then127.i, label %while.end.i.if.end130.i_crit_edge

while.end.i.if.end130.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end130.i

if.then127.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %add128.i = add i32 %bit.0.lcssa.i, 1
  %105 = ptrtoint ptr %bm_resync_fo.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %add128.i, ptr %bm_resync_fo.i, align 8
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.then127.i, %while.end.i.if.end130.i_crit_edge, %while.cond.preheader.i.if.end130.i_crit_edge
  %i.1.lcssa164.i = phi i32 [ %i.1.lcssa.i, %if.then127.i ], [ %i.1.lcssa.i, %while.end.i.if.end130.i_crit_edge ], [ %i.0110.i, %while.cond.preheader.i.if.end130.i_crit_edge ]
  %size.0.lcssa163.i = phi i32 [ %size.0.lcssa.i, %if.then127.i ], [ %size.0.lcssa.i, %while.end.i.if.end130.i_crit_edge ], [ 4096, %while.cond.preheader.i.if.end130.i_crit_edge ]
  %shr.i = ashr exact i32 %size.0.lcssa163.i, 9
  %conv131.i = sext i32 %shr.i to i64
  %add132.i = add nsw i64 %shl67.i, %conv131.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add132.i, i64 %52)
  %cmp133.i = icmp ugt i64 %add132.i, %52
  %sub136.i = sub i64 %52, %shl67.i
  %sub136.tr.i = trunc i64 %sub136.i to i32
  %conv138.i = shl i32 %sub136.tr.i, 9
  %size.1.i = select i1 %cmp133.i, i32 %conv138.i, i32 %size.0.lcssa163.i
  %106 = ptrtoint ptr %use_csums.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %use_csums.i, align 8, !range !285
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool140.not.i = icmp eq i8 %107, 0
  br i1 %tobool140.not.i, label %if.else153.i, label %if.then141.i

if.then141.i:                                     ; preds = %if.end130.i
  %108 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %device1.i.i, align 4
  %state.i.i.i = getelementptr inbounds %struct.drbd_device, ptr %109, i32 0, i32 27
  %110 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %bf.load.i.i.i = load i32, ptr %state.i.i.i, align 8
  %111 = and i32 %bf.load.i.i.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp.i.i.i = icmp eq i32 %111, 0
  br i1 %cmp.i.i.i, label %if.then141.i.sw.bb.i_crit_edge, label %if.end.i.i.i

if.then141.i.sw.bb.i_crit_edge:                   ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.end.i.i.i:                                     ; preds = %if.then141.i
  %local_cnt.i.i.i = getelementptr inbounds %struct.drbd_device, ptr %109, i32 0, i32 41
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i.i.i, i32 1, i32 3, i32 1) #14
  %112 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i.i.i, ptr %local_cnt.i.i.i, i32 1, ptr elementtype(i32) %local_cnt.i.i.i) #14, !srcloc !269
  %113 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %bf.load2.i.i.i = load i32, ptr %state.i.i.i, align 8
  %114 = and i32 %bf.load2.i.i.i, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp5.not.i.i.i = icmp eq i32 %114, 0
  br i1 %cmp5.not.i.i.i, label %if.then6.i.i.i, label %if.end.i11.i

if.then6.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @put_ldev(ptr noundef %109) #14
  br label %sw.bb.i

if.end.i11.i:                                     ; preds = %if.end.i.i.i
  %call3.i.i = tail call ptr @drbd_alloc_peer_req(ptr noundef %spec.select.i.i7, i64 noundef -1, i64 noundef %shl67.i, i32 noundef %size.1.i, i32 noundef %size.1.i, i32 noundef 8194) #14
  %tobool4.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool4.not.i.i, label %if.end.i11.i.sw.bb143.i_crit_edge, label %if.end6.i.i

if.end.i11.i.sw.bb143.i_crit_edge:                ; preds = %if.end.i11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb143.i

if.end6.i.i:                                      ; preds = %if.end.i11.i
  %cb.i.i = getelementptr inbounds %struct.drbd_work, ptr %call3.i.i, i32 0, i32 1
  %115 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @w_e_send_csum, ptr %cb.i.i, align 8
  %116 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %109, align 8
  %req_lock.i.i = getelementptr inbounds %struct.drbd_resource, ptr %117, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %req_lock.i.i) #14
  %read_ee.i.i = getelementptr inbounds %struct.drbd_device, ptr %109, i32 0, i32 73
  %prev.i.i.i = getelementptr inbounds %struct.drbd_device, ptr %109, i32 0, i32 73, i32 1
  %118 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i37.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call3.i.i, ptr noundef %119, ptr noundef %read_ee.i.i) #14
  br i1 %call.i.i37.i.i, label %if.end.i.i.i.i, label %if.end6.i.i.list_add_tail.exit.i.i_crit_edge

if.end6.i.i.list_add_tail.exit.i.i_crit_edge:     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %120 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call3.i.i, ptr %prev.i.i.i, align 4
  %121 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %read_ee.i.i, ptr %call3.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call3.i.i, i32 0, i32 1
  %122 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %119, ptr %prev3.i.i.i.i, align 4
  %123 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %call3.i.i, ptr %119, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end6.i.i.list_add_tail.exit.i.i_crit_edge
  %124 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %109, align 8
  %req_lock9.i.i = getelementptr inbounds %struct.drbd_resource, ptr %125, i32 0, i32 12
  tail call void @_raw_spin_unlock_irq(ptr noundef %req_lock9.i.i) #14
  %shr.i.i = ashr exact i32 %size.1.i, 9
  %rs_sect_ev.i.i = getelementptr inbounds %struct.drbd_device, ptr %109, i32 0, i32 97
  %call.i.i.i12.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rs_sect_ev.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %rs_sect_ev.i.i, i32 1, i32 3, i32 1) #14
  %126 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rs_sect_ev.i.i, ptr %rs_sect_ev.i.i, i32 %shr.i.i, ptr elementtype(i32) %rs_sect_ev.i.i) #14, !srcloc !269
  %call10.i.i = tail call i32 @drbd_submit_peer_request(ptr noundef %109, ptr noundef nonnull %call3.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp.i13.i = icmp eq i32 %call10.i.i, 0
  br i1 %cmp.i13.i, label %list_add_tail.exit.i.i.for.inc.i_crit_edge, label %if.end12.i.i

list_add_tail.exit.i.i.for.inc.i_crit_edge:       ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end12.i.i:                                     ; preds = %list_add_tail.exit.i.i
  %127 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %109, align 8
  %req_lock14.i.i = getelementptr inbounds %struct.drbd_resource, ptr %128, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %req_lock14.i.i) #14
  %call.i.i38.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call3.i.i) #14
  br i1 %call.i.i38.i.i, label %if.end.i.i39.i.i, label %if.end12.i.i.list_del.exit.i.i_crit_edge

if.end12.i.i.list_del.exit.i.i_crit_edge:         ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i.i

if.end.i.i39.i.i:                                 ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call3.i.i, i32 0, i32 1
  %129 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %prev.i.i.i.i, align 4
  %131 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %call3.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %130, ptr %prev1.i.i.i.i.i, align 4
  %134 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %132, ptr %130, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i39.i.i, %if.end12.i.i.list_del.exit.i.i_crit_edge
  %135 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr inttoptr (i32 256 to ptr), ptr %call3.i.i, align 4
  %prev.i40.i.i = getelementptr inbounds %struct.list_head, ptr %call3.i.i, i32 0, i32 1
  %136 = ptrtoint ptr %prev.i40.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i40.i.i, align 4
  %137 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %109, align 8
  %req_lock18.i.i = getelementptr inbounds %struct.drbd_resource, ptr %138, i32 0, i32 12
  tail call void @_raw_spin_unlock_irq(ptr noundef %req_lock18.i.i) #14
  tail call void @__drbd_free_peer_req(ptr noundef %109, ptr noundef nonnull %call3.i.i, i32 noundef 0) #14
  br label %sw.bb143.i

sw.bb.i:                                          ; preds = %if.then6.i.i.i, %if.then141.i.sw.bb.i_crit_edge
  tail call fastcc void @put_ldev(ptr noundef %add.ptr) #14
  br label %sw.epilog

sw.bb143.i:                                       ; preds = %list_del.exit.i.i, %if.end.i11.i.sw.bb143.i_crit_edge
  tail call fastcc void @put_ldev(ptr noundef %109) #14
  tail call void @drbd_rs_complete_io(ptr noundef %add.ptr, i64 noundef %shl67.i) #14
  %139 = ptrtoint ptr %bm_resync_fo.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %call6184.i, ptr %bm_resync_fo.i, align 8
  br label %requeue175.i

if.else153.i:                                     ; preds = %if.end130.i
  %call.i.i.i15.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rs_pending_cnt.i.i19, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %rs_pending_cnt.i.i19, i32 1, i32 3, i32 1) #14
  %140 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rs_pending_cnt.i.i19, ptr %rs_pending_cnt.i.i19, i32 1, ptr elementtype(i32) %rs_pending_cnt.i.i19) #14, !srcloc !269
  call void @__sanitizer_cov_trace_cmp4(i32 %size.1.i, i32 %discard_granularity.0.i)
  %cmp154.i = icmp eq i32 %size.1.i, %discard_granularity.0.i
  %cond156.i = select i1 %cmp154.i, i32 50, i32 9
  %call157.i = tail call i32 @drbd_send_drequest(ptr noundef %spec.select.i.i7, i32 noundef %cond156.i, i64 noundef %shl67.i, i32 noundef %size.1.i, i64 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157.i)
  %tobool158.not.i = icmp eq i32 %call157.i, 0
  br i1 %tobool158.not.i, label %if.else153.i.for.inc.i_crit_edge, label %do.end162.i

if.else153.i.for.inc.i_crit_edge:                 ; preds = %if.else153.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

do.end162.i:                                      ; preds = %if.else153.i
  %141 = ptrtoint ptr %vdisk.i9 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %vdisk.i9, align 4
  %part0164.i = getelementptr inbounds %struct.gendisk, ptr %142, i32 0, i32 7
  %143 = ptrtoint ptr %part0164.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %part0164.i, align 4
  %bd_device165.i = getelementptr inbounds %struct.block_device, ptr %144, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device165.i, ptr noundef nonnull @.str.90) #17
  %call.i.i.i17.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rs_pending_cnt.i.i19, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %rs_pending_cnt.i.i19, i32 1, i32 3, i32 1) #14
  %145 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rs_pending_cnt.i.i19, ptr %rs_pending_cnt.i.i19, i32 1, ptr elementtype(i32) %rs_pending_cnt.i.i19) #14, !srcloc !284
  %call.i.i7.i.i25 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rs_pending_cnt.i.i19, i32 noundef 4) #14
  %146 = ptrtoint ptr %rs_pending_cnt.i.i19 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %rs_pending_cnt.i.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp.i18.i = icmp slt i32 %147, 0
  br i1 %cmp.i18.i, label %do.end.i.i28, label %do.end162.i.cleanup.i_crit_edge

do.end162.i.cleanup.i_crit_edge:                  ; preds = %do.end162.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

do.end.i.i28:                                     ; preds = %do.end162.i
  call void @__sanitizer_cov_trace_pc() #16
  %148 = ptrtoint ptr %vdisk.i9 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %vdisk.i9, align 4
  %part0.i19.i = getelementptr inbounds %struct.gendisk, ptr %149, i32 0, i32 7
  %150 = ptrtoint ptr %part0.i19.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %part0.i19.i, align 4
  %bd_device.i.i26 = getelementptr inbounds %struct.block_device, ptr %151, i32 0, i32 10
  %call.i.i8.i.i27 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rs_pending_cnt.i.i19, i32 noundef 4) #14
  %152 = ptrtoint ptr %rs_pending_cnt.i.i19 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %rs_pending_cnt.i.i19, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device.i.i26, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.88, i32 noundef 743, i32 noundef %153) #17
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end.i.i28, %do.end162.i.cleanup.i_crit_edge
  tail call fastcc void @put_ldev(ptr noundef %add.ptr) #14
  br label %sw.epilog

for.inc.i:                                        ; preds = %if.else153.i.for.inc.i_crit_edge, %list_add_tail.exit.i.i.for.inc.i_crit_edge
  %inc168.i = add i32 %i.1.lcssa164.i, 1
  %cmp41.i = icmp slt i32 %inc168.i, %call37.i18
  br i1 %cmp41.i, label %for.inc.i.for.body.i21_crit_edge, label %for.end.i

for.inc.i.for.body.i21_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i21

for.end.i:                                        ; preds = %for.inc.i
  %154 = ptrtoint ptr %bm_resync_fo.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %bm_resync_fo.i, align 8
  %call170.i = tail call i32 @drbd_bm_bits(ptr noundef %add.ptr) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %call170.i)
  %cmp171.not.i = icmp ult i32 %155, %call170.i
  br i1 %cmp171.not.i, label %for.end.i.requeue175.i_crit_edge, label %if.then173.i

for.end.i.requeue175.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %requeue175.i

if.then173.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @put_ldev(ptr noundef %add.ptr) #14
  br label %sw.epilog

requeue175.i:                                     ; preds = %for.end.i.requeue175.i_crit_edge, %sw.bb143.i, %if.then70.i, %if.end55.thread.i, %if.end35.i.requeue175.i_crit_edge
  %i.2.i = phi i32 [ 0, %if.end35.i.requeue175.i_crit_edge ], [ %i.0110.i, %if.then70.i ], [ %i.0110.i, %sw.bb143.i ], [ %inc168.i, %for.end.i.requeue175.i_crit_edge ], [ %i.0110.i, %if.end55.thread.i ]
  %shl176.i = shl i32 %i.2.i, 3
  %rs_in_flight.i29 = getelementptr i8, ptr %w, i32 1104
  %156 = ptrtoint ptr %rs_in_flight.i29 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %rs_in_flight.i29, align 4
  %add177.i = add i32 %157, %shl176.i
  store i32 %add177.i, ptr %rs_in_flight.i29, align 4
  %resync_timer.i30 = getelementptr i8, ptr %w, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %158 = load volatile i32, ptr @jiffies, align 128
  %add178.i = add i32 %158, 10
  %call179.i = tail call i32 @mod_timer(ptr noundef %resync_timer.i30, i32 noundef %add178.i) #14
  tail call fastcc void @put_ldev(ptr noundef %add.ptr) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %requeue175.i, %if.then173.i, %cleanup.i, %sw.bb.i, %if.then63.i, %do.end.i, %if.then6.i, %cond.end.i.sw.epilog_crit_edge, %requeue.i, %requeue.thread.i, %do.end.i.i, %if.then26.i.sw.epilog_crit_edge, %for.body.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @resync_timer_fn(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_devices.i = getelementptr i8, ptr %t, i32 -112
  %0 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i = icmp eq ptr %1, %peer_devices.i
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %1
  %connection = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i, i32 0, i32 2
  %2 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection, align 4
  %sender_work = getelementptr inbounds %struct.drbd_connection, ptr %3, i32 0, i32 45
  %resync_work = getelementptr i8, ptr %t, i32 -24
  %q_lock.i = getelementptr inbounds %struct.drbd_connection, ptr %3, i32 0, i32 45, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock.i) #14
  %4 = ptrtoint ptr %resync_work to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %resync_work, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !286
  %cmp.i.not.i.i = icmp eq ptr %5, %resync_work
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i, label %entry.drbd_queue_work_if_unqueued.exit_crit_edge

entry.drbd_queue_work_if_unqueued.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %drbd_queue_work_if_unqueued.exit

list_empty_careful.exit.i:                        ; preds = %entry
  %prev.i.i = getelementptr i8, ptr %t, i32 -20
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %resync_work
  br i1 %cmp.i.not.i, label %if.then.i, label %list_empty_careful.exit.i.drbd_queue_work_if_unqueued.exit_crit_edge

list_empty_careful.exit.i.drbd_queue_work_if_unqueued.exit_crit_edge: ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %drbd_queue_work_if_unqueued.exit

if.then.i:                                        ; preds = %list_empty_careful.exit.i
  %prev.i13.i = getelementptr inbounds %struct.drbd_connection, ptr %3, i32 0, i32 45, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i13.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i13.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %resync_work, ptr noundef %9, ptr noundef %sender_work) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.drbd_queue_work_if_unqueued.exit_crit_edge

if.then.i.drbd_queue_work_if_unqueued.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %drbd_queue_work_if_unqueued.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %prev.i13.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %resync_work, ptr %prev.i13.i, align 4
  %11 = ptrtoint ptr %resync_work to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sender_work, ptr %resync_work, align 4
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resync_work, ptr %9, align 4
  br label %drbd_queue_work_if_unqueued.exit

drbd_queue_work_if_unqueued.exit:                 ; preds = %if.end.i.i.i, %if.then.i.drbd_queue_work_if_unqueued.exit_crit_edge, %list_empty_careful.exit.i.drbd_queue_work_if_unqueued.exit_crit_edge, %entry.drbd_queue_work_if_unqueued.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock.i, i32 noundef %call2.i) #14
  %q_wait.i = getelementptr inbounds %struct.drbd_connection, ptr %3, i32 0, i32 45, i32 2
  tail call void @__wake_up(ptr noundef %q_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fifo_alloc(i32 noundef %fifo_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %fifo_size, i32 4) #14
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 12) #14
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3328) #19
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %call9.i.i, align 128
  %size = getelementptr inbounds %struct.fifo_buffer, ptr %call9.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %fifo_size, ptr %size, align 4
  %total = getelementptr inbounds %struct.fifo_buffer, ptr %call9.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %total, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call9.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w_ov_finished(ptr noundef %w, i32 noundef %cancel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.drbd_device_work, ptr %w, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void @kfree(ptr noundef %w) #14
  %ov_last_oos_size.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %ov_last_oos_size.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ov_last_oos_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not.i = icmp eq i64 %3, 0
  br i1 %tobool.not.i, label %entry.ov_out_of_sync_print.exit_crit_edge, label %do.end.i

entry.ov_out_of_sync_print.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %ov_out_of_sync_print.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 10
  %ov_last_oos_start.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %ov_last_oos_start.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ov_last_oos_start.i, align 8
  %conv.i = trunc i64 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device.i, ptr noundef nonnull @.str.99, i64 noundef %9, i32 noundef %conv.i) #17
  br label %ov_out_of_sync_print.exit

ov_out_of_sync_print.exit:                        ; preds = %do.end.i, %entry.ov_out_of_sync_print.exit_crit_edge
  %10 = ptrtoint ptr %ov_last_oos_size.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %ov_last_oos_size.i, align 8
  %call = tail call i32 @drbd_resync_finished(ptr noundef %1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_resync_finished(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %vnr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_devices.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i = icmp eq ptr %1, %peer_devices.i
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %1
  %connection1 = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i, i32 0, i32 2
  %2 = ptrtoint ptr %connection1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection1, align 4
  %call2 = tail call i32 @drbd_rs_del_all(ptr noundef %device) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @schedule_timeout_interruptible(i32 noundef 10) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2592, i32 noundef 16) #20
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %do.end, label %if.then6

if.then6:                                         ; preds = %if.then
  %cb = getelementptr inbounds %struct.drbd_work, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @w_resync_finished, ptr %cb, align 8
  %device7 = getelementptr inbounds %struct.drbd_device_work, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %device7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %device, ptr %device7, align 4
  %sender_work = getelementptr inbounds %struct.drbd_connection, ptr %3, i32 0, i32 45
  %q_lock.i = getelementptr inbounds %struct.drbd_connection, ptr %3, i32 0, i32 45, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock.i) #14
  %prev.i.i = getelementptr inbounds %struct.drbd_connection, ptr %3, i32 0, i32 45, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %8, ptr noundef %sender_work) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then6.drbd_queue_work.exit_crit_edge

if.then6.drbd_queue_work.exit_crit_edge:          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %drbd_queue_work.exit

if.end.i.i.i:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sender_work, ptr %call7.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i, ptr %8, align 4
  br label %drbd_queue_work.exit

drbd_queue_work.exit:                             ; preds = %if.end.i.i.i, %if.then6.drbd_queue_work.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock.i, i32 noundef %call2.i) #14
  %q_wait.i = getelementptr inbounds %struct.drbd_connection, ptr %3, i32 0, i32 45, i32 2
  tail call void @__wake_up(ptr noundef %q_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %13 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %16, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device, ptr noundef nonnull @.str.9) #17
  br label %if.end9

if.end9:                                          ; preds = %do.end, %entry.if.end9_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %rs_start = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 50
  %18 = ptrtoint ptr %rs_start to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rs_start, align 4
  %rs_paused = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 51
  %20 = ptrtoint ptr %rs_paused to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rs_paused, align 8
  %22 = add i32 %19, %21
  %sub10 = sub i32 %17, %22
  %div = udiv i32 %sub10, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub10)
  %23 = icmp ult i32 %sub10, 100
  %spec.store.select = select i1 %23, i32 1, i32 %div
  %rs_total = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 48
  %24 = ptrtoint ptr %rs_total to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rs_total, align 4
  %state = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load = load i32, ptr %state, align 8
  %27 = and i32 %bf.load, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %27)
  %switch = icmp eq i32 %27, 288
  br i1 %switch, label %if.then19, label %if.end9.if.end21_crit_edge

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then19:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %ov_left = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 62
  %28 = ptrtoint ptr %ov_left to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ov_left, align 8
  %sub20 = sub i32 %25, %29
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end9.if.end21_crit_edge
  %db.0 = phi i32 [ %sub20, %if.then19 ], [ %25, %if.end9.if.end21_crit_edge ]
  %div22 = udiv i32 %db.0, %spec.store.select
  %shl = shl i32 %div22, 2
  %div24 = udiv i32 %21, 100
  %30 = ptrtoint ptr %rs_paused to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div24, ptr %rs_paused, align 8
  %31 = and i32 %bf.load, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i = icmp eq i32 %31, 0
  br i1 %cmp.i, label %if.end21.if.end306.thread_crit_edge, label %if.end.i

if.end21.if.end306.thread_crit_edge:              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end306.thread

if.end.i:                                         ; preds = %if.end21
  %local_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i.i434 = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i, i32 1, i32 3, i32 1) #14
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i, ptr %local_cnt.i, i32 1, ptr elementtype(i32) %local_cnt.i) #14, !srcloc !269
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load2.i = load i32, ptr %state, align 8
  %34 = and i32 %bf.load2.i, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp5.not.i = icmp eq i32 %34, 0
  br i1 %cmp5.not.i, label %if.then6.i, label %if.end29

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @put_ldev(ptr noundef %device) #14
  br label %if.end306.thread

if.end306.thread:                                 ; preds = %if.then6.i, %if.end21.if.end306.thread_crit_edge
  %35 = ptrtoint ptr %rs_total to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %rs_total, align 4
  %rs_failed299455 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 49
  %36 = ptrtoint ptr %rs_failed299455 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %rs_failed299455, align 8
  %37 = ptrtoint ptr %rs_paused to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %rs_paused, align 8
  tail call void @drbd_md_sync(ptr noundef %device) #14
  br label %cleanup

if.end29:                                         ; preds = %if.end.i
  %38 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i.i = icmp eq ptr %39, %peer_devices.i
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %39
  %connection1.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %connection1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %connection1.i, align 4
  %flags.i = getelementptr inbounds %struct.drbd_connection, ptr %41, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i) #14
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i) #14
  %task1.i.i.i = getelementptr inbounds %struct.drbd_connection, ptr %41, i32 0, i32 40, i32 1
  %42 = ptrtoint ptr %task1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task1.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i.i, label %if.end29.request_ping.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end29.request_ping.exit.i_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %request_ping.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !287
  %t_state.i.i.i.i = getelementptr inbounds %struct.drbd_connection, ptr %41, i32 0, i32 40, i32 3
  %44 = ptrtoint ptr %t_state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %t_state.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp.i.i.i = icmp eq i32 %45, 1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %land.lhs.true.i.i.i.request_ping.exit.i_crit_edge

land.lhs.true.i.i.i.request_ping.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %request_ping.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i.i.i = tail call i32 @send_sig(i32 noundef 24, ptr noundef nonnull %43, i32 noundef 1) #14
  br label %request_ping.exit.i

request_ping.exit.i:                              ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i.request_ping.exit.i_crit_edge, %if.end29.request_ping.exit.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 851) #14
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags.i, align 4
  %48 = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i435 = icmp eq i32 %48, 0
  br i1 %tobool.not.i435, label %lor.lhs.false.i, label %request_ping.exit.i.ping_peer.exit_crit_edge

request_ping.exit.i.ping_peer.exit_crit_edge:     ; preds = %request_ping.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ping_peer.exit

lor.lhs.false.i:                                  ; preds = %request_ping.exit.i
  %49 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %49)
  %bf.load.i437 = load i32, ptr %state, align 8
  %50 = and i32 %bf.load.i437, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %50)
  %cmp.i438 = icmp ult i32 %50, 160
  br i1 %cmp.i438, label %lor.lhs.false.i.ping_peer.exit_crit_edge, label %if.end.i439

lor.lhs.false.i.ping_peer.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ping_peer.exit

if.end.i439:                                      ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #14
  %51 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #14
  %ping_wait.i = getelementptr inbounds %struct.drbd_connection, ptr %41, i32 0, i32 12
  %call834.i = call i32 @prepare_to_wait_event(ptr noundef %ping_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #14
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flags.i, align 4
  %54 = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool11.not35.i = icmp eq i32 %54, 0
  br i1 %tobool11.not35.i, label %if.end.i439.lor.lhs.false12.i_crit_edge, label %if.end.i439.for.end.i_crit_edge

if.end.i439.for.end.i_crit_edge:                  ; preds = %if.end.i439
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end.i439.lor.lhs.false12.i_crit_edge:          ; preds = %if.end.i439
  br label %lor.lhs.false12.i

lor.lhs.false12.i:                                ; preds = %cleanup.i.lor.lhs.false12.i_crit_edge, %if.end.i439.lor.lhs.false12.i_crit_edge
  %55 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load14.i = load i32, ptr %state, align 8
  %56 = and i32 %bf.load14.i, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %56)
  %cmp17.i = icmp ult i32 %56, 160
  br i1 %cmp17.i, label %lor.lhs.false12.i.for.end.i_crit_edge, label %cleanup.i

lor.lhs.false12.i.for.end.i_crit_edge:            ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

cleanup.i:                                        ; preds = %lor.lhs.false12.i
  call void @schedule() #14
  %call8.i = call i32 @prepare_to_wait_event(ptr noundef %ping_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #14
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %flags.i, align 4
  %59 = and i32 %58, 8
  %tobool11.not.i = icmp eq i32 %59, 0
  br i1 %tobool11.not.i, label %cleanup.i.lor.lhs.false12.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

cleanup.i.lor.lhs.false12.i_crit_edge:            ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false12.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %lor.lhs.false12.i.for.end.i_crit_edge, %if.end.i439.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %ping_wait.i, ptr noundef nonnull %__wq_entry.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #14
  br label %ping_peer.exit

ping_peer.exit:                                   ; preds = %for.end.i, %lor.lhs.false.i.ping_peer.exit_crit_edge, %request_ping.exit.i.ping_peer.exit_crit_edge
  %60 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device, align 8
  %req_lock = getelementptr inbounds %struct.drbd_resource, ptr %61, i32 0, i32 12
  call void @_raw_spin_lock_irq(ptr noundef %req_lock) #14
  %62 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %state, align 8
  %bf.lshr34 = lshr i32 %63, 4
  %bf.clear35 = and i32 %bf.lshr34, 31
  %64 = and i32 %63, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %64)
  %65 = icmp eq i32 %64, 288
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %bf.clear35)
  %cmp44 = icmp ult i32 %bf.clear35, 11
  br i1 %cmp44, label %ping_peer.exit.out_unlock_crit_edge, label %if.end46

ping_peer.exit.out_unlock_crit_edge:              ; preds = %ping_peer.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end46:                                         ; preds = %ping_peer.exit
  %bf.clear.i = and i32 %63, -6423025
  %66 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device, align 8
  %susp.i = getelementptr inbounds %struct.drbd_resource, ptr %67, i32 0, i32 13
  %68 = ptrtoint ptr %susp.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load.i441 = load i8, ptr %susp.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i441, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %bf.shl.i = shl nuw nsw i32 %bf.cast.i, 17
  %bf.set.i = or i32 %bf.shl.i, %bf.clear.i
  %bf.lshr4.i = lshr i8 %bf.load.i441, 6
  %bf.value8.i = zext i8 %bf.lshr4.i to i32
  %bf.shl9.i = shl nuw nsw i32 %bf.value8.i, 21
  %bf.shl9.masked.i = and i32 %bf.shl9.i, 2097152
  %bf.clear19.i = or i32 %bf.set.i, %bf.shl9.masked.i
  %bf.lshr13.i = lshr i8 %bf.load.i441, 5
  %69 = and i8 %bf.lshr13.i, 1
  %bf.value17.i = zext i8 %69 to i32
  %bf.shl18.i = shl nuw nsw i32 %bf.value17.i, 22
  %bf.set20.i = or i32 %bf.clear19.i, %bf.shl18.i
  %bf.set = or i32 %bf.set20.i, 160
  %vdisk52 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %70 = ptrtoint ptr %vdisk52 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %vdisk52, align 4
  %part053 = getelementptr inbounds %struct.gendisk, ptr %71, i32 0, i32 7
  %72 = ptrtoint ptr %part053 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %part053, align 4
  %bd_device54 = getelementptr inbounds %struct.block_device, ptr %73, i32 0, i32 10
  %cond = select i1 %65, ptr @.str.16, ptr @.str.17
  %74 = ptrtoint ptr %rs_paused to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rs_paused, align 8
  %add = add i32 %75, %spec.store.select
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.14, ptr noundef %bd_device54, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond, i32 noundef %add, i32 noundef %75, i32 noundef %shl) #17
  %call58 = call i32 @drbd_bm_total_weight(ptr noundef %device) #14
  br i1 %65, label %if.then68, label %do.body78

if.then68:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool69.not = icmp eq i32 %call58, 0
  br i1 %tobool69.not, label %if.then68.if.end134_crit_edge, label %do.end73

if.then68.if.end134_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134

do.end73:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #16
  %76 = ptrtoint ptr %vdisk52 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vdisk52, align 4
  %part075 = getelementptr inbounds %struct.gendisk, ptr %77, i32 0, i32 7
  %78 = ptrtoint ptr %part075 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %part075, align 4
  %bd_device76 = getelementptr inbounds %struct.block_device, ptr %79, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.20, ptr noundef %bd_device76, ptr noundef nonnull @.str.19, i32 noundef %call58, i32 noundef 4) #17
  br label %if.end134

do.body78:                                        ; preds = %if.end46
  %rs_failed = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 49
  %80 = ptrtoint ptr %rs_failed to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rs_failed, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call58, i32 %81)
  %cmp80 = icmp eq i32 %call58, %81
  br i1 %cmp80, label %do.body78.do.end90_crit_edge, label %do.end84

do.body78.do.end90_crit_edge:                     ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end90

do.end84:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #16
  %82 = ptrtoint ptr %vdisk52 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %vdisk52, align 4
  %part086 = getelementptr inbounds %struct.gendisk, ptr %83, i32 0, i32 7
  %84 = ptrtoint ptr %part086 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %part086, align 4
  %bd_device87 = getelementptr inbounds %struct.block_device, ptr %85, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device87, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 927) #17
  br label %do.end90

do.end90:                                         ; preds = %do.end84, %do.body78.do.end90_crit_edge
  %86 = add nsw i32 %bf.clear35, -17
  %switch.and = and i32 %86, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %87 = select i1 %switch.selectcmp, ptr @.str.26, ptr null
  %use_csums = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 47
  %88 = ptrtoint ptr %use_csums to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %use_csums, align 8, !range !285
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool102.not = icmp eq i8 %89, 0
  br i1 %tobool102.not, label %do.end90.if.end134_crit_edge, label %land.lhs.true

do.end90.if.end134_crit_edge:                     ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134

land.lhs.true:                                    ; preds = %do.end90
  %90 = ptrtoint ptr %rs_total to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rs_total, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool104.not = icmp eq i32 %91, 0
  br i1 %tobool104.not, label %land.lhs.true.if.end134_crit_edge, label %if.then105

land.lhs.true.if.end134_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134

if.then105:                                       ; preds = %land.lhs.true
  %rs_same_csum = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 52
  %92 = ptrtoint ptr %rs_same_csum to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rs_same_csum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %91)
  %cmp110 = icmp ult i32 %91, 100000
  br i1 %cmp110, label %cond.true111, label %cond.false113

cond.true111:                                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #16
  %mul = mul i32 %93, 100
  %div112 = udiv i32 %mul, %91
  br label %cond.end117

cond.false113:                                    ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #16
  %div114 = udiv i32 %91, 100
  %div115 = udiv i32 %93, %div114
  br label %cond.end117

cond.end117:                                      ; preds = %cond.false113, %cond.true111
  %cond118 = phi i32 [ %div112, %cond.true111 ], [ %div115, %cond.false113 ]
  %94 = ptrtoint ptr %vdisk52 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %vdisk52, align 4
  %part0123 = getelementptr inbounds %struct.gendisk, ptr %95, i32 0, i32 7
  %96 = ptrtoint ptr %part0123 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %part0123, align 4
  %bd_device124 = getelementptr inbounds %struct.block_device, ptr %97, i32 0, i32 10
  %shl126 = shl i32 %93, 2
  %sub129 = sub i32 %91, %93
  %shl130 = shl i32 %sub129, 2
  %shl132 = shl i32 %91, 2
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.14, ptr noundef %bd_device124, ptr noundef nonnull @.str.28, i32 noundef %cond118, i32 noundef %shl126, i32 noundef %shl130, i32 noundef %shl132) #17
  br label %if.end134

if.end134:                                        ; preds = %cond.end117, %land.lhs.true.if.end134_crit_edge, %do.end90.if.end134_crit_edge, %do.end73, %if.then68.if.end134_crit_edge
  %khelper_cmd.1 = phi ptr [ @.str.22, %do.end73 ], [ null, %if.then68.if.end134_crit_edge ], [ %87, %cond.end117 ], [ %87, %land.lhs.true.if.end134_crit_edge ], [ %87, %do.end90.if.end134_crit_edge ]
  %rs_failed135 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 49
  %98 = ptrtoint ptr %rs_failed135 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rs_failed135, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool136.not = icmp eq i32 %99, 0
  br i1 %tobool136.not, label %if.else169, label %do.end140

do.end140:                                        ; preds = %if.end134
  %100 = ptrtoint ptr %vdisk52 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %vdisk52, align 4
  %part0142 = getelementptr inbounds %struct.gendisk, ptr %101, i32 0, i32 7
  %102 = ptrtoint ptr %part0142 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %part0142, align 4
  %bd_device143 = getelementptr inbounds %struct.block_device, ptr %103, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.14, ptr noundef %bd_device143, ptr noundef nonnull @.str.31, i32 noundef %99) #17
  %104 = zext i32 %bf.clear35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %bf.clear35, label %if.else161 [
    i32 17, label %do.end140.if.then154_crit_edge
    i32 21, label %do.end140.if.then154_crit_edge474
  ]

do.end140.if.then154_crit_edge474:                ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then154

do.end140.if.then154_crit_edge:                   ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then154

if.then154:                                       ; preds = %do.end140.if.then154_crit_edge, %do.end140.if.then154_crit_edge474
  %bf.clear156 = and i32 %bf.set, -130897
  %bf.set160 = or i32 %bf.clear156, 67584
  br label %if.end230

if.else161:                                       ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #16
  %bf.clear163 = and i32 %bf.set, -130897
  %bf.set167 = or i32 %bf.clear163, 36864
  br label %if.end230

if.else169:                                       ; preds = %if.end134
  %bf.clear171 = and i32 %bf.set, -130897
  %bf.set175 = or i32 %bf.clear171, 69632
  %105 = zext i32 %bf.clear35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %bf.clear35, label %if.else169.if.then211_crit_edge [
    i32 17, label %if.else169.if.then185_crit_edge
    i32 21, label %if.else169.if.then185_crit_edge475
    i32 19, label %if.else169.if.end230_crit_edge
    i32 18, label %if.else169.if.end230_crit_edge476
  ]

if.else169.if.end230_crit_edge476:                ; preds = %if.else169
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end230

if.else169.if.end230_crit_edge:                   ; preds = %if.else169
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end230

if.else169.if.then185_crit_edge475:               ; preds = %if.else169
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then185

if.else169.if.then185_crit_edge:                  ; preds = %if.else169
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then185

if.else169.if.then211_crit_edge:                  ; preds = %if.else169
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then211

if.then185:                                       ; preds = %if.else169.if.then185_crit_edge, %if.else169.if.then185_crit_edge475
  %p_uuid = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 69
  %106 = ptrtoint ptr %p_uuid to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %p_uuid, align 4
  %tobool186.not = icmp eq ptr %107, null
  br i1 %tobool186.not, label %do.end196, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #16
  %108 = ptrtoint ptr %p_uuid to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %p_uuid, align 4
  %arrayidx = getelementptr i64, ptr %109, i32 1
  %110 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %arrayidx, align 8
  call void @_drbd_uuid_set(ptr noundef %device, i32 noundef 1, i64 noundef %111) #14
  %112 = ptrtoint ptr %p_uuid to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %p_uuid, align 4
  %arrayidx.1 = getelementptr i64, ptr %113, i32 2
  %114 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %arrayidx.1, align 8
  call void @_drbd_uuid_set(ptr noundef %device, i32 noundef 2, i64 noundef %115) #14
  %116 = ptrtoint ptr %p_uuid to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %p_uuid, align 4
  %arrayidx.2 = getelementptr i64, ptr %117, i32 3
  %118 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %arrayidx.2, align 8
  call void @_drbd_uuid_set(ptr noundef %device, i32 noundef 3, i64 noundef %119) #14
  %ldev = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 15
  %120 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ldev, align 4
  %uuid = getelementptr inbounds %struct.drbd_backing_dev, ptr %121, i32 0, i32 2, i32 3
  %122 = ptrtoint ptr %uuid to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %uuid, align 8
  call void @drbd_uuid_set(ptr noundef %device, i32 noundef 1, i64 noundef %123) #14
  %124 = ptrtoint ptr %p_uuid to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %p_uuid, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %125, align 8
  call void @_drbd_uuid_set(ptr noundef %device, i32 noundef 0, i64 noundef %127) #14
  br label %if.end201

do.end196:                                        ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #16
  %128 = ptrtoint ptr %vdisk52 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %vdisk52, align 4
  %part0198 = getelementptr inbounds %struct.gendisk, ptr %129, i32 0, i32 7
  %130 = ptrtoint ptr %part0198 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %part0198, align 4
  %bd_device199 = getelementptr inbounds %struct.block_device, ptr %131, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device199, ptr noundef nonnull @.str.34) #17
  br label %if.end201

if.end201:                                        ; preds = %do.end196, %for.body.preheader
  br i1 %65, label %if.end201.if.end230_crit_edge, label %if.end201.if.then211_crit_edge

if.end201.if.then211_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then211

if.end201.if.end230_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end230

if.then211:                                       ; preds = %if.end201.if.then211_crit_edge, %if.else169.if.then211_crit_edge
  call void @drbd_uuid_set_bm(ptr noundef %device, i64 noundef 0) #14
  call void @drbd_print_uuids(ptr noundef %device, ptr noundef nonnull @.str.36) #14
  %p_uuid212 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 69
  %132 = ptrtoint ptr %p_uuid212 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %p_uuid212, align 4
  %tobool213.not = icmp eq ptr %133, null
  br i1 %tobool213.not, label %if.then211.if.end230_crit_edge, label %for.cond216.preheader

if.then211.if.end230_crit_edge:                   ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end230

for.cond216.preheader:                            ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #16
  %ldev219 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 15
  %134 = ptrtoint ptr %ldev219 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ldev219, align 4
  %arrayidx222 = getelementptr %struct.drbd_backing_dev, ptr %135, i32 0, i32 2, i32 3, i32 0
  %136 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %arrayidx222, align 8
  %138 = ptrtoint ptr %p_uuid212 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %p_uuid212, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %137, ptr %139, align 8
  %141 = load ptr, ptr %ldev219, align 4
  %arrayidx222.1 = getelementptr %struct.drbd_backing_dev, ptr %141, i32 0, i32 2, i32 3, i32 1
  %142 = ptrtoint ptr %arrayidx222.1 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %arrayidx222.1, align 8
  %144 = load ptr, ptr %p_uuid212, align 4
  %arrayidx224.1 = getelementptr i64, ptr %144, i32 1
  %145 = ptrtoint ptr %arrayidx224.1 to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %143, ptr %arrayidx224.1, align 8
  %146 = load ptr, ptr %ldev219, align 4
  %arrayidx222.2 = getelementptr %struct.drbd_backing_dev, ptr %146, i32 0, i32 2, i32 3, i32 2
  %147 = ptrtoint ptr %arrayidx222.2 to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %arrayidx222.2, align 8
  %149 = load ptr, ptr %p_uuid212, align 4
  %arrayidx224.2 = getelementptr i64, ptr %149, i32 2
  %150 = ptrtoint ptr %arrayidx224.2 to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %148, ptr %arrayidx224.2, align 8
  %151 = load ptr, ptr %ldev219, align 4
  %arrayidx222.3 = getelementptr %struct.drbd_backing_dev, ptr %151, i32 0, i32 2, i32 3, i32 3
  %152 = ptrtoint ptr %arrayidx222.3 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %arrayidx222.3, align 8
  %154 = load ptr, ptr %p_uuid212, align 4
  %arrayidx224.3 = getelementptr i64, ptr %154, i32 3
  %155 = ptrtoint ptr %arrayidx224.3 to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %153, ptr %arrayidx224.3, align 8
  br label %if.end230

if.end230:                                        ; preds = %for.cond216.preheader, %if.then211.if.end230_crit_edge, %if.end201.if.end230_crit_edge, %if.else169.if.end230_crit_edge, %if.else169.if.end230_crit_edge476, %if.else161, %if.then154
  %ns.sroa.0.0 = phi i32 [ %bf.set160, %if.then154 ], [ %bf.set167, %if.else161 ], [ %bf.set175, %if.then211.if.end230_crit_edge ], [ %bf.set175, %if.end201.if.end230_crit_edge ], [ %bf.set175, %if.else169.if.end230_crit_edge ], [ %bf.set175, %if.else169.if.end230_crit_edge476 ], [ %bf.set175, %for.cond216.preheader ]
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %ns.sroa.0.0, 0
  %call233 = call i32 @_drbd_set_state(ptr noundef %device, [1 x i32] %.fca.0.insert, i32 noundef 2, ptr noundef null) #14
  br label %out_unlock

out_unlock:                                       ; preds = %if.end230, %ping_peer.exit.out_unlock_crit_edge
  %khelper_cmd.2 = phi ptr [ null, %ping_peer.exit.out_unlock_crit_edge ], [ %khelper_cmd.1, %if.end230 ]
  %156 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %device, align 8
  %req_lock235 = getelementptr inbounds %struct.drbd_resource, ptr %157, i32 0, i32 12
  call void @_raw_spin_unlock_irq(ptr noundef %req_lock235) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %bf.clear35)
  %cmp239 = icmp eq i32 %bf.clear35, 16
  br i1 %cmp239, label %if.then240, label %out_unlock.out_crit_edge

out_unlock.out_crit_edge:                         ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then240:                                       ; preds = %out_unlock
  %158 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i = and i32 %158, -16384
  %159 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %161, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !276
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.then240.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then240.rcu_read_lock.exit_crit_edge:          ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then240
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 696, ptr noundef nonnull @.str.102) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then240.rcu_read_lock.exit_crit_edge
  %ldev245 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 15
  %162 = ptrtoint ptr %ldev245 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ldev245, align 4
  %disk_conf = getelementptr inbounds %struct.drbd_backing_dev, ptr %163, i32 0, i32 3
  %164 = ptrtoint ptr %disk_conf to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile ptr, ptr %disk_conf, align 8
  %call247 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %land.lhs.true249, label %rcu_read_lock.exit.do.end257_crit_edge

rcu_read_lock.exit.do.end257_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end257

land.lhs.true249:                                 ; preds = %rcu_read_lock.exit
  %call250 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %tobool251.not = icmp eq i32 %call250, 0
  br i1 %tobool251.not, label %land.lhs.true249.do.end257_crit_edge, label %land.lhs.true252

land.lhs.true249.do.end257_crit_edge:             ; preds = %land.lhs.true249
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end257

land.lhs.true252:                                 ; preds = %land.lhs.true249
  %.b428 = load i1, ptr @drbd_resync_finished.__warned, align 1
  br i1 %.b428, label %land.lhs.true252.do.end257_crit_edge, label %if.then254

land.lhs.true252.do.end257_crit_edge:             ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end257

if.then254:                                       ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @drbd_resync_finished.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1000, ptr noundef nonnull @.str.37) #14
  br label %do.end257

do.end257:                                        ; preds = %if.then254, %land.lhs.true252.do.end257_crit_edge, %land.lhs.true249.do.end257_crit_edge, %rcu_read_lock.exit.do.end257_crit_edge
  %fencing = getelementptr inbounds %struct.disk_conf, ptr %165, i32 0, i32 8
  %166 = ptrtoint ptr %fencing to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %fencing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %cmp259.not = icmp eq i32 %167, 0
  br i1 %cmp259.not, label %do.end257.if.end290_crit_edge, label %if.then260

do.end257.if.end290_crit_edge:                    ; preds = %do.end257
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end290

if.then260:                                       ; preds = %do.end257
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vnr) #14
  %peer_devices = getelementptr inbounds %struct.drbd_connection, ptr %3, i32 0, i32 6
  %168 = ptrtoint ptr %vnr to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %vnr, align 4
  %call262463 = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #14
  %cmp263.not464 = icmp eq ptr %call262463, null
  br i1 %cmp263.not464, label %if.then260.for.end289_crit_edge, label %if.then260.for.body264_crit_edge

if.then260.for.body264_crit_edge:                 ; preds = %if.then260
  br label %for.body264

if.then260.for.end289_crit_edge:                  ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end289

for.body264:                                      ; preds = %for.body264.for.body264_crit_edge, %if.then260.for.body264_crit_edge
  %call262467 = phi ptr [ %call262, %for.body264.for.body264_crit_edge ], [ %call262463, %if.then260.for.body264_crit_edge ]
  %pdsk_state.0466 = phi i32 [ %173, %for.body264.for.body264_crit_edge ], [ 15, %if.then260.for.body264_crit_edge ]
  %disk_state.0465 = phi i32 [ %172, %for.body264.for.body264_crit_edge ], [ 15, %if.then260.for.body264_crit_edge ]
  %device266 = getelementptr inbounds %struct.drbd_peer_device, ptr %call262467, i32 0, i32 1
  %169 = ptrtoint ptr %device266 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %device266, align 4
  %state267 = getelementptr inbounds %struct.drbd_device, ptr %170, i32 0, i32 27
  %171 = ptrtoint ptr %state267 to i32
  call void @__asan_load4_noabort(i32 %171)
  %bf.load268 = load i32, ptr %state267, align 8
  %bf.lshr269 = lshr i32 %bf.load268, 9
  %bf.clear270 = and i32 %bf.lshr269, 15
  %172 = call i32 @llvm.umin.i32(i32 %disk_state.0465, i32 %bf.clear270)
  %bf.lshr279 = lshr i32 %bf.load268, 13
  %bf.clear280 = and i32 %bf.lshr279, 15
  %173 = call i32 @llvm.umin.i32(i32 %pdsk_state.0466, i32 %bf.clear280)
  %174 = ptrtoint ptr %vnr to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %vnr, align 4
  %add288 = add i32 %175, 1
  store i32 %add288, ptr %vnr, align 4
  %call262 = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #14
  %cmp263.not = icmp eq ptr %call262, null
  br i1 %cmp263.not, label %for.body264.for.end289_crit_edge, label %for.body264.for.body264_crit_edge

for.body264.for.body264_crit_edge:                ; preds = %for.body264
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body264

for.body264.for.end289_crit_edge:                 ; preds = %for.body264
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end289

for.end289:                                       ; preds = %for.body264.for.end289_crit_edge, %if.then260.for.end289_crit_edge
  %disk_state.0.lcssa = phi i32 [ 15, %if.then260.for.end289_crit_edge ], [ %172, %for.body264.for.end289_crit_edge ]
  %pdsk_state.0.lcssa = phi i32 [ 15, %if.then260.for.end289_crit_edge ], [ %173, %for.body264.for.end289_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vnr) #14
  br label %if.end290

if.end290:                                        ; preds = %for.end289, %do.end257.if.end290_crit_edge
  %disk_state.1 = phi i32 [ %disk_state.0.lcssa, %for.end289 ], [ 15, %do.end257.if.end290_crit_edge ]
  %pdsk_state.1 = phi i32 [ %pdsk_state.0.lcssa, %for.end289 ], [ 15, %do.end257.if.end290_crit_edge ]
  %call.i442 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i442, label %if.end290.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i445

if.end290.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i445:                               ; preds = %if.end290
  %call1.i443 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i443)
  %tobool.not.i444 = icmp eq i32 %call1.i443, 0
  br i1 %tobool.not.i444, label %land.lhs.true.i445.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i447

land.lhs.true.i445.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i445
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i447:                              ; preds = %land.lhs.true.i445
  %.b4.i446 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i446, label %land.lhs.true2.i447.rcu_read_unlock.exit_crit_edge, label %if.then.i448

land.lhs.true2.i447.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i447
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i448:                                     ; preds = %land.lhs.true2.i447
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 724, ptr noundef nonnull @.str.103) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i448, %land.lhs.true2.i447.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i445.rcu_read_unlock.exit_crit_edge, %if.end290.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !277
  %176 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i449 = and i32 %176, -16384
  %177 = inttoptr i32 %and.i.i.i.i.i449 to ptr
  %preempt_count.i.i.i.i450 = getelementptr inbounds %struct.thread_info, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %preempt_count.i.i.i.i450 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %preempt_count.i.i.i.i450, align 4
  %sub.i.i.i = add i32 %179, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i450, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %disk_state.1)
  %cmp291 = icmp eq i32 %disk_state.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %pdsk_state.1)
  %cmp293 = icmp eq i32 %pdsk_state.1, 8
  %or.cond430 = select i1 %cmp291, i1 %cmp293, i1 false
  br i1 %or.cond430, label %if.then294, label %rcu_read_unlock.exit.out_crit_edge

rcu_read_unlock.exit.out_crit_edge:               ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then294:                                       ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call295 = call i32 @conn_khelper(ptr noundef %3, ptr noundef nonnull @.str.38) #14
  br label %out

out:                                              ; preds = %if.then294, %rcu_read_unlock.exit.out_crit_edge, %out_unlock.out_crit_edge
  call fastcc void @put_ldev(ptr noundef %device)
  %180 = ptrtoint ptr %rs_total to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %rs_total, align 4
  %rs_failed299 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 49
  %181 = ptrtoint ptr %rs_failed299 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %rs_failed299, align 8
  %182 = ptrtoint ptr %rs_paused to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 0, ptr %rs_paused, align 8
  br i1 %65, label %land.lhs.true302, label %out.if.end306_crit_edge

out.if.end306_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end306

land.lhs.true302:                                 ; preds = %out
  %ov_left303 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 62
  %183 = ptrtoint ptr %ov_left303 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %ov_left303, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp304 = icmp eq i32 %184, 0
  br i1 %cmp304, label %if.then305, label %land.lhs.true302.if.end306_crit_edge

land.lhs.true302.if.end306_crit_edge:             ; preds = %land.lhs.true302
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end306

if.then305:                                       ; preds = %land.lhs.true302
  call void @__sanitizer_cov_trace_pc() #16
  %ov_start_sector = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 57
  %185 = ptrtoint ptr %ov_start_sector to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 0, ptr %ov_start_sector, align 8
  br label %if.end306

if.end306:                                        ; preds = %if.then305, %land.lhs.true302.if.end306_crit_edge, %out.if.end306_crit_edge
  call void @drbd_md_sync(ptr noundef %device) #14
  %tobool307.not = icmp eq ptr %khelper_cmd.2, null
  br i1 %tobool307.not, label %if.end306.cleanup_crit_edge, label %if.then308

if.end306.cleanup_crit_edge:                      ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then308:                                       ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #16
  %call309 = call i32 @drbd_khelper(ptr noundef %device, ptr noundef nonnull %khelper_cmd.2) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then308, %if.end306.cleanup_crit_edge, %if.end306.thread, %drbd_queue_work.exit
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_rs_del_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w_resync_finished(ptr noundef %w, i32 noundef %cancel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.drbd_device_work, ptr %w, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void @kfree(ptr noundef %w) #14
  %call = tail call i32 @drbd_resync_finished(ptr noundef %1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_bm_total_weight(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_drbd_uuid_set(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_uuid_set(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_uuid_set_bm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_print_uuids(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_drbd_set_state(ptr noundef, [1 x i32], i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 724, ptr noundef nonnull @.str.103) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !277
  %0 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @conn_khelper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_md_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_khelper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w_e_end_data_req(ptr noundef %w, i32 noundef %cancel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_device1 = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 1
  %0 = ptrtoint ptr %peer_device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer_device1, align 4
  %device2 = getelementptr inbounds %struct.drbd_peer_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cancel)
  %tobool.not = icmp eq i32 %cancel, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__drbd_free_peer_req(ptr noundef %3, ptr noundef %w, i32 noundef 0) #14
  tail call fastcc void @_dec_unacked(ptr noundef %3, ptr noundef nonnull @__func__.w_e_end_data_req, i32 noundef 1063)
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then11, label %if.else, !prof !272

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @drbd_send_block(ptr noundef %1, i32 noundef 1, ptr noundef %w) #14
  br label %if.end17

if.else:                                          ; preds = %if.end
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @drbd_ratelimit_state, ptr noundef nonnull @__func__.w_e_end_data_req) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.else.if.end15_crit_edge, label %do.end

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 10
  %sector = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sector, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device, ptr noundef nonnull @.str.39, i64 noundef %11) #17
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.else.if.end15_crit_edge
  %call16 = tail call i32 @drbd_send_ack(ptr noundef %1, i32 noundef 26, ptr noundef %w) #14
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %if.then11
  %err.0 = phi i32 [ %call, %if.then11 ], [ %call16, %if.end15 ]
  %unacked_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 40
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %unacked_cnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %unacked_cnt.i, i32 1, i32 3, i32 1) #14
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %unacked_cnt.i, ptr %unacked_cnt.i, i32 1, ptr elementtype(i32) %unacked_cnt.i) #14, !srcloc !284
  %call.i.i7.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %unacked_cnt.i, i32 noundef 4) #14
  %13 = ptrtoint ptr %unacked_cnt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %unacked_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp slt i32 %14, 0
  br i1 %cmp.i, label %do.end.i, label %if.end17._dec_unacked.exit_crit_edge

if.end17._dec_unacked.exit_crit_edge:             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %_dec_unacked.exit

do.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %15 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %18, i32 0, i32 10
  %call.i.i8.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %unacked_cnt.i, i32 noundef 4) #14
  %19 = ptrtoint ptr %unacked_cnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %unacked_cnt.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device.i, ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.w_e_end_data_req, i32 noundef 1077, i32 noundef %20) #17
  br label %_dec_unacked.exit

_dec_unacked.exit:                                ; preds = %do.end.i, %if.end17._dec_unacked.exit_crit_edge
  tail call fastcc void @move_to_net_ee_or_free(ptr noundef %3, ptr noundef %w)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool18.not = icmp eq i32 %err.0, 0
  br i1 %tobool18.not, label %_dec_unacked.exit.cleanup_crit_edge, label %do.end28, !prof !272

_dec_unacked.exit.cleanup_crit_edge:              ; preds = %_dec_unacked.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end28:                                         ; preds = %_dec_unacked.exit
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk29 = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %21 = ptrtoint ptr %vdisk29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vdisk29, align 4
  %part030 = getelementptr inbounds %struct.gendisk, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %part030 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %part030, align 4
  %bd_device31 = getelementptr inbounds %struct.block_device, ptr %24, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device31, ptr noundef nonnull @.str.41) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %_dec_unacked.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %err.0, %do.end28 ], [ 0, %_dec_unacked.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drbd_free_peer_req(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_dec_unacked(ptr noundef %device, ptr noundef %func, i32 noundef %line) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %unacked_cnt = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 40
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %unacked_cnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %unacked_cnt, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %unacked_cnt, ptr %unacked_cnt, i32 1, ptr elementtype(i32) %unacked_cnt) #14, !srcloc !284
  %call.i.i7 = tail call zeroext i1 @__kasan_check_read(ptr noundef %unacked_cnt, i32 noundef 4) #14
  %1 = ptrtoint ptr %unacked_cnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %unacked_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %3 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %6, i32 0, i32 10
  %call.i.i8 = tail call zeroext i1 @__kasan_check_read(ptr noundef %unacked_cnt, i32 noundef 4) #14
  %7 = ptrtoint ptr %unacked_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %unacked_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device, ptr noundef nonnull @.str.104, ptr noundef %func, i32 noundef %line, i32 noundef %8) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_send_block(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_send_ack(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @move_to_net_ee_or_free(ptr noundef %device, ptr noundef %peer_req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pages.i = getelementptr inbounds %struct.drbd_peer_request, ptr %peer_req, i32 0, i32 3
  %0 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages.i, align 4
  %tobool.not8.i = icmp eq ptr %1, null
  br i1 %tobool.not8.i, label %entry.if.else_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %page.09.i = phi ptr [ %14, %for.inc.i.land.rhs.i_crit_edge ], [ %1, %entry.land.rhs.i_crit_edge ]
  %private.i.i = getelementptr inbounds %struct.page, ptr %page.09.i, i32 0, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private.i.i, align 4
  %4 = inttoptr i32 %3 to ptr
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %4) #14, !srcloc !288
  %5 = getelementptr inbounds %struct.page, ptr %page.09.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !272

if.then.i.i.i:                                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i = add i32 %7, -1
  br label %page_count.exit.i

if.end.i.i.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %page.09.i to i32
  br label %page_count.exit.i

page_count.exit.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %8, %if.end.i.i.i ]
  %9 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #14
  %10 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp sgt i32 %11, 1
  br i1 %cmp.i, label %if.then, label %for.inc.i

for.inc.i:                                        ; preds = %page_count.exit.i
  %12 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %private.i.i, align 4
  %14 = inttoptr i32 %13 to ptr
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %for.inc.i.if.else_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

for.inc.i.if.else_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then:                                          ; preds = %page_count.exit.i
  %size = getelementptr inbounds %struct.drbd_peer_request, ptr %peer_req, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 8
  %sub = add i32 %16, 4095
  %shr = lshr i32 %sub, 12
  %pp_in_use_by_net = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 78
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pp_in_use_by_net, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %pp_in_use_by_net, i32 1, i32 3, i32 1) #14
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pp_in_use_by_net, ptr %pp_in_use_by_net, i32 %shr, ptr elementtype(i32) %pp_in_use_by_net) #14, !srcloc !269
  %pp_in_use = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 77
  %call.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pp_in_use, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %pp_in_use, i32 1, i32 3, i32 1) #14
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pp_in_use, ptr %pp_in_use, i32 %shr, ptr elementtype(i32) %pp_in_use) #14, !srcloc !284
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device, align 8
  %req_lock = getelementptr inbounds %struct.drbd_resource, ptr %20, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %req_lock) #14
  %net_ee = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 74
  %prev.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 74, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %call.i.i14 = tail call zeroext i1 @__list_add_valid(ptr noundef %peer_req, ptr noundef %22, ptr noundef %net_ee) #14
  br i1 %call.i.i14, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %peer_req, ptr %prev.i, align 4
  %24 = ptrtoint ptr %peer_req to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %net_ee, ptr %peer_req, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %peer_req, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %peer_req, ptr %22, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  %27 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device, align 8
  %req_lock3 = getelementptr inbounds %struct.drbd_resource, ptr %28, i32 0, i32 12
  tail call void @_raw_spin_unlock_irq(ptr noundef %req_lock3) #14
  tail call void @__wake_up(ptr noundef nonnull @drbd_pp_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.end

if.else:                                          ; preds = %for.inc.i.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @__drbd_free_peer_req(ptr noundef %device, ptr noundef %peer_req, i32 noundef 0) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %list_add_tail.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w_e_end_rsdata_req(ptr noundef %w, i32 noundef %cancel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_device1 = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 1
  %0 = ptrtoint ptr %peer_device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer_device1, align 4
  %device2 = getelementptr inbounds %struct.drbd_peer_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cancel)
  %tobool.not = icmp eq i32 %cancel, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__drbd_free_peer_req(ptr noundef %3, ptr noundef %w, i32 noundef 0) #14
  tail call fastcc void @_dec_unacked(ptr noundef %3, ptr noundef nonnull @__func__.w_e_end_rsdata_req, i32 noundef 1124)
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %state.i, align 8
  %5 = and i32 %bf.load.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.end.if.end9_crit_edge, label %if.end.i

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.end.i:                                         ; preds = %if.end
  %local_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i, ptr %local_cnt.i, i32 1, ptr elementtype(i32) %local_cnt.i) #14, !srcloc !269
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load2.i = load i32, ptr %state.i, align 8
  %8 = and i32 %bf.load2.i, 7168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5.not.i = icmp eq i32 %8, 0
  br i1 %cmp5.not.i, label %if.then6.i, label %if.then8

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @put_ldev(ptr noundef %3) #14
  br label %if.end9

if.then8:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %sector = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sector, align 8
  tail call void @drbd_rs_complete_io(ptr noundef %3, i64 noundef %10) #14
  tail call fastcc void @put_ldev(ptr noundef %3)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then6.i, %if.end.if.end9_crit_edge
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load = load i32, ptr %state.i, align 8
  %12 = and i32 %bf.load, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 352, i32 %12)
  %cmp = icmp eq i32 %12, 352
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %call11 = tail call i32 @drbd_send_ack(ptr noundef %1, i32 noundef 41, ptr noundef %w) #14
  br label %if.end66

if.else:                                          ; preds = %if.end9
  %flags = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 6
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 8
  %and = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp12 = icmp eq i32 %and, 0
  br i1 %cmp12, label %if.then19, label %if.else47, !prof !272

if.then19:                                        ; preds = %if.else
  %15 = and i32 %bf.load, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp24.not = icmp eq i32 %15, 0
  br i1 %cmp24.not, label %if.else41, label %if.then31, !prof !271

if.then31:                                        ; preds = %if.then19
  %rs_pending_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 39
  %call.i.i.i116 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rs_pending_cnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %rs_pending_cnt.i, i32 1, i32 3, i32 1) #14
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rs_pending_cnt.i, ptr %rs_pending_cnt.i, i32 1, ptr elementtype(i32) %rs_pending_cnt.i) #14, !srcloc !269
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 8
  %and33 = and i32 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.then31.if.else38_crit_edge, label %land.lhs.true

if.then31.if.else38_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else38

land.lhs.true:                                    ; preds = %if.then31
  %pages.i = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 3
  %19 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pages.i, align 4
  %tobool.not53.i = icmp eq ptr %20, null
  br i1 %tobool.not53.i, label %land.lhs.true.if.then36_crit_edge, label %land.rhs.preheader.i

land.lhs.true.if.then36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then36

land.rhs.preheader.i:                             ; preds = %land.lhs.true
  %size.i = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 5, i32 2
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i, align 8
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc21.i.land.rhs.i_crit_edge, %land.rhs.preheader.i
  %page.055.i = phi ptr [ %52, %for.inc21.i.land.rhs.i_crit_edge ], [ %20, %land.rhs.preheader.i ]
  %len.054.i = phi i32 [ %sub.i, %for.inc21.i.land.rhs.i_crit_edge ], [ %22, %land.rhs.preheader.i ]
  %private.i.i = getelementptr inbounds %struct.page, ptr %page.055.i, i32 0, i32 1, i32 0, i32 3
  %23 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %private.i.i, align 4
  %25 = inttoptr i32 %24 to ptr
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %25) #14, !srcloc !288
  %26 = tail call i32 @llvm.umin.i32(i32 %len.054.i, i32 4096) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %27 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %27, 512
  %28 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %31, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !279
  %32 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i1.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 213
  %36 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %37, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !280
  %call.i.i.i117 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %page.055.i, i32 noundef %or.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp651.not.i = icmp ult i32 %26, 4
  br i1 %cmp651.not.i, label %land.rhs.i.for.inc21.i_crit_edge, label %for.body7.preheader.i

land.rhs.i.for.inc21.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc21.i

for.body7.preheader.i:                            ; preds = %land.rhs.i
  %div39.i = lshr i32 %26, 2
  br label %for.body7.i

for.cond5.i:                                      ; preds = %for.body7.i
  %inc.i = add nuw nsw i32 %i3.052.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div39.i
  br i1 %exitcond.not.i, label %for.cond5.i.for.inc21.i_crit_edge, label %for.cond5.i.for.body7.i_crit_edge

for.cond5.i.for.body7.i_crit_edge:                ; preds = %for.cond5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body7.i

for.cond5.i.for.inc21.i_crit_edge:                ; preds = %for.cond5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc21.i

for.body7.i:                                      ; preds = %for.cond5.i.for.body7.i_crit_edge, %for.body7.preheader.i
  %i3.052.i = phi i32 [ %inc.i, %for.cond5.i.for.body7.i_crit_edge ], [ 0, %for.body7.preheader.i ]
  %arrayidx.i = getelementptr i32, ptr %call.i.i.i117, i32 %i3.052.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool8.not.i = icmp eq i32 %39, 0
  br i1 %tobool8.not.i, label %for.cond5.i, label %all_zero.exit

for.inc21.i:                                      ; preds = %for.cond5.i.for.inc21.i_crit_edge, %land.rhs.i.for.inc21.i_crit_edge
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i117) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !281
  %40 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i1.i40.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i1.i40.i to ptr
  %task.i.i.i41.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task.i.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task.i.i.i41.i, align 8
  %pagefault_disabled.i.i.i42.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 213
  %44 = ptrtoint ptr %pagefault_disabled.i.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pagefault_disabled.i.i.i42.i, align 8
  %dec.i.i.i43.i = add i32 %45, -1
  store i32 %dec.i.i.i43.i, ptr %pagefault_disabled.i.i.i42.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !282
  %46 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i44.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i44.i to ptr
  %preempt_count.i.i.i45.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i45.i, align 4
  %sub.i.i46.i = add i32 %49, -1
  store volatile i32 %sub.i.i46.i, ptr %preempt_count.i.i.i45.i, align 4
  %sub.i = sub i32 %len.054.i, %26
  %50 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %private.i.i, align 4
  %52 = inttoptr i32 %51 to ptr
  %tobool.not.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i, label %for.inc21.i.if.then36_crit_edge, label %for.inc21.i.land.rhs.i_crit_edge

for.inc21.i.land.rhs.i_crit_edge:                 ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

for.inc21.i.if.then36_crit_edge:                  ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then36

all_zero.exit:                                    ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i117) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !281
  %53 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i1.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 213
  %57 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %58, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !282
  %59 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %62, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  br label %if.else38

if.then36:                                        ; preds = %for.inc21.i.if.then36_crit_edge, %land.lhs.true.if.then36_crit_edge
  %call37 = tail call i32 @drbd_send_rs_deallocated(ptr noundef %1, ptr noundef %w) #14
  br label %if.end66

if.else38:                                        ; preds = %all_zero.exit, %if.then31.if.else38_crit_edge
  %call39 = tail call i32 @drbd_send_block(ptr noundef %1, i32 noundef 2, ptr noundef %w) #14
  br label %if.end66

if.else41:                                        ; preds = %if.then19
  %call42 = tail call i32 @___ratelimit(ptr noundef nonnull @drbd_ratelimit_state, ptr noundef nonnull @__func__.w_e_end_rsdata_req) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.else41.if.end66_crit_edge, label %do.end

if.else41.if.end66_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

do.end:                                           ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %63 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %66, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device, ptr noundef nonnull @.str.43) #17
  br label %if.end66

if.else47:                                        ; preds = %if.else
  %call48 = tail call i32 @___ratelimit(ptr noundef nonnull @drbd_ratelimit_state, ptr noundef nonnull @__func__.w_e_end_rsdata_req) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.else47.if.end59_crit_edge, label %do.end53

if.else47.if.end59_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

do.end53:                                         ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk54 = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %67 = ptrtoint ptr %vdisk54 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vdisk54, align 4
  %part055 = getelementptr inbounds %struct.gendisk, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %part055 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %part055, align 4
  %bd_device56 = getelementptr inbounds %struct.block_device, ptr %70, i32 0, i32 10
  %sector58 = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 5, i32 1
  %71 = ptrtoint ptr %sector58 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %sector58, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device56, ptr noundef nonnull @.str.45, i64 noundef %72) #17
  br label %if.end59

if.end59:                                         ; preds = %do.end53, %if.else47.if.end59_crit_edge
  %call60 = tail call i32 @drbd_send_ack(ptr noundef %1, i32 noundef 27, ptr noundef %w) #14
  %sector62 = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 5, i32 1
  %73 = ptrtoint ptr %sector62 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %sector62, align 8
  %size = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 5, i32 2
  %75 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %size, align 8
  %call64 = tail call i32 @__drbd_change_sync(ptr noundef %3, i64 noundef %74, i32 noundef %76, i32 noundef 0) #14
  br label %if.end66

if.end66:                                         ; preds = %if.end59, %do.end, %if.else41.if.end66_crit_edge, %if.else38, %if.then36, %if.then10
  %err.0 = phi i32 [ %call11, %if.then10 ], [ %call37, %if.then36 ], [ %call39, %if.else38 ], [ %call60, %if.end59 ], [ 0, %do.end ], [ 0, %if.else41.if.end66_crit_edge ]
  %unacked_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 40
  %call.i.i.i118 = tail call zeroext i1 @__kasan_check_write(ptr noundef %unacked_cnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %unacked_cnt.i, i32 1, i32 3, i32 1) #14
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %unacked_cnt.i, ptr %unacked_cnt.i, i32 1, ptr elementtype(i32) %unacked_cnt.i) #14, !srcloc !284
  %call.i.i7.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %unacked_cnt.i, i32 noundef 4) #14
  %78 = ptrtoint ptr %unacked_cnt.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %unacked_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp.i119 = icmp slt i32 %79, 0
  br i1 %cmp.i119, label %do.end.i, label %if.end66._dec_unacked.exit_crit_edge

if.end66._dec_unacked.exit_crit_edge:             ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %_dec_unacked.exit

do.end.i:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %80 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %81, i32 0, i32 7
  %82 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %83, i32 0, i32 10
  %call.i.i8.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %unacked_cnt.i, i32 noundef 4) #14
  %84 = ptrtoint ptr %unacked_cnt.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %unacked_cnt.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device.i, ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.w_e_end_rsdata_req, i32 noundef 1159, i32 noundef %85) #17
  br label %_dec_unacked.exit

_dec_unacked.exit:                                ; preds = %do.end.i, %if.end66._dec_unacked.exit_crit_edge
  tail call fastcc void @move_to_net_ee_or_free(ptr noundef %3, ptr noundef %w)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool67.not = icmp eq i32 %err.0, 0
  br i1 %tobool67.not, label %_dec_unacked.exit.cleanup_crit_edge, label %do.end77, !prof !272

_dec_unacked.exit.cleanup_crit_edge:              ; preds = %_dec_unacked.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end77:                                         ; preds = %_dec_unacked.exit
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk78 = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %86 = ptrtoint ptr %vdisk78 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %vdisk78, align 4
  %part079 = getelementptr inbounds %struct.gendisk, ptr %87, i32 0, i32 7
  %88 = ptrtoint ptr %part079 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %part079, align 4
  %bd_device80 = getelementptr inbounds %struct.block_device, ptr %89, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device80, ptr noundef nonnull @.str.41) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %_dec_unacked.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %err.0, %do.end77 ], [ 0, %_dec_unacked.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_send_rs_deallocated(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w_e_end_csum_rs_req(ptr noundef %w, i32 noundef %cancel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_device1 = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 1
  %0 = ptrtoint ptr %peer_device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer_device1, align 4
  %device2 = getelementptr inbounds %struct.drbd_peer_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cancel)
  %tobool.not = icmp eq i32 %cancel, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__drbd_free_peer_req(ptr noundef %3, ptr noundef %w, i32 noundef 0) #14
  tail call fastcc void @_dec_unacked(ptr noundef %3, ptr noundef nonnull @__func__.w_e_end_csum_rs_req, i32 noundef 1180)
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %state.i, align 8
  %5 = and i32 %bf.load.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i129 = icmp eq i32 %5, 0
  br i1 %cmp.i129, label %if.end.if.end9_crit_edge, label %if.end.i130

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.end.i130:                                      ; preds = %if.end
  %local_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i, ptr %local_cnt.i, i32 1, ptr elementtype(i32) %local_cnt.i) #14, !srcloc !269
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load2.i = load i32, ptr %state.i, align 8
  %8 = and i32 %bf.load2.i, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5.not.i = icmp eq i32 %8, 0
  br i1 %cmp5.not.i, label %if.then6.i, label %if.then8

if.then6.i:                                       ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @put_ldev(ptr noundef %3) #14
  br label %if.end9

if.then8:                                         ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #16
  %sector = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sector, align 8
  tail call void @drbd_rs_complete_io(ptr noundef %3, i64 noundef %10) #14
  tail call fastcc void @put_ldev(ptr noundef %3)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then6.i, %if.end.if.end9_crit_edge
  %11 = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %flags = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 6
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  %and = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then16, label %if.else54, !prof !272

if.then16:                                        ; preds = %if.end9
  %connection = getelementptr inbounds %struct.drbd_peer_device, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %connection, align 4
  %csums_tfm = getelementptr inbounds %struct.drbd_connection, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %csums_tfm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csums_tfm, align 4
  %tobool17.not = icmp eq ptr %19, null
  br i1 %tobool17.not, label %if.then16.if.else_crit_edge, label %if.then18

if.then16.if.else_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then18:                                        ; preds = %if.then16
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %19, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %21, i32 -128
  %22 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %digestsize.i, align 128
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp23 = icmp eq i32 %23, %25
  br i1 %cmp23, label %if.then18.if.end8.i_crit_edge, label %do.end

if.then18.if.end8.i_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

do.end:                                           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %26 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %29, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 1197) #17
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end, %if.then18.if.end8.i_crit_edge
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3072) #19
  %tobool31.not = icmp eq ptr %call9.i, null
  br i1 %tobool31.not, label %if.end8.i.if.else_crit_edge, label %if.then32

if.end8.i.if.else_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then32:                                        ; preds = %if.end8.i
  %30 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %connection, align 4
  %csums_tfm34 = getelementptr inbounds %struct.drbd_connection, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %csums_tfm34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %csums_tfm34, align 4
  tail call void @drbd_csum_ee(ptr noundef %33, ptr noundef %w, ptr noundef nonnull %call9.i)
  %digest35 = getelementptr inbounds %struct.digest_info, ptr %13, i32 0, i32 1
  %34 = ptrtoint ptr %digest35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %digest35, align 4
  %bcmp = tail call i32 @bcmp(ptr nonnull %call9.i, ptr %35, i32 %23) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool37.not = icmp eq i32 %bcmp, 0
  tail call void @kfree(ptr noundef nonnull %call9.i) #14
  br i1 %tobool37.not, label %if.then42, label %if.then32.if.else_crit_edge

if.then32.if.else_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then42:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  %sector44 = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 5, i32 1
  %36 = ptrtoint ptr %sector44 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %sector44, align 8
  %size = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 5, i32 2
  %38 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size, align 8
  %call46 = tail call i32 @__drbd_change_sync(ptr noundef %3, i64 noundef %37, i32 noundef %39, i32 noundef 2) #14
  %40 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size, align 8
  %shr = lshr i32 %41, 12
  %rs_same_csum = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 52
  %42 = ptrtoint ptr %rs_same_csum to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rs_same_csum, align 4
  %add = add i32 %43, %shr
  store i32 %add, ptr %rs_same_csum, align 4
  %call49 = tail call i32 @drbd_send_ack(ptr noundef %1, i32 noundef 34, ptr noundef %w) #14
  br label %if.end66

if.else:                                          ; preds = %if.then32.if.else_crit_edge, %if.end8.i.if.else_crit_edge, %if.then16.if.else_crit_edge
  %rs_pending_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 39
  %call.i.i.i131 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rs_pending_cnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %rs_pending_cnt.i, i32 1, i32 3, i32 1) #14
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rs_pending_cnt.i, ptr %rs_pending_cnt.i, i32 1, ptr elementtype(i32) %rs_pending_cnt.i) #14, !srcloc !269
  %45 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 -1, ptr %11, align 8
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 8
  %and51 = and i32 %47, -65
  store i32 %and51, ptr %flags, align 8
  tail call void @kfree(ptr noundef %13) #14
  %call52 = tail call i32 @drbd_send_block(ptr noundef %1, i32 noundef 2, ptr noundef %w) #14
  br label %if.end66

if.else54:                                        ; preds = %if.end9
  %call55 = tail call i32 @drbd_send_ack(ptr noundef %1, i32 noundef 27, ptr noundef %w) #14
  %call56 = tail call i32 @___ratelimit(ptr noundef nonnull @drbd_ratelimit_state, ptr noundef nonnull @__func__.w_e_end_csum_rs_req) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.else54.if.end66_crit_edge, label %do.end61

if.else54.if.end66_crit_edge:                     ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

do.end61:                                         ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk62 = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %48 = ptrtoint ptr %vdisk62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vdisk62, align 4
  %part063 = getelementptr inbounds %struct.gendisk, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %part063 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %part063, align 4
  %bd_device64 = getelementptr inbounds %struct.block_device, ptr %51, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device64, ptr noundef nonnull @.str.51) #17
  br label %if.end66

if.end66:                                         ; preds = %do.end61, %if.else54.if.end66_crit_edge, %if.else, %if.then42
  %err.0 = phi i32 [ %call49, %if.then42 ], [ %call52, %if.else ], [ %call55, %do.end61 ], [ %call55, %if.else54.if.end66_crit_edge ]
  %unacked_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 40
  %call.i.i.i132 = tail call zeroext i1 @__kasan_check_write(ptr noundef %unacked_cnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %unacked_cnt.i, i32 1, i32 3, i32 1) #14
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %unacked_cnt.i, ptr %unacked_cnt.i, i32 1, ptr elementtype(i32) %unacked_cnt.i) #14, !srcloc !284
  %call.i.i7.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %unacked_cnt.i, i32 noundef 4) #14
  %53 = ptrtoint ptr %unacked_cnt.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %unacked_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i133 = icmp slt i32 %54, 0
  br i1 %cmp.i133, label %do.end.i, label %if.end66._dec_unacked.exit_crit_edge

if.end66._dec_unacked.exit_crit_edge:             ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %_dec_unacked.exit

do.end.i:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %55 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %56, i32 0, i32 7
  %57 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %58, i32 0, i32 10
  %call.i.i8.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %unacked_cnt.i, i32 noundef 4) #14
  %59 = ptrtoint ptr %unacked_cnt.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %unacked_cnt.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device.i, ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.w_e_end_csum_rs_req, i32 noundef 1224, i32 noundef %60) #17
  br label %_dec_unacked.exit

_dec_unacked.exit:                                ; preds = %do.end.i, %if.end66._dec_unacked.exit_crit_edge
  tail call fastcc void @move_to_net_ee_or_free(ptr noundef %3, ptr noundef %w)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool67.not = icmp eq i32 %err.0, 0
  br i1 %tobool67.not, label %_dec_unacked.exit.cleanup_crit_edge, label %do.end77, !prof !272

_dec_unacked.exit.cleanup_crit_edge:              ; preds = %_dec_unacked.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end77:                                         ; preds = %_dec_unacked.exit
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk78 = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %61 = ptrtoint ptr %vdisk78 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vdisk78, align 4
  %part079 = getelementptr inbounds %struct.gendisk, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %part079 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %part079, align 4
  %bd_device80 = getelementptr inbounds %struct.block_device, ptr %64, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device80, ptr noundef nonnull @.str.54) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %_dec_unacked.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %err.0, %do.end77 ], [ 0, %_dec_unacked.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w_e_end_ov_req(ptr noundef %w, i32 noundef %cancel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_device1 = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 1
  %0 = ptrtoint ptr %peer_device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer_device1, align 4
  %device2 = getelementptr inbounds %struct.drbd_peer_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %sector3 = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %sector3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sector3, align 8
  %size5 = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cancel)
  %tobool.not = icmp eq i32 %cancel, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge, !prof !272

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %connection = getelementptr inbounds %struct.drbd_peer_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connection, align 4
  %verify_tfm = getelementptr inbounds %struct.drbd_connection, ptr %9, i32 0, i32 28
  %10 = ptrtoint ptr %verify_tfm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %verify_tfm, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %11, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %13, i32 -128
  %14 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %digestsize.i, align 128
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3072) #19
  %tobool9.not = icmp eq ptr %call9.i, null
  br i1 %tobool9.not, label %if.end.out_crit_edge, label %if.end11

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end11:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 6
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 8
  %and = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.then21, label %if.else, !prof !272

if.then21:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %connection, align 4
  %verify_tfm23 = getelementptr inbounds %struct.drbd_connection, ptr %19, i32 0, i32 28
  %20 = ptrtoint ptr %verify_tfm23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %verify_tfm23, align 4
  tail call void @drbd_csum_ee(ptr noundef %21, ptr noundef %w, ptr noundef nonnull %call9.i)
  br label %if.end24

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %22 = call ptr @memset(ptr %call9.i, i32 0, i32 %15)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then21
  tail call void @__drbd_free_peer_req(ptr noundef %3, ptr noundef %w, i32 noundef 0) #14
  %rs_pending_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 39
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rs_pending_cnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %rs_pending_cnt.i, i32 1, i32 3, i32 1) #14
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rs_pending_cnt.i, ptr %rs_pending_cnt.i, i32 1, ptr elementtype(i32) %rs_pending_cnt.i) #14, !srcloc !269
  %call25 = tail call i32 @drbd_send_drequest_csum(ptr noundef %1, i64 noundef %5, i32 noundef %7, ptr noundef nonnull %call9.i, i32 noundef %15, i32 noundef 31) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.out.thread_crit_edge, label %if.then27

if.end24.out.thread_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread

if.then27:                                        ; preds = %if.end24
  %call.i.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rs_pending_cnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %rs_pending_cnt.i, i32 1, i32 3, i32 1) #14
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rs_pending_cnt.i, ptr %rs_pending_cnt.i, i32 1, ptr elementtype(i32) %rs_pending_cnt.i) #14, !srcloc !284
  %call.i.i7.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rs_pending_cnt.i, i32 noundef 4) #14
  %25 = ptrtoint ptr %rs_pending_cnt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %rs_pending_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i55 = icmp slt i32 %26, 0
  br i1 %cmp.i55, label %do.end.i, label %if.then27.out.thread_crit_edge

if.then27.out.thread_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread

do.end.i:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %27 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %30, i32 0, i32 10
  %call.i.i8.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rs_pending_cnt.i, i32 noundef 4) #14
  %31 = ptrtoint ptr %rs_pending_cnt.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %rs_pending_cnt.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device.i, ptr noundef nonnull @.str.106, ptr noundef nonnull @__func__.w_e_end_ov_req, i32 noundef 1268, i32 noundef %32) #17
  br label %out.thread

out.thread:                                       ; preds = %do.end.i, %if.then27.out.thread_crit_edge, %if.end24.out.thread_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #14
  br label %if.end31

out:                                              ; preds = %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ 0, %entry.out_crit_edge ], [ 1, %if.end.out_crit_edge ]
  %tobool29.not = icmp eq ptr %w, null
  br i1 %tobool29.not, label %out.if.end31_crit_edge, label %if.then30

out.if.end31_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then30:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__drbd_free_peer_req(ptr noundef %3, ptr noundef nonnull %w, i32 noundef 0) #14
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %out.if.end31_crit_edge, %out.thread
  %err.073 = phi i32 [ %call25, %out.thread ], [ %err.0, %if.then30 ], [ %err.0, %out.if.end31_crit_edge ]
  %unacked_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 40
  %call.i.i.i57 = tail call zeroext i1 @__kasan_check_write(ptr noundef %unacked_cnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %unacked_cnt.i, i32 1, i32 3, i32 1) #14
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %unacked_cnt.i, ptr %unacked_cnt.i, i32 1, ptr elementtype(i32) %unacked_cnt.i) #14, !srcloc !284
  %call.i.i7.i58 = tail call zeroext i1 @__kasan_check_read(ptr noundef %unacked_cnt.i, i32 noundef 4) #14
  %34 = ptrtoint ptr %unacked_cnt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %unacked_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i59 = icmp slt i32 %35, 0
  br i1 %cmp.i59, label %do.end.i64, label %if.end31._dec_unacked.exit_crit_edge

if.end31._dec_unacked.exit_crit_edge:             ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %_dec_unacked.exit

do.end.i64:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk.i60 = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %36 = ptrtoint ptr %vdisk.i60 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vdisk.i60, align 4
  %part0.i61 = getelementptr inbounds %struct.gendisk, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %part0.i61 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %part0.i61, align 4
  %bd_device.i62 = getelementptr inbounds %struct.block_device, ptr %39, i32 0, i32 10
  %call.i.i8.i63 = tail call zeroext i1 @__kasan_check_read(ptr noundef %unacked_cnt.i, i32 noundef 4) #14
  %40 = ptrtoint ptr %unacked_cnt.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %unacked_cnt.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device.i62, ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.w_e_end_ov_req, i32 noundef 1274, i32 noundef %41) #17
  br label %_dec_unacked.exit

_dec_unacked.exit:                                ; preds = %do.end.i64, %if.end31._dec_unacked.exit_crit_edge
  ret i32 %err.073
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_send_drequest_csum(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_ov_out_of_sync_found(ptr noundef %device, i64 noundef %sector, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ov_last_oos_start = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 60
  %0 = ptrtoint ptr %ov_last_oos_start to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ov_last_oos_start, align 8
  %ov_last_oos_size = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 61
  %2 = ptrtoint ptr %ov_last_oos_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ov_last_oos_size, align 8
  %add = add i64 %3, %1
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %sector)
  %cmp = icmp eq i64 %add, %sector
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %shr = ashr i32 %size, 9
  %conv = sext i32 %shr to i64
  %add2 = add i64 %3, %conv
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %ov_last_oos_start to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %sector, ptr %ov_last_oos_start, align 8
  %shr4 = ashr i32 %size, 9
  %conv5 = sext i32 %shr4 to i64
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i64 [ %conv5, %if.else ], [ %add2, %if.then ]
  %5 = ptrtoint ptr %ov_last_oos_size to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %storemerge, ptr %ov_last_oos_size, align 8
  %call = tail call i32 @__drbd_change_sync(ptr noundef %device, i64 noundef %sector, i32 noundef %size, i32 noundef 1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w_e_end_ov_reply(ptr noundef %w, i32 noundef %cancel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_device1 = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 1
  %0 = ptrtoint ptr %peer_device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer_device1, align 4
  %device2 = getelementptr inbounds %struct.drbd_peer_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %sector3 = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %sector3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sector3, align 8
  %size5 = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cancel)
  %tobool.not = icmp eq i32 %cancel, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__drbd_free_peer_req(ptr noundef %3, ptr noundef %w, i32 noundef 0) #14
  tail call fastcc void @_dec_unacked(ptr noundef %3, ptr noundef nonnull @__func__.w_e_end_ov_reply, i32 noundef 1304)
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 27
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i = load i32, ptr %state.i, align 8
  %9 = and i32 %bf.load.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i115 = icmp eq i32 %9, 0
  br i1 %cmp.i115, label %if.end.if.end14_crit_edge, label %if.end.i116

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.end.i116:                                      ; preds = %if.end
  %local_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i, ptr %local_cnt.i, i32 1, ptr elementtype(i32) %local_cnt.i) #14, !srcloc !269
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load2.i = load i32, ptr %state.i, align 8
  %12 = and i32 %bf.load2.i, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp5.not.i = icmp eq i32 %12, 0
  br i1 %cmp5.not.i, label %if.then6.i, label %if.then11

if.then6.i:                                       ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @put_ldev(ptr noundef %3) #14
  br label %if.end14

if.then11:                                        ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %sector3 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %sector3, align 8
  tail call void @drbd_rs_complete_io(ptr noundef %3, i64 noundef %14) #14
  tail call fastcc void @put_ldev(ptr noundef %3)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then6.i, %if.end.if.end14_crit_edge
  %15 = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %flags = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 6
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 8
  %and = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then21, label %if.end14.if.then43.sink.split_crit_edge, !prof !272

if.end14.if.then43.sink.split_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then43.sink.split

if.then21:                                        ; preds = %if.end14
  %connection = getelementptr inbounds %struct.drbd_peer_device, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %connection, align 4
  %verify_tfm = getelementptr inbounds %struct.drbd_connection, ptr %21, i32 0, i32 28
  %22 = ptrtoint ptr %verify_tfm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %verify_tfm, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %23, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %25, i32 -128
  %26 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %digestsize.i, align 128
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %27, i32 noundef 3072) #19
  %tobool24.not = icmp eq ptr %call9.i, null
  br i1 %tobool24.not, label %if.then21.if.then43.sink.split_crit_edge, label %if.then25

if.then21.if.then43.sink.split_crit_edge:         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then43.sink.split

if.then25:                                        ; preds = %if.then21
  %28 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %connection, align 4
  %verify_tfm27 = getelementptr inbounds %struct.drbd_connection, ptr %29, i32 0, i32 28
  %30 = ptrtoint ptr %verify_tfm27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %verify_tfm27, align 4
  tail call void @drbd_csum_ee(ptr noundef %31, ptr noundef %w, ptr noundef nonnull %call9.i)
  %32 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %33)
  %cmp29 = icmp eq i32 %27, %33
  br i1 %cmp29, label %if.then25.do.end34_crit_edge, label %do.end

if.then25.do.end34_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end34

do.end:                                           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %34 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %37, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 1323) #17
  br label %do.end34

do.end34:                                         ; preds = %do.end, %if.then25.do.end34_crit_edge
  %digest35 = getelementptr inbounds %struct.digest_info, ptr %17, i32 0, i32 1
  %38 = ptrtoint ptr %digest35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %digest35, align 4
  %bcmp = tail call i32 @bcmp(ptr nonnull %call9.i, ptr %39, i32 %27) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool37.not = icmp eq i32 %bcmp, 0
  tail call void @kfree(ptr noundef nonnull %call9.i) #14
  tail call void @__drbd_free_peer_req(ptr noundef %3, ptr noundef %w, i32 noundef 0) #14
  br i1 %tobool37.not, label %if.else, label %do.end34.if.then43_crit_edge

do.end34.if.then43_crit_edge:                     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then43

if.then43.sink.split:                             ; preds = %if.then21.if.then43.sink.split_crit_edge, %if.end14.if.then43.sink.split_crit_edge
  tail call void @__drbd_free_peer_req(ptr noundef %3, ptr noundef %w, i32 noundef 0) #14
  br label %if.then43

if.then43:                                        ; preds = %if.then43.sink.split, %do.end34.if.then43_crit_edge
  %ov_last_oos_start.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 60
  %40 = ptrtoint ptr %ov_last_oos_start.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ov_last_oos_start.i, align 8
  %ov_last_oos_size.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 61
  %42 = ptrtoint ptr %ov_last_oos_size.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ov_last_oos_size.i, align 8
  %add.i = add i64 %43, %41
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %5)
  %cmp.i117 = icmp eq i64 %add.i, %5
  br i1 %cmp.i117, label %if.then.i118, label %if.else.i

if.then.i118:                                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i = ashr i32 %7, 9
  %conv.i = sext i32 %shr.i to i64
  %add2.i = add i64 %43, %conv.i
  br label %drbd_ov_out_of_sync_found.exit

if.else.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %ov_last_oos_start.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %5, ptr %ov_last_oos_start.i, align 8
  %shr4.i = ashr i32 %7, 9
  %conv5.i = sext i32 %shr4.i to i64
  br label %drbd_ov_out_of_sync_found.exit

drbd_ov_out_of_sync_found.exit:                   ; preds = %if.else.i, %if.then.i118
  %storemerge.i = phi i64 [ %conv5.i, %if.else.i ], [ %add2.i, %if.then.i118 ]
  %45 = ptrtoint ptr %ov_last_oos_size.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %storemerge.i, ptr %ov_last_oos_size.i, align 8
  %call.i = tail call i32 @__drbd_change_sync(ptr noundef %3, i64 noundef %5, i32 noundef %7, i32 noundef 1) #14
  br label %if.end44

if.else:                                          ; preds = %do.end34
  %ov_last_oos_size.i120 = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 61
  %46 = ptrtoint ptr %ov_last_oos_size.i120 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ov_last_oos_size.i120, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %tobool.not.i = icmp eq i64 %47, 0
  br i1 %tobool.not.i, label %if.else.ov_out_of_sync_print.exit_crit_edge, label %do.end.i

if.else.ov_out_of_sync_print.exit_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %ov_out_of_sync_print.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %48 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %51, i32 0, i32 10
  %ov_last_oos_start.i121 = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 60
  %52 = ptrtoint ptr %ov_last_oos_start.i121 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %ov_last_oos_start.i121, align 8
  %conv.i122 = trunc i64 %47 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device.i, ptr noundef nonnull @.str.99, i64 noundef %53, i32 noundef %conv.i122) #17
  br label %ov_out_of_sync_print.exit

ov_out_of_sync_print.exit:                        ; preds = %do.end.i, %if.else.ov_out_of_sync_print.exit_crit_edge
  %54 = ptrtoint ptr %ov_last_oos_size.i120 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %ov_last_oos_size.i120, align 8
  br label %if.end44

if.end44:                                         ; preds = %ov_out_of_sync_print.exit, %drbd_ov_out_of_sync_found.exit
  %cond = phi i64 [ 4711, %ov_out_of_sync_print.exit ], [ 4712, %drbd_ov_out_of_sync_found.exit ]
  %call46 = tail call i32 @drbd_send_ack_ex(ptr noundef %1, i32 noundef 32, i64 noundef %5, i32 noundef %7, i64 noundef %cond) #14
  %unacked_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 40
  %call.i.i.i124 = tail call zeroext i1 @__kasan_check_write(ptr noundef %unacked_cnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %unacked_cnt.i, i32 1, i32 3, i32 1) #14
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %unacked_cnt.i, ptr %unacked_cnt.i, i32 1, ptr elementtype(i32) %unacked_cnt.i) #14, !srcloc !284
  %call.i.i7.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %unacked_cnt.i, i32 noundef 4) #14
  %56 = ptrtoint ptr %unacked_cnt.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %unacked_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i125 = icmp slt i32 %57, 0
  br i1 %cmp.i125, label %do.end.i129, label %if.end44._dec_unacked.exit_crit_edge

if.end44._dec_unacked.exit_crit_edge:             ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %_dec_unacked.exit

do.end.i129:                                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk.i126 = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %58 = ptrtoint ptr %vdisk.i126 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vdisk.i126, align 4
  %part0.i127 = getelementptr inbounds %struct.gendisk, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %part0.i127 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %part0.i127, align 4
  %bd_device.i128 = getelementptr inbounds %struct.block_device, ptr %61, i32 0, i32 10
  %call.i.i8.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %unacked_cnt.i, i32 noundef 4) #14
  %62 = ptrtoint ptr %unacked_cnt.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %unacked_cnt.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device.i128, ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.w_e_end_ov_reply, i32 noundef 1343, i32 noundef %63) #17
  br label %_dec_unacked.exit

_dec_unacked.exit:                                ; preds = %do.end.i129, %if.end44._dec_unacked.exit_crit_edge
  %ov_left = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 62
  %64 = ptrtoint ptr %ov_left to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ov_left, align 8
  %dec = add i32 %65, -1
  store i32 %dec, ptr %ov_left, align 8
  %and48 = and i32 %dec, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %cmp49.not = icmp eq i32 %and48, 0
  br i1 %cmp49.not, label %_dec_unacked.exit.if.end52_crit_edge, label %if.then50

_dec_unacked.exit.if.end52_crit_edge:             ; preds = %_dec_unacked.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.then50:                                        ; preds = %_dec_unacked.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @drbd_advance_rs_marks(ptr noundef %3, i32 noundef %dec) #14
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %_dec_unacked.exit.if.end52_crit_edge
  %peer_devices.i.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 1
  %66 = ptrtoint ptr %peer_devices.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %peer_devices.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %67, %peer_devices.i.i
  %spec.select.i.i131 = select i1 %cmp.not.i.i, ptr null, ptr %67
  %connection.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i131, i32 0, i32 2
  %68 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %connection.i, align 4
  %agreed_pro_version.i = getelementptr inbounds %struct.drbd_connection, ptr %69, i32 0, i32 19
  %70 = ptrtoint ptr %agreed_pro_version.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %agreed_pro_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %71)
  %cmp.i132 = icmp sgt i32 %71, 96
  br i1 %cmp.i132, label %verify_can_do_stop_sector.exit, label %if.end52.land.end_crit_edge

if.end52.land.end_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

verify_can_do_stop_sector.exit:                   ; preds = %if.end52
  %72 = ptrtoint ptr %peer_devices.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %peer_devices.i.i, align 4
  %cmp.not.i7.i = icmp eq ptr %73, %peer_devices.i.i
  %spec.select.i8.i = select i1 %cmp.not.i7.i, ptr null, ptr %73
  %connection2.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i8.i, i32 0, i32 2
  %74 = ptrtoint ptr %connection2.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %connection2.i, align 4
  %agreed_pro_version3.i = getelementptr inbounds %struct.drbd_connection, ptr %75, i32 0, i32 19
  %76 = ptrtoint ptr %agreed_pro_version3.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %agreed_pro_version3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %77)
  %cmp4.i.not = icmp eq i32 %77, 100
  br i1 %cmp4.i.not, label %verify_can_do_stop_sector.exit.land.end_crit_edge, label %land.rhs

verify_can_do_stop_sector.exit.land.end_crit_edge: ; preds = %verify_can_do_stop_sector.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %verify_can_do_stop_sector.exit
  call void @__sanitizer_cov_trace_pc() #16
  %shr = lshr i32 %7, 9
  %conv = zext i32 %shr to i64
  %add = add i64 %5, %conv
  %ov_stop_sector = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 58
  %78 = ptrtoint ptr %ov_stop_sector to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %ov_stop_sector, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %79)
  %cmp54 = icmp uge i64 %add, %79
  br label %land.end

land.end:                                         ; preds = %land.rhs, %verify_can_do_stop_sector.exit.land.end_crit_edge, %if.end52.land.end_crit_edge
  %80 = phi i1 [ false, %verify_can_do_stop_sector.exit.land.end_crit_edge ], [ %cmp54, %land.rhs ], [ false, %if.end52.land.end_crit_edge ]
  %81 = ptrtoint ptr %ov_left to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ov_left, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp57 = icmp eq i32 %82, 0
  %brmerge = select i1 %cmp57, i1 true, i1 %80
  br i1 %brmerge, label %if.then61, label %land.end.cleanup_crit_edge

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then61:                                        ; preds = %land.end
  %ov_last_oos_size.i133 = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 61
  %83 = ptrtoint ptr %ov_last_oos_size.i133 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %ov_last_oos_size.i133, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %84)
  %tobool.not.i134 = icmp eq i64 %84, 0
  br i1 %tobool.not.i134, label %if.then61.ov_out_of_sync_print.exit142_crit_edge, label %do.end.i140

if.then61.ov_out_of_sync_print.exit142_crit_edge: ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  br label %ov_out_of_sync_print.exit142

do.end.i140:                                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk.i135 = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %85 = ptrtoint ptr %vdisk.i135 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %vdisk.i135, align 4
  %part0.i136 = getelementptr inbounds %struct.gendisk, ptr %86, i32 0, i32 7
  %87 = ptrtoint ptr %part0.i136 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %part0.i136, align 4
  %bd_device.i137 = getelementptr inbounds %struct.block_device, ptr %88, i32 0, i32 10
  %ov_last_oos_start.i138 = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 60
  %89 = ptrtoint ptr %ov_last_oos_start.i138 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %ov_last_oos_start.i138, align 8
  %conv.i139 = trunc i64 %84 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device.i137, ptr noundef nonnull @.str.99, i64 noundef %90, i32 noundef %conv.i139) #17
  br label %ov_out_of_sync_print.exit142

ov_out_of_sync_print.exit142:                     ; preds = %do.end.i140, %if.then61.ov_out_of_sync_print.exit142_crit_edge
  %91 = ptrtoint ptr %ov_last_oos_size.i133 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 0, ptr %ov_last_oos_size.i133, align 8
  %call62 = tail call i32 @drbd_resync_finished(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %ov_out_of_sync_print.exit142, %land.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call46, %land.end.cleanup_crit_edge ], [ %call46, %ov_out_of_sync_print.exit142 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_send_ack_ex(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_advance_rs_marks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w_send_write_hint(ptr noundef %w, i32 noundef %cancel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cancel)
  %tobool.not = icmp eq i32 %cancel, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %peer_devices.i = getelementptr i8, ptr %w, i32 -100
  %0 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i = icmp eq ptr %1, %peer_devices.i
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %1
  %connection.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i, i32 0, i32 2
  %2 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection.i, align 4
  %data.i = getelementptr inbounds %struct.drbd_connection, ptr %3, i32 0, i32 17
  %call.i = tail call ptr @drbd_prepare_command(ptr noundef %spec.select.i, ptr noundef %data.i) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = tail call i32 @drbd_send_command(ptr noundef %spec.select.i, ptr noundef %data.i, i32 noundef 7, i32 noundef 0, ptr noundef null, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call1.i, %if.end.i ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w_send_out_of_sync(ptr noundef %w, i32 noundef %cancel) local_unnamed_addr #0 align 64 {
entry:
  %m.i = alloca %struct.bio_and_error, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.drbd_request, ptr %w, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %peer_devices.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i = icmp eq ptr %3, %peer_devices.i
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cancel)
  %tobool.not = icmp eq i32 %cancel, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @req_mod(ptr noundef %w, i32 noundef 7)
  br label %cleanup

if.end:                                           ; preds = %entry
  %connection2 = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i, i32 0, i32 2
  %4 = ptrtoint ptr %connection2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connection2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %pre_send_jif = getelementptr inbounds %struct.drbd_request, ptr %w, i32 0, i32 12
  %7 = ptrtoint ptr %pre_send_jif to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %pre_send_jif, align 4
  %epoch = getelementptr inbounds %struct.drbd_request, ptr %w, i32 0, i32 4
  %8 = ptrtoint ptr %epoch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %epoch, align 8
  %seen_any_write_yet.i = getelementptr inbounds %struct.drbd_connection, ptr %5, i32 0, i32 50, i32 1
  %10 = ptrtoint ptr %seen_any_write_yet.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %seen_any_write_yet.i, align 4, !range !285
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end.maybe_send_barrier.exit_crit_edge, label %if.end.i

if.end.maybe_send_barrier.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %maybe_send_barrier.exit

if.end.i:                                         ; preds = %if.end
  %current_epoch_nr.i = getelementptr inbounds %struct.drbd_connection, ptr %5, i32 0, i32 50, i32 2
  %12 = ptrtoint ptr %current_epoch_nr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %current_epoch_nr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp.not.i18 = icmp eq i32 %13, %9
  br i1 %cmp.not.i18, label %if.end.i.maybe_send_barrier.exit_crit_edge, label %if.then2.i

if.end.i.maybe_send_barrier.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %maybe_send_barrier.exit

if.then2.i:                                       ; preds = %if.end.i
  %current_epoch_writes.i = getelementptr inbounds %struct.drbd_connection, ptr %5, i32 0, i32 50, i32 3
  %14 = ptrtoint ptr %current_epoch_writes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %current_epoch_writes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not.i = icmp eq i32 %15, 0
  br i1 %tobool4.not.i, label %if.then2.i.if.end6.i_crit_edge, label %if.then5.i

if.then2.i.if.end6.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.then2.i
  %data.i.i = getelementptr inbounds %struct.drbd_connection, ptr %5, i32 0, i32 17
  %call.i.i = tail call ptr @conn_prepare_command(ptr noundef %5, ptr noundef %data.i.i) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then5.i.if.end6.i_crit_edge, label %if.end.i.i

if.then5.i.if.end6.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.end.i.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  %send.i.i = getelementptr inbounds %struct.drbd_connection, ptr %5, i32 0, i32 50
  %16 = ptrtoint ptr %current_epoch_nr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %current_epoch_nr.i, align 4
  %18 = ptrtoint ptr %call.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %call.i.i, align 1
  %pad.i.i = getelementptr inbounds %struct.p_barrier, ptr %call.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %pad.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 0, ptr %pad.i.i, align 1
  %20 = ptrtoint ptr %current_epoch_writes.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %current_epoch_writes.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %22 = ptrtoint ptr %send.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %send.i.i, align 4
  %call3.i.i = tail call i32 @conn_send_command(ptr noundef %5, ptr noundef %data.i.i, i32 noundef 3, i32 noundef 8, ptr noundef null, i32 noundef 0) #14
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i.i, %if.then5.i.if.end6.i_crit_edge, %if.then2.i.if.end6.i_crit_edge
  %23 = ptrtoint ptr %current_epoch_nr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %9, ptr %current_epoch_nr.i, align 4
  br label %maybe_send_barrier.exit

maybe_send_barrier.exit:                          ; preds = %if.end6.i, %if.end.i.maybe_send_barrier.exit_crit_edge, %if.end.maybe_send_barrier.exit_crit_edge
  %call6 = tail call i32 @drbd_send_out_of_sync(ptr noundef %spec.select.i, ptr noundef %w) #14
  %24 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m.i) #14
  %26 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -1 to ptr), ptr %m.i, align 4, !annotation !278
  %27 = getelementptr inbounds %struct.bio_and_error, ptr %m.i, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %27, align 4, !annotation !278
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %25, align 8
  %req_lock.i = getelementptr inbounds %struct.drbd_resource, ptr %30, i32 0, i32 12
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock.i) #14
  %call6.i = call i32 @__req_mod(ptr noundef %w, i32 noundef 10, ptr noundef nonnull %m.i) #14
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %25, align 8
  %req_lock8.i = getelementptr inbounds %struct.drbd_resource, ptr %32, i32 0, i32 12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock8.i, i32 noundef %call3.i) #14
  %33 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %m.i, align 4
  %tobool.not.i19 = icmp eq ptr %34, null
  br i1 %tobool.not.i19, label %maybe_send_barrier.exit.req_mod.exit_crit_edge, label %if.then.i

maybe_send_barrier.exit.req_mod.exit_crit_edge:   ; preds = %maybe_send_barrier.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %req_mod.exit

if.then.i:                                        ; preds = %maybe_send_barrier.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @complete_master_bio(ptr noundef %25, ptr noundef nonnull %m.i) #14
  br label %req_mod.exit

req_mod.exit:                                     ; preds = %if.then.i, %maybe_send_barrier.exit.req_mod.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m.i) #14
  br label %cleanup

cleanup:                                          ; preds = %req_mod.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call6, %req_mod.exit ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @req_mod(ptr noundef %req, i32 noundef %what) unnamed_addr #3 align 64 {
entry:
  %m = alloca %struct.bio_and_error, align 4
  call void @__sanitizer_cov_trace_pc() #16
  %device1 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m) #14
  %2 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %m, align 4, !annotation !278
  %3 = getelementptr inbounds %struct.bio_and_error, ptr %m, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !278
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %req_lock = getelementptr inbounds %struct.drbd_resource, ptr %6, i32 0, i32 12
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #14
  %call6 = call i32 @__req_mod(ptr noundef %req, i32 noundef %what, ptr noundef nonnull %m) #14
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %req_lock8 = getelementptr inbounds %struct.drbd_resource, ptr %8, i32 0, i32 12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock8, i32 noundef %call3) #14
  %9 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @complete_master_bio(ptr noundef %1, ptr noundef nonnull %m) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_send_out_of_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w_send_dblock(ptr noundef %w, i32 noundef %cancel) local_unnamed_addr #0 align 64 {
entry:
  %m.i = alloca %struct.bio_and_error, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.drbd_request, ptr %w, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %peer_devices.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i = icmp eq ptr %3, %peer_devices.i
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cancel)
  %tobool3.not = icmp eq i32 %cancel, 0
  br i1 %tobool3.not, label %if.end, label %if.then, !prof !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @req_mod(ptr noundef %w, i32 noundef 7)
  br label %cleanup

if.end:                                           ; preds = %entry
  %rq_state = getelementptr inbounds %struct.drbd_request, ptr %w, i32 0, i32 17
  %4 = ptrtoint ptr %rq_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq_state, align 8
  %and = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %connection2 = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i, i32 0, i32 2
  %6 = ptrtoint ptr %connection2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %connection2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %pre_send_jif = getelementptr inbounds %struct.drbd_request, ptr %w, i32 0, i32 12
  %9 = ptrtoint ptr %pre_send_jif to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %pre_send_jif, align 4
  %epoch = getelementptr inbounds %struct.drbd_request, ptr %w, i32 0, i32 4
  %seen_any_write_yet.i = getelementptr inbounds %struct.drbd_connection, ptr %7, i32 0, i32 50, i32 1
  %10 = ptrtoint ptr %seen_any_write_yet.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %seen_any_write_yet.i, align 4, !range !285
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %re_init_if_first_write.exit, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

re_init_if_first_write.exit:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %epoch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %epoch, align 8
  %send.i = getelementptr inbounds %struct.drbd_connection, ptr %7, i32 0, i32 50
  %14 = ptrtoint ptr %seen_any_write_yet.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %seen_any_write_yet.i, align 4
  %current_epoch_nr.i = getelementptr inbounds %struct.drbd_connection, ptr %7, i32 0, i32 50, i32 2
  %15 = ptrtoint ptr %current_epoch_nr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %current_epoch_nr.i, align 4
  %current_epoch_writes.i = getelementptr inbounds %struct.drbd_connection, ptr %7, i32 0, i32 50, i32 3
  %16 = ptrtoint ptr %current_epoch_writes.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %current_epoch_writes.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %18 = ptrtoint ptr %send.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %send.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %re_init_if_first_write.exit, %if.end.if.end.i_crit_edge
  %19 = ptrtoint ptr %epoch to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %epoch, align 8
  %current_epoch_nr.i36 = getelementptr inbounds %struct.drbd_connection, ptr %7, i32 0, i32 50, i32 2
  %21 = ptrtoint ptr %current_epoch_nr.i36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %current_epoch_nr.i36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %20)
  %cmp.not.i37 = icmp eq i32 %22, %20
  br i1 %cmp.not.i37, label %if.end.i.maybe_send_barrier.exit_crit_edge, label %if.then2.i

if.end.i.maybe_send_barrier.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %maybe_send_barrier.exit

if.then2.i:                                       ; preds = %if.end.i
  %current_epoch_writes.i38 = getelementptr inbounds %struct.drbd_connection, ptr %7, i32 0, i32 50, i32 3
  %23 = ptrtoint ptr %current_epoch_writes.i38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %current_epoch_writes.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool4.not.i = icmp eq i32 %24, 0
  br i1 %tobool4.not.i, label %if.then2.i.if.end6.i_crit_edge, label %if.then5.i

if.then2.i.if.end6.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.then2.i
  %data.i.i = getelementptr inbounds %struct.drbd_connection, ptr %7, i32 0, i32 17
  %call.i.i = tail call ptr @conn_prepare_command(ptr noundef %7, ptr noundef %data.i.i) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then5.i.if.end6.i_crit_edge, label %if.end.i.i

if.then5.i.if.end6.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.end.i.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  %send.i.i = getelementptr inbounds %struct.drbd_connection, ptr %7, i32 0, i32 50
  %25 = ptrtoint ptr %current_epoch_nr.i36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %current_epoch_nr.i36, align 4
  %27 = ptrtoint ptr %call.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %call.i.i, align 1
  %pad.i.i = getelementptr inbounds %struct.p_barrier, ptr %call.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %pad.i.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 0, ptr %pad.i.i, align 1
  %29 = ptrtoint ptr %current_epoch_writes.i38 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %current_epoch_writes.i38, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %31 = ptrtoint ptr %send.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %send.i.i, align 4
  %call3.i.i = tail call i32 @conn_send_command(ptr noundef %7, ptr noundef %data.i.i, i32 noundef 3, i32 noundef 8, ptr noundef null, i32 noundef 0) #14
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i.i, %if.then5.i.if.end6.i_crit_edge, %if.then2.i.if.end6.i_crit_edge
  %32 = ptrtoint ptr %current_epoch_nr.i36 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %20, ptr %current_epoch_nr.i36, align 4
  br label %maybe_send_barrier.exit

maybe_send_barrier.exit:                          ; preds = %if.end6.i, %if.end.i.maybe_send_barrier.exit_crit_edge
  %current_epoch_writes = getelementptr inbounds %struct.drbd_connection, ptr %7, i32 0, i32 50, i32 3
  %33 = ptrtoint ptr %current_epoch_writes to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %current_epoch_writes, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %current_epoch_writes, align 4
  %call8 = tail call i32 @drbd_send_dblock(ptr noundef %spec.select.i, ptr noundef %w) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %cond = select i1 %tobool9.not, i32 9, i32 8
  %35 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m.i) #14
  %37 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 -1 to ptr), ptr %m.i, align 4, !annotation !278
  %38 = getelementptr inbounds %struct.bio_and_error, ptr %m.i, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %38, align 4, !annotation !278
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %36, align 8
  %req_lock.i = getelementptr inbounds %struct.drbd_resource, ptr %41, i32 0, i32 12
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock.i) #14
  %call6.i = call i32 @__req_mod(ptr noundef %w, i32 noundef %cond, ptr noundef nonnull %m.i) #14
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %36, align 8
  %req_lock8.i = getelementptr inbounds %struct.drbd_resource, ptr %43, i32 0, i32 12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock8.i, i32 noundef %call3.i) #14
  %44 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %m.i, align 4
  %tobool.not.i39 = icmp eq ptr %45, null
  br i1 %tobool.not.i39, label %maybe_send_barrier.exit.req_mod.exit_crit_edge, label %if.then.i40

maybe_send_barrier.exit.req_mod.exit_crit_edge:   ; preds = %maybe_send_barrier.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %req_mod.exit

if.then.i40:                                      ; preds = %maybe_send_barrier.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @complete_master_bio(ptr noundef %36, ptr noundef nonnull %m.i) #14
  br label %req_mod.exit

req_mod.exit:                                     ; preds = %if.then.i40, %maybe_send_barrier.exit.req_mod.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m.i) #14
  %tobool9.not.not = xor i1 %tobool9.not, true
  %brmerge = select i1 %tobool.not, i1 true, i1 %tobool9.not.not
  br i1 %brmerge, label %req_mod.exit.cleanup_crit_edge, label %if.then13

req_mod.exit.cleanup_crit_edge:                   ; preds = %req_mod.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then13:                                        ; preds = %req_mod.exit
  %46 = ptrtoint ptr %connection2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %connection2, align 4
  %data.i = getelementptr inbounds %struct.drbd_connection, ptr %47, i32 0, i32 17
  %call.i = call ptr @drbd_prepare_command(ptr noundef %spec.select.i, ptr noundef %data.i) #14
  %tobool.not.i42 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i42, label %if.then13.cleanup_crit_edge, label %if.end.i43

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i43:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = call i32 @drbd_send_command(ptr noundef %spec.select.i, ptr noundef %data.i, i32 noundef 7, i32 noundef 0, ptr noundef null, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.i43, %if.then13.cleanup_crit_edge, %req_mod.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call8, %req_mod.exit.cleanup_crit_edge ], [ %call8, %if.then13.cleanup_crit_edge ], [ %call8, %if.end.i43 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_send_dblock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w_send_read_req(ptr noundef %w, i32 noundef %cancel) local_unnamed_addr #0 align 64 {
entry:
  %m.i = alloca %struct.bio_and_error, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.drbd_request, ptr %w, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %peer_devices.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i = icmp eq ptr %3, %peer_devices.i
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cancel)
  %tobool3.not = icmp eq i32 %cancel, 0
  br i1 %tobool3.not, label %if.end, label %if.then, !prof !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @req_mod(ptr noundef %w, i32 noundef 7)
  br label %cleanup

if.end:                                           ; preds = %entry
  %rq_state = getelementptr inbounds %struct.drbd_request, ptr %w, i32 0, i32 17
  %4 = ptrtoint ptr %rq_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq_state, align 8
  %and = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %connection2 = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i, i32 0, i32 2
  %6 = ptrtoint ptr %connection2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %connection2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %pre_send_jif = getelementptr inbounds %struct.drbd_request, ptr %w, i32 0, i32 12
  %9 = ptrtoint ptr %pre_send_jif to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %pre_send_jif, align 4
  %epoch = getelementptr inbounds %struct.drbd_request, ptr %w, i32 0, i32 4
  %10 = ptrtoint ptr %epoch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %epoch, align 8
  %seen_any_write_yet.i = getelementptr inbounds %struct.drbd_connection, ptr %7, i32 0, i32 50, i32 1
  %12 = ptrtoint ptr %seen_any_write_yet.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %seen_any_write_yet.i, align 4, !range !285
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end.maybe_send_barrier.exit_crit_edge, label %if.end.i

if.end.maybe_send_barrier.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %maybe_send_barrier.exit

if.end.i:                                         ; preds = %if.end
  %current_epoch_nr.i = getelementptr inbounds %struct.drbd_connection, ptr %7, i32 0, i32 50, i32 2
  %14 = ptrtoint ptr %current_epoch_nr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %current_epoch_nr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %11)
  %cmp.not.i34 = icmp eq i32 %15, %11
  br i1 %cmp.not.i34, label %if.end.i.maybe_send_barrier.exit_crit_edge, label %if.then2.i

if.end.i.maybe_send_barrier.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %maybe_send_barrier.exit

if.then2.i:                                       ; preds = %if.end.i
  %current_epoch_writes.i = getelementptr inbounds %struct.drbd_connection, ptr %7, i32 0, i32 50, i32 3
  %16 = ptrtoint ptr %current_epoch_writes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %current_epoch_writes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4.not.i = icmp eq i32 %17, 0
  br i1 %tobool4.not.i, label %if.then2.i.if.end6.i_crit_edge, label %if.then5.i

if.then2.i.if.end6.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.then2.i
  %data.i.i = getelementptr inbounds %struct.drbd_connection, ptr %7, i32 0, i32 17
  %call.i.i = tail call ptr @conn_prepare_command(ptr noundef %7, ptr noundef %data.i.i) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then5.i.if.end6.i_crit_edge, label %if.end.i.i

if.then5.i.if.end6.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.end.i.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  %send.i.i = getelementptr inbounds %struct.drbd_connection, ptr %7, i32 0, i32 50
  %18 = ptrtoint ptr %current_epoch_nr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %current_epoch_nr.i, align 4
  %20 = ptrtoint ptr %call.i.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %call.i.i, align 1
  %pad.i.i = getelementptr inbounds %struct.p_barrier, ptr %call.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %pad.i.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 0, ptr %pad.i.i, align 1
  %22 = ptrtoint ptr %current_epoch_writes.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %current_epoch_writes.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %24 = ptrtoint ptr %send.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %send.i.i, align 4
  %call3.i.i = tail call i32 @conn_send_command(ptr noundef %7, ptr noundef %data.i.i, i32 noundef 3, i32 noundef 8, ptr noundef null, i32 noundef 0) #14
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i.i, %if.then5.i.if.end6.i_crit_edge, %if.then2.i.if.end6.i_crit_edge
  %25 = ptrtoint ptr %current_epoch_nr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %11, ptr %current_epoch_nr.i, align 4
  br label %maybe_send_barrier.exit

maybe_send_barrier.exit:                          ; preds = %if.end6.i, %if.end.i.maybe_send_barrier.exit_crit_edge, %if.end.maybe_send_barrier.exit_crit_edge
  %sector = getelementptr inbounds %struct.drbd_request, ptr %w, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %sector, align 8
  %size = getelementptr inbounds %struct.drbd_request, ptr %w, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size, align 8
  %30 = ptrtoint ptr %w to i32
  %conv = zext i32 %30 to i64
  %call8 = tail call i32 @drbd_send_drequest(ptr noundef %spec.select.i, i32 noundef 8, i64 noundef %27, i32 noundef %29, i64 noundef %conv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %cond = select i1 %tobool9.not, i32 9, i32 8
  %31 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m.i) #14
  %33 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -1 to ptr), ptr %m.i, align 4, !annotation !278
  %34 = getelementptr inbounds %struct.bio_and_error, ptr %m.i, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %34, align 4, !annotation !278
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %32, align 8
  %req_lock.i = getelementptr inbounds %struct.drbd_resource, ptr %37, i32 0, i32 12
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock.i) #14
  %call6.i = call i32 @__req_mod(ptr noundef %w, i32 noundef %cond, ptr noundef nonnull %m.i) #14
  %38 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %32, align 8
  %req_lock8.i = getelementptr inbounds %struct.drbd_resource, ptr %39, i32 0, i32 12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock8.i, i32 noundef %call3.i) #14
  %40 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %m.i, align 4
  %tobool.not.i35 = icmp eq ptr %41, null
  br i1 %tobool.not.i35, label %maybe_send_barrier.exit.req_mod.exit_crit_edge, label %if.then.i

maybe_send_barrier.exit.req_mod.exit_crit_edge:   ; preds = %maybe_send_barrier.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %req_mod.exit

if.then.i:                                        ; preds = %maybe_send_barrier.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @complete_master_bio(ptr noundef %32, ptr noundef nonnull %m.i) #14
  br label %req_mod.exit

req_mod.exit:                                     ; preds = %if.then.i, %maybe_send_barrier.exit.req_mod.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m.i) #14
  %tobool9.not.not = xor i1 %tobool9.not, true
  %brmerge = select i1 %tobool.not, i1 true, i1 %tobool9.not.not
  br i1 %brmerge, label %req_mod.exit.cleanup_crit_edge, label %if.then14

req_mod.exit.cleanup_crit_edge:                   ; preds = %req_mod.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then14:                                        ; preds = %req_mod.exit
  %42 = ptrtoint ptr %connection2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %connection2, align 4
  %data.i = getelementptr inbounds %struct.drbd_connection, ptr %43, i32 0, i32 17
  %call.i = call ptr @drbd_prepare_command(ptr noundef %spec.select.i, ptr noundef %data.i) #14
  %tobool.not.i37 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i37, label %if.then14.cleanup_crit_edge, label %if.end.i38

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i38:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = call i32 @drbd_send_command(ptr noundef %spec.select.i, ptr noundef %data.i, i32 noundef 7, i32 noundef 0, ptr noundef null, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.i38, %if.then14.cleanup_crit_edge, %req_mod.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call8, %req_mod.exit.cleanup_crit_edge ], [ %call8, %if.then14.cleanup_crit_edge ], [ %call8, %if.end.i38 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_send_drequest(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w_restart_disk_io(ptr noundef %w, i32 noundef %cancel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.drbd_request, ptr %w, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %master_bio = getelementptr inbounds %struct.drbd_request, ptr %w, i32 0, i32 6
  %2 = ptrtoint ptr %master_bio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_bio, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %rq_state = getelementptr inbounds %struct.drbd_request, ptr %w, i32 0, i32 17
  %6 = ptrtoint ptr %rq_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rq_state, align 8
  %and2 = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %i = getelementptr inbounds %struct.drbd_request, ptr %w, i32 0, i32 3
  tail call void @drbd_al_begin_io(ptr noundef %1, ptr noundef %i) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %master_bio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master_bio, align 4
  %call4 = tail call ptr @bio_clone_fast(ptr noundef %9, i32 noundef 3072, ptr noundef nonnull @drbd_io_bio_set) #14
  %private_bio = getelementptr inbounds %struct.drbd_request, ptr %w, i32 0, i32 2
  %10 = ptrtoint ptr %private_bio to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call4, ptr %private_bio, align 8
  %ldev = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ldev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call4, i32 0, i32 3
  %15 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %16, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call4, i32 0, i32 1
  %17 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %18, %14
  br i1 %cmp.not.i, label %if.end.bio_set_dev.exit_crit_edge, label %if.then.i

if.end.bio_set_dev.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i8.i = and i16 %16, -2177
  %19 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end.bio_set_dev.exit_crit_edge
  %20 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %14, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call4) #14
  %21 = ptrtoint ptr %private_bio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private_bio, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %w, ptr %bi_private, align 4
  %24 = load ptr, ptr %private_bio, align 8
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @drbd_request_endio, ptr %bi_end_io, align 8
  %26 = load ptr, ptr %private_bio, align 8
  tail call void @submit_bio_noacct(ptr noundef %26) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_al_begin_io(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_clone_fast(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @resume_next_sg(ptr nocapture noundef readnone %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lock_all_resources() #14
  %0 = tail call fastcc zeroext i1 @drbd_resume_next()
  tail call void @unlock_all_resources() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_all_resources() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @drbd_resume_next() unnamed_addr #0 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !276
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 696, ptr noundef nonnull @.str.102) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %i, align 4
  %call15 = call ptr @idr_get_next(ptr noundef nonnull @drbd_devices, ptr noundef nonnull %i) #14
  %cmp.not16 = icmp eq ptr %call15, null
  br i1 %cmp.not16, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %call18 = phi ptr [ %call, %for.inc.for.body_crit_edge ], [ %call15, %rcu_read_lock.exit.for.body_crit_edge ]
  %changed.0.off017 = phi i1 [ %changed.1.off0, %for.inc.for.body_crit_edge ], [ false, %rcu_read_lock.exit.for.body_crit_edge ]
  %state = getelementptr inbounds %struct.drbd_device, ptr %call18, i32 0, i32 27
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %state, align 8
  %6 = and i32 %bf.load, 8176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %bf.load, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %or.cond14 = or i1 %7, %tobool.not
  br i1 %or.cond14, label %for.body.for.inc_crit_edge, label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then11:                                        ; preds = %for.body
  %call12 = call fastcc i32 @_drbd_may_sync_now(ptr noundef nonnull %call18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.for.inc_crit_edge, label %land.lhs.true14

if.then11.for.inc_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true14:                                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %call18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call18, align 8
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 8
  %susp.i = getelementptr inbounds %struct.drbd_resource, ptr %10, i32 0, i32 13
  %13 = ptrtoint ptr %susp.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %susp.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %bf.shl.i = shl nuw nsw i32 %bf.cast.i, 17
  %bf.clear.i = and i32 %12, -6684673
  %bf.set.i = or i32 %bf.shl.i, %bf.clear.i
  %bf.lshr4.i = lshr i8 %bf.load.i, 6
  %bf.value8.i = zext i8 %bf.lshr4.i to i32
  %bf.shl9.i = shl nuw nsw i32 %bf.value8.i, 21
  %bf.lshr13.i = lshr i8 %bf.load.i, 5
  %14 = and i8 %bf.lshr13.i, 1
  %bf.value17.i = zext i8 %14 to i32
  %bf.shl18.i = shl nuw nsw i32 %bf.value17.i, 22
  %bf.shl9.masked.i = and i32 %bf.shl9.i, 2097152
  %bf.clear19.i = or i32 %bf.set.i, %bf.shl9.masked.i
  %bf.clear18 = or i32 %bf.clear19.i, %bf.shl18.i
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %bf.clear18, 0
  %call21 = call i32 @_drbd_set_state(ptr noundef nonnull %call18, [1 x i32] %.fca.0.insert, i32 noundef 1, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call21)
  %cmp22.not = icmp ne i32 %call21, 2
  %spec.select = select i1 %cmp22.not, i1 true, i1 %changed.0.off017
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true14, %if.then11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %changed.1.off0 = phi i1 [ %changed.0.off017, %if.then11.for.inc_crit_edge ], [ %changed.0.off017, %for.body.for.inc_crit_edge ], [ %spec.select, %land.lhs.true14 ]
  %15 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i, align 4
  %add = add i32 %16, 1
  store i32 %add, ptr %i, align 4
  %call = call ptr @idr_get_next(ptr noundef nonnull @drbd_devices, ptr noundef nonnull %i) #14
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %changed.0.off0.lcssa = phi i1 [ false, %rcu_read_lock.exit.for.end_crit_edge ], [ %changed.1.off0, %for.inc.for.end_crit_edge ]
  %call.i5 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i5, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i8

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i8:                                 ; preds = %for.end
  %call1.i6 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %tobool.not.i7 = icmp eq i32 %call1.i6, 0
  br i1 %tobool.not.i7, label %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i10

land.lhs.true.i8.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i10:                               ; preds = %land.lhs.true.i8
  %.b4.i9 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9, label %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, label %if.then.i11

land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i11:                                      ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 724, ptr noundef nonnull @.str.103) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i11, %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !277
  %17 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i12 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i12 to ptr
  %preempt_count.i.i.i.i13 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i13, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i13, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #14
  ret i1 %changed.0.off0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_all_resources() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @suspend_other_sg(ptr nocapture noundef readnone %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lock_all_resources() #14
  %0 = tail call fastcc zeroext i1 @drbd_pause_after()
  tail call void @unlock_all_resources() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @drbd_pause_after() unnamed_addr #0 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !276
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 696, ptr noundef nonnull @.str.102) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %i, align 4
  %call13 = call ptr @idr_get_next(ptr noundef nonnull @drbd_devices, ptr noundef nonnull %i) #14
  %cmp.not14 = icmp eq ptr %call13, null
  br i1 %cmp.not14, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %call16 = phi ptr [ %call, %for.inc.for.body_crit_edge ], [ %call13, %rcu_read_lock.exit.for.body_crit_edge ]
  %changed.0.off015 = phi i1 [ %changed.1.off0, %for.inc.for.body_crit_edge ], [ false, %rcu_read_lock.exit.for.body_crit_edge ]
  %state = getelementptr inbounds %struct.drbd_device, ptr %call16, i32 0, i32 27
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %state, align 8
  %6 = and i32 %bf.load, 8176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call7 = call fastcc i32 @_drbd_may_sync_now(ptr noundef nonnull %call16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %land.lhs.true8, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true8:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call16, align 8
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 8
  %susp.i = getelementptr inbounds %struct.drbd_resource, ptr %9, i32 0, i32 13
  %12 = ptrtoint ptr %susp.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %susp.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %bf.shl.i = shl nuw nsw i32 %bf.cast.i, 17
  %bf.clear.i = and i32 %11, -6684673
  %bf.set.i = or i32 %bf.shl.i, %bf.clear.i
  %bf.lshr4.i = lshr i8 %bf.load.i, 6
  %bf.value8.i = zext i8 %bf.lshr4.i to i32
  %bf.shl9.i = shl nuw nsw i32 %bf.value8.i, 21
  %bf.lshr13.i = lshr i8 %bf.load.i, 5
  %13 = and i8 %bf.lshr13.i, 1
  %bf.value17.i = zext i8 %13 to i32
  %bf.shl18.i = shl nuw nsw i32 %bf.value17.i, 22
  %bf.shl9.masked.i = and i32 %bf.shl9.i, 2097152
  %bf.clear19.i = or i32 %bf.set.i, %bf.shl9.masked.i
  %bf.set20.i = or i32 %bf.clear19.i, %bf.shl18.i
  %bf.set = or i32 %bf.set20.i, 262144
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %bf.set, 0
  %call15 = call i32 @_drbd_set_state(ptr noundef nonnull %call16, [1 x i32] %.fca.0.insert, i32 noundef 1, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call15)
  %cmp16.not = icmp ne i32 %call15, 2
  %spec.select = select i1 %cmp16.not, i1 true, i1 %changed.0.off015
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true8, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %changed.1.off0 = phi i1 [ %changed.0.off015, %if.end.for.inc_crit_edge ], [ %changed.0.off015, %for.body.for.inc_crit_edge ], [ %spec.select, %land.lhs.true8 ]
  %14 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i, align 4
  %add = add i32 %15, 1
  store i32 %add, ptr %i, align 4
  %call = call ptr @idr_get_next(ptr noundef nonnull @drbd_devices, ptr noundef nonnull %i) #14
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %changed.0.off0.lcssa = phi i1 [ false, %rcu_read_lock.exit.for.end_crit_edge ], [ %changed.1.off0, %for.inc.for.end_crit_edge ]
  %call.i4 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i4, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i7

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i7:                                 ; preds = %for.end
  %call1.i5 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i9

land.lhs.true.i7.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i9:                                ; preds = %land.lhs.true.i7
  %.b4.i8 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8, label %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, label %if.then.i10

land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i10:                                      ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 724, ptr noundef nonnull @.str.103) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i10, %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !277
  %16 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i11 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i11 to ptr
  %preempt_count.i.i.i.i12 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i12, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i12, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #14
  ret i1 %changed.0.off0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_resync_after_valid(ptr noundef readnone %device, i32 noundef %o_minor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %o_minor)
  %cmp = icmp eq i32 %o_minor, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %o_minor)
  %cmp2 = icmp ugt i32 %o_minor, 1048575
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i42 = tail call ptr @idr_find(ptr noundef nonnull @drbd_devices, i32 noundef %o_minor) #14
  %cmp553 = icmp eq ptr %call.i42, %device
  br i1 %cmp553, label %if.end4.cleanup_crit_edge, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  br label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end30.if.end7_crit_edge, %if.end4.if.end7_crit_edge
  %odev.054 = phi ptr [ %call.i52, %if.end30.if.end7_crit_edge ], [ %call.i42, %if.end4.if.end7_crit_edge ]
  %tobool.not = icmp eq ptr %odev.054, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %lor.lhs.false8

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false8:                                   ; preds = %if.end7
  %ldev = getelementptr inbounds %struct.drbd_device, ptr %odev.054, i32 0, i32 15
  %0 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ldev, align 4
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %lor.lhs.false8.cleanup_crit_edge, label %lor.lhs.false10

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %state = getelementptr inbounds %struct.drbd_device, ptr %odev.054, i32 0, i32 27
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %state, align 8
  %3 = and i32 %bf.load, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11 = icmp eq i32 %3, 0
  br i1 %cmp11, label %lor.lhs.false10.cleanup_crit_edge, label %if.end13

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false10
  %4 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !276
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end13.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end13.rcu_read_lock.exit_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end13
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 696, ptr noundef nonnull @.str.102) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end13.rcu_read_lock.exit_crit_edge
  %8 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ldev, align 4
  %disk_conf = getelementptr inbounds %struct.drbd_backing_dev, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %disk_conf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %disk_conf, align 8
  %call16 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end25_crit_edge

rcu_read_lock.exit.do.end25_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end25

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call18 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true.do.end25_crit_edge, label %land.lhs.true20

land.lhs.true.do.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end25

land.lhs.true20:                                  ; preds = %land.lhs.true
  %.b41 = load i1, ptr @drbd_resync_after_valid.__warned, align 1
  br i1 %.b41, label %land.lhs.true20.do.end25_crit_edge, label %if.then22

land.lhs.true20.do.end25_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end25

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @drbd_resync_after_valid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1654, ptr noundef nonnull @.str.37) #14
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %land.lhs.true20.do.end25_crit_edge, %land.lhs.true.do.end25_crit_edge, %rcu_read_lock.exit.do.end25_crit_edge
  %resync_after27 = getelementptr inbounds %struct.disk_conf, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %resync_after27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resync_after27, align 8
  %call.i43 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i43, label %do.end25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i46

do.end25.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i46:                                ; preds = %do.end25
  %call1.i44 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i48

land.lhs.true.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i48:                               ; preds = %land.lhs.true.i46
  %.b4.i47 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47, label %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, label %if.then.i49

land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i49:                                      ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 724, ptr noundef nonnull @.str.103) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i49, %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, %do.end25.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !277
  %14 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i50 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i51, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i51, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp28 = icmp eq i32 %13, -1
  br i1 %cmp28, label %rcu_read_unlock.exit.cleanup_crit_edge, label %if.end30

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end30:                                         ; preds = %rcu_read_unlock.exit
  %call.i52 = tail call ptr @idr_find(ptr noundef nonnull @drbd_devices, i32 noundef %13) #14
  %cmp5 = icmp eq ptr %call.i52, %device
  br i1 %cmp5, label %if.end30.cleanup_crit_edge, label %if.end30.if.end7_crit_edge

if.end30.if.end7_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end30.cleanup_crit_edge, %rcu_read_unlock.exit.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 101, %entry.cleanup_crit_edge ], [ 132, %if.end.cleanup_crit_edge ], [ 133, %if.end4.cleanup_crit_edge ], [ 133, %if.end30.cleanup_crit_edge ], [ 101, %lor.lhs.false10.cleanup_crit_edge ], [ 101, %lor.lhs.false8.cleanup_crit_edge ], [ 101, %if.end7.cleanup_crit_edge ], [ 101, %rcu_read_unlock.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_resync_after_changed(ptr nocapture noundef readnone %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %call = tail call fastcc zeroext i1 @drbd_pause_after()
  %call1 = tail call fastcc zeroext i1 @drbd_resume_next()
  %or5 = or i1 %call, %call1
  br i1 %or5, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_rs_controller_reset(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ldev = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 15
  %0 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ldev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_disk, align 8
  %rs_sect_in = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 96
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rs_sect_in, i32 noundef 4) #14
  %6 = ptrtoint ptr %rs_sect_in to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %rs_sect_in, align 4
  %rs_sect_ev = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 97
  %call.i.i82 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rs_sect_ev, i32 noundef 4) #14
  %7 = ptrtoint ptr %rs_sect_ev to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %rs_sect_ev, align 4
  %rs_in_flight = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 102
  %8 = ptrtoint ptr %rs_in_flight to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rs_in_flight, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %call92 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__sanitizer_cov_trace_cmp4(i32 %call92, i32 %9)
  %cmp93 = icmp ult i32 %call92, %9
  br i1 %cmp93, label %do.body.lr.ph, label %entry.for.cond7.preheader_crit_edge

entry.for.cond7.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond7.preheader

do.body.lr.ph:                                    ; preds = %entry
  %part0 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %part0, align 4
  %bd_stats = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %bd_stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bd_stats, align 8
  %14 = ptrtoint ptr %13 to i32
  br label %do.body

for.cond7.preheader:                              ; preds = %do.body.for.cond7.preheader_crit_edge, %entry.for.cond7.preheader_crit_edge
  %res.0.lcssa = phi i32 [ 0, %entry.for.cond7.preheader_crit_edge ], [ %add3, %do.body.for.cond7.preheader_crit_edge ]
  %call897 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__sanitizer_cov_trace_cmp4(i32 %call897, i32 %9)
  %cmp998 = icmp ult i32 %call897, %9
  br i1 %cmp998, label %do.body11.lr.ph, label %for.cond7.preheader.for.end25_crit_edge

for.cond7.preheader.for.end25_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end25

do.body11.lr.ph:                                  ; preds = %for.cond7.preheader
  %part017 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 7
  %15 = ptrtoint ptr %part017 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %part017, align 4
  %bd_stats18 = getelementptr inbounds %struct.block_device, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %bd_stats18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bd_stats18, align 8
  %19 = ptrtoint ptr %18 to i32
  br label %do.body11

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %call95 = phi i32 [ %call92, %do.body.lr.ph ], [ %call, %do.body.do.body_crit_edge ]
  %res.094 = phi i32 [ 0, %do.body.lr.ph ], [ %add3, %do.body.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call95
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %add = add i32 %21, %14
  %22 = inttoptr i32 %add to ptr
  %sectors = getelementptr inbounds %struct.disk_stats, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %sectors to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sectors, align 8
  %add3 = add i32 %24, %res.094
  %call = tail call i32 @cpumask_next(i32 noundef %call95, ptr noundef nonnull @__cpu_possible_mask) #22
  %cmp = icmp ult i32 %call, %9
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.cond7.preheader_crit_edge

do.body.for.cond7.preheader_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond7.preheader

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body11:                                        ; preds = %do.body11.do.body11_crit_edge, %do.body11.lr.ph
  %call8100 = phi i32 [ %call897, %do.body11.lr.ph ], [ %call8, %do.body11.do.body11_crit_edge ]
  %res5.099 = phi i32 [ 0, %do.body11.lr.ph ], [ %add24, %do.body11.do.body11_crit_edge ]
  %arrayidx20 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call8100
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx20, align 4
  %add21 = add i32 %26, %19
  %27 = inttoptr i32 %add21 to ptr
  %arrayidx23 = getelementptr %struct.disk_stats, ptr %27, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx23, align 4
  %add24 = add i32 %29, %res5.099
  %call8 = tail call i32 @cpumask_next(i32 noundef %call8100, ptr noundef nonnull @__cpu_possible_mask) #22
  %cmp9 = icmp ult i32 %call8, %9
  br i1 %cmp9, label %do.body11.do.body11_crit_edge, label %do.body11.for.end25_crit_edge

do.body11.for.end25_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end25

do.body11.do.body11_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11

for.end25:                                        ; preds = %do.body11.for.end25_crit_edge, %for.cond7.preheader.for.end25_crit_edge
  %res5.0.lcssa = phi i32 [ 0, %for.cond7.preheader.for.end25_crit_edge ], [ %add24, %do.body11.for.end25_crit_edge ]
  %add27 = add i32 %res5.0.lcssa, %res.0.lcssa
  %call31102 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__sanitizer_cov_trace_cmp4(i32 %call31102, i32 %9)
  %cmp32103 = icmp ult i32 %call31102, %9
  br i1 %cmp32103, label %do.body34.lr.ph, label %for.end25.for.end48_crit_edge

for.end25.for.end48_crit_edge:                    ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end48

do.body34.lr.ph:                                  ; preds = %for.end25
  %part040 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 7
  %30 = ptrtoint ptr %part040 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %part040, align 4
  %bd_stats41 = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %bd_stats41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bd_stats41, align 8
  %34 = ptrtoint ptr %33 to i32
  br label %do.body34

do.body34:                                        ; preds = %do.body34.do.body34_crit_edge, %do.body34.lr.ph
  %call31105 = phi i32 [ %call31102, %do.body34.lr.ph ], [ %call31, %do.body34.do.body34_crit_edge ]
  %res28.0104 = phi i32 [ 0, %do.body34.lr.ph ], [ %add47, %do.body34.do.body34_crit_edge ]
  %arrayidx43 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call31105
  %35 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx43, align 4
  %add44 = add i32 %36, %34
  %37 = inttoptr i32 %add44 to ptr
  %arrayidx46 = getelementptr %struct.disk_stats, ptr %37, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx46, align 8
  %add47 = add i32 %39, %res28.0104
  %call31 = tail call i32 @cpumask_next(i32 noundef %call31105, ptr noundef nonnull @__cpu_possible_mask) #22
  %cmp32 = icmp ult i32 %call31, %9
  br i1 %cmp32, label %do.body34.do.body34_crit_edge, label %do.body34.for.end48_crit_edge

do.body34.for.end48_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end48

do.body34.do.body34_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body34

for.end48:                                        ; preds = %do.body34.for.end48_crit_edge, %for.end25.for.end48_crit_edge
  %res28.0.lcssa = phi i32 [ 0, %for.end25.for.end48_crit_edge ], [ %add47, %do.body34.for.end48_crit_edge ]
  %add50 = add i32 %add27, %res28.0.lcssa
  %rs_last_events = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 99
  %40 = ptrtoint ptr %rs_last_events to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add50, ptr %rs_last_events, align 8
  %41 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %44, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !276
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %for.end48.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.end48.rcu_read_lock.exit_crit_edge:           ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.end48
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 696, ptr noundef nonnull @.str.102) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.end48.rcu_read_lock.exit_crit_edge
  %rs_plan_s = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 101
  %45 = ptrtoint ptr %rs_plan_s to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %rs_plan_s, align 8
  %call56 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool.not = icmp eq i32 %call56, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end62_crit_edge

rcu_read_lock.exit.do.end62_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end62

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call57 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %land.lhs.true.do.end62_crit_edge, label %land.lhs.true59

land.lhs.true.do.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end62

land.lhs.true59:                                  ; preds = %land.lhs.true
  %.b81 = load i1, ptr @drbd_rs_controller_reset.__warned, align 1
  br i1 %.b81, label %land.lhs.true59.do.end62_crit_edge, label %if.then

land.lhs.true59.do.end62_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end62

if.then:                                          ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @drbd_rs_controller_reset.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1692, ptr noundef nonnull @.str.37) #14
  br label %do.end62

do.end62:                                         ; preds = %if.then, %land.lhs.true59.do.end62_crit_edge, %land.lhs.true.do.end62_crit_edge, %rcu_read_lock.exit.do.end62_crit_edge
  %total = getelementptr inbounds %struct.fifo_buffer, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %total, align 4
  %size.i = getelementptr inbounds %struct.fifo_buffer, ptr %46, i32 0, i32 1
  %48 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp1.not.i = icmp eq i32 %49, 0
  br i1 %cmp1.not.i, label %do.end62.fifo_set.exit_crit_edge, label %do.end62.for.body.i_crit_edge

do.end62.for.body.i_crit_edge:                    ; preds = %do.end62
  br label %for.body.i

do.end62.fifo_set.exit_crit_edge:                 ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %fifo_set.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end62.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end62.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fifo_buffer, ptr %46, i32 0, i32 3, i32 %i.02.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.02.i, 1
  %51 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %52
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.fifo_set.exit_crit_edge

for.body.i.fifo_set.exit_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fifo_set.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

fifo_set.exit:                                    ; preds = %for.body.i.fifo_set.exit_crit_edge, %do.end62.fifo_set.exit_crit_edge
  %call.i83 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i83, label %fifo_set.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i86

fifo_set.exit.rcu_read_unlock.exit_crit_edge:     ; preds = %fifo_set.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i86:                                ; preds = %fifo_set.exit
  %call1.i84 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i84)
  %tobool.not.i85 = icmp eq i32 %call1.i84, 0
  br i1 %tobool.not.i85, label %land.lhs.true.i86.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i88

land.lhs.true.i86.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i86
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i88:                               ; preds = %land.lhs.true.i86
  %.b4.i87 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i87, label %land.lhs.true2.i88.rcu_read_unlock.exit_crit_edge, label %if.then.i89

land.lhs.true2.i88.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i88
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i89:                                      ; preds = %land.lhs.true2.i88
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 724, ptr noundef nonnull @.str.103) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i89, %land.lhs.true2.i88.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i86.rcu_read_unlock.exit_crit_edge, %fifo_set.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !277
  %53 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i90 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i90 to ptr
  %preempt_count.i.i.i.i91 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i91, align 4
  %sub.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i91, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @start_resync_timer_fn(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr i8, ptr %t, i32 -148
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 26, ptr noundef %flags.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.drbd_device_post_work.exit_crit_edge

entry.drbd_device_post_work.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %drbd_device_post_work.exit

if.then.i:                                        ; preds = %entry
  %peer_devices.i.i = getelementptr i8, ptr %t, i32 -208
  %0 = ptrtoint ptr %peer_devices.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %peer_devices.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %1, %peer_devices.i.i
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %1
  %connection2.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %connection2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection2.i, align 4
  %flags3.i = getelementptr inbounds %struct.drbd_connection, ptr %3, i32 0, i32 10
  %call4.i = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags3.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.then.i.drbd_device_post_work.exit_crit_edge

if.then.i.drbd_device_post_work.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %drbd_device_post_work.exit

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %q_wait.i = getelementptr inbounds %struct.drbd_connection, ptr %3, i32 0, i32 45, i32 2
  tail call void @__wake_up(ptr noundef %q_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %drbd_device_post_work.exit

drbd_device_post_work.exit:                       ; preds = %if.then6.i, %if.then.i.drbd_device_post_work.exit_crit_edge, %entry.drbd_device_post_work.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_start_resync(ptr noundef %device, i32 noundef %side) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_devices.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i = icmp eq ptr %1, %peer_devices.i
  %tobool.not350 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not350
  br i1 %tobool.not, label %cond.end.thread, label %cond.end

cond.end:                                         ; preds = %entry
  %connection1 = getelementptr inbounds %struct.drbd_peer_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %connection1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection1, align 4
  %state = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %state, align 8
  %bf.lshr = lshr i32 %bf.load, 4
  %bf.clear = and i32 %bf.lshr, 31
  %5 = add nsw i32 %bf.clear, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %6 = icmp ult i32 %5, 6
  br i1 %6, label %cond.end.do.end_crit_edge, label %if.end

cond.end.do.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

cond.end.thread:                                  ; preds = %entry
  %state340 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %7 = ptrtoint ptr %state340 to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load341 = load i32, ptr %state340, align 8
  %bf.lshr342 = lshr i32 %bf.load341, 4
  %bf.clear343 = and i32 %bf.lshr342, 31
  %8 = add nsw i32 %bf.clear343, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %9 = icmp ult i32 %8, 6
  br i1 %9, label %cond.end.thread.do.end_crit_edge, label %cond.end.thread.do.end11_crit_edge

cond.end.thread.do.end11_crit_edge:               ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11

cond.end.thread.do.end_crit_edge:                 ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %cond.end.thread.do.end_crit_edge, %cond.end.do.end_crit_edge
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %10 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device, ptr noundef nonnull @.str.56) #17
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end.do.end11_crit_edge, label %if.end15

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11

do.end11:                                         ; preds = %if.end.do.end11_crit_edge, %cond.end.thread.do.end11_crit_edge
  %vdisk12 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %14 = ptrtoint ptr %vdisk12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vdisk12, align 4
  %part013 = getelementptr inbounds %struct.gendisk, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %part013 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %part013, align 4
  %bd_device14 = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device14, ptr noundef nonnull @.str.59) #17
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %20 = and i32 %19, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool17.not = icmp eq i32 %20, 0
  br i1 %tobool17.not, label %if.then18, label %if.end15.if.end79_crit_edge

if.end15.if.end79_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %side)
  %cmp19 = icmp eq i32 %side, 17
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then18
  %call21 = tail call i32 @drbd_khelper(ptr noundef %device, ptr noundef nonnull @.str.61) #14
  %21 = lshr i32 %call21, 8
  %and = and i32 %21, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp22.not = icmp eq i32 %and, 0
  br i1 %cmp22.not, label %if.then20.if.end79_crit_edge, label %do.end26

if.then20.if.end79_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

do.end26:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk27 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %22 = ptrtoint ptr %vdisk27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vdisk27, align 4
  %part028 = getelementptr inbounds %struct.gendisk, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %part028 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %part028, align 4
  %bd_device29 = getelementptr inbounds %struct.block_device, ptr %25, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.14, ptr noundef %bd_device29, ptr noundef nonnull @.str.63, i32 noundef %and) #17
  %call39 = tail call i32 @conn_request_state(ptr noundef nonnull %3, [1 x i32] [i32 496], [1 x i32] [i32 16], i32 noundef 1) #14
  br label %cleanup

if.else:                                          ; preds = %if.then18
  %call41 = tail call i32 @drbd_khelper(ptr noundef %device, ptr noundef nonnull @.str.65) #14
  %26 = lshr i32 %call41, 8
  %trunc = trunc i32 %26 to i8
  %27 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %trunc, label %do.end57 [
    i8 0, label %if.else.if.end79_crit_edge
    i8 3, label %do.end50
  ]

if.else.if.end79_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

do.end50:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk51 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %28 = ptrtoint ptr %vdisk51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vdisk51, align 4
  %part052 = getelementptr inbounds %struct.gendisk, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %part052 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %part052, align 4
  %bd_device53 = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.14, ptr noundef %bd_device53, ptr noundef nonnull @.str.67, i32 noundef 3) #17
  br label %if.end79

do.end57:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %and43 = and i32 %26, 255
  %vdisk58 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %32 = ptrtoint ptr %vdisk58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vdisk58, align 4
  %part059 = getelementptr inbounds %struct.gendisk, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %part059 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %part059, align 4
  %bd_device60 = getelementptr inbounds %struct.block_device, ptr %35, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.14, ptr noundef %bd_device60, ptr noundef nonnull @.str.70, i32 noundef %and43) #17
  %call75 = tail call i32 @conn_request_state(ptr noundef nonnull %3, [1 x i32] [i32 496], [1 x i32] [i32 16], i32 noundef 1) #14
  br label %cleanup

if.end79:                                         ; preds = %do.end50, %if.else.if.end79_crit_edge, %if.then20.if.end79_crit_edge, %if.end15.if.end79_crit_edge
  %36 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task, align 8
  %task81 = getelementptr inbounds %struct.drbd_connection, ptr %3, i32 0, i32 39, i32 1
  %40 = ptrtoint ptr %task81 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task81, align 4
  %cmp82 = icmp eq ptr %39, %41
  %state_mutex = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 94
  %42 = ptrtoint ptr %state_mutex to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %state_mutex, align 4
  br i1 %cmp82, label %if.then83, label %if.else90

if.then83:                                        ; preds = %if.end79
  %call84 = tail call i32 @mutex_trylock(ptr noundef %43) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then86, label %if.then83.if.end92_crit_edge

if.then83.if.end92_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92

if.then86:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 18, ptr noundef %flags) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %44, 20
  %start_resync_timer = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 24
  %expires = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 24, i32 1
  %45 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %start_resync_timer) #14
  br label %cleanup

if.else90:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_lock_nested(ptr noundef %43, i32 noundef 0) #14
  br label %if.end92

if.end92:                                         ; preds = %if.else90, %if.then83.if.end92_crit_edge
  tail call void @lock_all_resources() #14
  tail call void @_clear_bit(i32 noundef 18, ptr noundef %flags) #14
  %46 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load95 = load i32, ptr %state, align 8
  %47 = and i32 %bf.load95, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %47)
  %cmp98 = icmp ult i32 %47, 160
  %48 = and i32 %bf.load95, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i = icmp eq i32 %48, 0
  %or.cond336 = or i1 %cmp98, %cmp.i
  br i1 %or.cond336, label %if.end92.if.then104_crit_edge, label %if.end.i

if.end92.if.then104_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then104

if.end.i:                                         ; preds = %if.end92
  %local_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i, i32 1, i32 3, i32 1) #14
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i, ptr %local_cnt.i, i32 1, ptr elementtype(i32) %local_cnt.i) #14, !srcloc !269
  %50 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %50)
  %bf.load2.i = load i32, ptr %state, align 8
  %51 = and i32 %bf.load2.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %51)
  %cmp5.not.i = icmp ult i32 %51, 1536
  br i1 %cmp5.not.i, label %if.then6.i, label %if.end105

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @put_ldev(ptr noundef %device) #14
  br label %if.then104

if.then104:                                       ; preds = %if.then6.i, %if.end92.if.then104_crit_edge
  tail call void @unlock_all_resources() #14
  br label %out

if.end105:                                        ; preds = %if.end.i
  %52 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device, align 8
  %54 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %state, align 8
  %susp.i = getelementptr inbounds %struct.drbd_resource, ptr %53, i32 0, i32 13
  %56 = ptrtoint ptr %susp.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load.i314 = load i8, ptr %susp.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i314, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %bf.shl.i = shl nuw nsw i32 %bf.cast.i, 17
  %bf.clear.i = and i32 %55, -6685169
  %bf.set.i = or i32 %bf.shl.i, %bf.clear.i
  %bf.lshr4.i = lshr i8 %bf.load.i314, 6
  %bf.value8.i = zext i8 %bf.lshr4.i to i32
  %bf.shl9.i = shl nuw nsw i32 %bf.value8.i, 21
  %bf.lshr13.i = lshr i8 %bf.load.i314, 5
  %57 = and i8 %bf.lshr13.i, 1
  %bf.value17.i = zext i8 %57 to i32
  %bf.shl18.i = shl nuw nsw i32 %bf.value17.i, 22
  %bf.shl9.masked.i = and i32 %bf.shl9.i, 2097152
  %bf.clear19.i = or i32 %bf.set.i, %bf.shl9.masked.i
  %call110 = tail call fastcc i32 @_drbd_may_sync_now(ptr noundef %device)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  %bf.shl = select i1 %tobool111.not, i32 262144, i32 0
  %bf.clear113 = or i32 %bf.clear19.i, %bf.shl18.i
  %bf.set114 = or i32 %bf.clear113, %bf.shl
  %bf.value116 = shl i32 %side, 4
  %bf.shl117 = and i32 %bf.value116, 496
  %bf.set119 = or i32 %bf.set114, %bf.shl117
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %side)
  %cmp120 = icmp eq i32 %side, 17
  %bf.clear123 = and i32 %bf.set119, -7681
  %bf.set124 = or i32 %bf.clear123, 2048
  %bf.clear127 = and i32 %bf.set119, -122881
  %bf.set128 = or i32 %bf.clear127, 32768
  %ns.sroa.0.0 = select i1 %cmp120, i32 %bf.set124, i32 %bf.set128
  %.fca.0.insert237 = insertvalue [1 x i32] poison, i32 %ns.sroa.0.0, 0
  %call132 = tail call i32 @_drbd_set_state(ptr noundef %device, [1 x i32] %.fca.0.insert237, i32 noundef 2, ptr noundef null) #14
  %58 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %state, align 8
  %bf.clear.i321 = lshr i32 %59, 4
  %bf.lshr138 = and i32 %bf.clear.i321, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bf.lshr138)
  %cmp140 = icmp ugt i32 %bf.lshr138, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call132)
  %cmp143337 = icmp eq i32 %call132, 1
  %cmp143 = select i1 %cmp140, i1 %cmp143337, i1 false
  br i1 %cmp143, label %if.then144, label %if.end214.critedge

if.then144:                                       ; preds = %if.end105
  %call145 = tail call i32 @drbd_bm_total_weight(ptr noundef %device) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %rs_failed = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 49
  %61 = ptrtoint ptr %rs_failed to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %rs_failed, align 8
  %rs_paused = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 51
  %62 = ptrtoint ptr %rs_paused to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %rs_paused, align 8
  %rs_same_csum = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 52
  %63 = ptrtoint ptr %rs_same_csum to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %rs_same_csum, align 4
  %rs_last_sect_ev = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 98
  %64 = ptrtoint ptr %rs_last_sect_ev to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %rs_last_sect_ev, align 4
  %rs_total = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 48
  %65 = ptrtoint ptr %rs_total to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call145, ptr %rs_total, align 4
  %rs_start = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 50
  %66 = ptrtoint ptr %rs_start to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %60, ptr %rs_start, align 4
  %arrayidx = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 53, i32 0
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call145, ptr %arrayidx, align 4
  %arrayidx147 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 54, i32 0
  %68 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %60, ptr %arrayidx147, align 4
  %arrayidx.1 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 53, i32 1
  %69 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call145, ptr %arrayidx.1, align 4
  %arrayidx147.1 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 54, i32 1
  %70 = ptrtoint ptr %arrayidx147.1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %60, ptr %arrayidx147.1, align 4
  %arrayidx.2 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 53, i32 2
  %71 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call145, ptr %arrayidx.2, align 4
  %arrayidx147.2 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 54, i32 2
  %72 = ptrtoint ptr %arrayidx147.2 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %60, ptr %arrayidx147.2, align 4
  %arrayidx.3 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 53, i32 3
  %73 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call145, ptr %arrayidx.3, align 4
  %arrayidx147.3 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 54, i32 3
  %74 = ptrtoint ptr %arrayidx147.3 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %60, ptr %arrayidx147.3, align 4
  %arrayidx.4 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 53, i32 4
  %75 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call145, ptr %arrayidx.4, align 4
  %arrayidx147.4 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 54, i32 4
  %76 = ptrtoint ptr %arrayidx147.4 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %60, ptr %arrayidx147.4, align 4
  %arrayidx.5 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 53, i32 5
  %77 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call145, ptr %arrayidx.5, align 4
  %arrayidx147.5 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 54, i32 5
  %78 = ptrtoint ptr %arrayidx147.5 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %60, ptr %arrayidx147.5, align 4
  %arrayidx.6 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 53, i32 6
  %79 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %call145, ptr %arrayidx.6, align 4
  %arrayidx147.6 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 54, i32 6
  %80 = ptrtoint ptr %arrayidx147.6 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %60, ptr %arrayidx147.6, align 4
  %arrayidx.7 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 53, i32 7
  %81 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call145, ptr %arrayidx.7, align 4
  %arrayidx147.7 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 54, i32 7
  %82 = ptrtoint ptr %arrayidx147.7 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %60, ptr %arrayidx147.7, align 4
  %83 = tail call fastcc zeroext i1 @drbd_pause_after()
  %al_lock = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 81
  tail call void @_raw_spin_lock(ptr noundef %al_lock) #14
  %resync = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 65
  %84 = ptrtoint ptr %resync to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %resync, align 4
  tail call void @lc_reset(ptr noundef %85) #14
  %resync_locked = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 66
  %86 = ptrtoint ptr %resync_locked to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %resync_locked, align 8
  %resync_wenr = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 67
  %87 = ptrtoint ptr %resync_wenr to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %resync_wenr, align 4
  tail call void @_raw_spin_unlock(ptr noundef %al_lock) #14
  tail call void @unlock_all_resources() #14
  %al_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 82
  tail call void @__wake_up(ptr noundef %al_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %88 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %88, -100
  %rs_last_bcast = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 56
  %89 = ptrtoint ptr %rs_last_bcast to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %sub, ptr %rs_last_bcast, align 4
  %vdisk156 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %90 = ptrtoint ptr %vdisk156 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %vdisk156, align 4
  %part0157 = getelementptr inbounds %struct.gendisk, ptr %91, i32 0, i32 7
  %92 = ptrtoint ptr %part0157 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %part0157, align 4
  %bd_device158 = getelementptr inbounds %struct.block_device, ptr %93, i32 0, i32 10
  %call162 = tail call ptr @drbd_conn_str(i32 noundef %bf.lshr138) #14
  %94 = ptrtoint ptr %rs_total to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rs_total, align 4
  %shl = shl i32 %95, 2
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.14, ptr noundef %bd_device158, ptr noundef nonnull @.str.73, ptr noundef %call162, i32 noundef %shl, i32 noundef %95) #17
  br i1 %cmp120, label %if.end170.thread, label %if.end170

if.end170.thread:                                 ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #16
  %bm_resync_fo = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 64
  %96 = ptrtoint ptr %bm_resync_fo to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %bm_resync_fo, align 8
  %call167 = tail call fastcc zeroext i1 @use_checksum_based_resync(ptr noundef nonnull %3, ptr noundef %device)
  %use_csums = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 47
  %frombool = zext i1 %call167 to i8
  %97 = ptrtoint ptr %use_csums to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %frombool, ptr %use_csums, align 8
  br label %if.end175

if.end170:                                        ; preds = %if.then144
  %use_csums169 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 47
  %98 = ptrtoint ptr %use_csums169 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %use_csums169, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %side)
  %cmp171 = icmp eq i32 %side, 16
  br i1 %cmp171, label %land.lhs.true172, label %if.end170.if.end175_crit_edge

if.end170.if.end175_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end175

land.lhs.true172:                                 ; preds = %if.end170
  %agreed_pro_version = getelementptr inbounds %struct.drbd_connection, ptr %3, i32 0, i32 19
  %99 = ptrtoint ptr %agreed_pro_version to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %agreed_pro_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %100)
  %cmp173 = icmp slt i32 %100, 96
  br i1 %cmp173, label %if.then174, label %land.lhs.true172.if.end175_crit_edge

land.lhs.true172.if.end175_crit_edge:             ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end175

if.then174:                                       ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @drbd_gen_and_send_sync_uuid(ptr noundef nonnull %1) #14
  br label %if.end175

if.end175:                                        ; preds = %if.then174, %land.lhs.true172.if.end175_crit_edge, %if.end170.if.end175_crit_edge, %if.end170.thread
  %cmp171335 = phi i1 [ false, %if.end170.thread ], [ true, %if.then174 ], [ true, %land.lhs.true172.if.end175_crit_edge ], [ false, %if.end170.if.end175_crit_edge ]
  %agreed_pro_version176 = getelementptr inbounds %struct.drbd_connection, ptr %3, i32 0, i32 19
  %101 = ptrtoint ptr %agreed_pro_version176 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %agreed_pro_version176, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %102)
  %cmp177 = icmp slt i32 %102, 95
  br i1 %cmp177, label %land.lhs.true178, label %if.end175.if.end206_crit_edge

if.end175.if.end206_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end206

land.lhs.true178:                                 ; preds = %if.end175
  %103 = ptrtoint ptr %rs_total to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rs_total, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp180 = icmp eq i32 %104, 0
  br i1 %cmp180, label %if.then181, label %land.lhs.true178.if.end206_crit_edge

land.lhs.true178.if.end206_crit_edge:             ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end206

if.then181:                                       ; preds = %land.lhs.true178
  br i1 %cmp171335, label %if.then183, label %if.then181.if.end204_crit_edge

if.then181.if.end204_crit_edge:                   ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end204

if.then183:                                       ; preds = %if.then181
  %105 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %108, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !276
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.then183.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then183.rcu_read_lock.exit_crit_edge:          ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then183
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 696, ptr noundef nonnull @.str.102) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then183.rcu_read_lock.exit_crit_edge
  %net_conf = getelementptr inbounds %struct.drbd_connection, ptr %3, i32 0, i32 11
  %109 = ptrtoint ptr %net_conf to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile ptr, ptr %net_conf, align 4
  %call189 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %land.lhs.true191, label %rcu_read_lock.exit.do.end199_crit_edge

rcu_read_lock.exit.do.end199_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end199

land.lhs.true191:                                 ; preds = %rcu_read_lock.exit
  %call192 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %land.lhs.true191.do.end199_crit_edge, label %land.lhs.true194

land.lhs.true191.do.end199_crit_edge:             ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end199

land.lhs.true194:                                 ; preds = %land.lhs.true191
  %.b312 = load i1, ptr @drbd_start_resync.__warned, align 1
  br i1 %.b312, label %land.lhs.true194.do.end199_crit_edge, label %if.then196

land.lhs.true194.do.end199_crit_edge:             ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end199

if.then196:                                       ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @drbd_start_resync.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1894, ptr noundef nonnull @.str.37) #14
  br label %do.end199

do.end199:                                        ; preds = %if.then196, %land.lhs.true194.do.end199_crit_edge, %land.lhs.true191.do.end199_crit_edge, %rcu_read_lock.exit.do.end199_crit_edge
  %ping_int = getelementptr inbounds %struct.net_conf, ptr %110, i32 0, i32 13
  %111 = ptrtoint ptr %ping_int to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ping_int, align 4
  %mul = mul i32 %112, 100
  %ping_timeo = getelementptr inbounds %struct.net_conf, ptr %110, i32 0, i32 14
  %113 = ptrtoint ptr %ping_timeo to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ping_timeo, align 4
  %mul201 = mul i32 %114, 100
  %div = udiv i32 %mul201, 9
  %add202 = add i32 %div, %mul
  tail call fastcc void @rcu_read_unlock()
  %call203 = tail call i32 @schedule_timeout_interruptible(i32 noundef %add202) #14
  br label %if.end204

if.end204:                                        ; preds = %do.end199, %if.then181.if.end204_crit_edge
  %call205 = tail call i32 @drbd_resync_finished(ptr noundef %device)
  br label %if.end206

if.end206:                                        ; preds = %if.end204, %land.lhs.true178.if.end206_crit_edge, %if.end175.if.end206_crit_edge
  tail call void @drbd_rs_controller_reset(ptr noundef %device)
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %bf.lshr138)
  %cmp210 = icmp eq i32 %bf.lshr138, 17
  br i1 %cmp210, label %if.then211, label %if.end206.if.end213_crit_edge

if.end206.if.end213_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end213

if.then211:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #16
  %resync_timer = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %115 = load volatile i32, ptr @jiffies, align 128
  %call212 = tail call i32 @mod_timer(ptr noundef %resync_timer, i32 noundef %115) #14
  br label %if.end213

if.end213:                                        ; preds = %if.then211, %if.end206.if.end213_crit_edge
  tail call void @drbd_md_sync(ptr noundef %device) #14
  br label %if.end214

if.end214.critedge:                               ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unlock_all_resources() #14
  br label %if.end214

if.end214:                                        ; preds = %if.end214.critedge, %if.end213
  tail call fastcc void @put_ldev(ptr noundef %device)
  br label %out

out:                                              ; preds = %if.end214, %if.then104
  %state_mutex215 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 94
  %116 = ptrtoint ptr %state_mutex215 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %state_mutex215, align 4
  tail call void @mutex_unlock(ptr noundef %117) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then86, %do.end57, %do.end26, %do.end11, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @conn_request_state(ptr noundef, [1 x i32], [1 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_drbd_may_sync_now(ptr nocapture noundef readonly %device) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %if.end20.while.cond_crit_edge, %entry
  %odev.0 = phi ptr [ %device, %entry ], [ %call.i74, %if.end20.while.cond_crit_edge ]
  %ldev = getelementptr inbounds %struct.drbd_device, ptr %odev.0, i32 0, i32 15
  %0 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ldev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %lor.lhs.false

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %while.cond
  %state = getelementptr inbounds %struct.drbd_device, ptr %odev.0, i32 0, i32 27
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %state, align 8
  %3 = and i32 %bf.load, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !276
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 696, ptr noundef nonnull @.str.102) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %8 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ldev, align 4
  %disk_conf = getelementptr inbounds %struct.drbd_backing_dev, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %disk_conf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %disk_conf, align 8
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end11_crit_edge

rcu_read_lock.exit.do.end11_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true6

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b62 = load i1, ptr @_drbd_may_sync_now.__warned, align 1
  br i1 %.b62, label %land.lhs.true6.do.end11_crit_edge, label %if.then8

land.lhs.true6.do.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @_drbd_may_sync_now.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1545, ptr noundef nonnull @.str.37) #14
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true6.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %rcu_read_lock.exit.do.end11_crit_edge
  %resync_after13 = getelementptr inbounds %struct.disk_conf, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %resync_after13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resync_after13, align 8
  %call.i65 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i65, label %do.end11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i68

do.end11.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i68:                                ; preds = %do.end11
  %call1.i66 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66)
  %tobool.not.i67 = icmp eq i32 %call1.i66, 0
  br i1 %tobool.not.i67, label %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i70

land.lhs.true.i68.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i70:                               ; preds = %land.lhs.true.i68
  %.b4.i69 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i69, label %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, label %if.then.i71

land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i71:                                      ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 724, ptr noundef nonnull @.str.103) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i71, %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, %do.end11.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !277
  %14 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i72 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i72 to ptr
  %preempt_count.i.i.i.i73 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i73, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i73, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp14 = icmp eq i32 %13, -1
  br i1 %cmp14, label %rcu_read_unlock.exit.cleanup_crit_edge, label %if.end16

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %rcu_read_unlock.exit
  %call.i74 = tail call ptr @idr_find(ptr noundef nonnull @drbd_devices, i32 noundef %13) #14
  %tobool18.not = icmp eq ptr %call.i74, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %state21 = getelementptr inbounds %struct.drbd_device, ptr %call.i74, i32 0, i32 27
  %18 = ptrtoint ptr %state21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load22 = load i32, ptr %state21, align 8
  %bf.lshr23 = lshr i32 %bf.load22, 4
  %bf.clear24 = and i32 %bf.lshr23, 31
  %19 = add nsw i32 %bf.clear24, -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %19)
  %20 = icmp ult i32 %19, -6
  %21 = and i32 %bf.load22, 1835008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %22 = icmp eq i32 %21, 0
  %or.cond = select i1 %20, i1 %22, i1 false
  br i1 %or.cond, label %if.end20.while.cond_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20.while.cond_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

cleanup:                                          ; preds = %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %rcu_read_unlock.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %while.cond.cleanup_crit_edge ], [ 1, %rcu_read_unlock.exit.cleanup_crit_edge ], [ 1, %if.end16.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lc_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drbd_conn_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @use_checksum_based_resync(ptr noundef %connection, ptr noundef %device) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !276
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 696, ptr noundef nonnull @.str.102) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %net_conf = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 11
  %4 = ptrtoint ptr %net_conf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %net_conf, align 4
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b20 = load i1, ptr @use_checksum_based_resync.__warned, align 1
  br i1 %.b20, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @use_checksum_based_resync.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1721, ptr noundef nonnull @.str.37) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %csums_after_crash_only9 = getelementptr inbounds %struct.net_conf, ptr %5, i32 0, i32 34
  %6 = ptrtoint ptr %csums_after_crash_only9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %csums_after_crash_only9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  %call.i21 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i21, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i24

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i24:                                ; preds = %do.end7
  %call1.i22 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool.not.i23, label %land.lhs.true.i24.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i26

land.lhs.true.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i26:                               ; preds = %land.lhs.true.i24
  %.b4.i25 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i25, label %land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge, label %if.then.i27

land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i27:                                      ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 724, ptr noundef nonnull @.str.103) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i27, %land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i24.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !277
  %8 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i28 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i28 to ptr
  %preempt_count.i.i.i.i29 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i29, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i29, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %agreed_pro_version = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 19
  %12 = ptrtoint ptr %agreed_pro_version to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %agreed_pro_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %13)
  %cmp = icmp sgt i32 %13, 88
  br i1 %cmp, label %land.lhs.true11, label %rcu_read_unlock.exit.land.end_crit_edge

rcu_read_unlock.exit.land.end_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.lhs.true11:                                  ; preds = %rcu_read_unlock.exit
  %csums_tfm = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 27
  %14 = ptrtoint ptr %csums_tfm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csums_tfm, align 4
  %tobool12.not = icmp eq ptr %15, null
  %brmerge = select i1 %tobool12.not, i1 true, i1 %tobool10.not
  %not.tobool12.not = xor i1 %tobool12.not, true
  br i1 %brmerge, label %land.lhs.true11.land.end_crit_edge, label %lor.rhs

land.lhs.true11.land.end_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

lor.rhs:                                          ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %18 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool17 = icmp ne i32 %18, 0
  br label %land.end

land.end:                                         ; preds = %lor.rhs, %land.lhs.true11.land.end_crit_edge, %rcu_read_unlock.exit.land.end_crit_edge
  %19 = phi i1 [ %not.tobool12.not, %land.lhs.true11.land.end_crit_edge ], [ false, %rcu_read_unlock.exit.land.end_crit_edge ], [ %tobool17, %lor.rhs ]
  ret i1 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_gen_and_send_sync_uuid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__update_timing_details(ptr nocapture noundef writeonly %tdp, ptr nocapture noundef %cb_nr, ptr noundef %cb, ptr noundef %fn, i32 noundef %line) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb_nr, align 4
  %rem = and i32 %1, 15
  %add.ptr = getelementptr %struct.drbd_thread_timing_details, ptr %tdp, i32 %rem
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %add.ptr, align 4
  %cb_addr = getelementptr %struct.drbd_thread_timing_details, ptr %tdp, i32 %rem, i32 1
  %4 = ptrtoint ptr %cb_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cb, ptr %cb_addr, align 4
  %caller_fn = getelementptr %struct.drbd_thread_timing_details, ptr %tdp, i32 %rem, i32 2
  %5 = ptrtoint ptr %caller_fn to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fn, ptr %caller_fn, align 4
  %line1 = getelementptr %struct.drbd_thread_timing_details, ptr %tdp, i32 %rem, i32 3
  %6 = ptrtoint ptr %line1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %line, ptr %line1, align 4
  %7 = load i32, ptr %cb_nr, align 4
  %cb_nr2 = getelementptr %struct.drbd_thread_timing_details, ptr %tdp, i32 %rem, i32 4
  %8 = ptrtoint ptr %cb_nr2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cb_nr2, align 4
  %add = add i32 %1, 1
  %rem3 = and i32 %add, 15
  %add.ptr4 = getelementptr %struct.drbd_thread_timing_details, ptr %tdp, i32 %rem3
  %9 = call ptr @memset(ptr %add.ptr4, i32 0, i32 20)
  %10 = load i32, ptr %cb_nr, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %cb_nr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_worker(ptr noundef %thi) local_unnamed_addr #0 align 64 {
entry:
  %work_list = alloca %struct.list_head, align 4
  %vnr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %connection1 = getelementptr inbounds %struct.drbd_thread, ptr %thi, i32 0, i32 6
  %0 = ptrtoint ptr %connection1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connection1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %work_list) #14
  %2 = getelementptr inbounds %struct.list_head, ptr %work_list, i32 0, i32 1
  %3 = ptrtoint ptr %work_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %work_list, ptr %work_list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %work_list, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vnr) #14
  %5 = ptrtoint ptr %vnr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %vnr, align 4, !annotation !278
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !287
  %t_state.i = getelementptr inbounds %struct.drbd_thread, ptr %thi, i32 0, i32 3
  %6 = ptrtoint ptr %t_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp241 = icmp eq i32 %7, 1
  br i1 %cmp241, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %w_timing_details = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 48
  %w_cb_nr = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 46
  %flags = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 10
  %resource = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 1
  %cstate = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  call void @drbd_thread_current_set_cpu(ptr noundef %thi) #14
  %8 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %work_list, align 4
  %cmp.i.not = icmp eq ptr %9, %work_list
  br i1 %cmp.i.not, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %w_cb_nr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %w_cb_nr, align 4
  %rem.i = and i32 %11, 15
  %add.ptr.i = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details, i32 %rem.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr.i, align 4
  %cb_addr.i = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details, i32 %rem.i, i32 1
  %14 = ptrtoint ptr %cb_addr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @wait_for_work, ptr %cb_addr.i, align 4
  %caller_fn.i = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details, i32 %rem.i, i32 2
  %15 = ptrtoint ptr %caller_fn.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @__func__.drbd_worker, ptr %caller_fn.i, align 4
  %line1.i = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details, i32 %rem.i, i32 3
  %16 = ptrtoint ptr %line1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2179, ptr %line1.i, align 4
  %cb_nr2.i = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details, i32 %rem.i, i32 4
  %17 = ptrtoint ptr %cb_nr2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %11, ptr %cb_nr2.i, align 4
  %add.i = add i32 %11, 1
  %rem3.i = and i32 %add.i, 15
  %add.ptr4.i = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details, i32 %rem3.i
  %18 = call ptr @memset(ptr %add.ptr4.i, i32 0, i32 20)
  store i32 %add.i, ptr %w_cb_nr, align 4
  call void @wait_for_work(ptr noundef %1, ptr noundef nonnull %work_list)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %call3 = call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %w_cb_nr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %w_cb_nr, align 4
  %rem.i160 = and i32 %20, 15
  %add.ptr.i161 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details, i32 %rem.i160
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %22 = ptrtoint ptr %add.ptr.i161 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %add.ptr.i161, align 4
  %cb_addr.i162 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details, i32 %rem.i160, i32 1
  %23 = ptrtoint ptr %cb_addr.i162 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @do_unqueued_work, ptr %cb_addr.i162, align 4
  %caller_fn.i163 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details, i32 %rem.i160, i32 2
  %24 = ptrtoint ptr %caller_fn.i163 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @__func__.drbd_worker, ptr %caller_fn.i163, align 4
  %line1.i164 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details, i32 %rem.i160, i32 3
  %25 = ptrtoint ptr %line1.i164 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2184, ptr %line1.i164, align 4
  %cb_nr2.i165 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details, i32 %rem.i160, i32 4
  %26 = ptrtoint ptr %cb_nr2.i165 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %20, ptr %cb_nr2.i165, align 4
  %add.i166 = add i32 %20, 1
  %rem3.i167 = and i32 %add.i166, 15
  %add.ptr4.i168 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details, i32 %rem3.i167
  %27 = call ptr @memset(ptr %add.ptr4.i168, i32 0, i32 20)
  store i32 %add.i166, ptr %w_cb_nr, align 4
  call void @do_unqueued_work(ptr noundef %1)
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %28 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stack.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %36 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i170 = icmp eq i32 %36, 0
  br i1 %tobool.not.i170, label %signal_pending.exit, label %if.end9.if.then13_crit_edge, !prof !272

if.end9.if.then13_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

signal_pending.exit:                              ; preds = %if.end9
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %33, align 4
  %and1.i.i.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool12.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool12.not, label %if.end21, label %signal_pending.exit.if.then13_crit_edge

signal_pending.exit.if.then13_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

if.then13:                                        ; preds = %signal_pending.exit.if.then13_crit_edge, %if.end9.if.then13_crit_edge
  call void @flush_signals(ptr noundef %31) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !287
  %39 = ptrtoint ptr %t_state.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %t_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp17 = icmp eq i32 %40, 1
  br i1 %cmp17, label %do.end, label %if.then13.while.end_crit_edge

if.then13.while.end_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %resource, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %44) #17
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then44, %if.end40.while.cond.backedge_crit_edge, %list_del_init.exit.while.cond.backedge_crit_edge, %if.end25.while.cond.backedge_crit_edge, %do.end
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !287
  %45 = ptrtoint ptr %t_state.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %t_state.i, align 4
  %cmp = icmp eq i32 %46, 1
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end21:                                         ; preds = %signal_pending.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !287
  %47 = ptrtoint ptr %t_state.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %t_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp23.not = icmp eq i32 %48, 1
  br i1 %cmp23.not, label %if.end25, label %if.end21.while.end_crit_edge

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end25:                                         ; preds = %if.end21
  %49 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %work_list, align 4
  %cmp.i173.not = icmp eq ptr %50, %work_list
  br i1 %cmp.i173.not, label %if.end25.while.cond.backedge_crit_edge, label %if.then28

if.end25.while.cond.backedge_crit_edge:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then28:                                        ; preds = %if.end25
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %50) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then28.list_del_init.exit_crit_edge

if.then28.list_del_init.exit_crit_edge:           ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %50, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then28.list_del_init.exit_crit_edge
  %57 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %50, ptr %50, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %50, ptr %prev.i3.i, align 4
  %cb = getelementptr inbounds %struct.drbd_work, ptr %50, i32 0, i32 1
  %59 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cb, align 4
  %61 = ptrtoint ptr %w_cb_nr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %w_cb_nr, align 4
  %rem.i175 = and i32 %62, 15
  %add.ptr.i176 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details, i32 %rem.i175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %64 = ptrtoint ptr %add.ptr.i176 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %add.ptr.i176, align 4
  %cb_addr.i177 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details, i32 %rem.i175, i32 1
  %65 = ptrtoint ptr %cb_addr.i177 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %60, ptr %cb_addr.i177, align 4
  %caller_fn.i178 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details, i32 %rem.i175, i32 2
  %66 = ptrtoint ptr %caller_fn.i178 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @__func__.drbd_worker, ptr %caller_fn.i178, align 4
  %line1.i179 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details, i32 %rem.i175, i32 3
  %67 = ptrtoint ptr %line1.i179 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2203, ptr %line1.i179, align 4
  %cb_nr2.i180 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details, i32 %rem.i175, i32 4
  %68 = ptrtoint ptr %cb_nr2.i180 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %62, ptr %cb_nr2.i180, align 4
  %add.i181 = add i32 %62, 1
  %rem3.i182 = and i32 %add.i181, 15
  %add.ptr4.i183 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details, i32 %rem3.i182
  %69 = call ptr @memset(ptr %add.ptr4.i183, i32 0, i32 20)
  store i32 %add.i181, ptr %w_cb_nr, align 4
  %70 = load ptr, ptr %cb, align 4
  %71 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %72)
  %cmp35 = icmp ult i32 %72, 9
  %conv = zext i1 %cmp35 to i32
  %call36 = call i32 %70(ptr noundef %50, i32 noundef %conv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %list_del_init.exit.while.cond.backedge_crit_edge, label %if.end40

list_del_init.exit.while.cond.backedge_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.end40:                                         ; preds = %list_del_init.exit
  %73 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %74)
  %cmp42 = icmp ugt i32 %74, 8
  br i1 %cmp42, label %if.then44, label %if.end40.while.cond.backedge_crit_edge

if.end40.while.cond.backedge_crit_edge:           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %call52 = call i32 @conn_request_state(ptr noundef %1, [1 x i32] [i32 496], [1 x i32] [i32 80], i32 noundef 1) #14
  br label %while.cond.backedge

while.end:                                        ; preds = %if.end21.while.end_crit_edge, %while.cond.backedge.while.end_crit_edge, %if.then13.while.end_crit_edge, %entry.while.end_crit_edge
  %flags56 = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 10
  %w_timing_details60 = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 48
  %w_cb_nr62 = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 46
  %sender_work = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 45
  %q_lock.i = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 45, i32 1
  %prev2.i.i.i = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 45, i32 0, i32 1
  br label %do.body55

do.body55:                                        ; preds = %do.body55.backedge, %while.end
  %call57 = call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %flags56) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %do.body55.if.end63_crit_edge, label %if.then59

do.body55.if.end63_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then59:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #16
  %75 = ptrtoint ptr %w_cb_nr62 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %w_cb_nr62, align 4
  %rem.i185 = and i32 %76, 15
  %add.ptr.i186 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details60, i32 %rem.i185
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %78 = ptrtoint ptr %add.ptr.i186 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %add.ptr.i186, align 4
  %cb_addr.i187 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details60, i32 %rem.i185, i32 1
  %79 = ptrtoint ptr %cb_addr.i187 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @do_unqueued_work, ptr %cb_addr.i187, align 4
  %caller_fn.i188 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details60, i32 %rem.i185, i32 2
  %80 = ptrtoint ptr %caller_fn.i188 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @__func__.drbd_worker, ptr %caller_fn.i188, align 4
  %line1.i189 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details60, i32 %rem.i185, i32 3
  %81 = ptrtoint ptr %line1.i189 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 2213, ptr %line1.i189, align 4
  %cb_nr2.i190 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details60, i32 %rem.i185, i32 4
  %82 = ptrtoint ptr %cb_nr2.i190 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %76, ptr %cb_nr2.i190, align 4
  %add.i191 = add i32 %76, 1
  %rem3.i192 = and i32 %add.i191, 15
  %add.ptr4.i193 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details60, i32 %rem3.i192
  %83 = call ptr @memset(ptr %add.ptr4.i193, i32 0, i32 20)
  store i32 %add.i191, ptr %w_cb_nr62, align 4
  call void @do_unqueued_work(ptr noundef %1)
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %do.body55.if.end63_crit_edge
  %84 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %work_list, align 4
  %cmp.i195.not = icmp eq ptr %85, %work_list
  br i1 %cmp.i195.not, label %if.else, label %if.then66

if.then66:                                        ; preds = %if.end63
  %call.i.i197 = call zeroext i1 @__list_del_entry_valid(ptr noundef %85) #14
  br i1 %call.i.i197, label %if.end.i.i200, label %if.then66.list_del_init.exit202_crit_edge

if.then66.list_del_init.exit202_crit_edge:        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit202

if.end.i.i200:                                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i198 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i198 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i.i198, align 4
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %85, align 4
  %prev1.i.i.i199 = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i.i199 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %prev1.i.i.i199, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %89, ptr %87, align 4
  br label %list_del_init.exit202

list_del_init.exit202:                            ; preds = %if.end.i.i200, %if.then66.list_del_init.exit202_crit_edge
  %92 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %85, ptr %85, align 4
  %prev.i3.i201 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i3.i201 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %85, ptr %prev.i3.i201, align 4
  %cb75 = getelementptr inbounds %struct.drbd_work, ptr %85, i32 0, i32 1
  %94 = ptrtoint ptr %cb75 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cb75, align 4
  %96 = ptrtoint ptr %w_cb_nr62 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %w_cb_nr62, align 4
  %rem.i203 = and i32 %97, 15
  %add.ptr.i204 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details60, i32 %rem.i203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %98 = load volatile i32, ptr @jiffies, align 128
  %99 = ptrtoint ptr %add.ptr.i204 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %add.ptr.i204, align 4
  %cb_addr.i205 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details60, i32 %rem.i203, i32 1
  %100 = ptrtoint ptr %cb_addr.i205 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %95, ptr %cb_addr.i205, align 4
  %caller_fn.i206 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details60, i32 %rem.i203, i32 2
  %101 = ptrtoint ptr %caller_fn.i206 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @__func__.drbd_worker, ptr %caller_fn.i206, align 4
  %line1.i207 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details60, i32 %rem.i203, i32 3
  %102 = ptrtoint ptr %line1.i207 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 2219, ptr %line1.i207, align 4
  %cb_nr2.i208 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details60, i32 %rem.i203, i32 4
  %103 = ptrtoint ptr %cb_nr2.i208 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %97, ptr %cb_nr2.i208, align 4
  %add.i209 = add i32 %97, 1
  %rem3.i210 = and i32 %add.i209, 15
  %add.ptr4.i211 = getelementptr %struct.drbd_thread_timing_details, ptr %w_timing_details60, i32 %rem3.i210
  %104 = call ptr @memset(ptr %add.ptr4.i211, i32 0, i32 20)
  store i32 %add.i209, ptr %w_cb_nr62, align 4
  %105 = load ptr, ptr %cb75, align 4
  %call77 = call i32 %105(ptr noundef %85, i32 noundef 1) #14
  br label %do.cond80

if.else:                                          ; preds = %if.end63
  call void @_raw_spin_lock_irq(ptr noundef %q_lock.i) #14
  %106 = ptrtoint ptr %sender_work to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile ptr, ptr %sender_work, align 4
  %cmp.i.not.i.i = icmp eq ptr %107, %sender_work
  br i1 %cmp.i.not.i.i, label %if.else.dequeue_work_batch.exit_crit_edge, label %if.then.i.i

if.else.dequeue_work_batch.exit_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %dequeue_work_batch.exit

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %108 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %2, align 4
  %110 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %112 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %109, ptr %prev3.i.i.i, align 4
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %107, ptr %109, align 4
  %114 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %work_list, ptr %111, align 4
  store ptr %111, ptr %2, align 4
  %115 = ptrtoint ptr %sender_work to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %sender_work, ptr %sender_work, align 4
  store ptr %sender_work, ptr %prev2.i.i.i, align 4
  br label %dequeue_work_batch.exit

dequeue_work_batch.exit:                          ; preds = %if.then.i.i, %if.else.dequeue_work_batch.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %q_lock.i) #14
  %116 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile ptr, ptr %work_list, align 4
  br label %do.cond80

do.cond80:                                        ; preds = %dequeue_work_batch.exit, %list_del_init.exit202
  %118 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile ptr, ptr %work_list, align 4
  %cmp.i214.not = icmp eq ptr %119, %work_list
  br i1 %cmp.i214.not, label %lor.rhs, label %do.cond80.do.body55.backedge_crit_edge

do.cond80.do.body55.backedge_crit_edge:           ; preds = %do.cond80
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body55.backedge

lor.rhs:                                          ; preds = %do.cond80
  %120 = ptrtoint ptr %flags56 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %flags56, align 4
  %122 = and i32 %121, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool85.not = icmp eq i32 %122, 0
  br i1 %tobool85.not, label %do.end86, label %lor.rhs.do.body55.backedge_crit_edge

lor.rhs.do.body55.backedge_crit_edge:             ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body55.backedge

do.body55.backedge:                               ; preds = %lor.rhs.do.body55.backedge_crit_edge, %do.cond80.do.body55.backedge_crit_edge
  br label %do.body55

do.end86:                                         ; preds = %lor.rhs
  %123 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i = and i32 %123, -16384
  %124 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %126, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !276
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %do.end86.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end86.rcu_read_lock.exit_crit_edge:            ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end86
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 696, ptr noundef nonnull @.str.102) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end86.rcu_read_lock.exit_crit_edge
  %peer_devices = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 6
  %127 = ptrtoint ptr %vnr to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %vnr, align 4
  %call87242 = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #14
  %cmp88.not243 = icmp eq ptr %call87242, null
  br i1 %cmp88.not243, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %rcu_read_lock.exit159.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %call87244 = phi ptr [ %call87, %rcu_read_lock.exit159.for.body_crit_edge ], [ %call87242, %rcu_read_lock.exit.for.body_crit_edge ]
  %device90 = getelementptr inbounds %struct.drbd_peer_device, ptr %call87244, i32 0, i32 1
  %128 = ptrtoint ptr %device90 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %device90, align 4
  %state = getelementptr inbounds %struct.drbd_device, ptr %129, i32 0, i32 27
  %130 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %130)
  %bf.load92 = load i32, ptr %state, align 8
  %131 = and i32 %bf.load92, 8176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %for.body.do.end108_crit_edge, label %do.end105

for.body.do.end108_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end108

do.end105:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %129, i32 0, i32 18
  %133 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %134, i32 0, i32 7
  %135 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %136, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.1, i32 noundef 2228) #17
  br label %do.end108

do.end108:                                        ; preds = %do.end105, %for.body.do.end108_crit_edge
  %kref = getelementptr inbounds %struct.drbd_device, ptr %129, i32 0, i32 13
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %137 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !270
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %137, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end108.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !271

do.end108.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end108
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %138 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %138)
  %.not.i.i.i.i = icmp sgt i32 %138, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !272

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end108.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end108.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #14
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %call.i216 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i216, label %kref_get.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i219

kref_get.exit.rcu_read_unlock.exit_crit_edge:     ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i219:                               ; preds = %kref_get.exit
  %call1.i217 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i217)
  %tobool.not.i218 = icmp eq i32 %call1.i217, 0
  br i1 %tobool.not.i218, label %land.lhs.true.i219.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i221

land.lhs.true.i219.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i219
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i221:                              ; preds = %land.lhs.true.i219
  %.b4.i220 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i220, label %land.lhs.true2.i221.rcu_read_unlock.exit_crit_edge, label %if.then.i222

land.lhs.true2.i221.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i221
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i222:                                     ; preds = %land.lhs.true2.i221
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 724, ptr noundef nonnull @.str.103) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i222, %land.lhs.true2.i221.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i219.rcu_read_unlock.exit_crit_edge, %kref_get.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !277
  %139 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i223 = and i32 %139, -16384
  %140 = inttoptr i32 %and.i.i.i.i.i223 to ptr
  %preempt_count.i.i.i.i224 = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %preempt_count.i.i.i.i224 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %preempt_count.i.i.i.i224, align 4
  %sub.i.i.i = add i32 %142, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i224, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @drbd_device_cleanup(ptr noundef %129) #14
  %call.i.i.i.i.i.i225 = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !273
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %143 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !274
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %143, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i227, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i226 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i226, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !272

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #14
  br label %kref_put.exit

if.then.i227:                                     ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !275
  call void @drbd_destroy_device(ptr noundef %kref) #14
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i227, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %144 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i149 = and i32 %144, -16384
  %145 = inttoptr i32 %and.i.i.i.i.i149 to ptr
  %preempt_count.i.i.i.i150 = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %preempt_count.i.i.i.i150 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %preempt_count.i.i.i.i150, align 4
  %add.i.i.i151 = add i32 %147, 1
  store volatile i32 %add.i.i.i151, ptr %preempt_count.i.i.i.i150, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !276
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i152 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i152, label %kref_put.exit.rcu_read_lock.exit159_crit_edge, label %land.lhs.true.i155

kref_put.exit.rcu_read_lock.exit159_crit_edge:    ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit159

land.lhs.true.i155:                               ; preds = %kref_put.exit
  %call1.i153 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i153)
  %tobool.not.i154 = icmp eq i32 %call1.i153, 0
  br i1 %tobool.not.i154, label %land.lhs.true.i155.rcu_read_lock.exit159_crit_edge, label %land.lhs.true2.i157

land.lhs.true.i155.rcu_read_lock.exit159_crit_edge: ; preds = %land.lhs.true.i155
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit159

land.lhs.true2.i157:                              ; preds = %land.lhs.true.i155
  %.b4.i156 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i156, label %land.lhs.true2.i157.rcu_read_lock.exit159_crit_edge, label %if.then.i158

land.lhs.true2.i157.rcu_read_lock.exit159_crit_edge: ; preds = %land.lhs.true2.i157
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit159

if.then.i158:                                     ; preds = %land.lhs.true2.i157
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 696, ptr noundef nonnull @.str.102) #14
  br label %rcu_read_lock.exit159

rcu_read_lock.exit159:                            ; preds = %if.then.i158, %land.lhs.true2.i157.rcu_read_lock.exit159_crit_edge, %land.lhs.true.i155.rcu_read_lock.exit159_crit_edge, %kref_put.exit.rcu_read_lock.exit159_crit_edge
  %148 = ptrtoint ptr %vnr to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %vnr, align 4
  %add = add i32 %149, 1
  store i32 %add, ptr %vnr, align 4
  %call87 = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #14
  %cmp88.not = icmp eq ptr %call87, null
  br i1 %cmp88.not, label %rcu_read_lock.exit159.for.end_crit_edge, label %rcu_read_lock.exit159.for.body_crit_edge

rcu_read_lock.exit159.for.body_crit_edge:         ; preds = %rcu_read_lock.exit159
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

rcu_read_lock.exit159.for.end_crit_edge:          ; preds = %rcu_read_lock.exit159
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %rcu_read_lock.exit159.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i228 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i228, label %for.end.rcu_read_unlock.exit238_crit_edge, label %land.lhs.true.i231

for.end.rcu_read_unlock.exit238_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit238

land.lhs.true.i231:                               ; preds = %for.end
  %call1.i229 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i229)
  %tobool.not.i230 = icmp eq i32 %call1.i229, 0
  br i1 %tobool.not.i230, label %land.lhs.true.i231.rcu_read_unlock.exit238_crit_edge, label %land.lhs.true2.i233

land.lhs.true.i231.rcu_read_unlock.exit238_crit_edge: ; preds = %land.lhs.true.i231
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit238

land.lhs.true2.i233:                              ; preds = %land.lhs.true.i231
  %.b4.i232 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i232, label %land.lhs.true2.i233.rcu_read_unlock.exit238_crit_edge, label %if.then.i234

land.lhs.true2.i233.rcu_read_unlock.exit238_crit_edge: ; preds = %land.lhs.true2.i233
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit238

if.then.i234:                                     ; preds = %land.lhs.true2.i233
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 724, ptr noundef nonnull @.str.103) #14
  br label %rcu_read_unlock.exit238

rcu_read_unlock.exit238:                          ; preds = %if.then.i234, %land.lhs.true2.i233.rcu_read_unlock.exit238_crit_edge, %land.lhs.true.i231.rcu_read_unlock.exit238_crit_edge, %for.end.rcu_read_unlock.exit238_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !277
  %150 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i235 = and i32 %150, -16384
  %151 = inttoptr i32 %and.i.i.i.i.i235 to ptr
  %preempt_count.i.i.i.i236 = getelementptr inbounds %struct.thread_info, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %preempt_count.i.i.i.i236 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %preempt_count.i.i.i.i236, align 4
  %sub.i.i.i237 = add i32 %153, -1
  store volatile i32 %sub.i.i.i237, ptr %preempt_count.i.i.i.i236, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vnr) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %work_list) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_thread_current_set_cpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wait_for_work(ptr noundef %connection, ptr noundef %work_list) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #14
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %sender_work = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 45
  %q_lock.i = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 45, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %q_lock.i) #14
  %13 = ptrtoint ptr %sender_work to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %sender_work, align 4
  %cmp.i.not.i.i = icmp eq ptr %14, %sender_work
  br i1 %cmp.i.not.i.i, label %entry.dequeue_work_batch.exit_crit_edge, label %if.then.i.i

entry.dequeue_work_batch.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dequeue_work_batch.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %work_list, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 45, i32 0, i32 1
  %17 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %14, ptr %16, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %work_list, ptr %18, align 4
  store ptr %18, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %sender_work to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %sender_work, ptr %sender_work, align 4
  store ptr %sender_work, ptr %prev2.i.i.i, align 4
  br label %dequeue_work_batch.exit

dequeue_work_batch.exit:                          ; preds = %if.then.i.i, %entry.dequeue_work_batch.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %q_lock.i) #14
  %23 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %work_list, align 4
  %25 = load volatile ptr, ptr %work_list, align 4
  %cmp.i.not = icmp eq ptr %25, %work_list
  br i1 %cmp.i.not, label %if.end, label %dequeue_work_batch.exit.cleanup118_crit_edge

dequeue_work_batch.exit.cleanup118_crit_edge:     ; preds = %dequeue_work_batch.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup118

if.end:                                           ; preds = %dequeue_work_batch.exit
  %26 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !276
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 696, ptr noundef nonnull @.str.102) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %net_conf = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 11
  %30 = ptrtoint ptr %net_conf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %net_conf, align 4
  %call7 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end16_crit_edge

rcu_read_lock.exit.do.end16_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call9 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b162 = load i1, ptr @wait_for_work.__warned, align 1
  br i1 %.b162, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @wait_for_work.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2099, ptr noundef nonnull @.str.37) #14
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true.do.end16_crit_edge, %rcu_read_lock.exit.do.end16_crit_edge
  %tobool18.not = icmp eq ptr %31, null
  br i1 %tobool18.not, label %do.end16.cond.end_crit_edge, label %cond.true

do.end16.cond.end_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #16
  %tcp_cork = getelementptr inbounds %struct.net_conf, ptr %31, i32 0, i32 30
  %32 = ptrtoint ptr %tcp_cork to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tcp_cork, align 2
  %conv = zext i8 %33 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end16.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %do.end16.cond.end_crit_edge ]
  %call.i174 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i174, label %cond.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i177

cond.end.rcu_read_unlock.exit_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i177:                               ; preds = %cond.end
  %call1.i175 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i175)
  %tobool.not.i176 = icmp eq i32 %call1.i175, 0
  br i1 %tobool.not.i176, label %land.lhs.true.i177.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i179

land.lhs.true.i177.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i177
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i179:                              ; preds = %land.lhs.true.i177
  %.b4.i178 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i178, label %land.lhs.true2.i179.rcu_read_unlock.exit_crit_edge, label %if.then.i180

land.lhs.true2.i179.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i179
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i180:                                     ; preds = %land.lhs.true2.i179
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 724, ptr noundef nonnull @.str.103) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i180, %land.lhs.true2.i179.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i177.rcu_read_unlock.exit_crit_edge, %cond.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !277
  %34 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i181 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i181 to ptr
  %preempt_count.i.i.i.i182 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i182 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i182, align 4
  %sub.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i182, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool19.not = icmp eq i32 %cond, 0
  br i1 %tobool19.not, label %rcu_read_unlock.exit.if.end29_crit_edge, label %if.then20

rcu_read_unlock.exit.if.end29_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then20:                                        ; preds = %rcu_read_unlock.exit
  %data = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 17
  call void @mutex_lock_nested(ptr noundef %data, i32 noundef 0) #14
  %socket = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 17, i32 1
  %38 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %socket, align 4
  %tobool22.not = icmp eq ptr %39, null
  br i1 %tobool22.not, label %if.then20.if.end26_crit_edge, label %if.then23

if.then20.if.end26_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %sk = getelementptr inbounds %struct.socket, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sk, align 16
  call void @tcp_sock_set_cork(ptr noundef %41, i1 noundef zeroext false) #14
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.then20.if.end26_crit_edge
  call void @mutex_unlock(ptr noundef %data) #14
  br label %if.end29

if.end29:                                         ; preds = %if.end26, %rcu_read_unlock.exit.if.end29_crit_edge
  %q_wait = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 45, i32 2
  %resource = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.list_head, ptr %work_list, i32 0, i32 1
  %prev2.i.i = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 45, i32 0, i32 1
  %current_tle_nr = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 34
  %current_epoch_nr = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 50, i32 2
  %seen_any_write_yet.i = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 50, i32 1
  %current_epoch_writes.i = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 50, i32 3
  %data.i.i = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 17
  %send.i.i = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 50
  %flags60 = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 10
  %t_state.i = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 39, i32 3
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end29
  call void @prepare_to_wait(ptr noundef %q_wait, ptr noundef nonnull %wait, i32 noundef 1) #14
  %42 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %resource, align 4
  %req_lock = getelementptr inbounds %struct.drbd_resource, ptr %43, i32 0, i32 12
  call void @_raw_spin_lock_irq(ptr noundef %req_lock) #14
  call void @_raw_spin_lock(ptr noundef %q_lock.i) #14
  %44 = ptrtoint ptr %sender_work to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %sender_work, align 4
  %cmp.i183.not = icmp eq ptr %45, %sender_work
  br i1 %cmp.i183.not, label %for.cond.if.end38_crit_edge, label %if.then35

for.cond.if.end38_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then35:                                        ; preds = %for.cond
  %46 = ptrtoint ptr %sender_work to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %sender_work, align 4
  %cmp.i.not.i = icmp eq ptr %47, %sender_work
  br i1 %cmp.i.not.i, label %if.then35.if.end38_crit_edge, label %if.then.i185

if.then35.if.end38_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then.i185:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i, align 4
  %50 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %47, ptr %49, align 4
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %work_list, ptr %51, align 4
  store ptr %51, ptr %prev.i, align 4
  %55 = ptrtoint ptr %sender_work to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %sender_work, ptr %sender_work, align 4
  store ptr %sender_work, ptr %prev2.i.i, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then.i185, %if.then35.if.end38_crit_edge, %for.cond.if.end38_crit_edge
  call void @_raw_spin_unlock(ptr noundef %q_lock.i) #14
  %56 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %work_list, align 4
  %cmp.i186.not = icmp eq ptr %57, %work_list
  br i1 %cmp.i186.not, label %lor.lhs.false, label %if.end38.if.then47_crit_edge

if.end38.if.then47_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

lor.lhs.false:                                    ; preds = %if.end38
  %58 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %stack.i.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %61, align 4
  %64 = and i32 %63, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i188 = icmp eq i32 %64, 0
  br i1 %tobool.not.i188, label %signal_pending.exit, label %lor.lhs.false.if.then47_crit_edge, !prof !272

lor.lhs.false.if.then47_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

signal_pending.exit:                              ; preds = %lor.lhs.false
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %61, align 4
  %and1.i.i.i.i.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool46.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool46.not, label %if.end50, label %signal_pending.exit.if.then47_crit_edge

signal_pending.exit.if.then47_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

if.then47:                                        ; preds = %signal_pending.exit.if.then47_crit_edge, %lor.lhs.false.if.then47_crit_edge, %if.end38.if.then47_crit_edge
  %67 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %resource, align 4
  %req_lock49 = getelementptr inbounds %struct.drbd_resource, ptr %68, i32 0, i32 12
  call void @_raw_spin_unlock_irq(ptr noundef %req_lock49) #14
  br label %for.end

if.end50:                                         ; preds = %signal_pending.exit
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %current_tle_nr, i32 noundef 4) #14
  %69 = ptrtoint ptr %current_tle_nr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %current_tle_nr, align 4
  %71 = ptrtoint ptr %current_epoch_nr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %current_epoch_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp.not = icmp eq i32 %70, %72
  %73 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %resource, align 4
  %req_lock54 = getelementptr inbounds %struct.drbd_resource, ptr %74, i32 0, i32 12
  call void @_raw_spin_unlock_irq(ptr noundef %req_lock54) #14
  br i1 %cmp.not, label %if.end50.if.end59_crit_edge, label %if.then56

if.end50.if.end59_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.then56:                                        ; preds = %if.end50
  %75 = ptrtoint ptr %current_epoch_nr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %current_epoch_nr, align 4
  %add = add i32 %76, 1
  %77 = ptrtoint ptr %seen_any_write_yet.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %seen_any_write_yet.i, align 4, !range !285
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i189 = icmp eq i8 %78, 0
  br i1 %tobool.not.i189, label %if.then56.if.end59_crit_edge, label %if.then2.i

if.then56.if.end59_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.then2.i:                                       ; preds = %if.then56
  %79 = ptrtoint ptr %current_epoch_writes.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %current_epoch_writes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool4.not.i = icmp eq i32 %80, 0
  br i1 %tobool4.not.i, label %if.then2.i.if.end6.i_crit_edge, label %if.then5.i

if.then2.i.if.end6.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.then2.i
  %call.i.i191 = call ptr @conn_prepare_command(ptr noundef %connection, ptr noundef %data.i.i) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i191, null
  br i1 %tobool.not.i.i, label %if.then5.i.if.end6.i_crit_edge, label %if.end.i.i

if.then5.i.if.end6.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.end.i.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  %81 = ptrtoint ptr %current_epoch_nr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %current_epoch_nr, align 4
  %83 = ptrtoint ptr %call.i.i191 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %82, ptr %call.i.i191, align 1
  %pad.i.i = getelementptr inbounds %struct.p_barrier, ptr %call.i.i191, i32 0, i32 1
  %84 = ptrtoint ptr %pad.i.i to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 0, ptr %pad.i.i, align 1
  %85 = ptrtoint ptr %current_epoch_writes.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %current_epoch_writes.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %86 = load volatile i32, ptr @jiffies, align 128
  %87 = ptrtoint ptr %send.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %send.i.i, align 4
  %call3.i.i = call i32 @conn_send_command(ptr noundef %connection, ptr noundef %data.i.i, i32 noundef 3, i32 noundef 8, ptr noundef null, i32 noundef 0) #14
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i.i, %if.then5.i.if.end6.i_crit_edge, %if.then2.i.if.end6.i_crit_edge
  %88 = ptrtoint ptr %current_epoch_nr to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add, ptr %current_epoch_nr, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.end6.i, %if.then56.if.end59_crit_edge, %if.end50.if.end59_crit_edge
  %89 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %flags60, align 4
  %91 = and i32 %90, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool62.not = icmp eq i32 %91, 0
  br i1 %tobool62.not, label %if.end64, label %if.end59.for.end_crit_edge

if.end59.for.end_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end64:                                         ; preds = %if.end59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !287
  %92 = ptrtoint ptr %t_state.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %t_state.i, align 4
  %cmp66.not = icmp eq i32 %93, 1
  br i1 %cmp66.not, label %cleanup, label %if.end64.for.end_crit_edge

if.end64.for.end_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  call void @schedule() #14
  br label %for.cond

for.end:                                          ; preds = %if.end64.for.end_crit_edge, %if.end59.for.end_crit_edge, %if.then47
  call void @finish_wait(ptr noundef %q_wait, ptr noundef nonnull %wait) #14
  %94 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i163 = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i.i.i.i163 to ptr
  %preempt_count.i.i.i.i164 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %preempt_count.i.i.i.i164 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %preempt_count.i.i.i.i164, align 4
  %add.i.i.i165 = add i32 %97, 1
  store volatile i32 %add.i.i.i165, ptr %preempt_count.i.i.i.i164, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !276
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i166 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i166, label %for.end.rcu_read_lock.exit173_crit_edge, label %land.lhs.true.i169

for.end.rcu_read_lock.exit173_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit173

land.lhs.true.i169:                               ; preds = %for.end
  %call1.i167 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i167)
  %tobool.not.i168 = icmp eq i32 %call1.i167, 0
  br i1 %tobool.not.i168, label %land.lhs.true.i169.rcu_read_lock.exit173_crit_edge, label %land.lhs.true2.i171

land.lhs.true.i169.rcu_read_lock.exit173_crit_edge: ; preds = %land.lhs.true.i169
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit173

land.lhs.true2.i171:                              ; preds = %land.lhs.true.i169
  %.b4.i170 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i170, label %land.lhs.true2.i171.rcu_read_lock.exit173_crit_edge, label %if.then.i172

land.lhs.true2.i171.rcu_read_lock.exit173_crit_edge: ; preds = %land.lhs.true2.i171
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit173

if.then.i172:                                     ; preds = %land.lhs.true2.i171
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 696, ptr noundef nonnull @.str.102) #14
  br label %rcu_read_lock.exit173

rcu_read_lock.exit173:                            ; preds = %if.then.i172, %land.lhs.true2.i171.rcu_read_lock.exit173_crit_edge, %land.lhs.true.i169.rcu_read_lock.exit173_crit_edge, %for.end.rcu_read_lock.exit173_crit_edge
  %98 = ptrtoint ptr %net_conf to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile ptr, ptr %net_conf, align 4
  %call78 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %land.lhs.true80, label %rcu_read_lock.exit173.do.end88_crit_edge

rcu_read_lock.exit173.do.end88_crit_edge:         ; preds = %rcu_read_lock.exit173
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end88

land.lhs.true80:                                  ; preds = %rcu_read_lock.exit173
  %call81 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %land.lhs.true80.do.end88_crit_edge, label %land.lhs.true83

land.lhs.true80.do.end88_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end88

land.lhs.true83:                                  ; preds = %land.lhs.true80
  %.b160161 = load i1, ptr @wait_for_work.__warned.108, align 1
  br i1 %.b160161, label %land.lhs.true83.do.end88_crit_edge, label %if.then85

land.lhs.true83.do.end88_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end88

if.then85:                                        ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @wait_for_work.__warned.108, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2154, ptr noundef nonnull @.str.37) #14
  br label %do.end88

do.end88:                                         ; preds = %if.then85, %land.lhs.true83.do.end88_crit_edge, %land.lhs.true80.do.end88_crit_edge, %rcu_read_lock.exit173.do.end88_crit_edge
  %tobool90.not = icmp eq ptr %99, null
  br i1 %tobool90.not, label %do.end88.cond.end95_crit_edge, label %cond.true91

do.end88.cond.end95_crit_edge:                    ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end95

cond.true91:                                      ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #16
  %tcp_cork92 = getelementptr inbounds %struct.net_conf, ptr %99, i32 0, i32 30
  %100 = ptrtoint ptr %tcp_cork92 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %tcp_cork92, align 2
  %conv93 = zext i8 %101 to i32
  br label %cond.end95

cond.end95:                                       ; preds = %cond.true91, %do.end88.cond.end95_crit_edge
  %cond96 = phi i32 [ %conv93, %cond.true91 ], [ 0, %do.end88.cond.end95_crit_edge ]
  %call.i192 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i192, label %cond.end95.rcu_read_unlock.exit202_crit_edge, label %land.lhs.true.i195

cond.end95.rcu_read_unlock.exit202_crit_edge:     ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit202

land.lhs.true.i195:                               ; preds = %cond.end95
  %call1.i193 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i193)
  %tobool.not.i194 = icmp eq i32 %call1.i193, 0
  br i1 %tobool.not.i194, label %land.lhs.true.i195.rcu_read_unlock.exit202_crit_edge, label %land.lhs.true2.i197

land.lhs.true.i195.rcu_read_unlock.exit202_crit_edge: ; preds = %land.lhs.true.i195
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit202

land.lhs.true2.i197:                              ; preds = %land.lhs.true.i195
  %.b4.i196 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i196, label %land.lhs.true2.i197.rcu_read_unlock.exit202_crit_edge, label %if.then.i198

land.lhs.true2.i197.rcu_read_unlock.exit202_crit_edge: ; preds = %land.lhs.true2.i197
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit202

if.then.i198:                                     ; preds = %land.lhs.true2.i197
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 724, ptr noundef nonnull @.str.103) #14
  br label %rcu_read_unlock.exit202

rcu_read_unlock.exit202:                          ; preds = %if.then.i198, %land.lhs.true2.i197.rcu_read_unlock.exit202_crit_edge, %land.lhs.true.i195.rcu_read_unlock.exit202_crit_edge, %cond.end95.rcu_read_unlock.exit202_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !277
  %102 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i199 = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i.i.i199 to ptr
  %preempt_count.i.i.i.i200 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %preempt_count.i.i.i.i200 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %preempt_count.i.i.i.i200, align 4
  %sub.i.i.i201 = add i32 %105, -1
  store volatile i32 %sub.i.i.i201, ptr %preempt_count.i.i.i.i200, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @mutex_lock_nested(ptr noundef %data.i.i, i32 noundef 0) #14
  %socket100 = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 17, i32 1
  %106 = ptrtoint ptr %socket100 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %socket100, align 4
  %tobool101.not = icmp eq ptr %107, null
  br i1 %tobool101.not, label %rcu_read_unlock.exit202.if.end115_crit_edge, label %if.then102

rcu_read_unlock.exit202.if.end115_crit_edge:      ; preds = %rcu_read_unlock.exit202
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

if.then102:                                       ; preds = %rcu_read_unlock.exit202
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond96)
  %tobool103.not = icmp ne i32 %cond96, 0
  %brmerge = select i1 %tobool103.not, i1 true, i1 %tobool19.not
  br i1 %brmerge, label %if.end115.sink.split, label %if.then102.if.end115_crit_edge

if.then102.if.end115_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

if.end115.sink.split:                             ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #16
  %sk107 = getelementptr inbounds %struct.socket, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %sk107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sk107, align 16
  call void @tcp_sock_set_cork(ptr noundef %109, i1 noundef zeroext %tobool103.not) #14
  br label %if.end115

if.end115:                                        ; preds = %if.end115.sink.split, %if.then102.if.end115_crit_edge, %rcu_read_unlock.exit202.if.end115_crit_edge
  call void @mutex_unlock(ptr noundef %data.i.i) #14
  br label %cleanup118

cleanup118:                                       ; preds = %if.end115, %dequeue_work_batch.exit.cleanup118_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_unqueued_work(ptr noundef %connection) #0 align 64 {
entry:
  %sib.i.i = alloca %struct.sib_info, align 4
  %todo.addr.i = alloca i32, align 4
  %vnr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vnr) #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !276
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 696, ptr noundef nonnull @.str.102) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %peer_devices = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 6
  %4 = ptrtoint ptr %vnr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %vnr, align 4
  %call49 = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #14
  %cmp.not50 = icmp eq ptr %call49, null
  br i1 %cmp.not50, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %call51 = phi ptr [ %call, %cleanup.for.body_crit_edge ], [ %call49, %rcu_read_lock.exit.for.body_crit_edge ]
  %device1 = getelementptr inbounds %struct.drbd_peer_device, ptr %call51, i32 0, i32 1
  %5 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device1, align 4
  %flags = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %__cmpxchg.exit.i.do.body.i_crit_edge, %for.body
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and.i = and i32 %8, -528482305
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !289
  call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.i
  %9 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %flags, i32 %8, i32 %and.i) #14, !srcloc !290
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %9, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !291
  %cmp.not.i = icmp eq i32 %asmresult1.i.i, %8
  br i1 %cmp.not.i, label %get_work_bits.exit, label %__cmpxchg.exit.i.do.body.i_crit_edge

__cmpxchg.exit.i.do.body.i_crit_edge:             ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

get_work_bits.exit:                               ; preds = %__cmpxchg.exit.i
  %and18.i = and i32 %8, 528482304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not = icmp eq i32 %and18.i, 0
  br i1 %tobool.not, label %get_work_bits.exit.cleanup_crit_edge, label %if.end

get_work_bits.exit.cleanup_crit_edge:             ; preds = %get_work_bits.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %get_work_bits.exit
  %kref = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 13
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %10 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !270
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !271

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !272

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #14
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %call.i21 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i21, label %kref_get.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i24

kref_get.exit.rcu_read_unlock.exit_crit_edge:     ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i24:                                ; preds = %kref_get.exit
  %call1.i22 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool.not.i23, label %land.lhs.true.i24.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i26

land.lhs.true.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i26:                               ; preds = %land.lhs.true.i24
  %.b4.i25 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i25, label %land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge, label %if.then.i27

land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i27:                                      ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 724, ptr noundef nonnull @.str.103) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i27, %land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i24.rcu_read_unlock.exit_crit_edge, %kref_get.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !277
  %12 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i28 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i28 to ptr
  %preempt_count.i.i.i.i29 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i29, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i29, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %todo.addr.i)
  %16 = ptrtoint ptr %todo.addr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and18.i, ptr %todo.addr.i, align 4
  %todo.addr.i.0.todo.addr.i.0.todo.addr.0.todo.addr.0..i = load volatile i32, ptr %todo.addr.i, align 4
  %17 = and i32 %todo.addr.i.0.todo.addr.i.0.todo.addr.0.todo.addr.0..i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i30 = icmp eq i32 %17, 0
  br i1 %tobool.not.i30, label %rcu_read_unlock.exit.if.end.i_crit_edge, label %if.then.i31

rcu_read_unlock.exit.if.end.i_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i31:                                      ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk.i.i = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 18
  %18 = ptrtoint ptr %vdisk.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vdisk.i.i, align 4
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %part0.i.i, align 4
  %bd_device.i.i = getelementptr inbounds %struct.block_device, ptr %21, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.2, ptr noundef %bd_device.i.i, ptr noundef nonnull @.str.109) #17
  call void @drbd_md_sync(ptr noundef %6) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i31, %rcu_read_unlock.exit.if.end.i_crit_edge
  %22 = ptrtoint ptr %todo.addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %todo.addr.i.0.todo.addr.i.0.todo.addr.0.todo.addr.0.52.i = load volatile i32, ptr %todo.addr.i, align 4
  %23 = and i32 %todo.addr.i.0.todo.addr.i.0.todo.addr.0.todo.addr.0.52.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not.i = icmp eq i32 %23, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %if.end.i.if.then6.i_crit_edge

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then6.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %24 = ptrtoint ptr %todo.addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %todo.addr.i.0.todo.addr.i.0.todo.addr.0.todo.addr.0.53.i = load volatile i32, ptr %todo.addr.i, align 4
  %25 = and i32 %todo.addr.i.0.todo.addr.i.0.todo.addr.0.todo.addr.0.53.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool5.not.i = icmp eq i32 %25, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i.if.end9.i_crit_edge, label %lor.lhs.false.i.if.then6.i_crit_edge

lor.lhs.false.i.if.then6.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then6.i

lor.lhs.false.i.if.end9.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i

if.then6.i:                                       ; preds = %lor.lhs.false.i.if.then6.i_crit_edge, %if.end.i.if.then6.i_crit_edge
  %26 = ptrtoint ptr %todo.addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %todo.addr.i.0.todo.addr.i.0.todo.addr.0.todo.addr.0.54.i = load volatile i32, ptr %todo.addr.i, align 4
  %27 = and i32 %todo.addr.i.0.todo.addr.i.0.todo.addr.0.todo.addr.0.54.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool8.not.i = icmp eq i32 %27, 0
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sib.i.i) #14
  %28 = call ptr @memcpy(ptr %sib.i.i, ptr @__const.update_on_disk_bitmap.sib, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %rs_last_bcast.i.i = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 56
  %30 = ptrtoint ptr %rs_last_bcast.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %rs_last_bcast.i.i, align 4
  %state.i.i.i = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 27
  %31 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load.i.i.i = load i32, ptr %state.i.i.i, align 8
  %32 = and i32 %bf.load.i.i.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i.i = icmp eq i32 %32, 0
  br i1 %cmp.i.i.i, label %if.then6.i.update_on_disk_bitmap.exit.i_crit_edge, label %if.end.i.i.i

if.then6.i.update_on_disk_bitmap.exit.i_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %update_on_disk_bitmap.exit.i

if.end.i.i.i:                                     ; preds = %if.then6.i
  %local_cnt.i.i.i = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 41
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i.i.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %local_cnt.i.i.i, i32 1, i32 3, i32 1) #14
  %33 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i.i.i, ptr %local_cnt.i.i.i, i32 1, ptr elementtype(i32) %local_cnt.i.i.i) #14, !srcloc !269
  %34 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load2.i.i.i = load i32, ptr %state.i.i.i, align 8
  %35 = and i32 %bf.load2.i.i.i, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp5.not.i.i.i = icmp eq i32 %35, 0
  br i1 %cmp5.not.i.i.i, label %if.end.i.i.i.update_on_disk_bitmap.exit.i.sink.split_crit_edge, label %if.end.i.i

if.end.i.i.i.update_on_disk_bitmap.exit.i.sink.split_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %update_on_disk_bitmap.exit.i.sink.split

if.end.i.i:                                       ; preds = %if.end.i.i.i
  %call2.i.i = call i32 @drbd_bm_write_lazy(ptr noundef %6, i32 noundef 0) #14
  br i1 %tobool8.not.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %36 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load.i.i = load i32, ptr %state.i.i.i, align 8
  %37 = and i32 %bf.load.i.i, 416
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %37)
  %38 = icmp eq i32 %37, 256
  br i1 %38, label %if.then5.i.i, label %land.lhs.true.i.i.if.end7.i.i_crit_edge

land.lhs.true.i.i.if.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i.i

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call6.i.i = call i32 @drbd_resync_finished(ptr noundef %6) #14
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then5.i.i, %land.lhs.true.i.i.if.end7.i.i_crit_edge, %if.end.i.i.if.end7.i.i_crit_edge
  call void @drbd_bcast_event(ptr noundef %6, ptr noundef nonnull %sib.i.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %40 = ptrtoint ptr %rs_last_bcast.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %rs_last_bcast.i.i, align 4
  br label %update_on_disk_bitmap.exit.i.sink.split

update_on_disk_bitmap.exit.i.sink.split:          ; preds = %if.end7.i.i, %if.end.i.i.i.update_on_disk_bitmap.exit.i.sink.split_crit_edge
  call fastcc void @put_ldev(ptr noundef %6) #14
  br label %update_on_disk_bitmap.exit.i

update_on_disk_bitmap.exit.i:                     ; preds = %update_on_disk_bitmap.exit.i.sink.split, %if.then6.i.update_on_disk_bitmap.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sib.i.i) #14
  br label %if.end9.i

if.end9.i:                                        ; preds = %update_on_disk_bitmap.exit.i, %lor.lhs.false.i.if.end9.i_crit_edge
  %41 = ptrtoint ptr %todo.addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %todo.addr.i.0.todo.addr.i.0.todo.addr.0.todo.addr.0.55.i = load volatile i32, ptr %todo.addr.i, align 4
  %42 = and i32 %todo.addr.i.0.todo.addr.i.0.todo.addr.0.todo.addr.0.55.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool11.not.i = icmp eq i32 %42, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end13.i_crit_edge, label %if.then12.i

if.end9.i.if.end13.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end9.i
  %state.i.i = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 27
  %43 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %bf.load.i38.i = load i32, ptr %state.i.i, align 8
  %44 = and i32 %bf.load.i38.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %44)
  %cmp.i.i = icmp eq i32 %44, 1024
  br i1 %cmp.i.i, label %if.then12.i.do.end2.i.i_crit_edge, label %do.end.i.i

if.then12.i.do.end2.i.i_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end2.i.i

do.end.i.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk.i39.i = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 18
  %45 = ptrtoint ptr %vdisk.i39.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vdisk.i39.i, align 4
  %part0.i40.i = getelementptr inbounds %struct.gendisk, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %part0.i40.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %part0.i40.i, align 4
  %bd_device.i41.i = getelementptr inbounds %struct.block_device, ptr %48, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device.i41.i, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.1, i32 noundef 1953) #17
  br label %do.end2.i.i

do.end2.i.i:                                      ; preds = %do.end.i.i, %if.then12.i.do.end2.i.i_crit_edge
  %bitmap.i.i = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 63
  %49 = ptrtoint ptr %bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bitmap.i.i, align 4
  %tobool.not.i.i32 = icmp eq ptr %50, null
  br i1 %tobool.not.i.i32, label %do.end2.i.i.go_diskless.exit.i_crit_edge, label %land.lhs.true.i42.i

do.end2.i.i.go_diskless.exit.i_crit_edge:         ; preds = %do.end2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %go_diskless.exit.i

land.lhs.true.i42.i:                              ; preds = %do.end2.i.i
  %ldev.i.i = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 15
  %51 = ptrtoint ptr %ldev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ldev.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %52, null
  br i1 %tobool3.not.i.i, label %land.lhs.true.i42.i.go_diskless.exit.i_crit_edge, label %if.then4.i.i

land.lhs.true.i42.i.go_diskless.exit.i_crit_edge: ; preds = %land.lhs.true.i42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %go_diskless.exit.i

if.then4.i.i:                                     ; preds = %land.lhs.true.i42.i
  %call.i.i33 = call i32 @drbd_bitmap_io_from_worker(ptr noundef %6, ptr noundef nonnull @drbd_bm_write, ptr noundef nonnull @.str.113, i32 noundef 11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i33)
  %tobool5.not.i.i = icmp eq i32 %call.i.i33, 0
  br i1 %tobool5.not.i.i, label %if.then4.i.i.go_diskless.exit.i_crit_edge, label %if.then6.i.i

if.then4.i.i.go_diskless.exit.i_crit_edge:        ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %go_diskless.exit.i

if.then6.i.i:                                     ; preds = %if.then4.i.i
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %flags, align 4
  %55 = and i32 %54, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool8.not.i.i = icmp eq i32 %55, 0
  br i1 %tobool8.not.i.i, label %if.then6.i.i.go_diskless.exit.i_crit_edge, label %if.then9.i.i

if.then6.i.i.go_diskless.exit.i_crit_edge:        ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %go_diskless.exit.i

if.then9.i.i:                                     ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @drbd_md_set_flag(ptr noundef %6, i32 noundef 8) #14
  call void @drbd_md_sync(ptr noundef %6) #14
  br label %go_diskless.exit.i

go_diskless.exit.i:                               ; preds = %if.then9.i.i, %if.then6.i.i.go_diskless.exit.i_crit_edge, %if.then4.i.i.go_diskless.exit.i_crit_edge, %land.lhs.true.i42.i.go_diskless.exit.i_crit_edge, %do.end2.i.i.go_diskless.exit.i_crit_edge
  call void @drbd_force_state(ptr noundef %6, [1 x i32] [i32 7680], [1 x i32] zeroinitializer) #14
  br label %if.end13.i

if.end13.i:                                       ; preds = %go_diskless.exit.i, %if.end9.i.if.end13.i_crit_edge
  %56 = ptrtoint ptr %todo.addr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %todo.addr.i.0.todo.addr.i.0.todo.addr.0.todo.addr.0.56.i = load volatile i32, ptr %todo.addr.i, align 4
  %57 = and i32 %todo.addr.i.0.todo.addr.i.0.todo.addr.0.todo.addr.0.56.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool15.not.i = icmp eq i32 %57, 0
  br i1 %tobool15.not.i, label %if.end13.i.if.end17.i_crit_edge, label %if.then16.i

if.end13.i.if.end17.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  %resync.i.i = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 65
  %58 = ptrtoint ptr %resync.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %resync.i.i, align 4
  call void @lc_destroy(ptr noundef %59) #14
  %60 = ptrtoint ptr %resync.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %resync.i.i, align 4
  %act_log.i.i = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 83
  %61 = ptrtoint ptr %act_log.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %act_log.i.i, align 4
  call void @lc_destroy(ptr noundef %62) #14
  %63 = ptrtoint ptr %act_log.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %act_log.i.i, align 4
  %ldev.i43.i = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 15
  %64 = ptrtoint ptr %ldev.i43.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ldev.i43.i, align 4
  call void @drbd_backing_dev_free(ptr noundef %6, ptr noundef %65) #14
  %66 = ptrtoint ptr %ldev.i43.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %ldev.i43.i, align 4
  call void @_clear_bit(i32 noundef 22, ptr noundef %flags) #14
  %misc_wait.i.i = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 28
  call void @__wake_up(ptr noundef %misc_wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %if.end13.i.if.end17.i_crit_edge
  %67 = ptrtoint ptr %todo.addr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %todo.addr.i.0.todo.addr.i.0.todo.addr.0.todo.addr.0.57.i = load volatile i32, ptr %todo.addr.i, align 4
  %68 = and i32 %todo.addr.i.0.todo.addr.i.0.todo.addr.0.todo.addr.0.57.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool19.not.i = icmp eq i32 %68, 0
  br i1 %tobool19.not.i, label %if.end17.i.do_device_work.exit_crit_edge, label %if.then20.i

if.end17.i.do_device_work.exit_crit_edge:         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do_device_work.exit

if.then20.i:                                      ; preds = %if.end17.i
  %unacked_cnt.i.i = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 40
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %unacked_cnt.i.i, i32 noundef 4) #14
  %69 = ptrtoint ptr %unacked_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %unacked_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i45.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i45.i, label %lor.lhs.false.i.i, label %if.then20.i.do.end.i49.i_crit_edge

if.then20.i.do.end.i49.i_crit_edge:               ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i49.i

lor.lhs.false.i.i:                                ; preds = %if.then20.i
  %rs_pending_cnt.i.i = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 39
  %call.i.i10.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %rs_pending_cnt.i.i, i32 noundef 4) #14
  %71 = ptrtoint ptr %rs_pending_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %rs_pending_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool2.not.i.i = icmp eq i32 %72, 0
  br i1 %tobool2.not.i.i, label %if.end.i51.i, label %lor.lhs.false.i.i.do.end.i49.i_crit_edge

lor.lhs.false.i.i.do.end.i49.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i49.i

do.end.i49.i:                                     ; preds = %lor.lhs.false.i.i.do.end.i49.i_crit_edge, %if.then20.i.do.end.i49.i_crit_edge
  %vdisk.i46.i = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 18
  %73 = ptrtoint ptr %vdisk.i46.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %vdisk.i46.i, align 4
  %part0.i47.i = getelementptr inbounds %struct.gendisk, ptr %74, i32 0, i32 7
  %75 = ptrtoint ptr %part0.i47.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %part0.i47.i, align 4
  %bd_device.i48.i = getelementptr inbounds %struct.block_device, ptr %76, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.2, ptr noundef %bd_device.i48.i, ptr noundef nonnull @.str.114) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %77, 10
  %start_resync_timer.i.i = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 24
  %expires.i.i = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 24, i32 1
  %78 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add.i.i, ptr %expires.i.i, align 4
  call void @add_timer(ptr noundef %start_resync_timer.i.i) #14
  br label %do_device_work.exit

if.end.i51.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @drbd_start_resync(ptr noundef %6, i32 noundef 16) #14
  call void @_clear_bit(i32 noundef 17, ptr noundef %flags) #14
  br label %do_device_work.exit

do_device_work.exit:                              ; preds = %if.end.i51.i, %do.end.i49.i, %if.end17.i.do_device_work.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %todo.addr.i)
  %call.i.i.i.i.i.i34 = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !273
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %79 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !274
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i36, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do_device_work.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i35 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i35, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !272

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #14
  br label %kref_put.exit

if.then.i36:                                      ; preds = %do_device_work.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !275
  call void @drbd_destroy_device(ptr noundef %kref) #14
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i36, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %80 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i10 = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i.i10 to ptr
  %preempt_count.i.i.i.i11 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i.i.i11, align 4
  %add.i.i.i12 = add i32 %83, 1
  store volatile i32 %add.i.i.i12, ptr %preempt_count.i.i.i.i11, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !276
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i13 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i13, label %kref_put.exit.cleanup_crit_edge, label %land.lhs.true.i16

kref_put.exit.cleanup_crit_edge:                  ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.i16:                                ; preds = %kref_put.exit
  %call1.i14 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool.not.i15, label %land.lhs.true.i16.cleanup_crit_edge, label %land.lhs.true2.i18

land.lhs.true.i16.cleanup_crit_edge:              ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true2.i18:                               ; preds = %land.lhs.true.i16
  %.b4.i17 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i17, label %land.lhs.true2.i18.cleanup_crit_edge, label %if.then.i19

land.lhs.true2.i18.cleanup_crit_edge:             ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i19:                                      ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 696, ptr noundef nonnull @.str.102) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i19, %land.lhs.true2.i18.cleanup_crit_edge, %land.lhs.true.i16.cleanup_crit_edge, %kref_put.exit.cleanup_crit_edge, %get_work_bits.exit.cleanup_crit_edge
  %84 = ptrtoint ptr %vnr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %vnr, align 4
  %add = add i32 %85, 1
  store i32 %add, ptr %vnr, align 4
  %call = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #14
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i37 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i37, label %for.end.rcu_read_unlock.exit47_crit_edge, label %land.lhs.true.i40

for.end.rcu_read_unlock.exit47_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit47

land.lhs.true.i40:                                ; preds = %for.end
  %call1.i38 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38)
  %tobool.not.i39 = icmp eq i32 %call1.i38, 0
  br i1 %tobool.not.i39, label %land.lhs.true.i40.rcu_read_unlock.exit47_crit_edge, label %land.lhs.true2.i42

land.lhs.true.i40.rcu_read_unlock.exit47_crit_edge: ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit47

land.lhs.true2.i42:                               ; preds = %land.lhs.true.i40
  %.b4.i41 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i41, label %land.lhs.true2.i42.rcu_read_unlock.exit47_crit_edge, label %if.then.i43

land.lhs.true2.i42.rcu_read_unlock.exit47_crit_edge: ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit47

if.then.i43:                                      ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 724, ptr noundef nonnull @.str.103) #14
  br label %rcu_read_unlock.exit47

rcu_read_unlock.exit47:                           ; preds = %if.then.i43, %land.lhs.true2.i42.rcu_read_unlock.exit47_crit_edge, %land.lhs.true.i40.rcu_read_unlock.exit47_crit_edge, %for.end.rcu_read_unlock.exit47_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !277
  %86 = call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i44 = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i.i.i44 to ptr
  %preempt_count.i.i.i.i45 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %preempt_count.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %preempt_count.i.i.i.i45, align 4
  %sub.i.i.i46 = add i32 %89, -1
  store volatile i32 %sub.i.i.i46, ptr %preempt_count.i.i.i.i45, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vnr) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signals(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_device_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @drbd_rs_number_requests(ptr noundef %device) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rs_sect_in = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 96
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rs_sect_in, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !292
  tail call void @llvm.prefetch.p0(ptr %rs_sect_in, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %rs_sect_in) #14, !srcloc !293
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !294
  %rs_in_flight = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 102
  %1 = ptrtoint ptr %rs_in_flight to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rs_in_flight, align 4
  %sub = sub i32 %2, %asmresult.i.i
  store i32 %sub, ptr %rs_in_flight, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !276
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 696, ptr noundef nonnull @.str.102) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %7 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !276
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i63 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i63, label %rcu_read_lock.exit.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

rcu_read_lock.exit.rcu_read_lock.exit.i_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 696, ptr noundef nonnull @.str.102) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %rcu_read_lock.exit.rcu_read_lock.exit.i_crit_edge
  %peer_devices.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %11 = ptrtoint ptr %peer_devices.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %peer_devices.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %12, %peer_devices.i.i
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %12
  %connection.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %connection.i, align 4
  %net_conf.i = getelementptr inbounds %struct.drbd_connection, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %net_conf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %net_conf.i, align 4
  %call2.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i64 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i64, label %land.lhs.true.i65, label %rcu_read_lock.exit.i.do.end8.i_crit_edge

rcu_read_lock.exit.i.do.end8.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8.i

land.lhs.true.i65:                                ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i65.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i65.do.end8.i_crit_edge:            ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i65
  %.b12.i = load i1, ptr @drbd_get_max_buffers.__warned, align 1
  br i1 %.b12.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i66

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8.i

if.then.i66:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @drbd_get_max_buffers.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.81, i32 noundef 2140, ptr noundef nonnull @.str.37) #14
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i66, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i65.do.end8.i_crit_edge, %rcu_read_lock.exit.i.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %16, null
  br i1 %tobool10.not.i, label %do.end8.i.cond.end.i_crit_edge, label %cond.true.i

do.end8.i.cond.end.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %max_buffers.i = getelementptr inbounds %struct.net_conf, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %max_buffers.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_buffers.i, align 4
  %phi.bo = sdiv i32 %18, 2
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end8.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %phi.bo, %cond.true.i ], [ 500000, %do.end8.i.cond.end.i_crit_edge ]
  %call.i13.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i13.i, label %cond.end.i.drbd_get_max_buffers.exit_crit_edge, label %land.lhs.true.i16.i

cond.end.i.drbd_get_max_buffers.exit_crit_edge:   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %drbd_get_max_buffers.exit

land.lhs.true.i16.i:                              ; preds = %cond.end.i
  %call1.i14.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14.i)
  %tobool.not.i15.i = icmp eq i32 %call1.i14.i, 0
  br i1 %tobool.not.i15.i, label %land.lhs.true.i16.i.drbd_get_max_buffers.exit_crit_edge, label %land.lhs.true2.i18.i

land.lhs.true.i16.i.drbd_get_max_buffers.exit_crit_edge: ; preds = %land.lhs.true.i16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %drbd_get_max_buffers.exit

land.lhs.true2.i18.i:                             ; preds = %land.lhs.true.i16.i
  %.b4.i17.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17.i, label %land.lhs.true2.i18.i.drbd_get_max_buffers.exit_crit_edge, label %if.then.i19.i

land.lhs.true2.i18.i.drbd_get_max_buffers.exit_crit_edge: ; preds = %land.lhs.true2.i18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %drbd_get_max_buffers.exit

if.then.i19.i:                                    ; preds = %land.lhs.true2.i18.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 724, ptr noundef nonnull @.str.103) #14
  br label %drbd_get_max_buffers.exit

drbd_get_max_buffers.exit:                        ; preds = %if.then.i19.i, %land.lhs.true2.i18.i.drbd_get_max_buffers.exit_crit_edge, %land.lhs.true.i16.i.drbd_get_max_buffers.exit_crit_edge, %cond.end.i.drbd_get_max_buffers.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !277
  %19 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i20.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i20.i to ptr
  %preempt_count.i.i.i.i21.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i21.i, align 4
  %sub.i.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i21.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %rs_plan_s = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 101
  %23 = ptrtoint ptr %rs_plan_s to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %rs_plan_s, align 8
  %call3 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %drbd_get_max_buffers.exit.do.end9_crit_edge

drbd_get_max_buffers.exit.do.end9_crit_edge:      ; preds = %drbd_get_max_buffers.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

land.lhs.true:                                    ; preds = %drbd_get_max_buffers.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b62 = load i1, ptr @drbd_rs_number_requests.__warned, align 1
  br i1 %.b62, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @drbd_rs_number_requests.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 563, ptr noundef nonnull @.str.37) #14
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %drbd_get_max_buffers.exit.do.end9_crit_edge
  %size = getelementptr inbounds %struct.fifo_buffer, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool11.not = icmp eq i32 %26, 0
  %ldev = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 15
  %27 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ldev, align 4
  %disk_conf = getelementptr inbounds %struct.drbd_backing_dev, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %disk_conf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %disk_conf, align 8
  %call21 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %do.end9
  br i1 %tobool22.not, label %land.lhs.true.i70, label %if.then12.do.end7.i_crit_edge

if.then12.do.end7.i_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i

land.lhs.true.i70:                                ; preds = %if.then12
  %call2.i69 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i69)
  %tobool3.not.i = icmp eq i32 %call2.i69, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i70.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i70.do.end7.i_crit_edge:            ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i70
  %.b77.i = load i1, ptr @drbd_rs_controller.__warned, align 1
  br i1 %.b77.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i71

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i

if.then.i71:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @drbd_rs_controller.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 513, ptr noundef nonnull @.str.37) #14
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i71, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i70.do.end7.i_crit_edge, %if.then12.do.end7.i_crit_edge
  %31 = ptrtoint ptr %rs_plan_s to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %rs_plan_s, align 8
  %call14.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true16.i, label %do.end7.i.do.end24.i_crit_edge

do.end7.i.do.end24.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24.i

land.lhs.true16.i:                                ; preds = %do.end7.i
  %call17.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %land.lhs.true16.i.do.end24.i_crit_edge, label %land.lhs.true19.i

land.lhs.true16.i.do.end24.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24.i

land.lhs.true19.i:                                ; preds = %land.lhs.true16.i
  %.b7576.i = load i1, ptr @drbd_rs_controller.__warned.93, align 1
  br i1 %.b7576.i, label %land.lhs.true19.i.do.end24.i_crit_edge, label %if.then21.i

land.lhs.true19.i.do.end24.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24.i

if.then21.i:                                      ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @drbd_rs_controller.__warned.93, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 514, ptr noundef nonnull @.str.37) #14
  br label %do.end24.i

do.end24.i:                                       ; preds = %if.then21.i, %land.lhs.true19.i.do.end24.i_crit_edge, %land.lhs.true16.i.do.end24.i_crit_edge, %do.end7.i.do.end24.i_crit_edge
  %size.i = getelementptr inbounds %struct.fifo_buffer, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i, align 4
  %35 = ptrtoint ptr %rs_in_flight to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rs_in_flight, align 4
  %add.i = sub i32 0, %asmresult.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %add.i)
  %cmp.i = icmp eq i32 %36, %add.i
  br i1 %cmp.i, label %if.then26.i, label %if.else.i

if.then26.i:                                      ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  %resync_rate.i = getelementptr inbounds %struct.disk_conf, ptr %30, i32 0, i32 9
  %37 = ptrtoint ptr %resync_rate.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %resync_rate.i, align 4
  %mul27.i = mul i32 %38, 20
  %div.i = udiv i32 %mul27.i, 100
  %mul28.i = mul i32 %div.i, %34
  br label %if.end34.i

if.else.i:                                        ; preds = %do.end24.i
  %c_fill_target.i = getelementptr inbounds %struct.disk_conf, ptr %30, i32 0, i32 14
  %39 = ptrtoint ptr %c_fill_target.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %c_fill_target.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool29.not.i = icmp eq i32 %40, 0
  br i1 %tobool29.not.i, label %cond.false.i, label %if.else.i.if.end34.i_crit_edge

if.else.i.if.end34.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34.i

cond.false.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %c_delay_target.i = getelementptr inbounds %struct.disk_conf, ptr %30, i32 0, i32 13
  %41 = ptrtoint ptr %c_delay_target.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %c_delay_target.i, align 4
  %mul31.i = mul i32 %asmresult.i.i, 100
  %mul32.i = mul i32 %mul31.i, %42
  %div33.i = udiv i32 %mul32.i, 100
  br label %if.end34.i

if.end34.i:                                       ; preds = %cond.false.i, %if.else.i.if.end34.i_crit_edge, %if.then26.i
  %want.0.i = phi i32 [ %mul28.i, %if.then26.i ], [ %div33.i, %cond.false.i ], [ %40, %if.else.i.if.end34.i_crit_edge ]
  %total.i = getelementptr inbounds %struct.fifo_buffer, ptr %32, i32 0, i32 2
  %43 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %total.i, align 4
  %45 = add i32 %36, %44
  %sub36.i = sub i32 %want.0.i, %45
  %div37.i = sdiv i32 %sub36.i, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp4.not.i.i = icmp eq i32 %34, 0
  br i1 %cmp4.not.i.i, label %if.end34.i.fifo_add_val.exit.i_crit_edge, label %if.end34.i.for.body.i.i_crit_edge

if.end34.i.for.body.i.i_crit_edge:                ; preds = %if.end34.i
  br label %for.body.i.i

if.end34.i.fifo_add_val.exit.i_crit_edge:         ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fifo_add_val.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end34.i.for.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end34.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.fifo_buffer, ptr %32, i32 0, i32 3, i32 %i.05.i.i
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %47, %div37.i
  store i32 %add.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw i32 %i.05.i.i, 1
  %48 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %49
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.fifo_add_val.exit.i_crit_edge

for.body.i.i.fifo_add_val.exit.i_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fifo_add_val.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

fifo_add_val.exit.i:                              ; preds = %for.body.i.i.fifo_add_val.exit.i_crit_edge, %if.end34.i.fifo_add_val.exit.i_crit_edge
  %mul38.i = mul i32 %div37.i, %34
  %50 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %total.i, align 4
  %add40.i = add i32 %51, %mul38.i
  store i32 %add40.i, ptr %total.i, align 4
  %52 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %32, align 4
  %arrayidx.i78.i = getelementptr %struct.fifo_buffer, ptr %32, i32 0, i32 3, i32 %53
  %54 = ptrtoint ptr %arrayidx.i78.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i78.i, align 4
  %inc.i79.i = add i32 %53, 1
  store i32 %inc.i79.i, ptr %32, align 4
  store i32 0, ptr %arrayidx.i78.i, align 4
  %56 = load i32, ptr %32, align 4
  %57 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp.not.i.i72 = icmp ult i32 %56, %58
  br i1 %cmp.not.i.i72, label %fifo_add_val.exit.i.drbd_rs_controller.exit_crit_edge, label %if.then.i.i73

fifo_add_val.exit.i.drbd_rs_controller.exit_crit_edge: ; preds = %fifo_add_val.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %drbd_rs_controller.exit

if.then.i.i73:                                    ; preds = %fifo_add_val.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %59 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %32, align 4
  br label %drbd_rs_controller.exit

drbd_rs_controller.exit:                          ; preds = %if.then.i.i73, %fifo_add_val.exit.i.drbd_rs_controller.exit_crit_edge
  %60 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %total.i, align 4
  %sub43.i = sub i32 %61, %55
  store i32 %sub43.i, ptr %total.i, align 4
  %add44.i = add i32 %55, %asmresult.i.i
  %62 = tail call i32 @llvm.smax.i32(i32 %add44.i, i32 0) #14
  %c_max_rate.i = getelementptr inbounds %struct.disk_conf, ptr %30, i32 0, i32 15
  %63 = ptrtoint ptr %c_max_rate.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %c_max_rate.i, align 4
  %mul49.i = mul i32 %64, 20
  %div50.i = udiv i32 %mul49.i, 100
  %65 = tail call i32 @llvm.umin.i32(i32 %62, i32 %div50.i) #14
  %shr83 = lshr i32 %65, 3
  %div1584 = mul nuw nsw i32 %shr83, 40
  %c_sync_rate = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 100
  %66 = ptrtoint ptr %c_sync_rate to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %div1584, ptr %c_sync_rate, align 4
  br label %if.end37

if.else:                                          ; preds = %do.end9
  br i1 %tobool22.not, label %land.lhs.true23, label %if.else.do.end31_crit_edge

if.else.do.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end31

land.lhs.true23:                                  ; preds = %if.else
  %call24 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true23.do.end31_crit_edge, label %land.lhs.true26

land.lhs.true23.do.end31_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end31

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %.b6061 = load i1, ptr @drbd_rs_number_requests.__warned.92, align 1
  br i1 %.b6061, label %land.lhs.true26.do.end31_crit_edge, label %if.then28

land.lhs.true26.do.end31_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end31

if.then28:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @drbd_rs_number_requests.__warned.92, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 567, ptr noundef nonnull @.str.37) #14
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %land.lhs.true26.do.end31_crit_edge, %land.lhs.true23.do.end31_crit_edge, %if.else.do.end31_crit_edge
  %resync_rate = getelementptr inbounds %struct.disk_conf, ptr %30, i32 0, i32 9
  %67 = ptrtoint ptr %resync_rate to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %resync_rate, align 4
  %c_sync_rate33 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 100
  %69 = ptrtoint ptr %c_sync_rate33 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %c_sync_rate33, align 4
  %mul35 = mul i32 %68, 10
  %div36 = sdiv i32 %mul35, 400
  br label %if.end37

if.end37:                                         ; preds = %do.end31, %drbd_rs_controller.exit
  %number.0 = phi i32 [ %shr83, %drbd_rs_controller.exit ], [ %div36, %do.end31 ]
  %call.i74 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i74, label %if.end37.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i77

if.end37.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i77:                                ; preds = %if.end37
  %call1.i75 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i75)
  %tobool.not.i76 = icmp eq i32 %call1.i75, 0
  br i1 %tobool.not.i76, label %land.lhs.true.i77.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i79

land.lhs.true.i77.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i77
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i79:                               ; preds = %land.lhs.true.i77
  %.b4.i78 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i78, label %land.lhs.true2.i79.rcu_read_unlock.exit_crit_edge, label %if.then.i80

land.lhs.true2.i79.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i80:                                      ; preds = %land.lhs.true2.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 724, ptr noundef nonnull @.str.103) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i80, %land.lhs.true2.i79.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i77.rcu_read_unlock.exit_crit_edge, %if.end37.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !277
  %70 = tail call i32 @llvm.read_register.i32(metadata !256) #14
  %and.i.i.i.i.i81 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i81 to ptr
  %preempt_count.i.i.i.i82 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i.i.i82, align 4
  %sub.i.i.i = add i32 %73, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i82, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %74 = ptrtoint ptr %rs_in_flight to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rs_in_flight, align 4
  %div39.neg = sdiv i32 %75, -8
  %sub40 = add nsw i32 %div39.neg, %cond.i
  %76 = tail call i32 @llvm.smin.i32(i32 %sub40, i32 %number.0)
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_bm_find_next(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_bm_bits(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_try_rs_begin_io(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_bm_test_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drbd_alloc_peer_req(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w_e_send_csum(ptr noundef %w, i32 noundef %cancel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_device1 = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 1
  %0 = ptrtoint ptr %peer_device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer_device1, align 4
  %device2 = getelementptr inbounds %struct.drbd_peer_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cancel)
  %tobool.not = icmp eq i32 %cancel, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge, !prof !272

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end12, label %if.end.out_crit_edge, !prof !272

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end12:                                         ; preds = %if.end
  %connection = getelementptr inbounds %struct.drbd_peer_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %connection, align 4
  %csums_tfm = getelementptr inbounds %struct.drbd_connection, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %csums_tfm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csums_tfm, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %9, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %11, i32 -128
  %12 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %digestsize.i, align 128
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3072) #19
  %tobool14.not = icmp eq ptr %call9.i, null
  br i1 %tobool14.not, label %do.end, label %out.thread

out.thread:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %sector16 = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %sector16 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sector16, align 8
  %size18 = getelementptr inbounds %struct.drbd_peer_request, ptr %w, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %size18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size18, align 8
  %18 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %connection, align 4
  %csums_tfm20 = getelementptr inbounds %struct.drbd_connection, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %csums_tfm20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csums_tfm20, align 4
  tail call void @drbd_csum_ee(ptr noundef %21, ptr noundef %w, ptr noundef nonnull %call9.i)
  tail call void @__drbd_free_peer_req(ptr noundef %3, ptr noundef %w, i32 noundef 0) #14
  %rs_pending_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 39
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rs_pending_cnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %rs_pending_cnt.i, i32 1, i32 3, i32 1) #14
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rs_pending_cnt.i, ptr %rs_pending_cnt.i, i32 1, ptr elementtype(i32) %rs_pending_cnt.i) #14, !srcloc !269
  %call21 = tail call i32 @drbd_send_drequest_csum(ptr noundef %1, i64 noundef %15, i32 noundef %17, ptr noundef nonnull %call9.i, i32 noundef %13, i32 noundef 33) #14
  tail call void @kfree(ptr noundef nonnull %call9.i) #14
  br label %if.end25

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %23 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %26, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device, ptr noundef nonnull @.str.94) #17
  br label %out

out:                                              ; preds = %do.end, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ 0, %entry.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ -12, %do.end ]
  %tobool23.not = icmp eq ptr %w, null
  br i1 %tobool23.not, label %out.if.end25_crit_edge, label %if.then24

out.if.end25_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then24:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__drbd_free_peer_req(ptr noundef %3, ptr noundef nonnull %w, i32 noundef 0) #14
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %out.if.end25_crit_edge, %out.thread
  %err.066 = phi i32 [ %call21, %out.thread ], [ %err.0, %if.then24 ], [ %err.0, %out.if.end25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.066)
  %tobool26.not = icmp eq i32 %err.066, 0
  br i1 %tobool26.not, label %if.end25.if.end40_crit_edge, label %do.end36, !prof !272

if.end25.if.end40_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

do.end36:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %vdisk37 = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %27 = ptrtoint ptr %vdisk37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vdisk37, align 4
  %part038 = getelementptr inbounds %struct.gendisk, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %part038 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %part038, align 4
  %bd_device39 = getelementptr inbounds %struct.block_device, ptr %30, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %bd_device39, ptr noundef nonnull @.str.97) #17
  br label %if.end40

if.end40:                                         ; preds = %do.end36, %if.end25.if.end40_crit_edge
  ret i32 %err.066
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_submit_peer_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_send_ov_request(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drbd_prepare_command(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_send_command(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @conn_prepare_command(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @conn_send_command(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_cork(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_bm_write_lazy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_bcast_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_bitmap_io_from_worker(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_bm_write(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_md_set_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_force_state(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lc_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_backing_dev_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nobuiltin }
attributes #22 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !16, !18, !19, !20, !21, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !34, !36, !37, !38, !39, !41, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !64, !66, !68, !70, !71, !72, !74, !75, !76, !78, !80, !81, !82, !84, !85, !86, !88, !89, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !107, !109, !110, !112, !114, !116, !117, !118, !119, !121, !122, !123, !125, !127, !128, !129, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !160, !161, !163, !165, !167, !168, !169, !171, !172, !173, !175, !177, !179, !180, !181, !182, !184, !186, !187, !188, !190, !192, !194, !196, !198, !200, !201, !202, !203, !205, !206, !207, !209, !211, !212, !213, !214, !216, !217, !218, !220, !221, !223, !224, !225, !226, !228, !229, !230, !231, !233, !235, !237, !239, !241, !242, !243, !244, !246, !247, !248, !249, !251, !253, !254, !255}
!llvm.named.register.sp = !{!256}
!llvm.module.flags = !{!257, !258, !259, !260, !261, !262, !263, !264}
!llvm.ident = !{!265}

!0 = !{ptr @__func__.drbd_endio_write_sec_final, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/block/drbd/drbd_worker.c", i32 147, i32 3}
!2 = !{ptr @__func__.drbd_peer_request_endio, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/block/drbd/drbd_worker.c", i32 179, i32 24}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/block/drbd/drbd_worker.c", i32 180, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @drbd_peer_request_endio._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @drbd_peer_request_endio._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__func__.drbd_request_endio, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/block/drbd/drbd_worker.c", i32 243, i32 7}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/block/drbd/drbd_worker.c", i32 244, i32 4}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @drbd_request_endio._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @drbd_request_endio._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/block/drbd/drbd_worker.c", i32 881, i32 3}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @drbd_resync_finished._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @drbd_resync_finished._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/block/drbd/drbd_worker.c", i32 914, i32 2}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @drbd_resync_finished._entry.12, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @drbd_resync_finished._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/block/drbd/drbd_worker.c", i32 922, i32 4}
!36 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @drbd_resync_finished._entry.18, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @drbd_resync_finished._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/block/drbd/drbd_worker.c", i32 924, i32 18}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/block/drbd/drbd_worker.c", i32 927, i32 3}
!43 = !{ptr @drbd_resync_finished._entry.23, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @drbd_resync_finished._entry_ptr.25, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/block/drbd/drbd_worker.c", i32 930, i32 18}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/block/drbd/drbd_worker.c", i32 938, i32 4}
!49 = !{ptr @drbd_resync_finished._entry.27, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @drbd_resync_finished._entry_ptr.29, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/block/drbd/drbd_worker.c", i32 948, i32 3}
!53 = !{ptr @drbd_resync_finished._entry.30, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @drbd_resync_finished._entry_ptr.32, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/block/drbd/drbd_worker.c", i32 969, i32 5}
!57 = !{ptr @drbd_resync_finished._entry.33, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @drbd_resync_finished._entry_ptr.35, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.36, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/block/drbd/drbd_worker.c", i32 977, i32 29}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1000, i32 8}
!63 = !{ptr @.str.37, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1012, i32 29}
!66 = !{ptr @__func__.w_e_end_data_req, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1063, i32 3}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1071, i32 4}
!70 = !{ptr @w_e_end_data_req._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @w_e_end_data_req._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1082, i32 3}
!74 = !{ptr @w_e_end_data_req._entry.40, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @w_e_end_data_req._entry_ptr.42, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @__func__.w_e_end_rsdata_req, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1124, i32 3}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1144, i32 5}
!80 = !{ptr @w_e_end_rsdata_req._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @w_e_end_rsdata_req._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1150, i32 4}
!84 = !{ptr @w_e_end_rsdata_req._entry.44, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @w_e_end_rsdata_req._entry_ptr.46, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @w_e_end_rsdata_req._entry.47, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1164, i32 3}
!88 = !{ptr @w_e_end_rsdata_req._entry_ptr.48, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @__func__.w_e_end_csum_rs_req, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1180, i32 3}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1197, i32 4}
!93 = !{ptr @w_e_end_csum_rs_req._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @w_e_end_csum_rs_req._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1221, i32 4}
!97 = !{ptr @w_e_end_csum_rs_req._entry.50, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @w_e_end_csum_rs_req._entry_ptr.52, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1228, i32 3}
!101 = !{ptr @w_e_end_csum_rs_req._entry.53, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @w_e_end_csum_rs_req._entry_ptr.55, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @__func__.w_e_end_ov_req, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1268, i32 3}
!105 = !{ptr @__func__.w_e_end_ov_reply, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1304, i32 3}
!107 = !{ptr @w_e_end_ov_reply._entry, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1323, i32 4}
!109 = !{ptr @w_e_end_ov_reply._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1654, i32 18}
!112 = distinct !{null, !113, !"__warned", i1 false, i1 false}
!113 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1692, i32 9}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1745, i32 3}
!116 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @drbd_start_resync._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @drbd_start_resync._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1750, i32 3}
!121 = !{ptr @drbd_start_resync._entry.58, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @drbd_start_resync._entry_ptr.60, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1759, i32 29}
!125 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1762, i32 5}
!127 = !{ptr @drbd_start_resync._entry.62, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @drbd_start_resync._entry_ptr.64, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1768, i32 29}
!131 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1772, i32 6}
!133 = !{ptr @drbd_start_resync._entry.66, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @drbd_start_resync._entry_ptr.68, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.70, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1775, i32 6}
!137 = !{ptr @drbd_start_resync._entry.69, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @drbd_start_resync._entry_ptr.71, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.73, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1857, i32 3}
!141 = !{ptr @drbd_start_resync._entry.72, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @drbd_start_resync._entry_ptr.74, !140, !"_entry_ptr", i1 false, i1 false}
!143 = distinct !{null, !144, !"__warned", i1 false, i1 false}
!144 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1894, i32 10}
!145 = !{ptr @__func__.drbd_worker, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/block/drbd/drbd_worker.c", i32 2179, i32 4}
!147 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/block/drbd/drbd_worker.c", i32 2191, i32 5}
!149 = !{ptr @drbd_worker._entry, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @drbd_worker._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.77, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/block/drbd/drbd_worker.c", i32 2228, i32 3}
!153 = !{ptr @drbd_worker._entry.76, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @drbd_worker._entry_ptr.78, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.79, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/block/drbd/drbd_int.h", i32 2099, i32 2}
!157 = !{ptr @.str.80, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.81, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @put_ldev._entry, !156, !"_entry", i1 false, i1 false}
!160 = !{ptr @put_ldev._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!161 = distinct !{null, !162, !"__warned", i1 false, i1 false}
!162 = !{!"../drivers/block/drbd/drbd_int.h", i32 1722, i32 7}
!163 = !{ptr @__func__.__drbd_chk_io_error_, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/block/drbd/drbd_int.h", i32 1727, i32 8}
!165 = !{ptr @.str.82, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/block/drbd/drbd_int.h", i32 1728, i32 5}
!167 = !{ptr @__drbd_chk_io_error_._entry, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @__drbd_chk_io_error_._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.84, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/block/drbd/drbd_int.h", i32 1763, i32 4}
!171 = !{ptr @__drbd_chk_io_error_._entry.83, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @__drbd_chk_io_error_._entry_ptr.85, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @__func__.drbd_endio_read_sec_final, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/block/drbd/drbd_worker.c", i32 93, i32 3}
!175 = !{ptr @.str.86, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/block/drbd/drbd_worker.c", i32 200, i32 8}
!177 = !{ptr @.str.87, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/block/drbd/drbd_worker.c", i32 615, i32 3}
!179 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @make_resync_request._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @make_resync_request._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = distinct !{null, !183, !"__warned", i1 false, i1 false}
!183 = !{!"../drivers/block/drbd/drbd_worker.c", i32 621, i32 25}
!184 = !{ptr @.str.90, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/block/drbd/drbd_worker.c", i32 742, i32 5}
!186 = !{ptr @make_resync_request._entry.89, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @make_resync_request._entry_ptr.91, !185, !"_entry_ptr", i1 false, i1 false}
!188 = distinct !{null, !189, !"__warned", i1 false, i1 false}
!189 = !{!"../drivers/block/drbd/drbd_worker.c", i32 563, i32 6}
!190 = distinct !{null, !191, !"__warned", i1 false, i1 false}
!191 = !{!"../drivers/block/drbd/drbd_worker.c", i32 567, i32 25}
!192 = distinct !{null, !193, !"__warned", i1 false, i1 false}
!193 = !{!"../drivers/block/drbd/drbd_int.h", i32 2140, i32 7}
!194 = distinct !{null, !195, !"__warned", i1 false, i1 false}
!195 = !{!"../drivers/block/drbd/drbd_worker.c", i32 513, i32 7}
!196 = distinct !{null, !197, !"__warned", i1 false, i1 false}
!197 = !{!"../drivers/block/drbd/drbd_worker.c", i32 514, i32 9}
!198 = !{ptr @.str.94, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/block/drbd/drbd_worker.c", i32 377, i32 3}
!200 = !{ptr @.str.95, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @w_e_send_csum._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @w_e_send_csum._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.97, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/block/drbd/drbd_worker.c", i32 386, i32 3}
!205 = !{ptr @w_e_send_csum._entry.96, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @w_e_send_csum._entry_ptr.98, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @__func__.make_ov_request, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/block/drbd/drbd_worker.c", i32 806, i32 4}
!209 = !{ptr @.str.99, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/block/drbd/drbd_int.h", i32 1511, i32 3}
!211 = !{ptr @.str.100, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @ov_out_of_sync_print._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @ov_out_of_sync_print._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = distinct !{null, !215, !"__warned", i1 false, i1 false}
!215 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!216 = !{ptr @.str.101, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.102, !215, !"<string literal>", i1 false, i1 false}
!218 = distinct !{null, !219, !"__warned", i1 false, i1 false}
!219 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!220 = !{ptr @.str.103, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.104, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/block/drbd/drbd_int.h", i32 2046, i32 2}
!223 = !{ptr @.str.105, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @_dec_unacked._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @_dec_unacked._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.106, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/block/drbd/drbd_int.h", i32 2025, i32 2}
!228 = !{ptr @.str.107, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @_dec_rs_pending._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @_dec_rs_pending._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = distinct !{null, !232, !"__warned", i1 false, i1 false}
!232 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1545, i32 18}
!233 = distinct !{null, !234, !"__warned", i1 false, i1 false}
!234 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1721, i32 27}
!235 = distinct !{null, !236, !"__warned", i1 false, i1 false}
!236 = !{!"../drivers/block/drbd/drbd_worker.c", i32 2099, i32 7}
!237 = distinct !{null, !238, !"__warned", i1 false, i1 false}
!238 = !{!"../drivers/block/drbd/drbd_worker.c", i32 2154, i32 7}
!239 = !{ptr @.str.109, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1991, i32 2}
!241 = !{ptr @.str.110, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @do_md_sync._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @do_md_sync._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.111, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1953, i32 2}
!246 = !{ptr @.str.112, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @go_diskless._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @go_diskless._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.113, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1978, i32 6}
!251 = !{ptr @.str.114, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/block/drbd/drbd_worker.c", i32 1707, i32 3}
!253 = !{ptr @.str.115, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @do_start_resync._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @do_start_resync._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{!"sp"}
!257 = !{i32 1, !"wchar_size", i32 2}
!258 = !{i32 1, !"min_enum_size", i32 4}
!259 = !{i32 8, !"branch-target-enforcement", i32 0}
!260 = !{i32 8, !"sign-return-address", i32 0}
!261 = !{i32 8, !"sign-return-address-all", i32 0}
!262 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!263 = !{i32 7, !"uwtable", i32 1}
!264 = !{i32 7, !"frame-pointer", i32 2}
!265 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!266 = !{i64 2148492199}
!267 = !{i64 2148406908, i64 2148406940, i64 2148406969, i64 2148407003, i64 2148407034, i64 2148407057}
!268 = !{i64 2148492428}
!269 = !{i64 2148403723, i64 2148403749, i64 2148403778, i64 2148403812, i64 2148403843, i64 2148403866}
!270 = !{i64 2148405253, i64 2148405285, i64 2148405314, i64 2148405348, i64 2148405379, i64 2148405402}
!271 = !{!"branch_weights", i32 1, i32 2000}
!272 = !{!"branch_weights", i32 2000, i32 1}
!273 = !{i64 2148493278}
!274 = !{i64 2148407718, i64 2148407750, i64 2148407779, i64 2148407813, i64 2148407844, i64 2148407867}
!275 = !{i64 2149369392}
!276 = !{i64 2149419882}
!277 = !{i64 2149420148}
!278 = !{!"auto-init"}
!279 = !{i64 2154296463}
!280 = !{i64 2152192720}
!281 = !{i64 2152192927}
!282 = !{i64 2154299234}
!283 = !{i64 2149074236}
!284 = !{i64 2148406188, i64 2148406214, i64 2148406243, i64 2148406277, i64 2148406308, i64 2148406331}
!285 = !{i8 0, i8 2}
!286 = !{i64 2148177411}
!287 = !{i64 2159489498}
!288 = !{i64 902011}
!289 = !{i64 2160127416}
!290 = !{i64 913215, i64 913236, i64 913259, i64 913278, i64 913297}
!291 = !{i64 2160127821}
!292 = !{i64 2148663623}
!293 = !{i64 910491, i64 910508, i64 910532, i64 910558, i64 910576}
!294 = !{i64 2148663993}
