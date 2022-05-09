; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_buf.c_pt.bc'
source_filename = "../fs/xfs/xfs_buf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.bio_list = type { ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_buftarg = type { i32, ptr, ptr, i64, ptr, i32, i32, i32, i32, %struct.shrinker, %struct.list_lru, %struct.percpu_counter, %struct.ratelimit_state }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.__xfsstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.page = type { i32, %union.anon.17, %union.anon.65, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.65 = type { %struct.atomic_t }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.xfs_buf_ops = type { ptr, %union.anon.88, ptr, ptr, ptr }
%union.anon.88 = type { [2 x i32] }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.40 }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.40 = type { %struct.work_struct }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.39, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.39 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xfs_buf_islocked(bp)\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/xfs/xfs_buf.c\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"atomic_read(&bp->b_hold) >= 1\00", [34 x i8] zeroinitializer }, align 32
@xfs_buf_hash_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&pag->pag_buf_lock\00", [45 x i8] zeroinitializer }, align 32
@xfs_buf_hash_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 16, i16 8, i16 8, i16 0, i32 0, i16 32, i8 1, ptr null, ptr null, ptr @_xfs_buf_obj_cmp }, [36 x i8] zeroinitializer }, align 32
@xfs_buf_get_map._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.xfs_buf_get_map = private unnamed_addr constant [16 x i8] c"xfs_buf_get_map\00", align 1
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: failed to map %u pages\00", [37 x i8] zeroinitializer }, align 32
@xfsstats = external dso_local local_unnamed_addr global %struct.xstats, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"!(flags & XBF_WRITE)\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bp->b_maps[0].bm_bn != XFS_BUF_DADDR_NULL\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bp->b_flags & XBF_DONE\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bp->b_error == 0\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bp->b_ops != NULL || ops == NULL\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bp->b_map_count == 1\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: failed to map pages\00", [40 x i8] zeroinitializer }, align 32
@__func__.xfs_buf_get_uncached = private unnamed_addr constant [21 x i8] c"xfs_buf_get_uncached\00", align 1
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"list_empty(&bp->b_lru)\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"atomic_read(&bp->b_hold) > 0\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"!(bp->b_flags & _XBF_DELWRI_Q)\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error <= 0 && error >= -1000\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"XFS: metadata IO error\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"metadata I/O error in \22%pS\22 at daddr 0x%llx len %d error %d\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(csize + page_offset) <= PAGE_SIZE\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"XFS: Corruption Alert\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Corruption Alert: Buffer at daddr 0x%llx had permanent write failures!\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"xfs_is_shutdown(btp->bt_mount)\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Please run xfs_repair to determine the extent of the problem.\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"percpu_counter_sum(&btp->bt_io_count) == 0\00", [53 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot set_blocksize to %u on device %pg\00", [55 x i8] zeroinitializer }, align 32
@xfs_alloc_buftarg.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"!(bp->b_flags & XBF_READ)\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bp->b_flags & _XBF_DELWRI_Q\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xfs_buf\00", [24 x i8] zeroinitializer }, align 32
@xfs_buf_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bp->b_flags & XBF_STALE\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"!(BBTOB(cmap.bm_len) < btp->bt_meta_sectorsize)\00", [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"!(BBTOB(cmap.bm_bn) & (xfs_off_t)btp->bt_meta_sectormask)\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: daddr 0x%llx out of range, EOFS 0x%llx\00", [53 x i8] zeroinitializer }, align 32
@__func__.xfs_buf_find = private unnamed_addr constant [13 x i8] c"xfs_buf_find\00", align 1
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(bp->b_flags & _XBF_DELWRI_Q) == 0\00", [61 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.39 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.43 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_xfs_buf_find = external dso_local global %struct.tracepoint, align 4
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_buf_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@_xfs_buf_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&bp->b_lock\00", [20 x i8] zeroinitializer }, align 32
@_xfs_buf_alloc.__key.47 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&bp->b_waiters\00", [17 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bp->b_maps == NULL\00", [45 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_buf_init = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_init.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bp->b_flags & _XBF_PAGES\00", [39 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_buf_free = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_buf_get = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_buf_submit = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_submit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: no buf ops on daddr 0x%llx len %d\00", [58 x i8] zeroinitializer }, align 32
@__func__._xfs_buf_ioapply = private unnamed_addr constant [17 x i8] c"_xfs_buf_ioapply\00", align 1
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@xfs_buf_ioend_async.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&bp->b_ioend_work)\00", [59 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_buf_read = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_buf_get_uncached = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_get_uncached.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_buf_hold = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_hold.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_buf_rele = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_rele.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.59 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.61 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.63 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_buf_trylock = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_trylock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_buf_trylock_fail = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_trylock_fail.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_buf_lock = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_buf_lock_done = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_lock_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_buf_unlock = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_buf_ioerror = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_ioerror.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_buf_iodone = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_iodone.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"list_empty(&bp->b_li_list)\00", [37 x i8] zeroinitializer }, align 32
@xfs_buf_ioerror_alert_ratelimited.lasttime = internal global { i32, [28 x i8] } zeroinitializer, align 32
@xfs_buf_ioerror_alert_ratelimited.lasttarg = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__tracepoint_xfs_buf_iodone_async = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_iodone_async.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_buf_error_relse = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_error_relse.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_buf_drain_buftarg = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_drain_buftarg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ratelimit_state_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&rs->lock\00", [22 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_buf_delwri_queued = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_delwri_queued.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_buf_delwri_queue = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_delwri_queue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_buf_delwri_split = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_delwri_split.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"!(bp->b_flags & XBF_ASYNC)\00", [37 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_buf_iowait = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_iowait.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_buf_iowait_done = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_iowait_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_buf_delwri_pushbuf = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_delwri_pushbuf.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 148, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 173, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 494, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [20 x i8] c"xfs_buf_hash_params\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 480, i32 39 }
@___asan_gen_.85 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 687, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 716, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 717, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 747, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 748, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 803, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 879, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 921, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 962, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 970, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1022, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1328, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1338, i32 32 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1339, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1682, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1797, i32 6 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1798, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1814, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1816, i32 8 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1890, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1911, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1963, i32 6 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 2022, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 2226, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 2261, i32 36 }
@___asan_gen_.166 = private unnamed_addr constant [14 x i8] c"xfs_buf_cache\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 23, i32 27 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 2288, i32 6 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 474, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 544, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 545, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 554, i32 6 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 607, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 695, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 594, i32 8 }
@___asan_gen_.200 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 723, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 755, i32 10 }
@___asan_gen_.206 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 516, i32 1 }
@___asan_gen_.209 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 108, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 238, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 263, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 87, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 33, i32 31 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 34, i32 28 }
@___asan_gen_.236 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 35, i32 39 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 182, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 278, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1527, i32 6 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1318, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1230, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [9 x i8] c"lasttime\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1119, i32 23 }
@___asan_gen_.259 = private unnamed_addr constant [9 x i8] c"lasttarg\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1120, i32 29 }
@___asan_gen_.262 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [29 x i8] c"../include/linux/ratelimit.h\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 14, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.269 = private constant [20 x i8] c"../fs/xfs/xfs_buf.c\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1570, i32 2 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @xfs_buf_hash_init.__key, ptr @.str.3, ptr @xfs_buf_hash_params, ptr @xfs_buf_get_map._rs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @xfs_alloc_buftarg.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @xfs_buf_cache, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @_xfs_buf_alloc.__key, ptr @.str.46, ptr @_xfs_buf_alloc.__key.47, ptr @.str.48, ptr @init_completion.__key, ptr @.str.49, ptr @sema_init.__key, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.57, ptr @xfs_buf_ioend_async.__key, ptr @.str.58, ptr @.str.64, ptr @xfs_buf_ioerror_alert_ratelimited.lasttime, ptr @xfs_buf_ioerror_alert_ratelimited.lasttarg, ptr @ratelimit_state_init.__key, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_buf_hash_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_buf_hash_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_buf_get_map._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_alloc_buftarg.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_buf_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_xfs_buf_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_xfs_buf_alloc.__key.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_buf_ioend_async.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_buf_ioerror_alert_ratelimited.lasttime to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_buf_ioerror_alert_ratelimited.lasttarg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ratelimit_state_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_buf_stale(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !254

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 148) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %2 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_flags, align 4
  %or = and i32 %3, -4194369
  %and = or i32 %or, 64
  store i32 %and, ptr %b_flags, align 4
  %b_lock = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %b_lock) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %cond.end.if.end.i_crit_edge, label %land.rhs.i

cond.end.if.end.i_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.rhs.i:                                       ; preds = %cond.end
  %dep_map.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i.i31 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i31)
  %cmp.not.i = icmp eq i32 %call.i.i31, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !255

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 119, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %cond.end.if.end.i_crit_edge
  %b_state.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 9
  %5 = ptrtoint ptr %b_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %b_state.i, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool24.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool24.not.i, label %if.end.i.__xfs_buf_ioacct_dec.exit_crit_edge, label %if.then25.i

if.end.i.__xfs_buf_ioacct_dec.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__xfs_buf_ioacct_dec.exit

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %and27.i = and i32 %6, -3
  %7 = ptrtoint ptr %b_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and27.i, ptr %b_state.i, align 4
  %b_target.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 15
  %8 = ptrtoint ptr %b_target.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_target.i, align 8
  %bt_io_count.i = getelementptr inbounds %struct.xfs_buftarg, ptr %9, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %10 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %bt_io_count.i, i64 noundef -1, i32 noundef %10) #13
  br label %__xfs_buf_ioacct_dec.exit

__xfs_buf_ioacct_dec.exit:                        ; preds = %if.then25.i, %if.end.i.__xfs_buf_ioacct_dec.exit_crit_edge
  %b_lru_ref = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_lru_ref, i32 noundef 4) #13
  %11 = ptrtoint ptr %b_lru_ref to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %b_lru_ref, align 4
  %12 = ptrtoint ptr %b_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %b_state.i, align 4
  %and3 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %__xfs_buf_ioacct_dec.exit.if.end_crit_edge

__xfs_buf_ioacct_dec.exit.if.end_crit_edge:       ; preds = %__xfs_buf_ioacct_dec.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %__xfs_buf_ioacct_dec.exit
  %b_target = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 15
  %14 = ptrtoint ptr %b_target to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_target, align 8
  %bt_lru = getelementptr inbounds %struct.xfs_buftarg, ptr %15, i32 0, i32 10
  %b_lru = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 7
  %call = tail call zeroext i1 @list_lru_del(ptr noundef %bt_lru, ptr noundef %b_lru) #13
  br i1 %call, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %b_hold = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 3
  %call.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_hold, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_hold, i32 1, i32 3, i32 1) #13
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_hold, ptr %b_hold, i32 1, ptr elementtype(i32) %b_hold) #13, !srcloc !256
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %__xfs_buf_ioacct_dec.exit.if.end_crit_edge
  %b_hold5 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 3
  %call.i.i30 = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_hold5, i32 noundef 4) #13
  %17 = ptrtoint ptr %b_hold5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %b_hold5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp7 = icmp sgt i32 %18, 0
  br i1 %cmp7, label %if.end.cond.end16_crit_edge, label %cond.false15, !prof !254

if.end.cond.end16_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end16

cond.false15:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 173) #13
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %if.end.cond.end16_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %b_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @list_lru_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_buf_hash_init(ptr noundef %pag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pag_buf_lock = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 35
  tail call void @__raw_spin_lock_init(ptr noundef %pag_buf_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @xfs_buf_hash_init.__key, i16 noundef signext 3) #13
  %pag_buf_hash = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 36
  %call1 = tail call i32 @rhashtable_init(ptr noundef %pag_buf_hash, ptr noundef nonnull @xfs_buf_hash_params) #13
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_buf_hash_destroy(ptr noundef %pag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pag_buf_hash = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 36
  tail call void @rhashtable_destroy(ptr noundef %pag_buf_hash) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_buf_incore(ptr nocapture noundef readonly %target, i64 noundef %blkno, i32 noundef %numblks, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  %map = alloca %struct.xfs_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #13
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !257
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map) #13
  %1 = getelementptr inbounds i8, ptr %map, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %1, align 8
  %3 = ptrtoint ptr %map to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %blkno, ptr %map, align 8
  %bm_len = getelementptr inbounds %struct.xfs_buf_map, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %bm_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %numblks, ptr %bm_len, align 8
  %call = call fastcc i32 @xfs_buf_find(ptr noundef %target, ptr noundef nonnull %map, i32 noundef 1, i32 noundef %flags, ptr noundef null, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %6, %if.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #13
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_buf_find(ptr nocapture noundef readonly %btp, ptr nocapture noundef readonly %map, i32 noundef %nmaps, i32 noundef %flags, ptr noundef %new_bp, ptr nocapture noundef writeonly %found_bp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %map, align 8
  %cmap.sroa.0.sroa.0.0.extract.shift = lshr i64 %1, 32
  %cmap.sroa.0.sroa.0.0.extract.trunc = trunc i64 %cmap.sroa.0.sroa.0.0.extract.shift to i32
  %cmap.sroa.0.sroa.9.0.extract.trunc = trunc i64 %1 to i32
  %2 = ptrtoint ptr %found_bp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %found_bp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nmaps)
  %cmp363 = icmp sgt i32 %nmaps, 0
  br i1 %cmp363, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0365 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %cmap.sroa.10.0364 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %bm_len3 = getelementptr %struct.xfs_buf_map, ptr %map, i32 %i.0365, i32 1
  %3 = ptrtoint ptr %bm_len3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bm_len3, align 8
  %add = add i32 %4, %cmap.sroa.10.0364
  %inc = add nuw nsw i32 %i.0365, 1
  %exitcond.not = icmp eq i32 %inc, %nmaps
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %cmap.sroa.10.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %shl = shl i32 %cmap.sroa.10.0.lcssa, 9
  %bt_meta_sectorsize = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 5
  %5 = ptrtoint ptr %bt_meta_sectorsize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bt_meta_sectorsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %6)
  %cmp6.not = icmp ult i32 %shl, %6
  br i1 %cmp6.not, label %cond.false, label %for.end.cond.end_crit_edge, !prof !255

for.end.cond.end_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 544) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.end.cond.end_crit_edge
  %shl10 = shl i64 %1, 9
  %bt_meta_sectormask = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 6
  %7 = ptrtoint ptr %bt_meta_sectormask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bt_meta_sectormask, align 8
  %conv = zext i32 %8 to i64
  %and = and i64 %shl10, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool11.not = icmp eq i64 %and, 0
  br i1 %tobool11.not, label %cond.end.cond.end22_crit_edge, label %cond.false21, !prof !254

cond.end.cond.end22_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end22

cond.false21:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 545) #13
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false21, %cond.end.cond.end22_crit_edge
  %bt_mount = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 4
  %9 = ptrtoint ptr %bt_mount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bt_mount, align 8
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %sb_dblocks, align 8
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 28
  %13 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %14 to i64
  %shl25 = shl i64 %12, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %1)
  %cmp27 = icmp sgt i64 %1, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %shl25)
  %cmp30.not = icmp slt i64 %1, %shl25
  %or.cond = select i1 %cmp27, i1 %cmp30.not, i1 false
  br i1 %or.cond, label %if.end54, label %if.then

if.then:                                          ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %10, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.xfs_buf_find, i64 noundef %1, i64 noundef %shl25) #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 556, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end54:                                         ; preds = %cond.end22
  %shr.i361 = lshr i64 %1, %sh_prom
  %sb_agblocks.i = getelementptr inbounds %struct.xfs_sb, ptr %10, i32 0, i32 11
  %15 = ptrtoint ptr %sb_agblocks.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sb_agblocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr.i361)
  %cmp168.i = icmp ult i64 %shr.i361, 4294967296
  br i1 %cmp168.i, label %if.then172.i, label %if.else178.i, !prof !254

if.then172.i:                                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  %conv173.i = trunc i64 %shr.i361 to i32
  %div176.i = udiv i32 %conv173.i, %16
  br label %xfs_daddr_to_agno.exit

if.else178.i:                                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %16, i64 %shr.i361) #16, !srcloc !258
  %asmresult1.i.i = extractvalue { i64, i64 } %17, 1
  %extract.t290.i = trunc i64 %asmresult1.i.i to i32
  br label %xfs_daddr_to_agno.exit

xfs_daddr_to_agno.exit:                           ; preds = %if.else178.i, %if.then172.i
  %ld.0.off0.i = phi i32 [ %div176.i, %if.then172.i ], [ %extract.t290.i, %if.else178.i ]
  %call58 = tail call ptr @xfs_perag_get(ptr noundef %10, i32 noundef %ld.0.off0.i) #13
  %pag_buf_lock = getelementptr inbounds %struct.xfs_perag, ptr %call58, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %pag_buf_lock) #13
  %pag_buf_hash = getelementptr inbounds %struct.xfs_perag, ptr %call58, i32 0, i32 36
  %18 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !259
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i272 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i272, label %xfs_daddr_to_agno.exit.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

xfs_daddr_to_agno.exit.rcu_read_lock.exit.i_crit_edge: ; preds = %xfs_daddr_to_agno.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %xfs_daddr_to_agno.exit
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 696, ptr noundef nonnull @.str.36) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %xfs_daddr_to_agno.exit.rcu_read_lock.exit.i_crit_edge
  %22 = ptrtoint ptr %pag_buf_hash to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %pag_buf_hash, align 4
  %call.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %pag_buf_hash) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge

rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i
  %call5.i.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call7.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, label %land.lhs.true9.i.i.i

land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b92.i.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i.i, label %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge:    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 594, ptr noundef nonnull @.str.38) #13
  br label %do.end12.i.i.i

do.end12.i.i.i:                                   ; preds = %if.then.i.i.i, %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge
  %head_offset.i.i.i.i = getelementptr inbounds %struct.xfs_perag, ptr %call58, i32 0, i32 36, i32 3, i32 3
  br label %restart.i.i.i

restart.i.i.i:                                    ; preds = %do.end60.i.i.i.restart.i.i.i_crit_edge, %do.end12.i.i.i
  %tbl.0.i.i.i = phi ptr [ %23, %do.end12.i.i.i ], [ %48, %do.end60.i.i.i.restart.i.i.i_crit_edge ]
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add1.i.i.i.i.i.i = add i32 %25, -559038729
  %add33.i.i.i.i.i.i = add i32 %add1.i.i.i.i.i.i, %cmap.sroa.0.sroa.9.0.extract.trunc
  %add36.i.i.i.i.i.i = add i32 %add1.i.i.i.i.i.i, %cmap.sroa.0.sroa.0.0.extract.trunc
  %xor37.i.i.i.i.i.i = xor i32 %add33.i.i.i.i.i.i, %add1.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add33.i.i.i.i.i.i, i32 %add33.i.i.i.i.i.i, i32 14) #13
  %sub39.i.i.i.i.i.i = sub i32 %xor37.i.i.i.i.i.i, %or.i140.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i = xor i32 %sub39.i.i.i.i.i.i, %add36.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i, i32 11) #13
  %sub42.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i, %add33.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i, i32 25) #13
  %sub45.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i, i32 16) #13
  %sub48.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i, %sub42.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i, i32 4) #13
  %sub51.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i, %sub45.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i, i32 14) #13
  %sub54.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i, %sub48.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i, i32 24) #13
  %sub57.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i
  %26 = ptrtoint ptr %tbl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tbl.0.i.i.i, align 128
  %sub.i.i.i.i.i = add i32 %27, -1
  %and.i3.i.i.i.i = and i32 %sub57.i.i.i.i.i.i, %sub.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i.i, label %cond.false.i.i.i.i, label %cond.true.i.i.i.i, !prof !254

cond.true.i.i.i.i:                                ; preds = %restart.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = tail call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i) #13
  br label %rht_bucket.exit.i.i.i

cond.false.i.i.i.i:                               ; preds = %restart.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket.exit.i.i.i

rht_bucket.exit.i.i.i:                            ; preds = %cond.false.i.i.i.i, %cond.true.i.i.i.i
  %cond.i.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i.i.i.i ]
  %30 = ptrtoint ptr %cond.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %30, 1
  %31 = inttoptr i32 %or.i.i.i.i.i to ptr
  br label %do.body16.i.i.i

do.body16.i.i.i:                                  ; preds = %do.cond34.i.i.i.do.body16.i.i.i_crit_edge, %rht_bucket.exit.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !260
  %32 = ptrtoint ptr %cond.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %cond.i.i.i.i, align 4
  %call.i93.i.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i.i)
  %tobool.not.i94.i.i.i = icmp eq i32 %call.i93.i.i.i, 0
  br i1 %tobool.not.i94.i.i.i, label %land.lhs.true.i.i.i.i, label %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge

do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %do.body16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body16.i.i.i
  %call2.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true4.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b11.i.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i.i, label %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr_rcu.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 369, ptr noundef nonnull @.str.38) #13
  br label %rht_ptr_rcu.exit.i.i.i

rht_ptr_rcu.exit.i.i.i:                           ; preds = %if.then.i.i.i.i, %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge
  %34 = ptrtoint ptr %33 to i32
  %and.i.i95.i.i.i = and i32 %34, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i.i)
  %tobool.not.i.i96.i.i.i = icmp eq i32 %and.i.i95.i.i.i, 0
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i96.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i95.i.i.i
  %35 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %and.i106.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i.i)
  %tobool.i.not107.i.i.i = icmp eq i32 %and.i106.i.i.i, 0
  br i1 %tobool.i.not107.i.i.i, label %rht_ptr_rcu.exit.i.i.i.for.body.i.i.i_crit_edge, label %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge

rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge: ; preds = %rht_ptr_rcu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond34.i.i.i

rht_ptr_rcu.exit.i.i.i.for.body.i.i.i_crit_edge:  ; preds = %rht_ptr_rcu.exit.i.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.i.for.body.i.i.i_crit_edge
  %he.0108.i.i.i = phi ptr [ %45, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %35, %rht_ptr_rcu.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %36 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i98.i.i.i = zext i16 %37 to i32
  %idx.neg.i99.i.i.i = sub nsw i32 0, %conv.i98.i.i.i
  %add.ptr.i100.i.i.i = getelementptr i8, ptr %he.0108.i.i.i, i32 %idx.neg.i99.i.i.i
  %b_rhash_key.i = getelementptr inbounds %struct.xfs_buf, ptr %add.ptr.i100.i.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %b_rhash_key.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %b_rhash_key.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %1)
  %cmp.not.i = icmp eq i64 %39, %1
  br i1 %cmp.not.i, label %if.end.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i.i

if.end.i:                                         ; preds = %for.body.i.i.i
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %add.ptr.i100.i.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %b_length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %cmap.sroa.10.0.lcssa)
  %cmp1.not.i = icmp eq i32 %41, %cmap.sroa.10.0.lcssa
  br i1 %cmp1.not.i, label %__rhashtable_lookup.exit.i.i, label %if.then3.i, !prof !254

if.then3.i:                                       ; preds = %if.end.i
  %b_flags.i325 = getelementptr inbounds %struct.xfs_buf, ptr %add.ptr.i100.i.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %b_flags.i325 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %b_flags.i325, align 4
  %and.i326 = and i32 %43, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i326)
  %tobool4.not.i = icmp eq i32 %and.i326, 0
  br i1 %tobool4.not.i, label %cond.false.i, label %if.then3.i.for.inc.i.i.i_crit_edge, !prof !255

if.then3.i.for.inc.i.i.i_crit_edge:               ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i.i

cond.false.i:                                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 474) #13
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %cond.false.i, %if.then3.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %44 = ptrtoint ptr %he.0108.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %he.0108.i.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  %and.i.i.i.i = and i32 %46, 1
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.do.cond34.i.i.i_crit_edge

for.inc.i.i.i.do.cond34.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond34.i.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

do.cond34.i.i.i:                                  ; preds = %for.inc.i.i.i.do.cond34.i.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge
  %he.0.lcssa.i.i.i = phi ptr [ %35, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge ], [ %45, %for.inc.i.i.i.do.cond34.i.i.i_crit_edge ]
  %cmp.not.i.i.i = icmp eq ptr %he.0.lcssa.i.i.i, %31
  br i1 %cmp.not.i.i.i, label %do.end39.i.i.i, label %do.cond34.i.i.i.do.body16.i.i.i_crit_edge

do.cond34.i.i.i.do.body16.i.i.i_crit_edge:        ; preds = %do.cond34.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body16.i.i.i

do.end39.i.i.i:                                   ; preds = %do.cond34.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !261
  %future_tbl.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 5
  %47 = ptrtoint ptr %future_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %future_tbl.i.i.i, align 4
  %call47.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %pag_buf_hash) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i.i)
  %tobool48.not.i.i.i = icmp eq i32 %call47.i.i.i, 0
  br i1 %tobool48.not.i.i.i, label %lor.lhs.false49.i.i.i, label %do.end39.i.i.i.do.end60.i.i.i_crit_edge

do.end39.i.i.i.do.end60.i.i.i_crit_edge:          ; preds = %do.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i.i

lor.lhs.false49.i.i.i:                            ; preds = %do.end39.i.i.i
  %call50.i.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i.i)
  %tobool51.not.i.i.i = icmp eq i32 %call50.i.i.i, 0
  br i1 %tobool51.not.i.i.i, label %land.lhs.true52.i.i.i, label %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge

lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %lor.lhs.false49.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i.i

land.lhs.true52.i.i.i:                            ; preds = %lor.lhs.false49.i.i.i
  %call53.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i.i)
  %tobool54.not.i.i.i = icmp eq i32 %call53.i.i.i, 0
  br i1 %tobool54.not.i.i.i, label %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, label %land.lhs.true55.i.i.i

land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true52.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i.i

land.lhs.true55.i.i.i:                            ; preds = %land.lhs.true52.i.i.i
  %.b9091.i.i.i = load i1, ptr @__rhashtable_lookup.__warned.39, align 1
  br i1 %.b9091.i.i.i, label %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, label %if.then57.i.i.i

land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i.i

if.then57.i.i.i:                                  ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_lookup.__warned.39, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 614, ptr noundef nonnull @.str.38) #13
  br label %do.end60.i.i.i

do.end60.i.i.i:                                   ; preds = %if.then57.i.i.i, %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge, %do.end39.i.i.i.do.end60.i.i.i_crit_edge
  %tobool62.not.i.i.i = icmp eq ptr %48, null
  br i1 %tobool62.not.i.i.i, label %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge, label %do.end60.i.i.i.restart.i.i.i_crit_edge, !prof !254

do.end60.i.i.i.restart.i.i.i_crit_edge:           ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %restart.i.i.i

do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge: ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_lookup.exit.i

__rhashtable_lookup.exit.i.i:                     ; preds = %if.end.i
  %tobool.not.i1.i = icmp eq ptr %he.0108.i.i.i, null
  br i1 %tobool.not.i1.i, label %__rhashtable_lookup.exit.i.i.rhashtable_lookup.exit.i_crit_edge, label %cond.true.i.i

__rhashtable_lookup.exit.i.i.rhashtable_lookup.exit.i_crit_edge: ; preds = %__rhashtable_lookup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_lookup.exit.i

cond.true.i.i:                                    ; preds = %__rhashtable_lookup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i = zext i16 %50 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %he.0108.i.i.i, i32 %idx.neg.i.i.i
  br label %rhashtable_lookup.exit.i

rhashtable_lookup.exit.i:                         ; preds = %cond.true.i.i, %__rhashtable_lookup.exit.i.i.rhashtable_lookup.exit.i_crit_edge, %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge
  %cond.i.i = phi ptr [ %add.ptr.i.i.i, %cond.true.i.i ], [ null, %__rhashtable_lookup.exit.i.i.rhashtable_lookup.exit.i_crit_edge ], [ null, %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge ]
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i2.i, label %rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true.i5.i

rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_lookup_fast.exit

land.lhs.true.i5.i:                               ; preds = %rhashtable_lookup.exit.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_lookup_fast.exit

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_lookup_fast.exit

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 724, ptr noundef nonnull @.str.40) #13
  br label %rhashtable_lookup_fast.exit

rhashtable_lookup_fast.exit:                      ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge, %land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge, %rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !262
  %51 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i.i9.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %54, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %tobool60.not = icmp eq ptr %cond.i.i, null
  br i1 %tobool60.not, label %if.end62, label %if.then61

if.then61:                                        ; preds = %rhashtable_lookup_fast.exit
  %b_hold = getelementptr inbounds %struct.xfs_buf, ptr %cond.i.i, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_hold, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_hold, i32 1, i32 3, i32 1) #13
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_hold, ptr %b_hold, i32 1, ptr elementtype(i32) %b_hold) #13, !srcloc !263
  tail call void @_raw_spin_unlock(ptr noundef %pag_buf_lock) #13
  tail call void @xfs_perag_put(ptr noundef %call58) #13
  %b_sema.i = getelementptr inbounds %struct.xfs_buf, ptr %cond.i.i, i32 0, i32 6
  %call.i = tail call i32 @down_trylock(ptr noundef %b_sema.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i273 = icmp eq i32 %call.i, 0
  %56 = tail call ptr @llvm.returnaddress(i32 0) #13
  %57 = ptrtoint ptr %56 to i32
  br i1 %cmp.i273, label %xfs_buf_trylock.exit, label %if.then99

xfs_buf_trylock.exit:                             ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @trace_xfs_buf_trylock(ptr noundef nonnull %cond.i.i, i32 noundef %57) #13
  br label %if.end166

if.end62:                                         ; preds = %rhashtable_lookup_fast.exit
  %tobool63.not = icmp eq ptr %new_bp, null
  br i1 %tobool63.not, label %do.body66, label %if.end92

do.body66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %58 = load ptr, ptr @xfsstats, align 4
  %59 = ptrtoint ptr %58 to i32
  %60 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu, align 4
  %arrayidx72 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx72, align 4
  %add73 = add i32 %65, %59
  %66 = inttoptr i32 %add73 to ptr
  %xb_miss_locked = getelementptr inbounds %struct.__xfsstats, ptr %66, i32 0, i32 72
  %67 = ptrtoint ptr %xb_miss_locked to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %xb_miss_locked, align 8
  %inc74 = add i32 %68, 1
  store i32 %inc74, ptr %xb_miss_locked, align 8
  %69 = ptrtoint ptr %bt_mount to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bt_mount, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %70, i32 0, i32 92
  %71 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %m_stats, align 4
  %73 = ptrtoint ptr %72 to i32
  %74 = load i32, ptr %cpu, align 4
  %arrayidx85 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %74
  %75 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx85, align 4
  %add86 = add i32 %76, %73
  %77 = inttoptr i32 %add86 to ptr
  %xb_miss_locked87 = getelementptr inbounds %struct.__xfsstats, ptr %77, i32 0, i32 72
  %78 = ptrtoint ptr %xb_miss_locked87 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %xb_miss_locked87, align 8
  %inc88 = add i32 %79, 1
  store i32 %inc88, ptr %xb_miss_locked87, align 8
  tail call void @_raw_spin_unlock(ptr noundef %pag_buf_lock) #13
  tail call void @xfs_perag_put(ptr noundef %call58) #13
  br label %cleanup

if.end92:                                         ; preds = %if.end62
  %b_pag = getelementptr inbounds %struct.xfs_buf, ptr %new_bp, i32 0, i32 13
  %80 = ptrtoint ptr %b_pag to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call58, ptr %b_pag, align 8
  %81 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i.i.i.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %84, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !259
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i.i274 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i.i274, label %if.end92.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i276

if.end92.rcu_read_lock.exit.i.i_crit_edge:        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i276:                           ; preds = %if.end92
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i275 = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i275, label %land.lhs.true.i.i.i276.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i276.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i276
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i276
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i277

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i277:                                 ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 696, ptr noundef nonnull @.str.36) #13
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i277, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i276.rcu_read_lock.exit.i.i_crit_edge, %if.end92.rcu_read_lock.exit.i.i_crit_edge
  %85 = ptrtoint ptr %pag_buf_hash to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile ptr, ptr %pag_buf_hash, align 4
  %call.i.i278 = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %pag_buf_hash) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i278)
  %tobool.not.i.i279 = icmp eq i32 %call.i.i278, 0
  br i1 %tobool.not.i.i279, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call5.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i280, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i

land.lhs.true.i.i280:                             ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i280.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i280.do.end12.i.i_crit_edge:      ; preds = %land.lhs.true.i.i280
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i280
  %.b2.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i281

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i

if.then.i.i281:                                   ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 715, ptr noundef nonnull @.str.38) #13
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i281, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i280.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge
  %87 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %88 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %new_bp, i32 %idx.neg.i.i.i.i
  %add.ptr.i.i.i283 = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 8
  %hash_rnd.i.i.i.i284 = getelementptr inbounds %struct.bucket_table, ptr %86, i32 0, i32 2
  %89 = ptrtoint ptr %hash_rnd.i.i.i.i284 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %hash_rnd.i.i.i.i284, align 8
  %add1.i.i.i.i.i.i285 = add i32 %90, -559038729
  %arrayidx32.i.i.i.i.i.i286 = getelementptr i32, ptr %add.ptr.i.i.i283, i32 1
  %91 = ptrtoint ptr %arrayidx32.i.i.i.i.i.i286 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx32.i.i.i.i.i.i286, align 4
  %add33.i.i.i.i.i.i287 = add i32 %92, %add1.i.i.i.i.i.i285
  %93 = ptrtoint ptr %add.ptr.i.i.i283 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr.i.i.i283, align 4
  %add36.i.i.i.i.i.i288 = add i32 %94, %add1.i.i.i.i.i.i285
  %xor37.i.i.i.i.i.i289 = xor i32 %add33.i.i.i.i.i.i287, %add1.i.i.i.i.i.i285
  %or.i140.i.i.i.i.i.i290 = tail call i32 @llvm.fshl.i32(i32 %add33.i.i.i.i.i.i287, i32 %add33.i.i.i.i.i.i287, i32 14) #13
  %sub39.i.i.i.i.i.i291 = sub i32 %xor37.i.i.i.i.i.i289, %or.i140.i.i.i.i.i.i290
  %xor40.i.i.i.i.i.i292 = xor i32 %sub39.i.i.i.i.i.i291, %add36.i.i.i.i.i.i288
  %or.i141.i.i.i.i.i.i293 = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i291, i32 %sub39.i.i.i.i.i.i291, i32 11) #13
  %sub42.i.i.i.i.i.i294 = sub i32 %xor40.i.i.i.i.i.i292, %or.i141.i.i.i.i.i.i293
  %xor43.i.i.i.i.i.i295 = xor i32 %sub42.i.i.i.i.i.i294, %add33.i.i.i.i.i.i287
  %or.i142.i.i.i.i.i.i296 = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i294, i32 %sub42.i.i.i.i.i.i294, i32 25) #13
  %sub45.i.i.i.i.i.i297 = sub i32 %xor43.i.i.i.i.i.i295, %or.i142.i.i.i.i.i.i296
  %xor46.i.i.i.i.i.i298 = xor i32 %sub45.i.i.i.i.i.i297, %sub39.i.i.i.i.i.i291
  %or.i143.i.i.i.i.i.i299 = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i297, i32 %sub45.i.i.i.i.i.i297, i32 16) #13
  %sub48.i.i.i.i.i.i300 = sub i32 %xor46.i.i.i.i.i.i298, %or.i143.i.i.i.i.i.i299
  %xor49.i.i.i.i.i.i301 = xor i32 %sub48.i.i.i.i.i.i300, %sub42.i.i.i.i.i.i294
  %or.i144.i.i.i.i.i.i302 = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i300, i32 %sub48.i.i.i.i.i.i300, i32 4) #13
  %sub51.i.i.i.i.i.i303 = sub i32 %xor49.i.i.i.i.i.i301, %or.i144.i.i.i.i.i.i302
  %xor52.i.i.i.i.i.i304 = xor i32 %sub51.i.i.i.i.i.i303, %sub45.i.i.i.i.i.i297
  %or.i145.i.i.i.i.i.i305 = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i303, i32 %sub51.i.i.i.i.i.i303, i32 14) #13
  %sub54.i.i.i.i.i.i306 = sub i32 %xor52.i.i.i.i.i.i304, %or.i145.i.i.i.i.i.i305
  %xor55.i.i.i.i.i.i307 = xor i32 %sub54.i.i.i.i.i.i306, %sub48.i.i.i.i.i.i300
  %or.i146.i.i.i.i.i.i308 = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i306, i32 %sub54.i.i.i.i.i.i306, i32 24) #13
  %sub57.i.i.i.i.i.i309 = sub i32 %xor55.i.i.i.i.i.i307, %or.i146.i.i.i.i.i.i308
  %95 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %86, align 128
  %sub.i.i.i.i.i310 = add i32 %96, -1
  %and.i3.i.i.i.i311 = and i32 %sub57.i.i.i.i.i.i309, %sub.i.i.i.i.i310
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %86, i32 0, i32 1
  %97 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i4.i.i = icmp eq i32 %98, 0
  br i1 %tobool.not.i4.i.i, label %cond.false.i7.i.i, label %cond.true.i6.i.i, !prof !254

cond.true.i6.i.i:                                 ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i5.i.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %pag_buf_hash, ptr noundef %86, i32 noundef %and.i3.i.i.i.i311) #13
  br label %rht_bucket_insert.exit.i.i

cond.false.i7.i.i:                                ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %86, i32 0, i32 8, i32 %and.i3.i.i.i.i311
  br label %rht_bucket_insert.exit.i.i

rht_bucket_insert.exit.i.i:                       ; preds = %cond.false.i7.i.i, %cond.true.i6.i.i
  %cond.i8.i.i = phi ptr [ %call.i5.i.i, %cond.true.i6.i.i ], [ %arrayidx.i.i.i, %cond.false.i7.i.i ]
  %tobool17.not.i.i = icmp eq ptr %cond.i8.i.i, null
  br i1 %tobool17.not.i.i, label %rht_bucket_insert.exit.i.i.out.i.i_crit_edge, label %if.end19.i.i

rht_bucket_insert.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_bucket_insert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i.i

if.end19.i.i:                                     ; preds = %rht_bucket_insert.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %86, ptr noundef nonnull %cond.i8.i.i) #13
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %86, i32 0, i32 5
  %99 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %100, null
  br i1 %tobool25.not.i.i, label %if.end30.i.i, label %if.end19.i.i.slow_path.i.i_crit_edge, !prof !254

if.end19.i.i.slow_path.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %slow_path.i.i

slow_path.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, %for.end.i.i.slow_path.i.i_crit_edge, %if.end19.i.i.slow_path.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %86, ptr noundef nonnull %cond.i8.i.i) #13
  %call.i10.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i10.i.i, label %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i13.i.i

slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %slow_path.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i13.i.i:                            ; preds = %slow_path.i.i
  %call1.i11.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call1.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i15.i.i

land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i15.i.i:                           ; preds = %land.lhs.true.i13.i.i
  %.b4.i14.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i, label %land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i16.i.i

land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i.i

if.then.i16.i.i:                                  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 724, ptr noundef nonnull @.str.40) #13
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i16.i.i, %land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge, %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !262
  %101 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i.i17.i.i = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i.i.i17.i.i to ptr
  %preempt_count.i.i.i.i18.i.i = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i, align 4
  %sub.i.i.i19.i.i = add i32 %104, -1
  store volatile i32 %sub.i.i.i19.i.i, ptr %preempt_count.i.i.i.i18.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %call29.i.i = tail call ptr @rhashtable_insert_slow(ptr noundef %pag_buf_hash, ptr noundef null, ptr noundef nonnull %new_bp) #13
  br label %rhashtable_insert_fast.exit

if.end30.i.i:                                     ; preds = %if.end19.i.i
  %call.i20.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %86, i32 noundef %and.i3.i.i.i.i311) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i)
  %tobool.not.i21.i.i = icmp eq i32 %call.i20.i.i, 0
  br i1 %tobool.not.i21.i.i, label %land.lhs.true.i23.i.i, label %if.end30.i.i.rht_ptr.exit.i.i_crit_edge

if.end30.i.i.rht_ptr.exit.i.i_crit_edge:          ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i

land.lhs.true.i23.i.i:                            ; preds = %if.end30.i.i
  %call1.i22.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i22.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge: ; preds = %land.lhs.true.i23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i23.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i24.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i

if.then.i24.i.i:                                  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 377, ptr noundef nonnull @.str.42) #13
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i24.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge, %if.end30.i.i.rht_ptr.exit.i.i_crit_edge
  %105 = ptrtoint ptr %cond.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cond.i8.i.i, align 4
  %107 = ptrtoint ptr %106 to i32
  %and.i.i.i.i312 = and i32 %107, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i312)
  %tobool.not.i.i.i.i313 = icmp eq i32 %and.i.i.i.i312, 0
  %108 = ptrtoint ptr %cond.i8.i.i to i32
  %or.i.i.i.i = or i32 %108, 1
  %cond.i.i.i.i314 = select i1 %tobool.not.i.i.i.i313, i32 %or.i.i.i.i, i32 %and.i.i.i.i312
  %and.i63.i.i = and i32 %cond.i.i.i.i314, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i.i)
  %tobool.i.not64.i.i = icmp eq i32 %and.i63.i.i, 0
  br i1 %tobool.i.not64.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.if.end152.i.i_crit_edge

rht_ptr.exit.i.i.if.end152.i.i_crit_edge:         ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %109 = inttoptr i32 %cond.i.i.i.i314 to ptr
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.end147.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %head.066.i.i = phi ptr [ %111, %do.end147.i.i.for.body.i.i_crit_edge ], [ %109, %for.body.preheader.i.i ]
  %elasticity.065.i.i = phi i32 [ %dec.i.i, %do.end147.i.i.for.body.i.i_crit_edge ], [ 16, %for.body.preheader.i.i ]
  %dec.i.i = add i32 %elasticity.065.i.i, -1
  %call137.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %86, i32 noundef %and.i3.i.i.i.i311) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i)
  %tobool138.not.i.i = icmp eq i32 %call137.i.i, 0
  br i1 %tobool138.not.i.i, label %land.lhs.true139.i.i, label %for.body.i.i.do.end147.i.i_crit_edge

for.body.i.i.do.end147.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end147.i.i

land.lhs.true139.i.i:                             ; preds = %for.body.i.i
  %call140.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i)
  %tobool141.not.i.i = icmp eq i32 %call140.i.i, 0
  br i1 %tobool141.not.i.i, label %land.lhs.true139.i.i.do.end147.i.i_crit_edge, label %land.lhs.true142.i.i

land.lhs.true139.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true139.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end147.i.i

land.lhs.true142.i.i:                             ; preds = %land.lhs.true139.i.i
  %.b2811.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.43, align 1
  br i1 %.b2811.i.i, label %land.lhs.true142.i.i.do.end147.i.i_crit_edge, label %if.then144.i.i

land.lhs.true142.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end147.i.i

if.then144.i.i:                                   ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_insert_fast.__warned.43, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 732, ptr noundef nonnull @.str.42) #13
  br label %do.end147.i.i

do.end147.i.i:                                    ; preds = %if.then144.i.i, %land.lhs.true142.i.i.do.end147.i.i_crit_edge, %land.lhs.true139.i.i.do.end147.i.i_crit_edge, %for.body.i.i.do.end147.i.i_crit_edge
  %110 = ptrtoint ptr %head.066.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %head.066.i.i, align 4
  %112 = ptrtoint ptr %111 to i32
  %and.i.i.i = and i32 %112, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %do.end147.i.i.for.body.i.i_crit_edge, label %for.end.i.i

do.end147.i.i.for.body.i.i_crit_edge:             ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %phi.cmp.i.i315 = icmp slt i32 %dec.i.i, 1
  br i1 %phi.cmp.i.i315, label %for.end.i.i.slow_path.i.i_crit_edge, label %for.end.i.i.if.end152.i.i_crit_edge

for.end.i.i.if.end152.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152.i.i

for.end.i.i.slow_path.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %slow_path.i.i

if.end152.i.i:                                    ; preds = %for.end.i.i.if.end152.i.i_crit_edge, %rht_ptr.exit.i.i.if.end152.i.i_crit_edge
  %nelems.i.i.i = getelementptr inbounds %struct.xfs_perag, ptr %call58, i32 0, i32 36, i32 8
  %call.i.i.i25.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #13
  %113 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %nelems.i.i.i, align 4
  %max_elems.i.i.i = getelementptr inbounds %struct.xfs_perag, ptr %call58, i32 0, i32 36, i32 2
  %115 = ptrtoint ptr %max_elems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %max_elems.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %116)
  %cmp.i.not.i.i = icmp ult i32 %114, %116
  br i1 %cmp.i.not.i.i, label %if.end162.i.i, label %out_unlock.i.i, !prof !254

if.end162.i.i:                                    ; preds = %if.end152.i.i
  %call.i.i.i27.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #13
  %117 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %nelems.i.i.i, align 4
  %119 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %86, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %120)
  %cmp.i28.i.i = icmp ugt i32 %118, %120
  br i1 %cmp.i28.i.i, label %rht_grow_above_100.exit.i.i, label %if.end162.i.i.if.end171.i.i_crit_edge

if.end162.i.i.if.end171.i.i_crit_edge:            ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i:                      ; preds = %if.end162.i.i
  %max_size.i.i.i = getelementptr inbounds %struct.xfs_perag, ptr %call58, i32 0, i32 36, i32 3, i32 4
  %121 = ptrtoint ptr %max_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %max_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.not.i29.i.i = icmp eq i32 %122, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %122)
  %cmp4.i.i.i = icmp ult i32 %120, %122
  %spec.select.i.i.i = select i1 %tobool.not.i29.i.i, i1 true, i1 %cmp4.i.i.i
  br i1 %spec.select.i.i.i, label %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, !prof !255

rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %slow_path.i.i

if.end171.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, %if.end162.i.i.if.end171.i.i_crit_edge
  %call.i30.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %86, i32 noundef %and.i3.i.i.i.i311) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i.i)
  %tobool.not.i31.i.i = icmp eq i32 %call.i30.i.i, 0
  br i1 %tobool.not.i31.i.i, label %land.lhs.true.i34.i.i, label %if.end171.i.i.rht_ptr.exit42.i.i_crit_edge

if.end171.i.i.rht_ptr.exit42.i.i_crit_edge:       ; preds = %if.end171.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit42.i.i

land.lhs.true.i34.i.i:                            ; preds = %if.end171.i.i
  %call1.i32.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i.i)
  %tobool2.not.i33.i.i = icmp eq i32 %call1.i32.i.i, 0
  br i1 %tobool2.not.i33.i.i, label %land.lhs.true.i34.i.i.rht_ptr.exit42.i.i_crit_edge, label %land.lhs.true3.i36.i.i

land.lhs.true.i34.i.i.rht_ptr.exit42.i.i_crit_edge: ; preds = %land.lhs.true.i34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit42.i.i

land.lhs.true3.i36.i.i:                           ; preds = %land.lhs.true.i34.i.i
  %.b7.i35.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i35.i.i, label %land.lhs.true3.i36.i.i.rht_ptr.exit42.i.i_crit_edge, label %if.then.i37.i.i

land.lhs.true3.i36.i.i.rht_ptr.exit42.i.i_crit_edge: ; preds = %land.lhs.true3.i36.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit42.i.i

if.then.i37.i.i:                                  ; preds = %land.lhs.true3.i36.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 377, ptr noundef nonnull @.str.42) #13
  br label %rht_ptr.exit42.i.i

rht_ptr.exit42.i.i:                               ; preds = %if.then.i37.i.i, %land.lhs.true3.i36.i.i.rht_ptr.exit42.i.i_crit_edge, %land.lhs.true.i34.i.i.rht_ptr.exit42.i.i_crit_edge, %if.end171.i.i.rht_ptr.exit42.i.i_crit_edge
  %123 = ptrtoint ptr %cond.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cond.i8.i.i, align 4
  %125 = ptrtoint ptr %124 to i32
  %and.i.i38.i.i = and i32 %125, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38.i.i)
  %tobool.not.i.i39.i.i = icmp eq i32 %and.i.i38.i.i, 0
  %cond.i.i41.i.i = select i1 %tobool.not.i.i39.i.i, i32 %or.i.i.i.i, i32 %and.i.i38.i.i
  %126 = inttoptr i32 %cond.i.i41.i.i to ptr
  %127 = ptrtoint ptr %new_bp to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %126, ptr %new_bp, align 4
  %call.i.i.i.i316 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i, i32 1, i32 3, i32 1) #13
  %128 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i, ptr %nelems.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i) #13, !srcloc !263
  tail call fastcc void @rht_assign_unlock(ptr noundef %86, ptr noundef nonnull %cond.i8.i.i, ptr noundef nonnull %new_bp) #13
  %call.i.i.i44.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #13
  %129 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %nelems.i.i.i, align 4
  %131 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %86, align 128
  %div8.i.i.i = lshr i32 %132, 2
  %mul.i.i.i = mul nuw i32 %div8.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %mul.i.i.i)
  %cmp.i45.i.i = icmp ugt i32 %130, %mul.i.i.i
  br i1 %cmp.i45.i.i, label %rht_grow_above_75.exit.i.i, label %rht_ptr.exit42.i.i.out.i.i_crit_edge

rht_ptr.exit42.i.i.out.i.i_crit_edge:             ; preds = %rht_ptr.exit42.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i.i

rht_grow_above_75.exit.i.i:                       ; preds = %rht_ptr.exit42.i.i
  %max_size.i46.i.i = getelementptr inbounds %struct.xfs_perag, ptr %call58, i32 0, i32 36, i32 3, i32 4
  %133 = ptrtoint ptr %max_size.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %max_size.i46.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool.not.i47.i.i = icmp eq i32 %134, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %134)
  %cmp4.i48.i.i = icmp ult i32 %132, %134
  %spec.select.i49.i.i = select i1 %tobool.not.i47.i.i, i1 true, i1 %cmp4.i48.i.i
  br i1 %spec.select.i49.i.i, label %if.then207.i.i, label %rht_grow_above_75.exit.i.i.out.i.i_crit_edge

rht_grow_above_75.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i.i

if.then207.i.i:                                   ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %run_work.i.i = getelementptr inbounds %struct.xfs_perag, ptr %call58, i32 0, i32 36, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %135 = load ptr, ptr @system_wq, align 4
  %call.i.i51.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %135, ptr noundef %run_work.i.i) #13
  br label %out.i.i

out.i.i:                                          ; preds = %out_unlock.i.i, %if.then207.i.i, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge, %rht_ptr.exit42.i.i.out.i.i_crit_edge, %rht_bucket_insert.exit.i.i.out.i.i_crit_edge
  %call.i52.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i52.i.i, label %out.i.i.rcu_read_unlock.exit62.i.i_crit_edge, label %land.lhs.true.i55.i.i

out.i.i.rcu_read_unlock.exit62.i.i_crit_edge:     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit62.i.i

land.lhs.true.i55.i.i:                            ; preds = %out.i.i
  %call1.i53.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i.i)
  %tobool.not.i54.i.i = icmp eq i32 %call1.i53.i.i, 0
  br i1 %tobool.not.i54.i.i, label %land.lhs.true.i55.i.i.rcu_read_unlock.exit62.i.i_crit_edge, label %land.lhs.true2.i57.i.i

land.lhs.true.i55.i.i.rcu_read_unlock.exit62.i.i_crit_edge: ; preds = %land.lhs.true.i55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit62.i.i

land.lhs.true2.i57.i.i:                           ; preds = %land.lhs.true.i55.i.i
  %.b4.i56.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i.i, label %land.lhs.true2.i57.i.i.rcu_read_unlock.exit62.i.i_crit_edge, label %if.then.i58.i.i

land.lhs.true2.i57.i.i.rcu_read_unlock.exit62.i.i_crit_edge: ; preds = %land.lhs.true2.i57.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit62.i.i

if.then.i58.i.i:                                  ; preds = %land.lhs.true2.i57.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 724, ptr noundef nonnull @.str.40) #13
  br label %rcu_read_unlock.exit62.i.i

rcu_read_unlock.exit62.i.i:                       ; preds = %if.then.i58.i.i, %land.lhs.true2.i57.i.i.rcu_read_unlock.exit62.i.i_crit_edge, %land.lhs.true.i55.i.i.rcu_read_unlock.exit62.i.i_crit_edge, %out.i.i.rcu_read_unlock.exit62.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !262
  %136 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i.i59.i.i = and i32 %136, -16384
  %137 = inttoptr i32 %and.i.i.i.i.i59.i.i to ptr
  %preempt_count.i.i.i.i60.i.i = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %preempt_count.i.i.i.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %preempt_count.i.i.i.i60.i.i, align 4
  %sub.i.i.i61.i.i = add i32 %139, -1
  store volatile i32 %sub.i.i.i61.i.i, ptr %preempt_count.i.i.i.i60.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %rhashtable_insert_fast.exit

out_unlock.i.i:                                   ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @rht_unlock(ptr noundef %86, ptr noundef nonnull %cond.i8.i.i) #13
  br label %out.i.i

rhashtable_insert_fast.exit:                      ; preds = %rcu_read_unlock.exit62.i.i, %rcu_read_unlock.exit.i.i
  tail call void @_raw_spin_unlock(ptr noundef %pag_buf_lock) #13
  %140 = ptrtoint ptr %found_bp to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %new_bp, ptr %found_bp, align 4
  br label %cleanup

if.then99:                                        ; preds = %if.then61
  tail call fastcc void @trace_xfs_buf_trylock_fail(ptr noundef nonnull %cond.i.i, i32 noundef %57) #13
  %and100 = and i32 %flags, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end134, label %if.then102

if.then102:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @xfs_buf_rele(ptr noundef nonnull %cond.i.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %141 = load ptr, ptr @xfsstats, align 4
  %142 = ptrtoint ptr %141 to i32
  %143 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i317 = and i32 %143, -16384
  %144 = inttoptr i32 %and.i317 to ptr
  %cpu112 = getelementptr inbounds %struct.thread_info, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %cpu112 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %cpu112, align 4
  %arrayidx113 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %146
  %147 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx113, align 4
  %add114 = add i32 %148, %142
  %149 = inttoptr i32 %add114 to ptr
  %xb_busy_locked = getelementptr inbounds %struct.__xfsstats, ptr %149, i32 0, i32 71
  %150 = ptrtoint ptr %xb_busy_locked to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %xb_busy_locked, align 4
  %inc115 = add i32 %151, 1
  store i32 %inc115, ptr %xb_busy_locked, align 4
  %152 = ptrtoint ptr %bt_mount to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %bt_mount, align 8
  %m_stats123 = getelementptr inbounds %struct.xfs_mount, ptr %153, i32 0, i32 92
  %154 = ptrtoint ptr %m_stats123 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %m_stats123, align 4
  %156 = ptrtoint ptr %155 to i32
  %157 = load i32, ptr %cpu112, align 4
  %arrayidx128 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %157
  %158 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx128, align 4
  %add129 = add i32 %159, %156
  %160 = inttoptr i32 %add129 to ptr
  %xb_busy_locked130 = getelementptr inbounds %struct.__xfsstats, ptr %160, i32 0, i32 71
  %161 = ptrtoint ptr %xb_busy_locked130 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %xb_busy_locked130, align 4
  %inc131 = add i32 %162, 1
  store i32 %inc131, ptr %xb_busy_locked130, align 4
  br label %cleanup

if.end134:                                        ; preds = %if.then99
  tail call fastcc void @trace_xfs_buf_lock(ptr noundef nonnull %cond.i.i, i32 noundef %57) #13
  %b_pin_count.i = getelementptr inbounds %struct.xfs_buf, ptr %cond.i.i, i32 0, i32 27
  %call.i.i.i318 = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_pin_count.i, i32 noundef 4) #13
  %163 = ptrtoint ptr %b_pin_count.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile i32, ptr %b_pin_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool.not.i319 = icmp eq i32 %164, 0
  br i1 %tobool.not.i319, label %if.end134.xfs_buf_lock.exit_crit_edge, label %land.lhs.true.i

if.end134.xfs_buf_lock.exit_crit_edge:            ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_lock.exit

land.lhs.true.i:                                  ; preds = %if.end134
  %b_flags.i = getelementptr inbounds %struct.xfs_buf, ptr %cond.i.i, i32 0, i32 5
  %165 = ptrtoint ptr %b_flags.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %b_flags.i, align 4
  %and.i320 = and i32 %166, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i320)
  %tobool1.not.i = icmp eq i32 %and.i320, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.xfs_buf_lock.exit_crit_edge, label %if.then.i321

land.lhs.true.i.xfs_buf_lock.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_lock.exit

if.then.i321:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %b_mount.i = getelementptr inbounds %struct.xfs_buf, ptr %cond.i.i, i32 0, i32 14
  %167 = ptrtoint ptr %b_mount.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %b_mount.i, align 4
  %call2.i = tail call i32 @xfs_log_force(ptr noundef %168, i32 noundef 0) #13
  br label %xfs_buf_lock.exit

xfs_buf_lock.exit:                                ; preds = %if.then.i321, %land.lhs.true.i.xfs_buf_lock.exit_crit_edge, %if.end134.xfs_buf_lock.exit_crit_edge
  tail call void @down(ptr noundef %b_sema.i) #13
  tail call fastcc void @trace_xfs_buf_lock_done(ptr noundef nonnull %cond.i.i, i32 noundef %57) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %169 = load ptr, ptr @xfsstats, align 4
  %170 = ptrtoint ptr %169 to i32
  %171 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i323 = and i32 %171, -16384
  %172 = inttoptr i32 %and.i323 to ptr
  %cpu144 = getelementptr inbounds %struct.thread_info, ptr %172, i32 0, i32 3
  %173 = ptrtoint ptr %cpu144 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %cpu144, align 4
  %arrayidx145 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %174
  %175 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx145, align 4
  %add146 = add i32 %176, %170
  %177 = inttoptr i32 %add146 to ptr
  %xb_get_locked_waited = getelementptr inbounds %struct.__xfsstats, ptr %177, i32 0, i32 70
  %178 = ptrtoint ptr %xb_get_locked_waited to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %xb_get_locked_waited, align 8
  %inc147 = add i32 %179, 1
  store i32 %inc147, ptr %xb_get_locked_waited, align 8
  %180 = ptrtoint ptr %bt_mount to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %bt_mount, align 8
  %m_stats155 = getelementptr inbounds %struct.xfs_mount, ptr %181, i32 0, i32 92
  %182 = ptrtoint ptr %m_stats155 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %m_stats155, align 4
  %184 = ptrtoint ptr %183 to i32
  %185 = load i32, ptr %cpu144, align 4
  %arrayidx160 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %185
  %186 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx160, align 4
  %add161 = add i32 %187, %184
  %188 = inttoptr i32 %add161 to ptr
  %xb_get_locked_waited162 = getelementptr inbounds %struct.__xfsstats, ptr %188, i32 0, i32 70
  %189 = ptrtoint ptr %xb_get_locked_waited162 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %xb_get_locked_waited162, align 8
  %inc163 = add i32 %190, 1
  store i32 %inc163, ptr %xb_get_locked_waited162, align 8
  br label %if.end166

if.end166:                                        ; preds = %xfs_buf_lock.exit, %xfs_buf_trylock.exit
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %cond.i.i, i32 0, i32 5
  %191 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %b_flags, align 4
  %and167 = and i32 %192, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %if.end166.if.end185_crit_edge, label %if.then169

if.end166.if.end185_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

if.then169:                                       ; preds = %if.end166
  %and171 = and i32 %192, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %cmp172 = icmp eq i32 %and171, 0
  br i1 %cmp172, label %if.then169.cond.end182_crit_edge, label %cond.false181, !prof !254

if.then169.cond.end182_crit_edge:                 ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end182

cond.false181:                                    ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 607) #13
  br label %cond.end182

cond.end182:                                      ; preds = %cond.false181, %if.then169.cond.end182_crit_edge
  %193 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %b_flags, align 4
  %and184 = and i32 %194, 3145728
  store i32 %and184, ptr %b_flags, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %cond.i.i, i32 0, i32 35
  %195 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr null, ptr %b_ops, align 4
  br label %if.end185

if.end185:                                        ; preds = %cond.end182, %if.end166.if.end185_crit_edge
  tail call fastcc void @trace_xfs_buf_find(ptr noundef nonnull %cond.i.i, i32 noundef %flags, i32 noundef %57)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %196 = load ptr, ptr @xfsstats, align 4
  %197 = ptrtoint ptr %196 to i32
  %198 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i324 = and i32 %198, -16384
  %199 = inttoptr i32 %and.i324 to ptr
  %cpu195 = getelementptr inbounds %struct.thread_info, ptr %199, i32 0, i32 3
  %200 = ptrtoint ptr %cpu195 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %cpu195, align 4
  %arrayidx196 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %201
  %202 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx196, align 4
  %add197 = add i32 %203, %197
  %204 = inttoptr i32 %add197 to ptr
  %xb_get_locked = getelementptr inbounds %struct.__xfsstats, ptr %204, i32 0, i32 69
  %205 = ptrtoint ptr %xb_get_locked to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %xb_get_locked, align 4
  %inc198 = add i32 %206, 1
  store i32 %inc198, ptr %xb_get_locked, align 4
  %207 = ptrtoint ptr %bt_mount to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %bt_mount, align 8
  %m_stats206 = getelementptr inbounds %struct.xfs_mount, ptr %208, i32 0, i32 92
  %209 = ptrtoint ptr %m_stats206 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %m_stats206, align 4
  %211 = ptrtoint ptr %210 to i32
  %212 = load i32, ptr %cpu195, align 4
  %arrayidx211 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %212
  %213 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx211, align 4
  %add212 = add i32 %214, %211
  %215 = inttoptr i32 %add212 to ptr
  %xb_get_locked213 = getelementptr inbounds %struct.__xfsstats, ptr %215, i32 0, i32 69
  %216 = ptrtoint ptr %xb_get_locked213 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %xb_get_locked213, align 4
  %inc214 = add i32 %217, 1
  store i32 %inc214, ptr %xb_get_locked213, align 4
  %218 = ptrtoint ptr %found_bp to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %cond.i.i, ptr %found_bp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end185, %if.then102, %rhashtable_insert_fast.exit, %do.body66, %if.then
  %retval.0 = phi i32 [ -117, %if.then ], [ 0, %if.end185 ], [ -11, %if.then102 ], [ 0, %rhashtable_insert_fast.exit ], [ -2, %do.body66 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_buf_get_map(ptr noundef %target, ptr nocapture noundef readonly %map, i32 noundef %nmaps, i32 noundef %flags, ptr nocapture noundef writeonly %bpp) #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  %new_bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #13
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !257
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_bp) #13
  %1 = ptrtoint ptr %new_bp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_bp, align 4, !annotation !257
  %2 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bpp, align 4
  %call = call fastcc i32 @xfs_buf_find(ptr noundef %target, ptr noundef %map, i32 noundef %nmaps, i32 noundef %flags, ptr noundef null, ptr noundef nonnull %bp)
  %3 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 0, label %entry.found_crit_edge
    i32 -2, label %if.end2
  ]

entry.found_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %found

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %entry
  %call3 = call fastcc i32 @_xfs_buf_alloc(ptr noundef %target, ptr noundef %map, i32 noundef %nmaps, i32 noundef %flags, ptr noundef nonnull %new_bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %4 = ptrtoint ptr %new_bp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_bp, align 4
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b_length, align 8
  %8 = and i32 %7, 8388600
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7.not = icmp eq i32 %8, 0
  br i1 %cmp7.not, label %lor.lhs.false, label %if.end6.if.then10_crit_edge

if.end6.if.then10_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end6
  %shl.i = shl i32 %7, 9
  %and.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 20, i32 4
  %call.i = tail call ptr @kmem_alloc(i32 noundef %shl.i, i32 noundef %spec.select.i) #13
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %5, i32 0, i32 16
  %9 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %b_addr.i, align 4
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %lor.lhs.false.if.then10_crit_edge, label %if.end4.i

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

if.end4.i:                                        ; preds = %lor.lhs.false
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %shl.i
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i, i32 -1
  %10 = ptrtoint ptr %add.ptr6.i to i32
  %11 = ptrtoint ptr %call.i to i32
  %12 = xor i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %12)
  %cmp.not.i = icmp ult i32 %12, 4096
  br i1 %cmp.not.i, label %if.end13.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kvfree(ptr noundef nonnull %call.i) #13
  %13 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %b_addr.i, align 4
  br label %if.then10

if.end13.i:                                       ; preds = %if.end4.i
  %and15.i = and i32 %11, 4095
  %b_offset.i = getelementptr inbounds %struct.xfs_buf, ptr %5, i32 0, i32 30
  %14 = ptrtoint ptr %b_offset.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and15.i, ptr %b_offset.i, align 8
  %b_page_array.i = getelementptr inbounds %struct.xfs_buf, ptr %5, i32 0, i32 23
  %b_pages.i = getelementptr inbounds %struct.xfs_buf, ptr %5, i32 0, i32 22
  %15 = ptrtoint ptr %b_pages.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b_page_array.i, ptr %b_pages.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call.i) #13
  br i1 %call.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i.i = tail call ptr @vmalloc_to_page(ptr noundef nonnull %call.i) #13
  br label %xfs_buf_alloc_kmem.exit

if.end.i.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %sub.i.i = add i32 %11, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %16, i32 %shr.i.i
  br label %xfs_buf_alloc_kmem.exit

xfs_buf_alloc_kmem.exit:                          ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %call1.i.i, %if.then.i.i ], [ %add.ptr.i.i, %if.end.i.i ]
  %17 = ptrtoint ptr %b_pages.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_pages.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %retval.0.i.i, ptr %18, align 4
  %b_page_count.i = getelementptr inbounds %struct.xfs_buf, ptr %5, i32 0, i32 29
  %20 = ptrtoint ptr %b_page_count.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %b_page_count.i, align 4
  %b_flags.i = getelementptr inbounds %struct.xfs_buf, ptr %5, i32 0, i32 5
  %21 = ptrtoint ptr %b_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %b_flags.i, align 4
  %or19.i = or i32 %22, 2097152
  store i32 %or19.i, ptr %b_flags.i, align 4
  br label %if.end15

if.then10:                                        ; preds = %if.then10.i, %lor.lhs.false.if.then10_crit_edge, %if.end6.if.then10_crit_edge
  %call11 = tail call fastcc i32 @xfs_buf_alloc_pages(ptr noundef %5, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end15_crit_edge, label %if.then10.out_free_buf_crit_edge

if.then10.out_free_buf_crit_edge:                 ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buf

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %xfs_buf_alloc_kmem.exit
  %call16 = call fastcc i32 @xfs_buf_find(ptr noundef %target, ptr noundef %map, i32 noundef %nmaps, i32 noundef %flags, ptr noundef %5, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.out_free_buf_crit_edge

if.end15.out_free_buf_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buf

if.end19:                                         ; preds = %if.end15
  %23 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bp, align 4
  %cmp20.not = icmp eq ptr %24, %5
  br i1 %cmp20.not, label %if.end19.found_crit_edge, label %if.then21

if.end19.found_crit_edge:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %found

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @xfs_buf_free(ptr noundef %5)
  br label %found

found:                                            ; preds = %if.then21, %if.end19.found_crit_edge, %entry.found_crit_edge
  %25 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_addr, align 4
  %tobool23.not = icmp eq ptr %28, null
  br i1 %tobool23.not, label %if.then24, label %found.if.end35_crit_edge

found.if.end35_crit_edge:                         ; preds = %found
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then24:                                        ; preds = %found
  %call25 = tail call fastcc i32 @_xfs_buf_map_pages(ptr noundef %26, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then24.if.end35_crit_edge, label %do.body, !prof !254

if.then24.if.end35_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.body:                                          ; preds = %if.then24
  %call30 = tail call i32 @___ratelimit(ptr noundef nonnull @xfs_buf_get_map._rs, ptr noundef nonnull @__func__.xfs_buf_get_map) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.body.do.end_crit_edge, label %if.then32

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %bt_mount = getelementptr inbounds %struct.xfs_buftarg, ptr %target, i32 0, i32 4
  %29 = ptrtoint ptr %bt_mount to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bt_mount, align 8
  %b_page_count = getelementptr inbounds %struct.xfs_buf, ptr %26, i32 0, i32 29
  %31 = ptrtoint ptr %b_page_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %b_page_count, align 4
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %30, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.xfs_buf_get_map, i32 noundef %32) #13
  br label %do.end

do.end:                                           ; preds = %if.then32, %do.body.do.end_crit_edge
  tail call fastcc void @xfs_buf_relse(ptr noundef %26)
  br label %cleanup

if.end35:                                         ; preds = %if.then24.if.end35_crit_edge, %found.if.end35_crit_edge
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %__here, label %if.end35.do.body40_crit_edge

if.end35.do.body40_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body40

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !264
  %b_error.i = getelementptr inbounds %struct.xfs_buf, ptr %26, i32 0, i32 31
  %33 = ptrtoint ptr %b_error.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %b_error.i, align 4
  tail call fastcc void @trace_xfs_buf_ioerror(ptr noundef %26, i32 noundef 0, ptr noundef blockaddress(@xfs_buf_get_map, %__here)) #13
  br label %do.body40

do.body40:                                        ; preds = %__here, %if.end35.do.body40_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %34 = load ptr, ptr @xfsstats, align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i89 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i89 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %add = add i32 %41, %35
  %42 = inttoptr i32 %add to ptr
  %xb_get = getelementptr inbounds %struct.__xfsstats, ptr %42, i32 0, i32 67
  %43 = ptrtoint ptr %xb_get to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %xb_get, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr %xb_get, align 4
  %bt_mount52 = getelementptr inbounds %struct.xfs_buftarg, ptr %target, i32 0, i32 4
  %45 = ptrtoint ptr %bt_mount52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bt_mount52, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %46, i32 0, i32 92
  %47 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %m_stats, align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = load i32, ptr %cpu, align 4
  %arrayidx56 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx56, align 4
  %add57 = add i32 %52, %49
  %53 = inttoptr i32 %add57 to ptr
  %xb_get58 = getelementptr inbounds %struct.__xfsstats, ptr %53, i32 0, i32 67
  %54 = ptrtoint ptr %xb_get58 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %xb_get58, align 4
  %inc59 = add i32 %55, 1
  store i32 %inc59, ptr %xb_get58, align 4
  %56 = tail call ptr @llvm.returnaddress(i32 0)
  %57 = ptrtoint ptr %56 to i32
  tail call fastcc void @trace_xfs_buf_get(ptr noundef %26, i32 noundef %flags, i32 noundef %57)
  %58 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %26, ptr %bpp, align 4
  br label %cleanup

out_free_buf:                                     ; preds = %if.end15.out_free_buf_crit_edge, %if.then10.out_free_buf_crit_edge
  %error.0 = phi i32 [ %call11, %if.then10.out_free_buf_crit_edge ], [ %call16, %if.end15.out_free_buf_crit_edge ]
  tail call fastcc void @xfs_buf_free(ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %out_free_buf, %do.body40, %do.end, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_free_buf ], [ 0, %do.body40 ], [ %call25, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_bp) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_xfs_buf_alloc(ptr noundef %target, ptr nocapture noundef readonly %map, i32 noundef %nmaps, i32 noundef %flags, ptr nocapture noundef writeonly %bpp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bpp, align 4
  %1 = load ptr, ptr @xfs_buf_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 36160) #13
  %and = and i32 %flags, 1073741803
  %b_hold = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_hold, i32 noundef 4) #13
  %2 = ptrtoint ptr %b_hold to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %b_hold, align 4
  %b_lru_ref = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 4
  %call.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_lru_ref, i32 noundef 4) #13
  %3 = ptrtoint ptr %b_lru_ref to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %b_lru_ref, align 8
  %b_iowait = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 18
  %4 = ptrtoint ptr %b_iowait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %b_iowait, align 4
  %wait.i = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 18, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @init_completion.__key) #13
  %b_lru = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %b_lru to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %b_lru, ptr %b_lru, align 8
  %prev.i = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %b_lru, ptr %prev.i, align 4
  %b_list = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 12
  %7 = ptrtoint ptr %b_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %b_list, ptr %b_list, align 8
  %prev.i82 = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %prev.i82 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %b_list, ptr %prev.i82, align 4
  %b_li_list = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 20
  %9 = ptrtoint ptr %b_li_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %b_li_list, ptr %b_li_list, align 8
  %prev.i83 = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 20, i32 1
  %10 = ptrtoint ptr %prev.i83 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %b_li_list, ptr %prev.i83, align 4
  %b_sema = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 6
  %wait_list1.i = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 6, i32 2
  %11 = ptrtoint ptr %b_sema to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %b_sema, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 6, i32 0, i32 1
  %12 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 6, i32 0, i32 2
  %13 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 6, i32 0, i32 3
  %14 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 6, i32 0, i32 4
  %15 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 6, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.50, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 6, i32 0, i32 4, i32 3
  %17 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 6, i32 0, i32 4, i32 4
  %18 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 6, i32 0, i32 4, i32 5
  %19 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 14)
  %20 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 8
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 6, i32 2, i32 1
  %21 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %b_lock = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %b_lock, ptr noundef nonnull @.str.46, ptr noundef nonnull @_xfs_buf_alloc.__key, i16 noundef signext 3) #13
  %b_target = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 15
  %22 = ptrtoint ptr %b_target to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %target, ptr %b_target, align 8
  %bt_mount = getelementptr inbounds %struct.xfs_buftarg, ptr %target, i32 0, i32 4
  %23 = ptrtoint ptr %bt_mount to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bt_mount, align 8
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 14
  %25 = ptrtoint ptr %b_mount to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %b_mount, align 4
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %b_flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and, ptr %b_flags, align 4
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 24
  %27 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_maps.i, align 8
  %cmp.i = icmp eq ptr %28, null
  br i1 %cmp.i, label %entry.cond.end.i_crit_edge, label %cond.false.i, !prof !254

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 182) #13
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %entry.cond.end.i_crit_edge
  %b_map_count.i = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 26
  %29 = ptrtoint ptr %b_map_count.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %nmaps, ptr %b_map_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nmaps)
  %cmp2.i = icmp eq i32 %nmaps, 1
  br i1 %cmp2.i, label %if.end.thread, label %if.end.i

if.end.thread:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %__b_map.i = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 25
  %30 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %__b_map.i, ptr %b_maps.i, align 8
  %31 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %map, align 8
  %b_rhash_key89 = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %b_rhash_key89 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %b_rhash_key89, align 8
  %b_length90 = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 2
  %34 = ptrtoint ptr %b_length90 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %b_length90, align 8
  br label %for.body.preheader

if.end.i:                                         ; preds = %cond.end.i
  %mul.i = shl i32 %nmaps, 4
  %call.i.i84 = tail call ptr @kmem_alloc(i32 noundef %mul.i, i32 noundef 20) #13
  %35 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i.i84, ptr %b_maps.i, align 8
  %tobool6.not.i = icmp eq ptr %call.i.i84, null
  br i1 %tobool6.not.i, label %if.then, label %if.end

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %36 = load ptr, ptr @xfs_buf_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %36, ptr noundef %call.i) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %37 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %map, align 8
  %b_rhash_key = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 1
  %39 = ptrtoint ptr %b_rhash_key to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %b_rhash_key, align 8
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 2
  %40 = ptrtoint ptr %b_length to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %b_length, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nmaps)
  %cmp87 = icmp sgt i32 %nmaps, 0
  br i1 %cmp87, label %if.end.for.body.preheader_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end.for.body.preheader_crit_edge, %if.end.thread
  %b_length92 = phi ptr [ %b_length90, %if.end.thread ], [ %b_length, %if.end.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.088 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx3 = getelementptr %struct.xfs_buf_map, ptr %map, i32 %i.088
  %41 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx3, align 8
  %43 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %b_maps.i, align 8
  %arrayidx5 = getelementptr %struct.xfs_buf_map, ptr %44, i32 %i.088
  %45 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %42, ptr %arrayidx5, align 8
  %bm_len = getelementptr %struct.xfs_buf_map, ptr %map, i32 %i.088, i32 1
  %46 = ptrtoint ptr %bm_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bm_len, align 8
  %48 = load ptr, ptr %b_maps.i, align 8
  %bm_len10 = getelementptr %struct.xfs_buf_map, ptr %48, i32 %i.088, i32 1
  %49 = ptrtoint ptr %bm_len10 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %47, ptr %bm_len10, align 8
  %50 = load i32, ptr %bm_len, align 8
  %51 = ptrtoint ptr %b_length92 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %b_length92, align 8
  %add = add i32 %52, %50
  store i32 %add, ptr %b_length92, align 8
  %inc = add nuw nsw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc, %nmaps
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %b_pin_count = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 27
  %call.i.i81 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_pin_count, i32 noundef 4) #13
  %53 = ptrtoint ptr %b_pin_count to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 0, ptr %b_pin_count, align 4
  %b_waiters = getelementptr inbounds %struct.xfs_buf, ptr %call.i, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %b_waiters, ptr noundef nonnull @.str.48, ptr noundef nonnull @_xfs_buf_alloc.__key.47) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %54 = load ptr, ptr @xfsstats, align 4
  %55 = ptrtoint ptr %54 to i32
  %56 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cpu, align 4
  %arrayidx23 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx23, align 4
  %add24 = add i32 %61, %55
  %62 = inttoptr i32 %add24 to ptr
  %xb_create = getelementptr inbounds %struct.__xfsstats, ptr %62, i32 0, i32 68
  %63 = ptrtoint ptr %xb_create to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %xb_create, align 8
  %inc25 = add i32 %64, 1
  store i32 %inc25, ptr %xb_create, align 8
  %65 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b_mount, align 4
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %66, i32 0, i32 92
  %67 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %m_stats, align 4
  %69 = ptrtoint ptr %68 to i32
  %70 = load i32, ptr %cpu, align 4
  %arrayidx36 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %70
  %71 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx36, align 4
  %add37 = add i32 %72, %69
  %73 = inttoptr i32 %add37 to ptr
  %xb_create38 = getelementptr inbounds %struct.__xfsstats, ptr %73, i32 0, i32 68
  %74 = ptrtoint ptr %xb_create38 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %xb_create38, align 8
  %inc39 = add i32 %75, 1
  store i32 %inc39, ptr %xb_create38, align 8
  %76 = tail call ptr @llvm.returnaddress(i32 0)
  %77 = ptrtoint ptr %76 to i32
  tail call fastcc void @trace_xfs_buf_init(ptr noundef %call.i, i32 noundef %77)
  %78 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i, ptr %bpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_buf_alloc_pages(ptr noundef %bp, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 11328, i32 73728
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %0 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %b_length, align 8
  %shl = shl i32 %1, 9
  %sub = add i32 %shl, 4095
  %div107 = lshr i32 %sub, 12
  %b_page_count = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 29
  %2 = ptrtoint ptr %b_page_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div107, ptr %b_page_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %sub)
  %cmp = icmp ult i32 %sub, 12288
  br i1 %cmp, label %if.then3, label %if.end8.i.i

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %b_page_array = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 23
  %b_pages = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 22
  %3 = ptrtoint ptr %b_pages to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %b_page_array, ptr %b_pages, align 4
  br label %if.end11

if.end8.i.i:                                      ; preds = %entry
  %or.i = or i32 %., 256
  %mul = shl nuw nsw i32 %div107, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef %or.i) #17
  %b_pages6 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 22
  %4 = ptrtoint ptr %b_pages6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i.i, ptr %b_pages6, align 4
  %tobool8.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool8.not, label %if.end8.i.i.cleanup82_crit_edge, label %if.end8.i.i.if.end11_crit_edge

if.end8.i.i.if.end11_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.end8.i.i.cleanup82_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup82

if.end11:                                         ; preds = %if.end8.i.i.if.end11_crit_edge, %if.then3
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %5 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %b_flags, align 4
  %or12 = or i32 %6, 1048576
  store i32 %or12, ptr %b_flags, align 4
  %and13 = shl i32 %flags, 8
  %7 = and i32 %and13, 256
  %8 = or i32 %., %7
  %9 = xor i32 %8, 256
  %b_pages19 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 22
  %10 = ptrtoint ptr %b_page_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %b_page_count, align 4
  %12 = ptrtoint ptr %b_pages19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_pages19, align 4
  %call1.i112 = tail call i32 @__alloc_pages_bulk(i32 noundef %9, i32 noundef 0, ptr noundef null, i32 noundef %11, ptr noundef null, ptr noundef %13) #13
  %14 = ptrtoint ptr %b_page_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b_page_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i112, i32 %15)
  %cmp22113 = icmp eq i32 %call1.i112, %15
  br i1 %cmp22113, label %if.end11.for.end_crit_edge, label %if.end43.lr.ph

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end43.lr.ph:                                   ; preds = %if.end11
  %b_mount70 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  br label %if.end43

if.end43:                                         ; preds = %cleanup.if.end43_crit_edge, %if.end43.lr.ph
  %call1.i115 = phi i32 [ %call1.i112, %if.end43.lr.ph ], [ %call1.i, %cleanup.if.end43_crit_edge ]
  %filled.0114 = phi i32 [ 0, %if.end43.lr.ph ], [ %call1.i115, %cleanup.if.end43_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i115, i32 %filled.0114)
  %cmp44.not = icmp eq i32 %call1.i115, %filled.0114
  br i1 %cmp44.not, label %if.end46, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end46:                                         ; preds = %if.end43
  br i1 %tobool.not, label %do.body52, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @xfs_buf_free_pages(ptr noundef %bp)
  br label %cleanup82

do.body52:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %16 = load ptr, ptr @xfsstats, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i108 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i108 to ptr
  %cpu60 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu60 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu60, align 4
  %arrayidx61 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx61, align 4
  %add62 = add i32 %23, %17
  %24 = inttoptr i32 %add62 to ptr
  %xb_page_retries = getelementptr inbounds %struct.__xfsstats, ptr %24, i32 0, i32 73
  %25 = ptrtoint ptr %xb_page_retries to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xb_page_retries, align 4
  %inc63 = add i32 %26, 1
  store i32 %inc63, ptr %xb_page_retries, align 4
  %27 = ptrtoint ptr %b_mount70 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_mount70, align 4
  %m_stats71 = getelementptr inbounds %struct.xfs_mount, ptr %28, i32 0, i32 92
  %29 = ptrtoint ptr %m_stats71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %m_stats71, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = load i32, ptr %cpu60, align 4
  %arrayidx76 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx76, align 4
  %add77 = add i32 %34, %31
  %35 = inttoptr i32 %add77 to ptr
  %xb_page_retries78 = getelementptr inbounds %struct.__xfsstats, ptr %35, i32 0, i32 73
  %36 = ptrtoint ptr %xb_page_retries78 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %xb_page_retries78, align 4
  %inc79 = add i32 %37, 1
  store i32 %inc79, ptr %xb_page_retries78, align 4
  tail call fastcc void @memalloc_retry_wait(i32 noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %do.body52, %if.end43.cleanup_crit_edge
  %38 = ptrtoint ptr %b_page_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %b_page_count, align 4
  %40 = ptrtoint ptr %b_pages19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b_pages19, align 4
  %call1.i = tail call i32 @__alloc_pages_bulk(i32 noundef %9, i32 noundef 0, ptr noundef null, i32 noundef %39, ptr noundef null, ptr noundef %41) #13
  %42 = ptrtoint ptr %b_page_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %b_page_count, align 4
  %cmp22 = icmp eq i32 %call1.i, %43
  br i1 %cmp22, label %cleanup.for.end_crit_edge, label %cleanup.if.end43_crit_edge

cleanup.if.end43_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end11.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %44 = load ptr, ptr @xfsstats, align 4
  %45 = ptrtoint ptr %44 to i32
  %46 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx, align 4
  %add27 = add i32 %51, %45
  %52 = inttoptr i32 %add27 to ptr
  %xb_page_found = getelementptr inbounds %struct.__xfsstats, ptr %52, i32 0, i32 74
  %53 = ptrtoint ptr %xb_page_found to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %xb_page_found, align 8
  %inc = add i32 %54, 1
  store i32 %inc, ptr %xb_page_found, align 8
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %55 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %b_mount, align 4
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %56, i32 0, i32 92
  %57 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %m_stats, align 4
  %59 = ptrtoint ptr %58 to i32
  %60 = load i32, ptr %cpu, align 4
  %arrayidx37 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx37, align 4
  %add38 = add i32 %62, %59
  %63 = inttoptr i32 %add38 to ptr
  %xb_page_found39 = getelementptr inbounds %struct.__xfsstats, ptr %63, i32 0, i32 74
  %64 = ptrtoint ptr %xb_page_found39 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %xb_page_found39, align 8
  %inc40 = add i32 %65, 1
  store i32 %inc40, ptr %xb_page_found39, align 8
  br label %cleanup82

cleanup82:                                        ; preds = %for.end, %cleanup.thread, %if.end8.i.i.cleanup82_crit_edge
  %retval.2 = phi i32 [ 0, %for.end ], [ -12, %if.end8.i.i.cleanup82_crit_edge ], [ -12, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_buf_free(ptr noundef %bp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call fastcc void @trace_xfs_buf_free(ptr noundef %bp, i32 noundef %1)
  %b_lru = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 7
  %2 = ptrtoint ptr %b_lru to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %b_lru, align 4
  %cmp.i.not = icmp eq ptr %3, %b_lru
  br i1 %cmp.i.not, label %entry.cond.end_crit_edge, label %cond.false, !prof !254

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 302) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %4 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %b_flags, align 4
  %and = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @xfs_buf_free_pages(ptr noundef %bp)
  br label %if.end8

if.else:                                          ; preds = %cond.end
  %and5 = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else.if.end8_crit_edge, label %if.then7

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %6 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_addr, align 4
  tail call void @kvfree(ptr noundef %7) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.else.if.end8_crit_edge, %if.then
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %8 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_maps.i, align 8
  %__b_map.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 25
  %cmp.not.i = icmp eq ptr %9, %__b_map.i
  br i1 %cmp.not.i, label %if.end8.xfs_buf_free_maps.exit_crit_edge, label %if.then.i

if.end8.xfs_buf_free_maps.exit_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_free_maps.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kvfree(ptr noundef %9) #13
  %10 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %b_maps.i, align 8
  br label %xfs_buf_free_maps.exit

xfs_buf_free_maps.exit:                           ; preds = %if.then.i, %if.end8.xfs_buf_free_maps.exit_crit_edge
  %11 = load ptr, ptr @xfs_buf_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %11, ptr noundef %bp) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_xfs_buf_map_pages(ptr nocapture noundef %bp, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %0 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %b_flags, align 4
  %and = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !255

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 410) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %b_page_count = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 29
  %2 = ptrtoint ptr %b_page_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_page_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %b_pages = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 22
  %4 = ptrtoint ptr %b_pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_pages, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call ptr @page_address(ptr noundef %7) #13
  br label %if.end23.sink.split

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %flags)
  %tobool4.not = icmp sgt i32 %flags, -1
  br i1 %tobool4.not, label %if.else7, label %if.else.if.end23.sink.split_crit_edge

if.else.if.end23.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.sink.split

if.else7:                                         ; preds = %if.else
  %8 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %13, 262144
  %or.i = or i32 %13, 262144
  store i32 %or.i, ptr %flags1.i, align 4
  %b_pages9 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 22
  %b_addr12 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %14 = ptrtoint ptr %b_pages9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_pages9, align 4
  %16 = ptrtoint ptr %b_page_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %b_page_count, align 4
  %call11 = tail call ptr @vm_map_ram(ptr noundef %15, i32 noundef %17, i32 noundef -1) #13
  %18 = ptrtoint ptr %b_addr12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call11, ptr %b_addr12, align 4
  %tobool14.not = icmp eq ptr %call11, null
  br i1 %tobool14.not, label %if.end, label %if.else7.do.end_crit_edge

if.else7.do.end_crit_edge:                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end:                                           ; preds = %if.else7
  tail call void @vm_unmap_aliases() #13
  %19 = ptrtoint ptr %b_pages9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_pages9, align 4
  %21 = ptrtoint ptr %b_page_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %b_page_count, align 4
  %call11.1 = tail call ptr @vm_map_ram(ptr noundef %20, i32 noundef %22, i32 noundef -1) #13
  %23 = ptrtoint ptr %b_addr12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call11.1, ptr %b_addr12, align 4
  %tobool14.not.1 = icmp eq ptr %call11.1, null
  br i1 %tobool14.not.1, label %if.end.1, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end.1:                                         ; preds = %if.end
  tail call void @vm_unmap_aliases() #13
  %24 = ptrtoint ptr %b_pages9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_pages9, align 4
  %26 = ptrtoint ptr %b_page_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %b_page_count, align 4
  %call11.2 = tail call ptr @vm_map_ram(ptr noundef %25, i32 noundef %27, i32 noundef -1) #13
  %28 = ptrtoint ptr %b_addr12 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call11.2, ptr %b_addr12, align 4
  %tobool14.not.2 = icmp eq ptr %call11.2, null
  br i1 %tobool14.not.2, label %if.end.2, label %if.end.1.do.end_crit_edge

if.end.1.do.end_crit_edge:                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end.2:                                         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @vm_unmap_aliases() #13
  br label %do.end

do.end:                                           ; preds = %if.end.2, %if.end.1.do.end_crit_edge, %if.end.do.end_crit_edge, %if.else7.do.end_crit_edge
  %29 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i33 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i33 to ptr
  %task.i34 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i34, align 8
  %flags1.i35 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %flags1.i35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags1.i35, align 4
  %and.i36 = and i32 %34, -262145
  %or.i37 = or i32 %and.i36, %and.i
  store i32 %or.i37, ptr %flags1.i35, align 4
  %35 = ptrtoint ptr %b_addr12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %b_addr12, align 4
  %tobool18.not.not = icmp eq ptr %36, null
  br i1 %tobool18.not.not, label %do.end.return_crit_edge, label %do.end.if.end23_crit_edge

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end23.sink.split:                              ; preds = %if.else.if.end23.sink.split_crit_edge, %if.then
  %.sink = phi ptr [ %call, %if.then ], [ null, %if.else.if.end23.sink.split_crit_edge ]
  %b_addr6 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %37 = ptrtoint ptr %b_addr6 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %.sink, ptr %b_addr6, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %do.end.if.end23_crit_edge
  br label %return

return:                                           ; preds = %if.end23, %do.end.return_crit_edge
  %retval.1 = phi i32 [ 0, %if.end23 ], [ -12, %do.end.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_buf_relse(ptr noundef %bp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %count.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.xfs_buf_unlock.exit_crit_edge, label %cond.false.i, !prof !254

entry.xfs_buf_unlock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_unlock.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1089) #13
  br label %xfs_buf_unlock.exit

xfs_buf_unlock.exit:                              ; preds = %cond.false.i, %entry.xfs_buf_unlock.exit_crit_edge
  %b_sema.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 6
  tail call void @up(ptr noundef %b_sema.i) #13
  %2 = tail call ptr @llvm.returnaddress(i32 0) #13
  %3 = ptrtoint ptr %2 to i32
  tail call fastcc void @trace_xfs_buf_unlock(ptr noundef %bp, i32 noundef %3) #13
  tail call void @xfs_buf_rele(ptr noundef %bp)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__xfs_buf_ioerror(ptr noundef %bp, i32 noundef %error, ptr noundef %failaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %error, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %0)
  %1 = icmp ult i32 %0, 1001
  br i1 %1, label %entry.cond.end_crit_edge, label %cond.false, !prof !254

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 1328) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %b_error = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 31
  %2 = ptrtoint ptr %b_error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %error, ptr %b_error, align 4
  tail call fastcc void @trace_xfs_buf_ioerror(ptr noundef %bp, i32 noundef %error, ptr noundef %failaddr)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_get(ptr noundef %bp, i32 noundef %flags, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_get, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_get, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %call42 = tail call i32 @__traceiter_xfs_buf_get(ptr noundef null, ptr noundef %bp, i32 noundef %flags, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !267
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_get, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_get, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_get.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 517, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_xfs_buf_read(ptr noundef %bp, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.false, !prof !254

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 716) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %b_maps = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %0 = ptrtoint ptr %b_maps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_maps, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %3)
  %cmp.not = icmp eq i64 %3, -1
  br i1 %cmp.not, label %cond.false11, label %cond.end.cond.end12_crit_edge, !prof !255

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 717) #13
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.end.cond.end12_crit_edge
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %4 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %b_flags, align 4
  %and13 = and i32 %5, -55
  %and14 = and i32 %flags, 21
  %or = or i32 %and13, %and14
  store i32 %or, ptr %b_flags, align 4
  %and.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %call.i = tail call fastcc i32 @__xfs_buf_submit(ptr noundef %bp, i1 noundef zeroext %tobool.not.i) #13
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_buf_reverify(ptr noundef %bp, ptr noundef %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %0 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %b_flags, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !255

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 747) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %b_error = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 31
  %2 = ptrtoint ptr %b_error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %cond.end.cond.end11_crit_edge, label %cond.false10, !prof !254

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 748) #13
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.end.cond.end11_crit_edge
  %tobool12.not = icmp eq ptr %ops, null
  br i1 %tobool12.not, label %cond.end11.return_crit_edge, label %lor.lhs.false

cond.end11.return_crit_edge:                      ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.lhs.false:                                    ; preds = %cond.end11
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %4 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_ops, align 4
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ops, ptr %b_ops, align 4
  %verify_read = getelementptr inbounds %struct.xfs_buf_ops, ptr %ops, i32 0, i32 2
  %7 = ptrtoint ptr %verify_read to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %verify_read, align 4
  tail call void %8(ptr noundef %bp) #13
  %9 = ptrtoint ptr %b_error to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %b_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool17.not = icmp eq i32 %10, 0
  br i1 %tobool17.not, label %if.end.return_crit_edge, label %if.then18

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %b_flags, align 4
  %and20 = and i32 %12, -33
  store i32 %and20, ptr %b_flags, align 4
  br label %return

return:                                           ; preds = %if.then18, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %cond.end11.return_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %cond.end11.return_crit_edge ], [ %10, %if.then18 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_buf_read_map(ptr noundef %target, ptr nocapture noundef readonly %map, i32 noundef %nmaps, i32 noundef %flags, ptr nocapture noundef writeonly %bpp, ptr noundef %ops, ptr noundef %fa) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #13
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !257
  %or = or i32 %flags, 1
  %1 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %bpp, align 4
  %call = call i32 @xfs_buf_get_map(ptr noundef %target, ptr noundef %map, i32 noundef %nmaps, i32 noundef %or, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bp, align 4
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %5 = ptrtoint ptr %4 to i32
  tail call fastcc void @trace_xfs_buf_read(ptr noundef %3, i32 noundef %or, i32 noundef %5)
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b_flags, align 4
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body3, label %cond.end.i70

do.body3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %8 = load ptr, ptr @xfsstats, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %add = add i32 %15, %9
  %16 = inttoptr i32 %add to ptr
  %xb_get_read = getelementptr inbounds %struct.__xfsstats, ptr %16, i32 0, i32 75
  %17 = ptrtoint ptr %xb_get_read to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xb_get_read, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %xb_get_read, align 4
  %bt_mount = getelementptr inbounds %struct.xfs_buftarg, ptr %target, i32 0, i32 4
  %19 = ptrtoint ptr %bt_mount to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bt_mount, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %20, i32 0, i32 92
  %21 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m_stats, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = load i32, ptr %cpu, align 4
  %arrayidx15 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx15, align 4
  %add16 = add i32 %26, %23
  %27 = inttoptr i32 %add16 to ptr
  %xb_get_read17 = getelementptr inbounds %struct.__xfsstats, ptr %27, i32 0, i32 75
  %28 = ptrtoint ptr %xb_get_read17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xb_get_read17, align 4
  %inc18 = add i32 %29, 1
  store i32 %inc18, ptr %xb_get_read17, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 35
  %30 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %ops, ptr %b_ops, align 4
  %and.i65 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65)
  %tobool.not.i = icmp eq i32 %and.i65, 0
  br i1 %tobool.not.i, label %do.body3.cond.end.i_crit_edge, label %cond.false.i, !prof !254

do.body3.cond.end.i_crit_edge:                    ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.false.i:                                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 716) #13
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %do.body3.cond.end.i_crit_edge
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 24
  %31 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_maps.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %32, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %34)
  %cmp.not.i = icmp eq i64 %34, -1
  br i1 %cmp.not.i, label %cond.false11.i, label %cond.end.i._xfs_buf_read.exit_crit_edge, !prof !255

cond.end.i._xfs_buf_read.exit_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_xfs_buf_read.exit

cond.false11.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 717) #13
  br label %_xfs_buf_read.exit

_xfs_buf_read.exit:                               ; preds = %cond.false11.i, %cond.end.i._xfs_buf_read.exit_crit_edge
  %35 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %b_flags, align 4
  %and13.i = and i32 %36, -56
  %and14.i = and i32 %or, 21
  %or.i = or i32 %and13.i, %and14.i
  store i32 %or.i, ptr %b_flags, align 4
  %and.i.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %call.i.i = tail call fastcc i32 @__xfs_buf_submit(ptr noundef %3, i1 noundef zeroext %tobool.not.i.i) #13
  br i1 %tobool.not.i.i, label %_xfs_buf_read.exit.if.end37_crit_edge, label %_xfs_buf_read.exit.cleanup_crit_edge

_xfs_buf_read.exit.cleanup_crit_edge:             ; preds = %_xfs_buf_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

_xfs_buf_read.exit.if.end37_crit_edge:            ; preds = %_xfs_buf_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

cond.end.i70:                                     ; preds = %if.end
  %b_error.i = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 31
  %37 = ptrtoint ptr %b_error.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %b_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i = icmp eq i32 %38, 0
  br i1 %cmp.i, label %cond.end.i70.cond.end11.i_crit_edge, label %cond.false10.i, !prof !254

cond.end.i70.cond.end11.i_crit_edge:              ; preds = %cond.end.i70
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end11.i

cond.false10.i:                                   ; preds = %cond.end.i70
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 748) #13
  br label %cond.end11.i

cond.end11.i:                                     ; preds = %cond.false10.i, %cond.end.i70.cond.end11.i_crit_edge
  %tobool12.not.i = icmp eq ptr %ops, null
  br i1 %tobool12.not.i, label %cond.end11.i.xfs_buf_reverify.exit_crit_edge, label %lor.lhs.false.i

cond.end11.i.xfs_buf_reverify.exit_crit_edge:     ; preds = %cond.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_reverify.exit

lor.lhs.false.i:                                  ; preds = %cond.end11.i
  %b_ops.i = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 35
  %39 = ptrtoint ptr %b_ops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_ops.i, align 4
  %tobool13.not.i = icmp eq ptr %40, null
  br i1 %tobool13.not.i, label %if.end.i, label %lor.lhs.false.i.xfs_buf_reverify.exit_crit_edge

lor.lhs.false.i.xfs_buf_reverify.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_reverify.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %41 = ptrtoint ptr %b_ops.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %ops, ptr %b_ops.i, align 4
  %verify_read.i = getelementptr inbounds %struct.xfs_buf_ops, ptr %ops, i32 0, i32 2
  %42 = ptrtoint ptr %verify_read.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %verify_read.i, align 4
  tail call void %43(ptr noundef %3) #13
  %44 = ptrtoint ptr %b_error.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %b_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool17.not.i = icmp eq i32 %45, 0
  br i1 %tobool17.not.i, label %if.end.i.xfs_buf_reverify.exit_crit_edge, label %if.then18.i

if.end.i.xfs_buf_reverify.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_reverify.exit

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %b_flags, align 4
  %and20.i = and i32 %47, -33
  store i32 %and20.i, ptr %b_flags, align 4
  br label %xfs_buf_reverify.exit

xfs_buf_reverify.exit:                            ; preds = %if.then18.i, %if.end.i.xfs_buf_reverify.exit_crit_edge, %lor.lhs.false.i.xfs_buf_reverify.exit_crit_edge, %cond.end11.i.xfs_buf_reverify.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %lor.lhs.false.i.xfs_buf_reverify.exit_crit_edge ], [ 0, %cond.end11.i.xfs_buf_reverify.exit_crit_edge ], [ %45, %if.then18.i ], [ 0, %if.end.i.xfs_buf_reverify.exit_crit_edge ]
  %and27 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %xfs_buf_reverify.exit
  %count.i.i = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 6, i32 1
  %48 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i.i = icmp eq i32 %49, 0
  br i1 %cmp.i.i, label %if.then29.xfs_buf_relse.exit_crit_edge, label %cond.false.i.i, !prof !254

if.then29.xfs_buf_relse.exit_crit_edge:           ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_relse.exit

cond.false.i.i:                                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1089) #13
  br label %xfs_buf_relse.exit

xfs_buf_relse.exit:                               ; preds = %cond.false.i.i, %if.then29.xfs_buf_relse.exit_crit_edge
  %b_sema.i.i = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 6
  tail call void @up(ptr noundef %b_sema.i.i) #13
  tail call fastcc void @trace_xfs_buf_unlock(ptr noundef %3, i32 noundef %5) #13
  tail call void @xfs_buf_rele(ptr noundef %3) #13
  br label %cleanup

if.end30:                                         ; preds = %xfs_buf_reverify.exit
  %50 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %b_flags, align 4
  %and32 = and i32 %51, -2
  store i32 %and32, ptr %b_flags, align 4
  %b_ops33 = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 35
  %52 = ptrtoint ptr %b_ops33 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %b_ops33, align 4
  %cmp.not = icmp ne ptr %53, null
  %spec.select = or i1 %tobool12.not.i, %cmp.not
  br i1 %spec.select, label %if.end30.if.end37_crit_edge, label %cond.false, !prof !254

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

cond.false:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 803) #13
  br label %if.end37

if.end37:                                         ; preds = %cond.false, %if.end30.if.end37_crit_edge, %_xfs_buf_read.exit.if.end37_crit_edge
  %error.0 = phi i32 [ %retval.0.i, %if.end30.if.end37_crit_edge ], [ %retval.0.i, %cond.false ], [ %call.i.i, %_xfs_buf_read.exit.if.end37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool38.not = icmp eq i32 %error.0, 0
  br i1 %tobool38.not, label %if.end49, label %if.then39

if.then39:                                        ; preds = %if.end37
  %bt_mount40 = getelementptr inbounds %struct.xfs_buftarg, ptr %target, i32 0, i32 4
  %54 = ptrtoint ptr %bt_mount40 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bt_mount40, align 8
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %55, i32 0, i32 66
  %56 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %m_opstate.i, align 4
  %58 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.i.not = icmp eq i32 %58, 0
  br i1 %tobool.i.not, label %if.then42, label %if.then39.if.end43_crit_edge

if.then39.if.end43_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  %b_maps.i.i = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 24
  %59 = ptrtoint ptr %b_maps.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %b_maps.i.i, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %60, align 8
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 2
  %63 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %b_length.i, align 8
  %b_error.i71 = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 31
  %65 = ptrtoint ptr %b_error.i71 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %b_error.i71, align 4
  %sub.i = sub i32 0, %66
  tail call void (ptr, ptr, ptr, ...) @xfs_buf_alert_ratelimited(ptr noundef %3, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %fa, i64 noundef %62, i32 noundef %64, i32 noundef %sub.i) #13
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.then39.if.end43_crit_edge
  %67 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %b_flags, align 4
  %and45 = and i32 %68, -33
  store i32 %and45, ptr %b_flags, align 4
  tail call void @xfs_buf_stale(ptr noundef %3)
  %count.i.i72 = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 6, i32 1
  %69 = ptrtoint ptr %count.i.i72 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %count.i.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp.i.i73 = icmp eq i32 %70, 0
  br i1 %cmp.i.i73, label %if.end43.xfs_buf_relse.exit76_crit_edge, label %cond.false.i.i74, !prof !254

if.end43.xfs_buf_relse.exit76_crit_edge:          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_relse.exit76

cond.false.i.i74:                                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1089) #13
  br label %xfs_buf_relse.exit76

xfs_buf_relse.exit76:                             ; preds = %cond.false.i.i74, %if.end43.xfs_buf_relse.exit76_crit_edge
  %b_sema.i.i75 = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 6
  tail call void @up(ptr noundef %b_sema.i.i75) #13
  tail call fastcc void @trace_xfs_buf_unlock(ptr noundef %3, i32 noundef %5) #13
  tail call void @xfs_buf_rele(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %error.0)
  %cmp46 = icmp eq i32 %error.0, -74
  %spec.store.select = select i1 %cmp46, i32 -117, i32 %error.0
  br label %cleanup

if.end49:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %71 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %3, ptr %bpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %xfs_buf_relse.exit76, %xfs_buf_relse.exit, %_xfs_buf_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %xfs_buf_relse.exit ], [ %spec.store.select, %xfs_buf_relse.exit76 ], [ 0, %if.end49 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %_xfs_buf_read.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #13
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_read(ptr noundef %bp, i32 noundef %flags, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_read, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_read, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !270
  %call42 = tail call i32 @__traceiter_xfs_buf_read(ptr noundef null, ptr noundef %bp, i32 noundef %flags, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !271
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_read, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_read, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_read.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 518, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
define dso_local void @xfs_buf_ioerror_alert(ptr noundef %bp, ptr noundef %func) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %0 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_maps.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %4 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %b_length, align 8
  %b_error = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 31
  %6 = ptrtoint ptr %b_error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b_error, align 4
  %sub = sub i32 0, %7
  tail call void (ptr, ptr, ptr, ...) @xfs_buf_alert_ratelimited(ptr noundef %bp, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %func, i64 noundef %3, i32 noundef %5, i32 noundef %sub) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_buf_readahead_map(ptr noundef %target, ptr nocapture noundef readonly %map, i32 noundef %nmaps, ptr noundef %ops) #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #13
  %bt_bdev = getelementptr inbounds %struct.xfs_buftarg, ptr %target, i32 0, i32 1
  %0 = ptrtoint ptr %bt_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bt_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_disk, align 8
  %bdi = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdi, align 4
  %congested.i.i.i = getelementptr inbounds %struct.backing_dev_info, ptr %5, i32 0, i32 11, i32 10
  %6 = ptrtoint ptr %congested.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %congested.i.i.i, align 8
  %and.i.i.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not, label %__here, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !272
  %call1 = call i32 @xfs_buf_read_map(ptr noundef %target, ptr noundef %map, i32 noundef %nmaps, i32 noundef 1073741844, ptr noundef nonnull %bp, ptr noundef %ops, ptr noundef blockaddress(@xfs_buf_readahead_map, %__here))
  br label %cleanup

cleanup:                                          ; preds = %__here, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_buf_read_uncached(ptr noundef %target, i64 noundef %daddr, i32 noundef %numblks, i32 noundef %flags, ptr nocapture noundef writeonly %bpp, ptr noundef %ops) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #13
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !257
  %1 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %bpp, align 4
  %call = call i32 @xfs_buf_get_uncached(ptr noundef %target, i32 noundef %numblks, i32 noundef %flags, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bp, align 4
  %b_map_count = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %b_map_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %b_map_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false, !prof !254

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 879) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %b_rhash_key = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %b_rhash_key to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %b_rhash_key, align 8
  %b_maps = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 24
  %7 = ptrtoint ptr %b_maps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_maps, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %daddr, ptr %8, align 8
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %b_flags, align 4
  %or = or i32 %11, 1
  store i32 %or, ptr %b_flags, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 35
  %12 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ops, ptr %b_ops, align 4
  %and.i = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %call.i = tail call fastcc i32 @__xfs_buf_submit(ptr noundef %3, i1 noundef zeroext %tobool.not.i) #13
  %b_error = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 31
  %13 = ptrtoint ptr %b_error to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %b_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %cond.end
  %count.i.i = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i, label %if.then5.xfs_buf_relse.exit_crit_edge, label %cond.false.i.i, !prof !254

if.then5.xfs_buf_relse.exit_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_relse.exit

cond.false.i.i:                                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1089) #13
  br label %xfs_buf_relse.exit

xfs_buf_relse.exit:                               ; preds = %cond.false.i.i, %if.then5.xfs_buf_relse.exit_crit_edge
  %b_sema.i.i = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 6
  tail call void @up(ptr noundef %b_sema.i.i) #13
  %17 = tail call ptr @llvm.returnaddress(i32 0) #13
  %18 = ptrtoint ptr %17 to i32
  tail call fastcc void @trace_xfs_buf_unlock(ptr noundef %3, i32 noundef %18) #13
  tail call void @xfs_buf_rele(ptr noundef %3) #13
  br label %cleanup

if.end7:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %3, ptr %bpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %xfs_buf_relse.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %xfs_buf_relse.exit ], [ 0, %if.end7 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_buf_get_uncached(ptr noundef %target, i32 noundef %numblks, i32 noundef %flags, ptr nocapture noundef writeonly %bpp) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  %map = alloca %struct.xfs_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #13
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !257
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map) #13
  %bm_len = getelementptr inbounds %struct.xfs_buf_map, ptr %map, i32 0, i32 1
  %1 = call ptr @memset(ptr %map, i32 255, i32 16)
  %2 = ptrtoint ptr %bm_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %numblks, ptr %bm_len, align 8
  %3 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %bpp, align 4
  %and = and i32 %flags, 8
  %call = call fastcc i32 @_xfs_buf_alloc(ptr noundef %target, ptr noundef nonnull %map, i32 noundef 1, i32 noundef %and, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bp, align 4
  %call1 = tail call fastcc i32 @xfs_buf_alloc_pages(ptr noundef %5, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.fail_free_buf_crit_edge

if.end.fail_free_buf_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_free_buf

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @_xfs_buf_map_pages(ptr noundef %5, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end10, label %if.then9, !prof !254

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %bt_mount = getelementptr inbounds %struct.xfs_buftarg, ptr %target, i32 0, i32 4
  %6 = ptrtoint ptr %bt_mount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bt_mount, align 8
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %7, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.xfs_buf_get_uncached) #13
  br label %fail_free_buf

if.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %8 = tail call ptr @llvm.returnaddress(i32 0)
  %9 = ptrtoint ptr %8 to i32
  tail call fastcc void @trace_xfs_buf_get_uncached(ptr noundef %5, i32 noundef %9)
  %10 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %5, ptr %bpp, align 4
  br label %cleanup

fail_free_buf:                                    ; preds = %if.then9, %if.end.fail_free_buf_crit_edge
  %error.0 = phi i32 [ %call1, %if.end.fail_free_buf_crit_edge ], [ %call5, %if.then9 ]
  tail call fastcc void @xfs_buf_free(ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %fail_free_buf, %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %fail_free_buf ], [ 0, %if.end10 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #13
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_get_uncached(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_get_uncached, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_get_uncached, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !273
  %call42 = tail call i32 @__traceiter_xfs_buf_get_uncached(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !274
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_get_uncached, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_get_uncached, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_get_uncached.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_get_uncached.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 465, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
define dso_local void @xfs_buf_hold(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call fastcc void @trace_xfs_buf_hold(ptr noundef %bp, i32 noundef %1)
  %b_hold = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_hold, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_hold, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_hold, ptr %b_hold, i32 1, ptr elementtype(i32) %b_hold) #13, !srcloc !263
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_hold(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_hold, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_hold, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !275
  %call42 = tail call i32 @__traceiter_xfs_buf_hold(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !276
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_hold, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_hold, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_hold.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_hold.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 450, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
define dso_local void @xfs_buf_rele(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_pag = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 13
  %0 = ptrtoint ptr %b_pag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_pag, align 8
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %3 = ptrtoint ptr %2 to i32
  tail call fastcc void @trace_xfs_buf_rele(ptr noundef %bp, i32 noundef %3)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %b_lru = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 7
  %4 = ptrtoint ptr %b_lru to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %b_lru, align 4
  %cmp.i.not = icmp eq ptr %5, %b_lru
  br i1 %cmp.i.not, label %if.then.cond.end_crit_edge, label %cond.false, !prof !254

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 962) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %b_hold = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_hold, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !277
  tail call void @llvm.prefetch.p0(ptr %b_hold, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_hold, ptr %b_hold, i32 1, ptr elementtype(i32) %b_hold) #13, !srcloc !278
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !279
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then5, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5:                                         ; preds = %cond.end
  %b_lock.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %b_lock.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.then5.if.end.i.i_crit_edge, label %land.rhs.i.i

if.then5.if.end.i.i_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.then5
  %dep_map.i.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !255

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 119, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.then5.if.end.i.i_crit_edge
  %b_state.i.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 9
  %8 = ptrtoint ptr %b_state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_state.i.i, align 4
  %and.i.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end.i.i.xfs_buf_ioacct_dec.exit_crit_edge, label %if.then25.i.i

if.end.i.i.xfs_buf_ioacct_dec.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_ioacct_dec.exit

if.then25.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %and27.i.i = and i32 %9, -3
  %10 = ptrtoint ptr %b_state.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and27.i.i, ptr %b_state.i.i, align 4
  %b_target.i.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 15
  %11 = ptrtoint ptr %b_target.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_target.i.i, align 8
  %bt_io_count.i.i = getelementptr inbounds %struct.xfs_buftarg, ptr %12, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %13 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %bt_io_count.i.i, i64 noundef -1, i32 noundef %13) #13
  br label %xfs_buf_ioacct_dec.exit

xfs_buf_ioacct_dec.exit:                          ; preds = %if.then25.i.i, %if.end.i.i.xfs_buf_ioacct_dec.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %b_lock.i) #13
  tail call fastcc void @xfs_buf_free(ptr noundef %bp)
  br label %cleanup

if.end6:                                          ; preds = %entry
  %b_hold7 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 3
  %call.i.i126 = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_hold7, i32 noundef 4) #13
  %14 = ptrtoint ptr %b_hold7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %b_hold7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp sgt i32 %15, 0
  br i1 %cmp, label %if.end6.cond.end17_crit_edge, label %cond.false16, !prof !254

if.end6.cond.end17_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end17

cond.false16:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 970) #13
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false16, %if.end6.cond.end17_crit_edge
  %b_lock = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %b_lock) #13
  %pag_buf_lock = getelementptr inbounds %struct.xfs_perag, ptr %1, i32 0, i32 35
  %call19 = tail call i32 @_atomic_dec_and_lock(ptr noundef %b_hold7, ptr noundef %pag_buf_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then22, label %if.end31

if.then22:                                        ; preds = %cond.end17
  %call.i.i127 = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_hold7, i32 noundef 4) #13
  %16 = ptrtoint ptr %b_hold7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %b_hold7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp25 = icmp eq i32 %17, 1
  br i1 %cmp25, label %land.lhs.true, label %if.then22.out_unlock_crit_edge

if.then22.out_unlock_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

land.lhs.true:                                    ; preds = %if.then22
  %b_lru26 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 7
  %18 = ptrtoint ptr %b_lru26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %b_lru26, align 4
  %cmp.i130.not = icmp eq ptr %19, %b_lru26
  br i1 %cmp.i130.not, label %land.lhs.true.out_unlock_crit_edge, label %if.then29

land.lhs.true.out_unlock_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.then29:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %20 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.then29.if.end.i_crit_edge, label %land.rhs.i

if.then29.if.end.i_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then29
  %dep_map.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i.i132 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i132)
  %cmp.not.i = icmp eq i32 %call.i.i132, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !255

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 119, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then29.if.end.i_crit_edge
  %b_state.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 9
  %21 = ptrtoint ptr %b_state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %b_state.i, align 4
  %and.i = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool24.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool24.not.i, label %if.end.i.out_unlock_crit_edge, label %if.then25.i

if.end.i.out_unlock_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %and27.i = and i32 %22, -3
  %23 = ptrtoint ptr %b_state.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and27.i, ptr %b_state.i, align 4
  %b_target.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 15
  %24 = ptrtoint ptr %b_target.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_target.i, align 8
  %bt_io_count.i = getelementptr inbounds %struct.xfs_buftarg, ptr %25, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %26 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %bt_io_count.i, i64 noundef -1, i32 noundef %26) #13
  br label %out_unlock

if.end31:                                         ; preds = %cond.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %27 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i133 = icmp eq i32 %27, 0
  br i1 %tobool.not.i133, label %if.end31.if.end.i142_crit_edge, label %land.rhs.i137

if.end31.if.end.i142_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i142

land.rhs.i137:                                    ; preds = %if.end31
  %dep_map.i134 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i.i135 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i134, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i135)
  %cmp.not.i136 = icmp eq i32 %call.i.i135, 0
  br i1 %cmp.not.i136, label %do.end.i138, label %land.rhs.i137.if.end.i142_crit_edge, !prof !255

land.rhs.i137.if.end.i142_crit_edge:              ; preds = %land.rhs.i137
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i142

do.end.i138:                                      ; preds = %land.rhs.i137
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 119, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i142

if.end.i142:                                      ; preds = %do.end.i138, %land.rhs.i137.if.end.i142_crit_edge, %if.end31.if.end.i142_crit_edge
  %b_state.i139 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 9
  %28 = ptrtoint ptr %b_state.i139 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %b_state.i139, align 4
  %and.i140 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i140)
  %tobool24.not.i141 = icmp eq i32 %and.i140, 0
  br i1 %tobool24.not.i141, label %if.end.i142.__xfs_buf_ioacct_dec.exit147_crit_edge, label %if.then25.i146

if.end.i142.__xfs_buf_ioacct_dec.exit147_crit_edge: ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #15
  br label %__xfs_buf_ioacct_dec.exit147

if.then25.i146:                                   ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #15
  %and27.i143 = and i32 %29, -3
  %30 = ptrtoint ptr %b_state.i139 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and27.i143, ptr %b_state.i139, align 4
  %b_target.i144 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 15
  %31 = ptrtoint ptr %b_target.i144 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_target.i144, align 8
  %bt_io_count.i145 = getelementptr inbounds %struct.xfs_buftarg, ptr %32, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %33 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %bt_io_count.i145, i64 noundef -1, i32 noundef %33) #13
  br label %__xfs_buf_ioacct_dec.exit147

__xfs_buf_ioacct_dec.exit147:                     ; preds = %if.then25.i146, %if.end.i142.__xfs_buf_ioacct_dec.exit147_crit_edge
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %34 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %b_flags, align 4
  %and = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %land.lhs.true33, label %__xfs_buf_ioacct_dec.exit147.if.else_crit_edge

__xfs_buf_ioacct_dec.exit147.if.else_crit_edge:   ; preds = %__xfs_buf_ioacct_dec.exit147
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true33:                                  ; preds = %__xfs_buf_ioacct_dec.exit147
  %b_lru_ref = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 4
  %call.i.i128 = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_lru_ref, i32 noundef 4) #13
  %36 = ptrtoint ptr %b_lru_ref to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %b_lru_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool35.not = icmp eq i32 %37, 0
  br i1 %tobool35.not, label %land.lhs.true33.if.else_crit_edge, label %if.then36

land.lhs.true33.if.else_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then36:                                        ; preds = %land.lhs.true33
  %b_target = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 15
  %38 = ptrtoint ptr %b_target to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_target, align 8
  %bt_lru = getelementptr inbounds %struct.xfs_buftarg, ptr %39, i32 0, i32 10
  %b_lru37 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 7
  %call38 = tail call zeroext i1 @list_lru_add(ptr noundef %bt_lru, ptr noundef %b_lru37) #13
  br i1 %call38, label %if.then39, label %if.then36.if.end42_crit_edge

if.then36.if.end42_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then39:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %b_state.i139 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %b_state.i139, align 4
  %and40 = and i32 %41, -2
  store i32 %and40, ptr %b_state.i139, align 4
  %call.i.i129 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_hold7, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_hold7, i32 1, i32 3, i32 1) #13
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_hold7, ptr %b_hold7, i32 1, ptr elementtype(i32) %b_hold7) #13, !srcloc !263
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.then36.if.end42_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %pag_buf_lock) #13
  br label %out_unlock

if.else:                                          ; preds = %land.lhs.true33.if.else_crit_edge, %__xfs_buf_ioacct_dec.exit147.if.else_crit_edge
  %43 = ptrtoint ptr %b_state.i139 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %b_state.i139, align 4
  %and45 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.then47, label %if.else52

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %b_target48 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 15
  %45 = ptrtoint ptr %b_target48 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_target48, align 8
  %bt_lru49 = getelementptr inbounds %struct.xfs_buftarg, ptr %46, i32 0, i32 10
  %b_lru50 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 7
  %call51 = tail call zeroext i1 @list_lru_del(ptr noundef %bt_lru49, ptr noundef %b_lru50) #13
  br label %if.end65

if.else52:                                        ; preds = %if.else
  %b_lru53 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 7
  %47 = ptrtoint ptr %b_lru53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %b_lru53, align 4
  %cmp.i148.not = icmp eq ptr %48, %b_lru53
  br i1 %cmp.i148.not, label %if.else52.if.end65_crit_edge, label %cond.false63, !prof !254

if.else52.if.end65_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

cond.false63:                                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1019) #13
  br label %if.end65

if.end65:                                         ; preds = %cond.false63, %if.else52.if.end65_crit_edge, %if.then47
  %49 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %b_flags, align 4
  %and67 = and i32 %50, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end65.cond.end79_crit_edge, label %cond.false78, !prof !254

if.end65.cond.end79_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end79

cond.false78:                                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1022) #13
  br label %cond.end79

cond.end79:                                       ; preds = %cond.false78, %if.end65.cond.end79_crit_edge
  %pag_buf_hash = getelementptr inbounds %struct.xfs_perag, ptr %1, i32 0, i32 36
  %51 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %54, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !259
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i.i150 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i.i150, label %cond.end79.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

cond.end79.rcu_read_lock.exit.i.i_crit_edge:      ; preds = %cond.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %cond.end79
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 696, ptr noundef nonnull @.str.36) #13
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %cond.end79.rcu_read_lock.exit.i.i_crit_edge
  %55 = ptrtoint ptr %pag_buf_hash to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %pag_buf_hash, align 4
  %call.i.i151 = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %pag_buf_hash) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i151)
  %tobool.not.i.i152 = icmp eq i32 %call.i.i151, 0
  br i1 %tobool.not.i.i152, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end10.i.i_crit_edge

lor.lhs.false.i.i.do.end10.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.do.end10.i.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.do.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true7.i.i.do.end10.i.i_crit_edge, label %if.then.i.i

land.lhs.true7.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 1076, ptr noundef nonnull @.str.38) #13
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true7.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i.i.do.end10.i.i_crit_edge, %lor.lhs.false.i.i.do.end10.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge
  %head_offset.i.i.i.i.i = getelementptr inbounds %struct.xfs_perag, ptr %1, i32 0, i32 36, i32 3, i32 3
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %bp, i32 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.end33.i.i.while.cond.i.i_crit_edge, %do.end10.i.i
  %tbl.0.i.i = phi ptr [ %56, %do.end10.i.i ], [ %91, %do.end33.i.i.while.cond.i.i_crit_edge ]
  %57 = ptrtoint ptr %head_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %head_offset.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %58 to i32
  %idx.neg.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %idx.neg.i.i.i.i.i
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hash_rnd.i.i.i.i.i, align 8
  %add1.i.i.i.i.i.i.i = add i32 %60, -559038729
  %arrayidx32.i.i.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i.i, i32 1
  %61 = ptrtoint ptr %arrayidx32.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx32.i.i.i.i.i.i.i, align 4
  %add33.i.i.i.i.i.i.i = add i32 %62, %add1.i.i.i.i.i.i.i
  %63 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %add36.i.i.i.i.i.i.i = add i32 %64, %add1.i.i.i.i.i.i.i
  %xor37.i.i.i.i.i.i.i = xor i32 %add33.i.i.i.i.i.i.i, %add1.i.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add33.i.i.i.i.i.i.i, i32 %add33.i.i.i.i.i.i.i, i32 14) #13
  %sub39.i.i.i.i.i.i.i = sub i32 %xor37.i.i.i.i.i.i.i, %or.i140.i.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i.i = xor i32 %sub39.i.i.i.i.i.i.i, %add36.i.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i.i, i32 11) #13
  %sub42.i.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i.i, %add33.i.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i.i, i32 25) #13
  %sub45.i.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i.i, i32 16) #13
  %sub48.i.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i.i, %sub42.i.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i.i, i32 4) #13
  %sub51.i.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i.i, %sub45.i.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i.i, i32 14) #13
  %sub54.i.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i.i, %sub48.i.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i.i, i32 24) #13
  %sub57.i.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i.i
  %65 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i.i.i = add i32 %66, -1
  %and.i3.i.i.i.i.i = and i32 %sub57.i.i.i.i.i.i.i, %sub.i.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i3.i.i.i = icmp eq i32 %68, 0
  br i1 %tobool.not.i3.i.i.i, label %cond.false.i5.i.i.i, label %cond.true.i4.i.i.i, !prof !254

cond.true.i4.i.i.i:                               ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #13
  br label %rht_bucket_var.exit.i.i.i

cond.false.i5.i.i.i:                              ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i.i
  br label %rht_bucket_var.exit.i.i.i

rht_bucket_var.exit.i.i.i:                        ; preds = %cond.false.i5.i.i.i, %cond.true.i4.i.i.i
  %cond.i6.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i4.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i5.i.i.i ]
  %tobool.not.i3.i.i = icmp eq ptr %cond.i6.i.i.i, null
  br i1 %tobool.not.i3.i.i, label %rht_bucket_var.exit.i.i.i.land.rhs.i.i153_crit_edge, label %if.end.i.i.i

rht_bucket_var.exit.i.i.i.land.rhs.i.i153_crit_edge: ; preds = %rht_bucket_var.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i.i153

if.end.i.i.i:                                     ; preds = %rht_bucket_var.exit.i.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #13
  %call.i8.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i.i)
  %tobool.not.i9.i.i.i = icmp eq i32 %call.i8.i.i.i, 0
  br i1 %tobool.not.i9.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge

if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b7.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i, label %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 377, ptr noundef nonnull @.str.42) #13
  br label %rht_ptr.exit.i.i.i

rht_ptr.exit.i.i.i:                               ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge
  %69 = ptrtoint ptr %cond.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cond.i6.i.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  %and.i.i.i.i.i = and i32 %71, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  %72 = ptrtoint ptr %cond.i6.i.i.i to i32
  %or.i.i.i.i.i = or i32 %72, 1
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i.i.i.i
  %and.i20.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i.i)
  %tobool.i.not21.i.i.i = icmp eq i32 %and.i20.i.i.i, 0
  br i1 %tobool.i.not21.i.i.i, label %for.body.preheader.i.i.i, label %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge

rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge:      ; preds = %rht_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlocked.i.i.i

for.body.preheader.i.i.i:                         ; preds = %rht_ptr.exit.i.i.i
  %73 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %cmp.not.i20.i.i = icmp eq ptr %73, %bp
  br i1 %cmp.not.i20.i.i, label %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge

for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  br label %do.body145.i.i.i

for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body54.i.i.i

for.body.i.i.i:                                   ; preds = %do.end156.i.i.i
  %cmp.not.i.i.i = icmp eq ptr %78, %bp
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.i.i.i.do.body145.i.i.i_crit_edge

for.body.i.i.i.do.body145.i.i.i_crit_edge:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body145.i.i.i

for.body.i.i.i.do.body54.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body54.i.i.i

do.body54.i.i.i:                                  ; preds = %for.body.i.i.i.do.body54.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge
  %pprev.023.i.lcssa.i.i = phi ptr [ %he.022.i21.i.i, %for.body.i.i.i.do.body54.i.i.i_crit_edge ], [ null, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge ]
  %call55.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i.i)
  %tobool56.not.i.i.i = icmp eq i32 %call55.i.i.i, 0
  br i1 %tobool56.not.i.i.i, label %land.lhs.true57.i.i.i, label %do.body54.i.i.i.do.end65.i.i.i_crit_edge

do.body54.i.i.i.do.end65.i.i.i_crit_edge:         ; preds = %do.body54.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65.i.i.i

land.lhs.true57.i.i.i:                            ; preds = %do.body54.i.i.i
  %call58.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i.i)
  %tobool59.not.i.i.i = icmp eq i32 %call58.i.i.i, 0
  br i1 %tobool59.not.i.i.i, label %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, label %land.lhs.true60.i.i.i

land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true57.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65.i.i.i

land.lhs.true60.i.i.i:                            ; preds = %land.lhs.true57.i.i.i
  %.b2.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.61, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, label %if.then62.i.i.i

land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65.i.i.i

if.then62.i.i.i:                                  ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.61, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 1032, ptr noundef nonnull @.str.42) #13
  br label %do.end65.i.i.i

do.end65.i.i.i:                                   ; preds = %if.then62.i.i.i, %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, %do.body54.i.i.i.do.end65.i.i.i_crit_edge
  %74 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bp, align 4
  %tobool103.not.i.i.i = icmp eq ptr %pprev.023.i.lcssa.i.i, null
  br i1 %tobool103.not.i.i.i, label %if.else142.i.i.i, label %do.body105.i.i.i

do.body105.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !280
  %76 = ptrtoint ptr %pprev.023.i.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %75, ptr %pprev.023.i.lcssa.i.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #13
  br label %if.then160.i.i.i

if.else142.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i, ptr noundef %75) #13
  br label %if.then160.i.i.i

do.body145.i.i.i:                                 ; preds = %for.body.i.i.i.do.body145.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge
  %he.022.i21.i.i = phi ptr [ %78, %for.body.i.i.i.do.body145.i.i.i_crit_edge ], [ %73, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge ]
  %call146.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i.i)
  %tobool147.not.i.i.i = icmp eq i32 %call146.i.i.i, 0
  br i1 %tobool147.not.i.i.i, label %land.lhs.true148.i.i.i, label %do.body145.i.i.i.do.end156.i.i.i_crit_edge

do.body145.i.i.i.do.end156.i.i.i_crit_edge:       ; preds = %do.body145.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end156.i.i.i

land.lhs.true148.i.i.i:                           ; preds = %do.body145.i.i.i
  %call149.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i.i)
  %tobool150.not.i.i.i = icmp eq i32 %call149.i.i.i, 0
  br i1 %tobool150.not.i.i.i, label %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, label %land.lhs.true151.i.i.i

land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true148.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end156.i.i.i

land.lhs.true151.i.i.i:                           ; preds = %land.lhs.true148.i.i.i
  %.b2281.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.63, align 1
  br i1 %.b2281.i.i.i, label %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, label %if.then153.i.i.i

land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end156.i.i.i

if.then153.i.i.i:                                 ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.63, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 1004, ptr noundef nonnull @.str.42) #13
  br label %do.end156.i.i.i

do.end156.i.i.i:                                  ; preds = %if.then153.i.i.i, %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, %do.body145.i.i.i.do.end156.i.i.i_crit_edge
  %77 = ptrtoint ptr %he.022.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %he.022.i21.i.i, align 4
  %79 = ptrtoint ptr %78 to i32
  %and.i.i.i.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.body.i.i.i, label %do.end156.i.i.i.unlocked.i.i.i_crit_edge

do.end156.i.i.i.unlocked.i.i.i_crit_edge:         ; preds = %do.end156.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlocked.i.i.i

unlocked.i.i.i:                                   ; preds = %do.end156.i.i.i.unlocked.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #13
  br label %land.rhs.i.i153

if.then160.i.i.i:                                 ; preds = %if.else142.i.i.i, %do.body105.i.i.i
  %nelems.i.i.i = getelementptr inbounds %struct.xfs_perag, ptr %1, i32 0, i32 36, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i, i32 1, i32 3, i32 1) #13
  %80 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i, ptr %nelems.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i) #13, !srcloc !256
  %automatic_shrinking.i.i.i = getelementptr inbounds %struct.xfs_perag, ptr %1, i32 0, i32 36, i32 3, i32 6
  %81 = ptrtoint ptr %automatic_shrinking.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %automatic_shrinking.i.i.i, align 2, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool161.not.i.i.i = icmp eq i8 %82, 0
  br i1 %tobool161.not.i.i.i, label %if.then160.i.i.i.while.end.i.i_crit_edge, label %land.rhs162.i.i.i

if.then160.i.i.i.while.end.i.i_crit_edge:         ; preds = %if.then160.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

land.rhs162.i.i.i:                                ; preds = %if.then160.i.i.i
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #13
  %83 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %nelems.i.i.i, align 4
  %85 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tbl.0.i.i, align 128
  %mul.i.i.i.i = mul i32 %86, 3
  %div.i.i.i.i = udiv i32 %mul.i.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %div.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %84, %div.i.i.i.i
  br i1 %cmp.i.i.i.i, label %rht_shrink_below_30.exit.i.i.i, label %land.rhs162.i.i.i.while.end.i.i_crit_edge

land.rhs162.i.i.i.while.end.i.i_crit_edge:        ; preds = %land.rhs162.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

rht_shrink_below_30.exit.i.i.i:                   ; preds = %land.rhs162.i.i.i
  %min_size.i.i.i.i = getelementptr inbounds %struct.xfs_perag, ptr %1, i32 0, i32 36, i32 3, i32 5
  %87 = ptrtoint ptr %min_size.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %min_size.i.i.i.i, align 4
  %conv.i11.i.i.i = zext i16 %88 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %conv.i11.i.i.i)
  %cmp2.i.i.i.i = icmp ugt i32 %86, %conv.i11.i.i.i
  br i1 %cmp2.i.i.i.i, label %if.then168.i.i.i, label %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, !prof !255

rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

if.then168.i.i.i:                                 ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %run_work.i.i.i = getelementptr inbounds %struct.xfs_perag, ptr %1, i32 0, i32 36, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %89 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %89, ptr noundef %run_work.i.i.i) #13
  br label %while.end.i.i

land.rhs.i.i153:                                  ; preds = %unlocked.i.i.i, %rht_bucket_var.exit.i.i.i.land.rhs.i.i153_crit_edge
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %90 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call20.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %pag_buf_hash) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %lor.lhs.false22.i.i, label %land.rhs.i.i153.do.end33.i.i_crit_edge

land.rhs.i.i153.do.end33.i.i_crit_edge:           ; preds = %land.rhs.i.i153
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i.i

lor.lhs.false22.i.i:                              ; preds = %land.rhs.i.i153
  %call23.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i154 = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i154, label %land.lhs.true25.i.i, label %lor.lhs.false22.i.i.do.end33.i.i_crit_edge

lor.lhs.false22.i.i.do.end33.i.i_crit_edge:       ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i.i

land.lhs.true25.i.i:                              ; preds = %lor.lhs.false22.i.i
  %call26.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %land.lhs.true25.i.i.do.end33.i.i_crit_edge, label %land.lhs.true28.i.i

land.lhs.true25.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i.i

land.lhs.true28.i.i:                              ; preds = %land.lhs.true25.i.i
  %.b401.i.i = load i1, ptr @__rhashtable_remove_fast.__warned.59, align 1
  br i1 %.b401.i.i, label %land.lhs.true28.i.i.do.end33.i.i_crit_edge, label %if.then30.i.i

land.lhs.true28.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i.i

if.then30.i.i:                                    ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast.__warned.59, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 1085, ptr noundef nonnull @.str.38) #13
  br label %do.end33.i.i

do.end33.i.i:                                     ; preds = %if.then30.i.i, %land.lhs.true28.i.i.do.end33.i.i_crit_edge, %land.lhs.true25.i.i.do.end33.i.i_crit_edge, %lor.lhs.false22.i.i.do.end33.i.i_crit_edge, %land.rhs.i.i153.do.end33.i.i_crit_edge
  %tobool35.not.i.i = icmp eq ptr %91, null
  br i1 %tobool35.not.i.i, label %do.end33.i.i.while.end.i.i_crit_edge, label %do.end33.i.i.while.cond.i.i_crit_edge

do.end33.i.i.while.cond.i.i_crit_edge:            ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i

do.end33.i.i.while.end.i.i_crit_edge:             ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end33.i.i.while.end.i.i_crit_edge, %if.then168.i.i.i, %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, %land.rhs162.i.i.i.while.end.i.i_crit_edge, %if.then160.i.i.i.while.end.i.i_crit_edge
  %call.i4.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i4.i.i, label %while.end.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i.i

while.end.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_remove_fast.exit

land.lhs.true.i7.i.i:                             ; preds = %while.end.i.i
  %call1.i5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i.i)
  %tobool.not.i6.i.i = icmp eq i32 %call1.i5.i.i, 0
  br i1 %tobool.not.i6.i.i, label %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i.i

land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_remove_fast.exit

land.lhs.true2.i9.i.i:                            ; preds = %land.lhs.true.i7.i.i
  %.b4.i8.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i.i, label %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i.i

land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_remove_fast.exit

if.then.i10.i.i:                                  ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 724, ptr noundef nonnull @.str.40) #13
  br label %rhashtable_remove_fast.exit

rhashtable_remove_fast.exit:                      ; preds = %if.then.i10.i.i, %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, %while.end.i.i.rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !262
  %92 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i.i11.i.i = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i.i.i11.i.i to ptr
  %preempt_count.i.i.i.i12.i.i = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %preempt_count.i.i.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %preempt_count.i.i.i.i12.i.i, align 4
  %sub.i.i.i.i.i = add i32 %95, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i12.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  tail call void @_raw_spin_unlock(ptr noundef %pag_buf_lock) #13
  tail call void @xfs_perag_put(ptr noundef nonnull %1) #13
  tail call void @_raw_spin_unlock(ptr noundef %b_lock) #13
  tail call fastcc void @xfs_buf_free(ptr noundef %bp)
  br label %cleanup

out_unlock:                                       ; preds = %if.end42, %if.then25.i, %if.end.i.out_unlock_crit_edge, %land.lhs.true.out_unlock_crit_edge, %if.then22.out_unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %b_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %rhashtable_remove_fast.exit, %xfs_buf_ioacct_dec.exit, %cond.end.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_rele(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_rele, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_rele, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !282
  %call42 = tail call i32 @__traceiter_xfs_buf_rele(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !283
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_rele, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_rele, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_rele.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_rele.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 451, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
declare dso_local i32 @_atomic_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @list_lru_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_perag_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_buf_trylock(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_sema = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 6
  %call = tail call i32 @down_trylock(ptr noundef %b_sema) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @trace_xfs_buf_trylock(ptr noundef %bp, i32 noundef %1)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @trace_xfs_buf_trylock_fail(ptr noundef %bp, i32 noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_trylock(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_trylock, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_trylock, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !284
  %call42 = tail call i32 @__traceiter_xfs_buf_trylock(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !285
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_trylock, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_trylock, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_trylock.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_trylock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 457, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_trylock_fail(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_trylock_fail, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_trylock_fail, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !286
  %call42 = tail call i32 @__traceiter_xfs_buf_trylock_fail(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !287
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_trylock_fail, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_trylock_fail, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_trylock_fail.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_trylock_fail.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 456, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
define dso_local void @xfs_buf_lock(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call fastcc void @trace_xfs_buf_lock(ptr noundef %bp, i32 noundef %1)
  %b_pin_count = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 27
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_pin_count, i32 noundef 4) #13
  %2 = ptrtoint ptr %b_pin_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %b_pin_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %4 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %b_flags, align 4
  %and = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %6 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_mount, align 4
  %call2 = tail call i32 @xfs_log_force(ptr noundef %7, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %b_sema = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 6
  tail call void @down(ptr noundef %b_sema) #13
  tail call fastcc void @trace_xfs_buf_lock_done(ptr noundef %bp, i32 noundef %1)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_lock(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_lock, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_lock, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !288
  %call42 = tail call i32 @__traceiter_xfs_buf_lock(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !289
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_lock, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_lock, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_lock.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 454, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
declare dso_local i32 @xfs_log_force(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_lock_done(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_lock_done, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_lock_done, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !290
  %call42 = tail call i32 @__traceiter_xfs_buf_lock_done(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !291
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_lock_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_lock_done, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_lock_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_lock_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 455, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
define dso_local void @xfs_buf_unlock(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !254

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1089) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %b_sema = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 6
  tail call void @up(ptr noundef %b_sema) #13
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %3 = ptrtoint ptr %2 to i32
  tail call fastcc void @trace_xfs_buf_unlock(ptr noundef %bp, i32 noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_unlock(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_unlock, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_unlock, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !292
  %call42 = tail call i32 @__traceiter_xfs_buf_unlock(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !293
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_unlock, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_unlock, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_unlock.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 458, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_ioerror(ptr noundef %bp, i32 noundef %error, ptr noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_ioerror, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_ioerror, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !294
  %call42 = tail call i32 @__traceiter_xfs_buf_ioerror(ptr noundef null, ptr noundef %bp, i32 noundef %error, ptr noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !295
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_ioerror, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_ioerror, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_ioerror.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_ioerror.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 556, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
declare dso_local void @xfs_buf_alert_ratelimited(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_buf_ioend_fail(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %0 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %b_flags, align 4
  %and = and i32 %1, -33
  store i32 %and, ptr %b_flags, align 4
  tail call void @xfs_buf_stale(ptr noundef %bp)
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !296
  %b_error.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 31
  %2 = ptrtoint ptr %b_error.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -5, ptr %b_error.i, align 4
  tail call fastcc void @trace_xfs_buf_ioerror(ptr noundef %bp, i32 noundef -5, ptr noundef blockaddress(@xfs_buf_ioend_fail, %__here)) #13
  tail call fastcc void @xfs_buf_ioend(ptr noundef %bp)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_buf_ioend(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call fastcc void @trace_xfs_buf_iodone(ptr noundef %bp, i32 noundef %1)
  %b_error = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 31
  %2 = ptrtoint ptr %b_error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %b_io_error = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 10
  %4 = ptrtoint ptr %b_io_error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %b_io_error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.if.endthread-pre-split_crit_edge, label %__here

land.lhs.true.if.endthread-pre-split_crit_edge:   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.endthread-pre-split

__here:                                           ; preds = %land.lhs.true
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !297
  %6 = add i32 %5, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %6)
  %7 = icmp ult i32 %6, 1001
  br i1 %7, label %__here.__xfs_buf_ioerror.exit_crit_edge, label %cond.false.i, !prof !254

__here.__xfs_buf_ioerror.exit_crit_edge:          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  br label %__xfs_buf_ioerror.exit

cond.false.i:                                     ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 1328) #13
  br label %__xfs_buf_ioerror.exit

__xfs_buf_ioerror.exit:                           ; preds = %cond.false.i, %__here.__xfs_buf_ioerror.exit_crit_edge
  %8 = ptrtoint ptr %b_error to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %b_error, align 4
  tail call fastcc void @trace_xfs_buf_ioerror(ptr noundef %bp, i32 noundef %5, ptr noundef blockaddress(@xfs_buf_ioend, %__here)) #13
  br label %if.endthread-pre-split

if.endthread-pre-split:                           ; preds = %__xfs_buf_ioerror.exit, %land.lhs.true.if.endthread-pre-split_crit_edge
  %9 = ptrtoint ptr %b_error to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr86 = load i32, ptr %b_error, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %entry.if.end_crit_edge
  %10 = phi i32 [ %.pr86, %if.endthread-pre-split ], [ %3, %entry.if.end_crit_edge ]
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %11 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %b_flags, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool18.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  br i1 %tobool18.not, label %land.lhs.true7, label %if.then4.if.end46_crit_edge

if.then4.if.end46_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

land.lhs.true7:                                   ; preds = %if.then4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %13 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_ops, align 4
  %tobool8.not = icmp eq ptr %14, null
  br i1 %tobool8.not, label %land.lhs.true7.if.end11_crit_edge, label %if.then9

land.lhs.true7.if.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  %verify_read = getelementptr inbounds %struct.xfs_buf_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %verify_read to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %verify_read, align 4
  tail call void %16(ptr noundef %bp) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %land.lhs.true7.if.end11_crit_edge
  %17 = ptrtoint ptr %b_error to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %b_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool13.not = icmp eq i32 %.pr, 0
  br i1 %tobool13.not, label %if.then14, label %if.end11.if.end46_crit_edge

if.end11.if.end46_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %b_flags, align 4
  %or = or i32 %19, 32
  store i32 %or, ptr %b_flags, align 4
  br label %if.end46

if.else:                                          ; preds = %if.end
  br i1 %tobool18.not, label %if.end24.thread, label %land.lhs.true29

if.end24.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %and21 = and i32 %12, -161
  %or23 = or i32 %and21, 32
  %20 = ptrtoint ptr %b_flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or23, ptr %b_flags, align 4
  br label %if.end31

land.lhs.true29:                                  ; preds = %if.else
  %call = tail call fastcc zeroext i1 @xfs_buf_ioend_handle_error(ptr noundef %bp)
  br i1 %call, label %land.lhs.true29.if.end54_crit_edge, label %land.lhs.true29.if.end31_crit_edge

land.lhs.true29.if.end31_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

land.lhs.true29.if.end54_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.end31:                                         ; preds = %land.lhs.true29.if.end31_crit_edge, %if.end24.thread
  %b_last_error = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 34
  %21 = ptrtoint ptr %b_last_error to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %b_last_error, align 8
  %b_retries = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 32
  %22 = ptrtoint ptr %b_retries to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %b_retries, align 8
  %b_first_retry_time = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 33
  %23 = ptrtoint ptr %b_first_retry_time to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %b_first_retry_time, align 4
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %24 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_log_item, align 4
  %tobool32.not = icmp eq ptr %25, null
  br i1 %tobool32.not, label %if.end31.if.end34_crit_edge, label %if.then33

if.end31.if.end34_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @xfs_buf_item_done(ptr noundef %bp) #13
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end31.if.end34_crit_edge
  %26 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %b_flags, align 4
  %and36 = and i32 %27, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else39, label %if.then38

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @xfs_buf_inode_iodone(ptr noundef %bp) #13
  br label %if.end46

if.else39:                                        ; preds = %if.end34
  %and41 = and i32 %27, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.else39.if.end46_crit_edge, label %if.then43

if.else39.if.end46_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then43:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @xfs_buf_dquot_iodone(ptr noundef %bp) #13
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.else39.if.end46_crit_edge, %if.then38, %if.then14, %if.end11.if.end46_crit_edge, %if.then4.if.end46_crit_edge
  %28 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %b_flags, align 4
  %and48 = and i32 %29, -262152
  store i32 %and48, ptr %b_flags, align 4
  %and50 = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.else53, label %if.then52

if.then52:                                        ; preds = %if.end46
  %count.i.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i = icmp eq i32 %31, 0
  br i1 %cmp.i.i, label %if.then52.xfs_buf_relse.exit_crit_edge, label %cond.false.i.i, !prof !254

if.then52.xfs_buf_relse.exit_crit_edge:           ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_relse.exit

cond.false.i.i:                                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1089) #13
  br label %xfs_buf_relse.exit

xfs_buf_relse.exit:                               ; preds = %cond.false.i.i, %if.then52.xfs_buf_relse.exit_crit_edge
  %b_sema.i.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 6
  tail call void @up(ptr noundef %b_sema.i.i) #13
  tail call fastcc void @trace_xfs_buf_unlock(ptr noundef %bp, i32 noundef %1) #13
  tail call void @xfs_buf_rele(ptr noundef %bp) #13
  br label %if.end54

if.else53:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  %b_iowait = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 18
  tail call void @complete(ptr noundef %b_iowait) #13
  br label %if.end54

if.end54:                                         ; preds = %if.else53, %xfs_buf_relse.exit, %land.lhs.true29.if.end54_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_bwrite(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !254

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1366) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %2 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_flags, align 4
  %or = and i32 %3, -4194356
  %and = or i32 %or, 2
  store i32 %and, ptr %b_flags, align 4
  %call.i = tail call fastcc i32 @__xfs_buf_submit(ptr noundef %bp, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %4 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_mount, align 4
  tail call void @xfs_do_force_shutdown(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 1374) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_do_force_shutdown(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_buf_offset(ptr nocapture noundef readonly %bp, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %b_pages = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 22
  %2 = ptrtoint ptr %b_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_pages, align 4
  %shr = lshr i32 %offset, 12
  %arrayidx = getelementptr ptr, ptr %3, i32 %shr
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call ptr @page_address(ptr noundef %5) #13
  %and = and i32 %offset, 4095
  %add.ptr2 = getelementptr i8, ptr %call, i32 %and
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %add.ptr, %if.then ], [ %add.ptr2, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_buf_zero(ptr nocapture noundef readonly %bp, i32 noundef %boff, i32 noundef %bsize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %bsize, %boff
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %boff)
  %cmp27 = icmp ugt i32 %add, %boff
  br i1 %cmp27, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %b_offset = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 30
  %b_pages = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 22
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cond.end11.while.body_crit_edge, %while.body.lr.ph
  %boff.addr.028 = phi i32 [ %boff, %while.body.lr.ph ], [ %add12, %cond.end11.while.body_crit_edge ]
  %0 = ptrtoint ptr %b_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %b_offset, align 8
  %add1 = add i32 %1, %boff.addr.028
  %shr = lshr i32 %add1, 12
  %and = and i32 %add1, 4095
  %2 = ptrtoint ptr %b_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_pages, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %shr
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %sub = sub nuw nsw i32 4096, %and
  %6 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b_length, align 8
  %shl = shl i32 %7, 9
  %sub4 = sub i32 %shl, %boff.addr.028
  %8 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %sub4)
  %add6 = add nuw nsw i32 %8, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %add6)
  %cmp7 = icmp ult i32 %add6, 4097
  br i1 %cmp7, label %while.body.cond.end11_crit_edge, label %cond.false10, !prof !254

while.body.cond.end11_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end11

cond.false10:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 1682) #13
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %while.body.cond.end11_crit_edge
  %call = tail call ptr @page_address(ptr noundef %5) #13
  %add.ptr = getelementptr i8, ptr %call, i32 %and
  %9 = call ptr @memset(ptr %add.ptr, i32 0, i32 %8)
  %add12 = add i32 %8, %boff.addr.028
  %cmp = icmp ult i32 %add12, %add
  br i1 %cmp, label %cond.end11.while.body_crit_edge, label %cond.end11.while.end_crit_edge

cond.end11.while.end_crit_edge:                   ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

cond.end11.while.body_crit_edge:                  ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %cond.end11.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__xfs_buf_mark_corrupt(ptr noundef %bp, ptr noundef %fa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %0 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %b_flags, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !255

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1706) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  tail call void @xfs_buf_corruption_error(ptr noundef %bp, ptr noundef %fa) #13
  tail call void @xfs_buf_stale(ptr noundef %bp)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_corruption_error(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_buftarg_wait(ptr noundef %btp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bt_io_count = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 11
  %call.i3 = tail call i64 @__percpu_counter_sum(ptr noundef %bt_io_count) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i3)
  %tobool.not4 = icmp eq i64 %call.i3, 0
  br i1 %tobool.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call.i2 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 100) #13
  %call.i = tail call i64 @__percpu_counter_sum(ptr noundef %bt_io_count) #13
  %tobool.not = icmp eq i64 %call.i, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %bt_mount = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 4
  %0 = ptrtoint ptr %bt_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bt_mount, align 8
  %m_buf_workqueue = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %m_buf_workqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_buf_workqueue, align 8
  tail call void @flush_workqueue(ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_buftarg_drain(ptr noundef %btp) local_unnamed_addr #0 align 64 {
entry:
  %nr_to_walk.addr.i = alloca i32, align 4
  %dispose = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dispose) #13
  %0 = getelementptr inbounds %struct.list_head, ptr %dispose, i32 0, i32 1
  %1 = ptrtoint ptr %dispose to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dispose, ptr %dispose, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dispose, ptr %0, align 4
  %bt_io_count.i = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 11
  %call.i3.i = call i64 @__percpu_counter_sum(ptr noundef %bt_io_count.i) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i3.i)
  %tobool.not4.i = icmp eq i64 %call.i3.i, 0
  br i1 %tobool.not4.i, label %entry.xfs_buftarg_wait.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.xfs_buftarg_wait.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buftarg_wait.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %call.i2.i = call i32 @schedule_timeout_uninterruptible(i32 noundef 100) #13
  %call.i.i = call i64 @__percpu_counter_sum(ptr noundef %bt_io_count.i) #13
  %tobool.not.i = icmp eq i64 %call.i.i, 0
  br i1 %tobool.not.i, label %while.body.i.xfs_buftarg_wait.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.xfs_buftarg_wait.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buftarg_wait.exit

xfs_buftarg_wait.exit:                            ; preds = %while.body.i.xfs_buftarg_wait.exit_crit_edge, %entry.xfs_buftarg_wait.exit_crit_edge
  %bt_mount.i = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 4
  %3 = ptrtoint ptr %bt_mount.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bt_mount.i, align 8
  %m_buf_workqueue.i = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %m_buf_workqueue.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_buf_workqueue.i, align 8
  call void @flush_workqueue(ptr noundef %6) #13
  %bt_lru = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 10
  %call.i37 = call i32 @list_lru_count_node(ptr noundef %bt_lru, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool.not38 = icmp eq i32 %call.i37, 0
  br i1 %tobool.not38, label %xfs_buftarg_wait.exit.if.end20_crit_edge, label %xfs_buftarg_wait.exit.while.body_crit_edge

xfs_buftarg_wait.exit.while.body_crit_edge:       ; preds = %xfs_buftarg_wait.exit
  br label %while.body

xfs_buftarg_wait.exit.if.end20_crit_edge:         ; preds = %xfs_buftarg_wait.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

while.body:                                       ; preds = %if.end11.while.body_crit_edge, %xfs_buftarg_wait.exit.while.body_crit_edge
  %loop.040 = phi i32 [ %inc, %if.end11.while.body_crit_edge ], [ 0, %xfs_buftarg_wait.exit.while.body_crit_edge ]
  %write_fail.0.off039 = phi i1 [ %write_fail.1.off0.lcssa, %if.end11.while.body_crit_edge ], [ false, %xfs_buftarg_wait.exit.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_to_walk.addr.i)
  %7 = ptrtoint ptr %nr_to_walk.addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2147483647, ptr %nr_to_walk.addr.i, align 4
  %call.i32 = call i32 @list_lru_walk_node(ptr noundef %bt_lru, i32 noundef 0, ptr noundef nonnull @xfs_buftarg_drain_rele, ptr noundef nonnull %dispose, ptr noundef nonnull %nr_to_walk.addr.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_to_walk.addr.i)
  %8 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not35 = icmp eq ptr %9, %dispose
  br i1 %cmp.i.not35, label %while.body.while.end_crit_edge, label %while.body.while.body6_crit_edge

while.body.while.body6_crit_edge:                 ; preds = %while.body
  br label %while.body6

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body6:                                      ; preds = %if.end.while.body6_crit_edge, %while.body.while.body6_crit_edge
  %10 = phi ptr [ %26, %if.end.while.body6_crit_edge ], [ %9, %while.body.while.body6_crit_edge ]
  %write_fail.1.off036 = phi i1 [ %write_fail.2.off0, %if.end.while.body6_crit_edge ], [ %write_fail.0.off039, %while.body.while.body6_crit_edge ]
  %add.ptr = getelementptr i8, ptr %10, i32 -88
  %call.i.i33 = call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #13
  br i1 %call.i.i33, label %if.end.i.i, label %while.body6.list_del_init.exit_crit_edge

while.body6.list_del_init.exit_crit_edge:         ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body6.list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %10, ptr %10, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %10, ptr %prev.i3.i, align 4
  %b_flags = getelementptr i8, ptr %10, i32 -60
  %19 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %b_flags, align 4
  %and = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %list_del_init.exit.if.end_crit_edge, label %if.then

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  %b_maps.i = getelementptr i8, ptr %10, i32 264
  %21 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_maps.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %22, align 8
  call void (ptr, ptr, ptr, ...) @xfs_buf_alert_ratelimited(ptr noundef %add.ptr, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i64 noundef %24) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  %write_fail.2.off0 = phi i1 [ true, %if.then ], [ %write_fail.1.off036, %list_del_init.exit.if.end_crit_edge ]
  call void @xfs_buf_rele(ptr noundef %add.ptr)
  %25 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not = icmp eq ptr %26, %dispose
  br i1 %cmp.i.not, label %if.end.while.end_crit_edge, label %if.end.while.body6_crit_edge

if.end.while.body6_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body6

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge
  %write_fail.1.off0.lcssa = phi i1 [ %write_fail.0.off039, %while.body.while.end_crit_edge ], [ %write_fail.2.off0, %if.end.while.end_crit_edge ]
  %inc = add i32 %loop.040, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loop.040)
  %cmp.not = icmp eq i32 %loop.040, 0
  br i1 %cmp.not, label %while.end.if.end11_crit_edge, label %if.then10

while.end.if.end11_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then10:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i34 = call i32 @schedule_timeout_uninterruptible(i32 noundef 100) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %while.end.if.end11_crit_edge
  %call.i = call i32 @list_lru_count_node(ptr noundef %bt_lru, i32 noundef 0) #13
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %while.end12, label %if.end11.while.body_crit_edge

if.end11.while.body_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end12:                                      ; preds = %if.end11
  br i1 %write_fail.1.off0.lcssa, label %if.then14, label %while.end12.if.end20_crit_edge

while.end12.if.end20_crit_edge:                   ; preds = %while.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then14:                                        ; preds = %while.end12
  %27 = ptrtoint ptr %bt_mount.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bt_mount.i, align 8
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %28, i32 0, i32 66
  %29 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %m_opstate.i, align 4
  %31 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.not = icmp eq i32 %31, 0
  br i1 %tobool.i.not, label %cond.false, label %if.then14.cond.end_crit_edge, !prof !255

if.then14.cond.end_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 1814) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then14.cond.end_crit_edge
  %32 = ptrtoint ptr %bt_mount.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bt_mount.i, align 8
  call void (ptr, ptr, ...) @xfs_alert(ptr noundef %33, ptr noundef nonnull @.str.23) #13
  br label %if.end20

if.end20:                                         ; preds = %cond.end, %while.end12.if.end20_crit_edge, %xfs_buftarg_wait.exit.if.end20_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dispose) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_buftarg_drain_rele(ptr noundef %item, ptr noundef %lru, ptr nocapture noundef readnone %lru_lock, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_hold = getelementptr i8, ptr %item, i32 -68
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_hold, i32 noundef 4) #13
  %0 = ptrtoint ptr %b_hold to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %b_hold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %item, i32 -88
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %3 = ptrtoint ptr %2 to i32
  tail call fastcc void @trace_xfs_buf_drain_buftarg(ptr noundef %add.ptr, i32 noundef %3)
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_lock = getelementptr i8, ptr %item, i32 8
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %b_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %b_lru_ref = getelementptr i8, ptr %item, i32 -64
  %call.i.i12 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_lru_ref, i32 noundef 4) #13
  %4 = ptrtoint ptr %b_lru_ref to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %b_lru_ref, align 4
  %b_state = getelementptr i8, ptr %item, i32 52
  %5 = ptrtoint ptr %b_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %b_state, align 4
  %or = or i32 %6, 1
  store i32 %or, ptr %b_state, align 4
  tail call void @list_lru_isolate_move(ptr noundef %lru, ptr noundef %item, ptr noundef %arg) #13
  tail call void @_raw_spin_unlock(ptr noundef %b_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 3, %if.then ], [ 0, %if.end3 ], [ 3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_free_buftarg(ptr noundef %btp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bt_shrinker = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 9
  tail call void @unregister_shrinker(ptr noundef %bt_shrinker) #13
  %bt_io_count = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 11
  %call.i = tail call i64 @__percpu_counter_sum(ptr noundef %bt_io_count) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %cmp = icmp eq i64 %call.i, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !254

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 1890) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  tail call void @percpu_counter_destroy(ptr noundef %bt_io_count) #13
  %bt_lru = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 10
  tail call void @list_lru_destroy(ptr noundef %bt_lru) #13
  %bt_bdev = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 1
  %0 = ptrtoint ptr %bt_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bt_bdev, align 4
  %call3 = tail call i32 @blkdev_issue_flush(ptr noundef %1) #13
  tail call void @kvfree(ptr noundef %btp) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_setsize_buftarg(ptr nocapture noundef %btp, i32 noundef %sectorsize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bt_meta_sectorsize = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 5
  %0 = ptrtoint ptr %bt_meta_sectorsize to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %sectorsize, ptr %bt_meta_sectorsize, align 4
  %sub = add i32 %sectorsize, -1
  %bt_meta_sectormask = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 6
  %1 = ptrtoint ptr %bt_meta_sectormask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sub, ptr %bt_meta_sectormask, align 8
  %bt_bdev = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 1
  %2 = ptrtoint ptr %bt_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bt_bdev, align 4
  %call = tail call i32 @set_blocksize(ptr noundef %3, i32 noundef %sectorsize) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %bt_mount = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 4
  %4 = ptrtoint ptr %bt_mount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bt_mount, align 8
  %6 = ptrtoint ptr %bt_bdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bt_bdev, align 4
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef %sectorsize, ptr noundef %7) #13
  br label %return

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %bt_bdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bt_bdev, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.bdev_logical_block_size.exit_crit_edge, label %land.lhs.true.i.i

if.end.bdev_logical_block_size.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %bdev_logical_block_size.exit

land.lhs.true.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 37, i32 9
  %12 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not.i.i = icmp eq i32 %13, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %13
  br label %bdev_logical_block_size.exit

bdev_logical_block_size.exit:                     ; preds = %land.lhs.true.i.i, %if.end.bdev_logical_block_size.exit_crit_edge
  %retval1.0.i.i = phi i32 [ 512, %if.end.bdev_logical_block_size.exit_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %bt_logical_sectorsize = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 7
  %14 = ptrtoint ptr %bt_logical_sectorsize to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval1.0.i.i, ptr %bt_logical_sectorsize, align 4
  %15 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i19 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i19, label %bdev_logical_block_size.exit.bdev_logical_block_size.exit25_crit_edge, label %land.lhs.true.i.i23

bdev_logical_block_size.exit.bdev_logical_block_size.exit25_crit_edge: ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %bdev_logical_block_size.exit25

land.lhs.true.i.i23:                              ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  %logical_block_size.i.i20 = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 37, i32 9
  %17 = ptrtoint ptr %logical_block_size.i.i20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %logical_block_size.i.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not.i.i21 = icmp eq i32 %18, 0
  %.op = add i32 %18, -1
  %phi.bo = select i1 %tobool2.not.i.i21, i32 511, i32 %.op
  br label %bdev_logical_block_size.exit25

bdev_logical_block_size.exit25:                   ; preds = %land.lhs.true.i.i23, %bdev_logical_block_size.exit.bdev_logical_block_size.exit25_crit_edge
  %retval1.0.i.i24 = phi i32 [ 511, %bdev_logical_block_size.exit.bdev_logical_block_size.exit25_crit_edge ], [ %phi.bo, %land.lhs.true.i.i23 ]
  %bt_logical_sectormask = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 8
  %19 = ptrtoint ptr %bt_logical_sectormask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval1.0.i.i24, ptr %bt_logical_sectormask, align 8
  br label %return

return:                                           ; preds = %bdev_logical_block_size.exit25, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %bdev_logical_block_size.exit25 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_alloc_buftarg(ptr noundef %mp, ptr noundef %bdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_alloc(i32 noundef 248, i32 noundef 20) #13
  %bt_mount = getelementptr inbounds %struct.xfs_buftarg, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %bt_mount to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mp, ptr %bt_mount, align 8
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 5
  %1 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bd_dev, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %call.i, align 8
  %bt_bdev = getelementptr inbounds %struct.xfs_buftarg, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %bt_bdev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %bdev, ptr %bt_bdev, align 4
  %bt_daxdev = getelementptr inbounds %struct.xfs_buftarg, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %bt_daxdev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %bt_daxdev, align 8
  %bt_ioerror_rl = getelementptr inbounds %struct.xfs_buftarg, ptr %call.i, i32 0, i32 12
  %6 = call ptr @memset(ptr %bt_ioerror_rl, i32 0, i32 68)
  tail call void @__raw_spin_lock_init(ptr noundef %bt_ioerror_rl, ptr noundef nonnull @.str.65, ptr noundef nonnull @ratelimit_state_init.__key, i16 noundef signext 2) #13
  %interval1.i = getelementptr inbounds %struct.xfs_buftarg, ptr %call.i, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %interval1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3000, ptr %interval1.i, align 4
  %burst2.i = getelementptr inbounds %struct.xfs_buftarg, ptr %call.i, i32 0, i32 12, i32 2
  %8 = ptrtoint ptr %burst2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10, ptr %burst2.i, align 4
  %call2 = tail call fastcc i32 @xfs_setsize_buftarg_early(ptr noundef %call.i, ptr noundef %bdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.error_free_crit_edge

entry.error_free_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_free

if.end:                                           ; preds = %entry
  %bt_lru = getelementptr inbounds %struct.xfs_buftarg, ptr %call.i, i32 0, i32 10
  %call3 = tail call i32 @__list_lru_init(ptr noundef %bt_lru, i1 noundef zeroext false, ptr noundef null, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.error_free_crit_edge

if.end.error_free_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_free

if.end6:                                          ; preds = %if.end
  %bt_io_count = getelementptr inbounds %struct.xfs_buftarg, ptr %call.i, i32 0, i32 11
  %call7 = tail call i32 @__percpu_counter_init(ptr noundef %bt_io_count, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @xfs_alloc_buftarg.__key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.error_lru_crit_edge

if.end6.error_lru_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_lru

if.end10:                                         ; preds = %if.end6
  %bt_shrinker = getelementptr inbounds %struct.xfs_buftarg, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %bt_shrinker to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @xfs_buftarg_shrink_count, ptr %bt_shrinker, align 4
  %scan_objects = getelementptr inbounds %struct.xfs_buftarg, ptr %call.i, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %scan_objects to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xfs_buftarg_shrink_scan, ptr %scan_objects, align 4
  %seeks = getelementptr inbounds %struct.xfs_buftarg, ptr %call.i, i32 0, i32 9, i32 3
  %11 = ptrtoint ptr %seeks to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %seeks, align 4
  %flags = getelementptr inbounds %struct.xfs_buftarg, ptr %call.i, i32 0, i32 9, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %flags, align 4
  %call15 = tail call i32 @register_shrinker(ptr noundef %bt_shrinker) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end10.cleanup_crit_edge, label %error_pcpu

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

error_pcpu:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @percpu_counter_destroy(ptr noundef %bt_io_count) #13
  br label %error_lru

error_lru:                                        ; preds = %error_pcpu, %if.end6.error_lru_crit_edge
  tail call void @list_lru_destroy(ptr noundef %bt_lru) #13
  br label %error_free

error_free:                                       ; preds = %error_lru, %if.end.error_free_crit_edge, %entry.error_free_crit_edge
  tail call void @kvfree(ptr noundef %call.i) #13
  br label %cleanup

cleanup:                                          ; preds = %error_free, %if.end10.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %error_free ], [ %call.i, %if.end10.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_setsize_buftarg_early(ptr nocapture noundef %btp, ptr nocapture noundef readonly %bdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 18
  %0 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.bdev_logical_block_size.exit_crit_edge, label %land.lhs.true.i.i

entry.bdev_logical_block_size.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %bdev_logical_block_size.exit

land.lhs.true.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 9
  %2 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not.i.i = icmp eq i32 %3, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %3
  br label %bdev_logical_block_size.exit

bdev_logical_block_size.exit:                     ; preds = %land.lhs.true.i.i, %entry.bdev_logical_block_size.exit_crit_edge
  %retval1.0.i.i = phi i32 [ 512, %entry.bdev_logical_block_size.exit_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %bt_meta_sectorsize.i = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 5
  %4 = ptrtoint ptr %bt_meta_sectorsize.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %retval1.0.i.i, ptr %bt_meta_sectorsize.i, align 4
  %sub.i = add i32 %retval1.0.i.i, -1
  %bt_meta_sectormask.i = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 6
  %5 = ptrtoint ptr %bt_meta_sectormask.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub.i, ptr %bt_meta_sectormask.i, align 8
  %bt_bdev.i = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 1
  %6 = ptrtoint ptr %bt_bdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bt_bdev.i, align 4
  %call.i = tail call i32 @set_blocksize(ptr noundef %7, i32 noundef %retval1.0.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  %bt_mount.i = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 4
  %8 = ptrtoint ptr %bt_mount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bt_mount.i, align 8
  %10 = ptrtoint ptr %bt_bdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bt_bdev.i, align 4
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %9, ptr noundef nonnull @.str.25, i32 noundef %retval1.0.i.i, ptr noundef %11) #13
  br label %xfs_setsize_buftarg.exit

if.end.i:                                         ; preds = %bdev_logical_block_size.exit
  %12 = ptrtoint ptr %bt_bdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bt_bdev.i, align 4
  %bd_queue.i.i.i = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %bd_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bd_queue.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %if.end.i.bdev_logical_block_size.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.bdev_logical_block_size.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bdev_logical_block_size.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %logical_block_size.i.i.i = getelementptr inbounds %struct.request_queue, ptr %15, i32 0, i32 37, i32 9
  %16 = ptrtoint ptr %logical_block_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %logical_block_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.not.i.i.i = icmp eq i32 %17, 0
  %spec.select.i.i.i = select i1 %tobool2.not.i.i.i, i32 512, i32 %17
  br label %bdev_logical_block_size.exit.i

bdev_logical_block_size.exit.i:                   ; preds = %land.lhs.true.i.i.i, %if.end.i.bdev_logical_block_size.exit.i_crit_edge
  %retval1.0.i.i.i = phi i32 [ 512, %if.end.i.bdev_logical_block_size.exit.i_crit_edge ], [ %spec.select.i.i.i, %land.lhs.true.i.i.i ]
  %bt_logical_sectorsize.i = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 7
  %18 = ptrtoint ptr %bt_logical_sectorsize.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval1.0.i.i.i, ptr %bt_logical_sectorsize.i, align 4
  %19 = ptrtoint ptr %bd_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bd_queue.i.i.i, align 4
  %tobool.not.i.i19.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i19.i, label %bdev_logical_block_size.exit.i.bdev_logical_block_size.exit25.i_crit_edge, label %land.lhs.true.i.i23.i

bdev_logical_block_size.exit.i.bdev_logical_block_size.exit25.i_crit_edge: ; preds = %bdev_logical_block_size.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bdev_logical_block_size.exit25.i

land.lhs.true.i.i23.i:                            ; preds = %bdev_logical_block_size.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %logical_block_size.i.i20.i = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 37, i32 9
  %21 = ptrtoint ptr %logical_block_size.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %logical_block_size.i.i20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool2.not.i.i21.i = icmp eq i32 %22, 0
  %.op.i = add i32 %22, -1
  %phi.bo.i = select i1 %tobool2.not.i.i21.i, i32 511, i32 %.op.i
  br label %bdev_logical_block_size.exit25.i

bdev_logical_block_size.exit25.i:                 ; preds = %land.lhs.true.i.i23.i, %bdev_logical_block_size.exit.i.bdev_logical_block_size.exit25.i_crit_edge
  %retval1.0.i.i24.i = phi i32 [ 511, %bdev_logical_block_size.exit.i.bdev_logical_block_size.exit25.i_crit_edge ], [ %phi.bo.i, %land.lhs.true.i.i23.i ]
  %bt_logical_sectormask.i = getelementptr inbounds %struct.xfs_buftarg, ptr %btp, i32 0, i32 8
  %23 = ptrtoint ptr %bt_logical_sectormask.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval1.0.i.i24.i, ptr %bt_logical_sectormask.i, align 8
  br label %xfs_setsize_buftarg.exit

xfs_setsize_buftarg.exit:                         ; preds = %bdev_logical_block_size.exit25.i, %if.then.i
  %retval.0.i = phi i32 [ -22, %if.then.i ], [ 0, %bdev_logical_block_size.exit25.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__list_lru_init(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_buftarg_shrink_count(ptr noundef %shrink, ptr nocapture noundef readonly %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bt_lru = getelementptr i8, ptr %shrink, i32 36
  %nid.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nid.i, align 4
  %memcg.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 4
  %2 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memcg.i, align 4
  %call.i = tail call i32 @list_lru_count_one(ptr noundef %bt_lru, i32 noundef %1, ptr noundef %3) #13
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_buftarg_shrink_scan(ptr noundef %shrink, ptr noundef %sc) #0 align 64 {
entry:
  %dispose = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dispose) #13
  %0 = getelementptr inbounds %struct.list_head, ptr %dispose, i32 0, i32 1
  %1 = ptrtoint ptr %dispose to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dispose, ptr %dispose, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dispose, ptr %0, align 4
  %bt_lru = getelementptr i8, ptr %shrink, i32 36
  %nid.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 1
  %3 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nid.i, align 4
  %memcg.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 4
  %5 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %memcg.i, align 4
  %nr_to_scan.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 2
  %call.i = call i32 @list_lru_walk_one(ptr noundef %bt_lru, i32 noundef %4, ptr noundef %6, ptr noundef nonnull @xfs_buftarg_isolate, ptr noundef nonnull %dispose, ptr noundef %nr_to_scan.i) #13
  %7 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not7 = icmp eq ptr %8, %dispose
  br i1 %cmp.i.not7, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %9 = phi ptr [ %19, %list_del_init.exit.while.body_crit_edge ], [ %8, %entry.while.body_crit_edge ]
  %add.ptr5 = getelementptr i8, ptr %9, i32 -88
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #13
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %9, ptr %9, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %9, ptr %prev.i3.i, align 4
  call void @xfs_buf_rele(ptr noundef %add.ptr5)
  %18 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not = icmp eq ptr %19, %dispose
  br i1 %cmp.i.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dispose) #13
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_buf_delwri_cancel(ptr noundef %list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp.i.not5 = icmp eq ptr %1, %list
  br i1 %cmp.i.not5, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %2 = tail call ptr @llvm.returnaddress(i32 0) #13
  %3 = ptrtoint ptr %2 to i32
  br label %while.body

while.body:                                       ; preds = %xfs_buf_relse.exit.while.body_crit_edge, %while.body.lr.ph
  %4 = phi ptr [ %1, %while.body.lr.ph ], [ %24, %xfs_buf_relse.exit.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %4, i32 -200
  tail call fastcc void @trace_xfs_buf_lock(ptr noundef %add.ptr, i32 noundef %3) #13
  %b_pin_count.i = getelementptr i8, ptr %4, i32 180
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_pin_count.i, i32 noundef 4) #13
  %5 = ptrtoint ptr %b_pin_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %b_pin_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %while.body.xfs_buf_lock.exit_crit_edge, label %land.lhs.true.i

while.body.xfs_buf_lock.exit_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_lock.exit

land.lhs.true.i:                                  ; preds = %while.body
  %b_flags.i = getelementptr i8, ptr %4, i32 -172
  %7 = ptrtoint ptr %b_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %b_flags.i, align 4
  %and.i = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.xfs_buf_lock.exit_crit_edge, label %if.then.i

land.lhs.true.i.xfs_buf_lock.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_lock.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %b_mount.i = getelementptr i8, ptr %4, i32 12
  %9 = ptrtoint ptr %b_mount.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_mount.i, align 4
  %call2.i = tail call i32 @xfs_log_force(ptr noundef %10, i32 noundef 0) #13
  br label %xfs_buf_lock.exit

xfs_buf_lock.exit:                                ; preds = %if.then.i, %land.lhs.true.i.xfs_buf_lock.exit_crit_edge, %while.body.xfs_buf_lock.exit_crit_edge
  %b_sema.i = getelementptr i8, ptr %4, i32 -168
  tail call void @down(ptr noundef %b_sema.i) #13
  tail call fastcc void @trace_xfs_buf_lock_done(ptr noundef %add.ptr, i32 noundef %3) #13
  %b_flags = getelementptr i8, ptr %4, i32 -172
  %11 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %b_flags, align 4
  %and = and i32 %12, -4194305
  store i32 %and, ptr %b_flags, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #13
  br i1 %call.i.i, label %if.end.i.i, label %xfs_buf_lock.exit.list_del_init.exit_crit_edge

xfs_buf_lock.exit.list_del_init.exit_crit_edge:   ; preds = %xfs_buf_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %xfs_buf_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %xfs_buf_lock.exit.list_del_init.exit_crit_edge
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %4, ptr %4, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %4, ptr %prev.i3.i, align 4
  %count.i.i = getelementptr i8, ptr %4, i32 -124
  %21 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.i = icmp eq i32 %22, 0
  br i1 %cmp.i.i, label %list_del_init.exit.xfs_buf_relse.exit_crit_edge, label %cond.false.i.i, !prof !254

list_del_init.exit.xfs_buf_relse.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_relse.exit

cond.false.i.i:                                   ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1089) #13
  br label %xfs_buf_relse.exit

xfs_buf_relse.exit:                               ; preds = %cond.false.i.i, %list_del_init.exit.xfs_buf_relse.exit_crit_edge
  tail call void @up(ptr noundef %b_sema.i) #13
  tail call fastcc void @trace_xfs_buf_unlock(ptr noundef %add.ptr, i32 noundef %3) #13
  tail call void @xfs_buf_rele(ptr noundef %add.ptr) #13
  %23 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %24, %list
  br i1 %cmp.i.not, label %xfs_buf_relse.exit.while.end_crit_edge, label %xfs_buf_relse.exit.while.body_crit_edge

xfs_buf_relse.exit.while.body_crit_edge:          ; preds = %xfs_buf_relse.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

xfs_buf_relse.exit.while.end_crit_edge:           ; preds = %xfs_buf_relse.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %xfs_buf_relse.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_buf_delwri_queue(ptr noundef %bp, ptr noundef %list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !254

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 2021) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %2 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %cond.end.cond.end13_crit_edge, label %cond.false12, !prof !254

cond.end.cond.end13_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end13

cond.false12:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 2022) #13
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %cond.end.cond.end13_crit_edge
  %4 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %b_flags, align 4
  %and15 = and i32 %5, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %6 = tail call ptr @llvm.returnaddress(i32 0)
  %7 = ptrtoint ptr %6 to i32
  br i1 %tobool16.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @trace_xfs_buf_delwri_queued(ptr noundef %bp, i32 noundef %7)
  br label %return

if.end:                                           ; preds = %cond.end13
  tail call fastcc void @trace_xfs_buf_delwri_queue(ptr noundef %bp, i32 noundef %7)
  %8 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_flags, align 4
  %or = or i32 %9, 4194304
  store i32 %or, ptr %b_flags, align 4
  %b_list = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 12
  %10 = ptrtoint ptr %b_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %b_list, align 4
  %cmp.i.not = icmp eq ptr %11, %b_list
  br i1 %cmp.i.not, label %if.then19, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then19:                                        ; preds = %if.end
  %b_hold = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_hold, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_hold, i32 1, i32 3, i32 1) #13
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_hold, ptr %b_hold, i32 1, ptr elementtype(i32) %b_hold) #13, !srcloc !263
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i30 = tail call zeroext i1 @__list_add_valid(ptr noundef %b_list, ptr noundef %14, ptr noundef %list) #13
  br i1 %call.i.i30, label %if.end.i.i, label %if.then19.return_crit_edge

if.then19.return_crit_edge:                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end.i.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b_list, ptr %prev.i, align 4
  %16 = ptrtoint ptr %b_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %b_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 12, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %b_list, ptr %14, align 4
  br label %return

return:                                           ; preds = %if.end.i.i, %if.then19.return_crit_edge, %if.end.return_crit_edge, %if.then
  ret i1 %tobool16.not
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_delwri_queued(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_delwri_queued, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_delwri_queued, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !298
  %call42 = tail call i32 @__traceiter_xfs_buf_delwri_queued(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !299
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_delwri_queued, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_delwri_queued, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_delwri_queued.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_delwri_queued.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 462, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_delwri_queue(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_delwri_queue, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_delwri_queue, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !300
  %call42 = tail call i32 @__traceiter_xfs_buf_delwri_queue(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !301
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_delwri_queue, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_delwri_queue, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_delwri_queue.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_delwri_queue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 461, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
define dso_local i32 @xfs_buf_delwri_submit_nowait(ptr noundef %buffer_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_buf_delwri_submit_buffers(ptr noundef %buffer_list, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_buf_delwri_submit_buffers(ptr noundef %buffer_list, ptr noundef %wait_list) unnamed_addr #0 align 64 {
entry:
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #13
  %0 = call ptr @memset(ptr %plug, i32 255, i32 24)
  tail call void @list_sort(ptr noundef null, ptr noundef %buffer_list, ptr noundef nonnull @xfs_buf_cmp) #13
  call void @blk_start_plug(ptr noundef nonnull %plug) #13
  %1 = ptrtoint ptr %buffer_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buffer_list, align 4
  %cmp.not78 = icmp eq ptr %2, %buffer_list
  br i1 %cmp.not78, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %wait_list, null
  %prev.i2.i = getelementptr inbounds %struct.list_head, ptr %wait_list, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in81 = phi ptr [ %2, %for.body.lr.ph ], [ %.pn86, %for.inc.for.body_crit_edge ]
  %pinned.079 = phi i32 [ 0, %for.body.lr.ph ], [ %pinned.1, %for.inc.for.body_crit_edge ]
  %bp.085 = getelementptr i8, ptr %.pn.in81, i32 -200
  %3 = ptrtoint ptr %.pn.in81 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn86 = load ptr, ptr %.pn.in81, align 8
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %b_pin_count.i = getelementptr i8, ptr %.pn.in81, i32 180
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %b_pin_count.i, i32 noundef 4) #13
  %4 = ptrtoint ptr %b_pin_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %b_pin_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %if.end, label %if.then7

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %inc = add i32 %pinned.079, 1
  br label %for.inc

if.end:                                           ; preds = %if.then
  %b_sema.i = getelementptr i8, ptr %.pn.in81, i32 -168
  %call.i = call i32 @down_trylock(ptr noundef %b_sema.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  %6 = call ptr @llvm.returnaddress(i32 0) #13
  %7 = ptrtoint ptr %6 to i32
  br i1 %cmp.i, label %xfs_buf_trylock.exit, label %xfs_buf_trylock.exit.thread

xfs_buf_trylock.exit.thread:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @trace_xfs_buf_trylock_fail(ptr noundef %bp.085, i32 noundef %7) #13
  br label %for.inc

xfs_buf_trylock.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @trace_xfs_buf_trylock(ptr noundef %bp.085, i32 noundef %7) #13
  br label %if.end12

if.else:                                          ; preds = %for.body
  %8 = call ptr @llvm.returnaddress(i32 0) #13
  %9 = ptrtoint ptr %8 to i32
  call fastcc void @trace_xfs_buf_lock(ptr noundef %bp.085, i32 noundef %9) #13
  %b_pin_count.i58 = getelementptr i8, ptr %.pn.in81, i32 180
  %call.i.i.i59 = call zeroext i1 @__kasan_check_read(ptr noundef %b_pin_count.i58, i32 noundef 4) #13
  %10 = ptrtoint ptr %b_pin_count.i58 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %b_pin_count.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.else.xfs_buf_lock.exit_crit_edge, label %land.lhs.true.i

if.else.xfs_buf_lock.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_lock.exit

land.lhs.true.i:                                  ; preds = %if.else
  %b_flags.i = getelementptr i8, ptr %.pn.in81, i32 -172
  %12 = ptrtoint ptr %b_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %b_flags.i, align 4
  %and.i = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.xfs_buf_lock.exit_crit_edge, label %if.then.i60

land.lhs.true.i.xfs_buf_lock.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_lock.exit

if.then.i60:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %b_mount.i = getelementptr i8, ptr %.pn.in81, i32 12
  %14 = ptrtoint ptr %b_mount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_mount.i, align 4
  %call2.i = call i32 @xfs_log_force(ptr noundef %15, i32 noundef 0) #13
  br label %xfs_buf_lock.exit

xfs_buf_lock.exit:                                ; preds = %if.then.i60, %land.lhs.true.i.xfs_buf_lock.exit_crit_edge, %if.else.xfs_buf_lock.exit_crit_edge
  %b_sema.i61 = getelementptr i8, ptr %.pn.in81, i32 -168
  call void @down(ptr noundef %b_sema.i61) #13
  call fastcc void @trace_xfs_buf_lock_done(ptr noundef %bp.085, i32 noundef %9) #13
  br label %if.end12

if.end12:                                         ; preds = %xfs_buf_lock.exit, %xfs_buf_trylock.exit
  %b_flags = getelementptr i8, ptr %.pn.in81, i32 -172
  %16 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %b_flags, align 4
  %and = and i32 %17, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in81) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then14.list_del_init.exit_crit_edge

if.then14.list_del_init.exit_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in81, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %.pn.in81 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %.pn.in81, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then14.list_del_init.exit_crit_edge
  %24 = ptrtoint ptr %.pn.in81 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %.pn.in81, ptr %.pn.in81, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in81, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %.pn.in81, ptr %prev.i3.i, align 4
  %count.i.i = getelementptr i8, ptr %.pn.in81, i32 -124
  %26 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i = icmp eq i32 %27, 0
  br i1 %cmp.i.i, label %list_del_init.exit.xfs_buf_relse.exit_crit_edge, label %cond.false.i.i, !prof !254

list_del_init.exit.xfs_buf_relse.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_relse.exit

cond.false.i.i:                                   ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1089) #13
  br label %xfs_buf_relse.exit

xfs_buf_relse.exit:                               ; preds = %cond.false.i.i, %list_del_init.exit.xfs_buf_relse.exit_crit_edge
  %b_sema.i.i = getelementptr i8, ptr %.pn.in81, i32 -168
  call void @up(ptr noundef %b_sema.i.i) #13
  %28 = call ptr @llvm.returnaddress(i32 0) #13
  %29 = ptrtoint ptr %28 to i32
  call fastcc void @trace_xfs_buf_unlock(ptr noundef %bp.085, i32 noundef %29) #13
  call void @xfs_buf_rele(ptr noundef %bp.085) #13
  br label %for.inc

if.end16:                                         ; preds = %if.end12
  %30 = call ptr @llvm.returnaddress(i32 0)
  %31 = ptrtoint ptr %30 to i32
  call fastcc void @trace_xfs_buf_delwri_split(ptr noundef %bp.085, i32 noundef %31)
  %32 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %b_flags, align 4
  %and18 = and i32 %33, -4194323
  br i1 %tobool.not, label %if.else25, label %if.then21

if.then21:                                        ; preds = %if.end16
  %and23 = or i32 %and18, 2
  %34 = ptrtoint ptr %b_flags to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and23, ptr %b_flags, align 4
  %call.i.i62 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in81) #13
  br i1 %call.i.i62, label %if.end.i.i65, label %if.then21.__list_del_entry.exit.i_crit_edge

if.then21.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i

if.end.i.i65:                                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i63 = getelementptr inbounds %struct.list_head, ptr %.pn.in81, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i63, align 4
  %37 = ptrtoint ptr %.pn.in81 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %.pn.in81, align 4
  %prev1.i.i.i64 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i64, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i65, %if.then21.__list_del_entry.exit.i_crit_edge
  %41 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i66 = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in81, ptr noundef %42, ptr noundef nonnull %wait_list) #13
  br i1 %call.i.i.i66, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end29_crit_edge

__list_del_entry.exit.i.if.end29_crit_edge:       ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %.pn.in81, ptr %prev.i2.i, align 4
  %44 = ptrtoint ptr %.pn.in81 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %wait_list, ptr %.pn.in81, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in81, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %.pn.in81, ptr %42, align 4
  br label %if.end29

if.else25:                                        ; preds = %if.end16
  %or27 = or i32 %and18, 18
  %47 = ptrtoint ptr %b_flags to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or27, ptr %b_flags, align 4
  %call.i.i67 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in81) #13
  br i1 %call.i.i67, label %if.end.i.i70, label %if.else25.list_del_init.exit73_crit_edge

if.else25.list_del_init.exit73_crit_edge:         ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit73

if.end.i.i70:                                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i68 = getelementptr inbounds %struct.list_head, ptr %.pn.in81, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i68 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i68, align 4
  %50 = ptrtoint ptr %.pn.in81 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %.pn.in81, align 4
  %prev1.i.i.i69 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i69 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i69, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del_init.exit73

list_del_init.exit73:                             ; preds = %if.end.i.i70, %if.else25.list_del_init.exit73_crit_edge
  %54 = ptrtoint ptr %.pn.in81 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %.pn.in81, ptr %.pn.in81, align 4
  %prev.i3.i71 = getelementptr inbounds %struct.list_head, ptr %.pn.in81, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i3.i71 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %.pn.in81, ptr %prev.i3.i71, align 4
  br label %if.end29

if.end29:                                         ; preds = %list_del_init.exit73, %if.end.i.i.i, %__list_del_entry.exit.i.if.end29_crit_edge
  %call30 = call fastcc i32 @__xfs_buf_submit(ptr noundef %bp.085, i1 noundef zeroext false)
  br label %for.inc

for.inc:                                          ; preds = %if.end29, %xfs_buf_relse.exit, %xfs_buf_trylock.exit.thread, %if.then7
  %pinned.1 = phi i32 [ %pinned.079, %if.end29 ], [ %pinned.079, %xfs_buf_relse.exit ], [ %inc, %if.then7 ], [ %pinned.079, %xfs_buf_trylock.exit.thread ]
  %cmp.not = icmp eq ptr %.pn86, %buffer_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %pinned.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %pinned.1, %for.inc.for.end_crit_edge ]
  call void @blk_finish_plug(ptr noundef nonnull %plug) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #13
  ret i32 %pinned.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_buf_delwri_submit(ptr noundef %buffer_list) local_unnamed_addr #0 align 64 {
entry:
  %wait_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wait_list) #13
  %0 = getelementptr inbounds %struct.list_head, ptr %wait_list, i32 0, i32 1
  %1 = ptrtoint ptr %wait_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %wait_list, ptr %wait_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %wait_list, ptr %0, align 4
  %call = call fastcc i32 @xfs_buf_delwri_submit_buffers(ptr noundef %buffer_list, ptr noundef nonnull %wait_list)
  %3 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %wait_list, align 4
  %cmp.i.not8 = icmp eq ptr %4, %wait_list
  br i1 %cmp.i.not8, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %xfs_buf_relse.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %5 = phi ptr [ %23, %xfs_buf_relse.exit.while.body_crit_edge ], [ %4, %entry.while.body_crit_edge ]
  %error.09 = phi i32 [ %spec.select, %xfs_buf_relse.exit.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %5, i32 -200
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #13
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %5, ptr %5, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %prev.i3.i, align 4
  %b_flags.i = getelementptr i8, ptr %5, i32 -172
  %14 = ptrtoint ptr %b_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b_flags.i, align 4
  %and.i = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %list_del_init.exit.xfs_buf_iowait.exit_crit_edge, label %cond.false.i, !prof !254

list_del_init.exit.xfs_buf_iowait.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_iowait.exit

cond.false.i:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.1, i32 noundef 1570) #13
  br label %xfs_buf_iowait.exit

xfs_buf_iowait.exit:                              ; preds = %cond.false.i, %list_del_init.exit.xfs_buf_iowait.exit_crit_edge
  %16 = call ptr @llvm.returnaddress(i32 0) #13
  %17 = ptrtoint ptr %16 to i32
  call fastcc void @trace_xfs_buf_iowait(ptr noundef %add.ptr, i32 noundef %17) #13
  %b_iowait.i = getelementptr i8, ptr %5, i32 68
  call void @wait_for_completion(ptr noundef %b_iowait.i) #13
  call fastcc void @trace_xfs_buf_iowait_done(ptr noundef %add.ptr, i32 noundef %17) #13
  %b_error.i = getelementptr i8, ptr %5, i32 196
  %18 = ptrtoint ptr %b_error.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %b_error.i, align 4
  %count.i.i = getelementptr i8, ptr %5, i32 -124
  %20 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i, label %xfs_buf_iowait.exit.xfs_buf_relse.exit_crit_edge, label %cond.false.i.i, !prof !254

xfs_buf_iowait.exit.xfs_buf_relse.exit_crit_edge: ; preds = %xfs_buf_iowait.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_relse.exit

cond.false.i.i:                                   ; preds = %xfs_buf_iowait.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1089) #13
  br label %xfs_buf_relse.exit

xfs_buf_relse.exit:                               ; preds = %cond.false.i.i, %xfs_buf_iowait.exit.xfs_buf_relse.exit_crit_edge
  %b_sema.i.i = getelementptr i8, ptr %5, i32 -168
  call void @up(ptr noundef %b_sema.i.i) #13
  call fastcc void @trace_xfs_buf_unlock(ptr noundef %add.ptr, i32 noundef %17) #13
  call void @xfs_buf_rele(ptr noundef %add.ptr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.09)
  %tobool4.not = icmp eq i32 %error.09, 0
  %spec.select = select i1 %tobool4.not, i32 %19, i32 %error.09
  %22 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %wait_list, align 4
  %cmp.i.not = icmp eq ptr %23, %wait_list
  br i1 %cmp.i.not, label %xfs_buf_relse.exit.while.end_crit_edge, label %xfs_buf_relse.exit.while.body_crit_edge

xfs_buf_relse.exit.while.body_crit_edge:          ; preds = %xfs_buf_relse.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

xfs_buf_relse.exit.while.end_crit_edge:           ; preds = %xfs_buf_relse.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %xfs_buf_relse.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %error.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %spec.select, %xfs_buf_relse.exit.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wait_list) #13
  ret i32 %error.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_buf_delwri_pushbuf(ptr noundef %bp, ptr noundef %buffer_list) local_unnamed_addr #0 align 64 {
entry:
  %submit_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %submit_list) #13
  %0 = getelementptr inbounds %struct.list_head, ptr %submit_list, i32 0, i32 1
  %1 = ptrtoint ptr %submit_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %submit_list, ptr %submit_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %submit_list, ptr %0, align 4
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %3 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %b_flags, align 4
  %and = and i32 %4, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !255

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 2226) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %5 = call ptr @llvm.returnaddress(i32 0)
  %6 = ptrtoint ptr %5 to i32
  call fastcc void @trace_xfs_buf_delwri_pushbuf(ptr noundef %bp, i32 noundef %6)
  call fastcc void @trace_xfs_buf_lock(ptr noundef %bp, i32 noundef %6) #13
  %b_pin_count.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 27
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %b_pin_count.i, i32 noundef 4) #13
  %7 = ptrtoint ptr %b_pin_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %b_pin_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %cond.end.xfs_buf_lock.exit_crit_edge, label %land.lhs.true.i

cond.end.xfs_buf_lock.exit_crit_edge:             ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_lock.exit

land.lhs.true.i:                                  ; preds = %cond.end
  %9 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %b_flags, align 4
  %and.i = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.xfs_buf_lock.exit_crit_edge, label %if.then.i

land.lhs.true.i.xfs_buf_lock.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_lock.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %b_mount.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %11 = ptrtoint ptr %b_mount.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_mount.i, align 4
  %call2.i = call i32 @xfs_log_force(ptr noundef %12, i32 noundef 0) #13
  br label %xfs_buf_lock.exit

xfs_buf_lock.exit:                                ; preds = %if.then.i, %land.lhs.true.i.xfs_buf_lock.exit_crit_edge, %cond.end.xfs_buf_lock.exit_crit_edge
  %b_sema.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 6
  call void @down(ptr noundef %b_sema.i) #13
  call fastcc void @trace_xfs_buf_lock_done(ptr noundef %bp, i32 noundef %6) #13
  %b_list = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 12
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %b_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %xfs_buf_lock.exit.__list_del_entry.exit.i_crit_edge

xfs_buf_lock.exit.__list_del_entry.exit.i_crit_edge: ; preds = %xfs_buf_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %xfs_buf_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %b_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %xfs_buf_lock.exit.__list_del_entry.exit.i_crit_edge
  %19 = ptrtoint ptr %submit_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %submit_list, align 4
  %call.i.i.i12 = call zeroext i1 @__list_add_valid(ptr noundef %b_list, ptr noundef nonnull %submit_list, ptr noundef %20) #13
  br i1 %call.i.i.i12, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %b_list, ptr %prev1.i.i2.i, align 4
  %22 = ptrtoint ptr %b_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %b_list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 12, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %submit_list, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %submit_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %b_list, ptr %submit_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %count.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i = icmp eq i32 %26, 0
  br i1 %cmp.i, label %list_move.exit.xfs_buf_unlock.exit_crit_edge, label %cond.false.i, !prof !254

list_move.exit.xfs_buf_unlock.exit_crit_edge:     ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_unlock.exit

cond.false.i:                                     ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1089) #13
  br label %xfs_buf_unlock.exit

xfs_buf_unlock.exit:                              ; preds = %cond.false.i, %list_move.exit.xfs_buf_unlock.exit_crit_edge
  call void @up(ptr noundef %b_sema.i) #13
  call fastcc void @trace_xfs_buf_unlock(ptr noundef %bp, i32 noundef %6) #13
  %call = call fastcc i32 @xfs_buf_delwri_submit_buffers(ptr noundef nonnull %submit_list, ptr noundef %buffer_list)
  %27 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %b_flags, align 4
  %and.i15 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15)
  %tobool.not.i16 = icmp eq i32 %and.i15, 0
  br i1 %tobool.not.i16, label %xfs_buf_unlock.exit.xfs_buf_iowait.exit_crit_edge, label %cond.false.i17, !prof !254

xfs_buf_unlock.exit.xfs_buf_iowait.exit_crit_edge: ; preds = %xfs_buf_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_iowait.exit

cond.false.i17:                                   ; preds = %xfs_buf_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.1, i32 noundef 1570) #13
  br label %xfs_buf_iowait.exit

xfs_buf_iowait.exit:                              ; preds = %cond.false.i17, %xfs_buf_unlock.exit.xfs_buf_iowait.exit_crit_edge
  call fastcc void @trace_xfs_buf_iowait(ptr noundef %bp, i32 noundef %6) #13
  %b_iowait.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 18
  call void @wait_for_completion(ptr noundef %b_iowait.i) #13
  call fastcc void @trace_xfs_buf_iowait_done(ptr noundef %bp, i32 noundef %6) #13
  %b_error.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 31
  %29 = ptrtoint ptr %b_error.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %b_error.i, align 4
  %31 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %b_flags, align 4
  %or = or i32 %32, 4194304
  store i32 %or, ptr %b_flags, align 4
  %33 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i19 = icmp eq i32 %34, 0
  br i1 %cmp.i19, label %xfs_buf_iowait.exit.xfs_buf_unlock.exit22_crit_edge, label %cond.false.i20, !prof !254

xfs_buf_iowait.exit.xfs_buf_unlock.exit22_crit_edge: ; preds = %xfs_buf_iowait.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_unlock.exit22

cond.false.i20:                                   ; preds = %xfs_buf_iowait.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1089) #13
  br label %xfs_buf_unlock.exit22

xfs_buf_unlock.exit22:                            ; preds = %cond.false.i20, %xfs_buf_iowait.exit.xfs_buf_unlock.exit22_crit_edge
  call void @up(ptr noundef %b_sema.i) #13
  call fastcc void @trace_xfs_buf_unlock(ptr noundef %bp, i32 noundef %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %submit_list) #13
  ret i32 %30
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_delwri_pushbuf(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_delwri_pushbuf, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_delwri_pushbuf, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !302
  %call42 = tail call i32 @__traceiter_xfs_buf_delwri_pushbuf(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !303
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_delwri_pushbuf, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_delwri_pushbuf, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_delwri_pushbuf.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_delwri_pushbuf.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 464, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_buf_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.28, i32 noundef 416, i32 noundef 0, i32 noundef 1187840, ptr noundef null) #13
  store ptr %call, ptr @xfs_buf_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_buf_terminate() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @xfs_buf_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_buf_set_ref(ptr noundef %bp, i32 noundef %lru_ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %call = tail call zeroext i1 @xfs_errortag_test(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 2288, i32 noundef 31) #13
  %spec.select = select i1 %call, i32 0, i32 %lru_ref
  %b_lru_ref = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_lru_ref, i32 noundef 4) #13
  %2 = ptrtoint ptr %b_lru_ref to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 %spec.select, ptr %b_lru_ref, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_errortag_test(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_verify_magic(ptr nocapture noundef readonly %bp, i32 noundef %dmagic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %0 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %2 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_mount, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i, align 8
  %6 = trunc i64 %5 to i32
  %7 = lshr i32 %6, 13
  %8 = and i32 %7, 1
  %9 = getelementptr inbounds %struct.xfs_buf_ops, ptr %1, i32 0, i32 1
  %arrayidx = getelementptr [2 x i32], ptr %9, i32 0, i32 %8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not = icmp eq i32 %11, 0
  br i1 %tobool2.not, label %lor.rhs.do.end_crit_edge, label %if.end25, !prof !255

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2308, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end25:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %dmagic)
  %cmp = icmp eq i32 %11, %dmagic
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ %cmp, %if.end25 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_verify_magic16(ptr nocapture noundef readonly %bp, i16 noundef zeroext %dmagic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %0 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %2 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_mount, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i, align 8
  %6 = trunc i64 %5 to i32
  %7 = lshr i32 %6, 13
  %8 = and i32 %7, 1
  %9 = getelementptr inbounds %struct.xfs_buf_ops, ptr %1, i32 0, i32 1
  %arrayidx = getelementptr [2 x i16], ptr %9, i32 0, i32 %8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool2.not = icmp eq i16 %11, 0
  br i1 %tobool2.not, label %lor.rhs.do.end_crit_edge, label %if.end25, !prof !255

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2326, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end25:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %dmagic)
  %cmp = icmp eq i16 %11, %dmagic
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ %cmp, %if.end25 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_xfs_buf_obj_cmp(ptr nocapture noundef readonly %arg, ptr nocapture noundef readonly %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key, align 4
  %b_rhash_key = getelementptr inbounds %struct.xfs_buf, ptr %obj, i32 0, i32 1
  %2 = ptrtoint ptr %b_rhash_key to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %b_rhash_key, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %5)
  %cmp.not = icmp eq i64 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %obj, i32 0, i32 2
  %6 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b_length, align 8
  %bm_len = getelementptr inbounds %struct.xfs_buf_map, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %bm_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bm_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp1.not = icmp eq i32 %7, %9
  br i1 %cmp1.not, label %if.end.cleanup_crit_edge, label %if.then3, !prof !254

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %obj, i32 0, i32 5
  %10 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %b_flags, align 4
  %and = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %cond.false, label %if.then3.cleanup_crit_edge, !prof !255

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.false:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 474) #13
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.then3.cleanup_crit_edge ], [ 1, %cond.false ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_find(ptr noundef %bp, i32 noundef %flags, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_find, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_find, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !304
  %call42 = tail call i32 @__traceiter_xfs_buf_find(ptr noundef null, ptr noundef %bp, i32 noundef %flags, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !305
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_find, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_find, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_find.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 516, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
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
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
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
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !306
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #13
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !307

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #13, !srcloc !308
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !309
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !254

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !310
  %7 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !311
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !312
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !313
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #13
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !255

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #13, !srcloc !314
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !315
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #13, !srcloc !316
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !317
  %3 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !318
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !319
  %2 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_init(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_init, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_init, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !320
  %call42 = tail call i32 @__traceiter_xfs_buf_init(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !321
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_init, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_init, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_init.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_init.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 448, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_buf_free_pages(ptr noundef %bp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %0 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %b_flags, align 4
  %and = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !255

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 278) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %cond.end.if.end_crit_edge, label %xfs_buf_is_vmapped.exit

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

xfs_buf_is_vmapped.exit:                          ; preds = %cond.end
  %b_page_count.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 29
  %4 = ptrtoint ptr %b_page_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %b_page_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp ult i32 %5, 2
  br i1 %cmp.i, label %xfs_buf_is_vmapped.exit.if.end_crit_edge, label %if.then

xfs_buf_is_vmapped.exit.if.end_crit_edge:         ; preds = %xfs_buf_is_vmapped.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %xfs_buf_is_vmapped.exit
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %b_page_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b_page_count.i, align 4
  tail call void @vm_unmap_ram(ptr noundef nonnull %3, i32 noundef %7) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %xfs_buf_is_vmapped.exit.if.end_crit_edge, %cond.end.if.end_crit_edge
  %b_page_count4 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 29
  %8 = ptrtoint ptr %b_page_count4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_page_count4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp45.not = icmp eq i32 %9, 0
  br i1 %cmp45.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %b_pages = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %b_pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_pages, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %i.046
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__free_pages(ptr noundef nonnull %13, i32 noundef 0) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.046, 1
  %14 = ptrtoint ptr %b_page_count4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b_page_count4, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %15, %for.inc.for.end_crit_edge ]
  %16 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %reclaim_state = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 149
  %20 = ptrtoint ptr %reclaim_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reclaim_state, align 16
  %tobool11.not = icmp eq ptr %21, null
  br i1 %tobool11.not, label %for.end.if.end17_crit_edge, label %if.then12

for.end.if.end17_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then12:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add = add i32 %23, %.lcssa
  store i32 %add, ptr %21, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %for.end.if.end17_crit_edge
  %b_pages18 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 22
  %24 = ptrtoint ptr %b_pages18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_pages18, align 4
  %b_page_array = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 23
  %cmp19.not = icmp eq ptr %25, %b_page_array
  br i1 %cmp19.not, label %if.end17.if.end22_crit_edge, label %if.then20

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kvfree(ptr noundef %25) #13
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17.if.end22_crit_edge
  %26 = ptrtoint ptr %b_pages18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %b_pages18, align 4
  %27 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %b_flags, align 4
  %and25 = and i32 %28, -1048577
  store i32 %and25, ptr %b_flags, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @memalloc_retry_wait(i32 noundef %gfp_flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@memalloc_retry_wait, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 2, ptr %5, align 128
  %7 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags1.i, align 4
  %and.i62 = and i32 %12, 269221888
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i62)
  %tobool.not.i = icmp eq i32 %and.i62, 0
  br i1 %tobool.not.i, label %__here.current_gfp_context.exit_crit_edge, label %if.then.i, !prof !254

__here.current_gfp_context.exit_crit_edge:        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  br label %current_gfp_context.exit

if.then.i:                                        ; preds = %__here
  %and4.i = and i32 %12, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %and7.i = and i32 %gfp_flags, -193
  br label %if.end12.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %and8.i = and i32 %12, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %and11.i = and i32 %gfp_flags, -129
  %spec.select.i = select i1 %tobool9.not.i, i32 %gfp_flags, i32 %and11.i
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.then6.i
  %flags.addr.0.i = phi i32 [ %and7.i, %if.then6.i ], [ %spec.select.i, %if.else.i ]
  %and13.i = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %and16.i = and i32 %flags.addr.0.i, -9
  %spec.select25.i = select i1 %tobool14.not.i, i32 %flags.addr.0.i, i32 %and16.i
  br label %current_gfp_context.exit

current_gfp_context.exit:                         ; preds = %if.end12.i, %__here.current_gfp_context.exit_crit_edge
  %flags.addr.1.i = phi i32 [ %gfp_flags, %__here.current_gfp_context.exit_crit_edge ], [ %spec.select25.i, %if.end12.i ]
  %13 = and i32 %flags.addr.1.i, 66560
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %13)
  %14 = icmp eq i32 %13, 1024
  %. = select i1 %14, i32 1, i32 2
  %call56 = tail call i32 @io_schedule_timeout(i32 noundef %.) #13
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__alloc_pages_bulk(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_unmap_ram(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_free(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_free, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_free, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !322
  %call42 = tail call i32 @__traceiter_xfs_buf_free(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !323
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_free, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_free, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_free.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_free.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 449, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
declare dso_local i32 @__traceiter_xfs_buf_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_map_ram(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_unmap_aliases() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_get(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__xfs_buf_submit(ptr noundef %bp, i1 noundef zeroext %wait) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call fastcc void @trace_xfs_buf_submit(ptr noundef %bp, i32 noundef %1)
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %2 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_flags, align 4
  %and = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.false, !prof !254

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1594) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %4 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_mount, align 4
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 66
  %6 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %m_opstate.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @xfs_buf_ioend_fail(ptr noundef %bp)
  br label %cleanup

if.end:                                           ; preds = %cond.end
  tail call fastcc void @trace_xfs_buf_hold(ptr noundef %bp, i32 noundef %1) #13
  %b_hold.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_hold.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_hold.i, i32 1, i32 3, i32 1) #13
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_hold.i, ptr %b_hold.i, i32 1, ptr elementtype(i32) %b_hold.i) #13, !srcloc !263
  %10 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %b_flags, align 4
  %and5 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @xfs_buf_wait_unpin(ptr noundef %bp)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %b_io_error = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 10
  %12 = ptrtoint ptr %b_io_error to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %b_io_error, align 8
  %b_io_remaining = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 28
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_io_remaining, i32 noundef 4) #13
  %13 = ptrtoint ptr %b_io_remaining to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 1, ptr %b_io_remaining, align 4
  %14 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b_flags, align 4
  %16 = and i32 %15, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %16)
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %cond.end.i, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

cond.end.i:                                       ; preds = %if.end8
  %b_lock.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %b_lock.i) #13
  %b_state.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 9
  %18 = ptrtoint ptr %b_state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %b_state.i, align 4
  %and6.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %cond.end.i.if.end10.i_crit_edge

cond.end.i.if.end10.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.then8.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %or.i = or i32 %19, 2
  %20 = ptrtoint ptr %b_state.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i, ptr %b_state.i, align 4
  %b_target.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 15
  %21 = ptrtoint ptr %b_target.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_target.i, align 8
  %bt_io_count.i = getelementptr inbounds %struct.xfs_buftarg, ptr %22, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %23 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %bt_io_count.i, i64 noundef 1, i32 noundef %23) #13
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %cond.end.i.if.end10.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %b_lock.i) #13
  br label %if.end13

if.end13:                                         ; preds = %if.end10.i, %if.end8.if.end13_crit_edge
  tail call fastcc void @_xfs_buf_ioapply(ptr noundef %bp)
  %call.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_io_remaining, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !277
  tail call void @llvm.prefetch.p0(ptr %b_io_remaining, i32 1, i32 3, i32 1) #13
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_io_remaining, ptr %b_io_remaining, i32 1, ptr elementtype(i32) %b_io_remaining) #13, !srcloc !278
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !279
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then17, label %if.end13.if.end24_crit_edge

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then17:                                        ; preds = %if.end13
  %b_error = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 31
  %25 = ptrtoint ptr %b_error to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %b_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool18.not = icmp eq i32 %26, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.then17.if.then22_crit_edge

if.then17.if.then22_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

lor.lhs.false:                                    ; preds = %if.then17
  %27 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %b_flags, align 4
  %and20 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %lor.lhs.false.if.then22_crit_edge, label %if.else

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %if.then17.if.then22_crit_edge
  tail call fastcc void @xfs_buf_ioend(ptr noundef %bp)
  br label %if.end24

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %b_ioend_work.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 17
  tail call void @__init_work(ptr noundef %b_ioend_work.i, i32 noundef 0) #13
  %29 = ptrtoint ptr %b_ioend_work.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -64, ptr %b_ioend_work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 17, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @xfs_buf_ioend_async.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry4.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 17, i32 1
  %30 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 17, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %entry4.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 17, i32 2
  %32 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @xfs_buf_ioend_work, ptr %func.i, align 4
  %33 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_mount, align 4
  %m_buf_workqueue.i = getelementptr inbounds %struct.xfs_mount, ptr %34, i32 0, i32 20
  %35 = ptrtoint ptr %m_buf_workqueue.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %m_buf_workqueue.i, align 8
  %call.i.i48 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %b_ioend_work.i) #13
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then22, %if.end13.if.end24_crit_edge
  br i1 %wait, label %if.then26, label %if.end24.if.end28_crit_edge

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then26:                                        ; preds = %if.end24
  %37 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %b_flags, align 4
  %and.i50 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50)
  %tobool.not.i51 = icmp eq i32 %and.i50, 0
  br i1 %tobool.not.i51, label %if.then26.xfs_buf_iowait.exit_crit_edge, label %cond.false.i52, !prof !254

if.then26.xfs_buf_iowait.exit_crit_edge:          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_buf_iowait.exit

cond.false.i52:                                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.1, i32 noundef 1570) #13
  br label %xfs_buf_iowait.exit

xfs_buf_iowait.exit:                              ; preds = %cond.false.i52, %if.then26.xfs_buf_iowait.exit_crit_edge
  tail call fastcc void @trace_xfs_buf_iowait(ptr noundef %bp, i32 noundef %1) #13
  %b_iowait.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 18
  tail call void @wait_for_completion(ptr noundef %b_iowait.i) #13
  tail call fastcc void @trace_xfs_buf_iowait_done(ptr noundef %bp, i32 noundef %1) #13
  %b_error.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 31
  %39 = ptrtoint ptr %b_error.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %b_error.i, align 4
  br label %if.end28

if.end28:                                         ; preds = %xfs_buf_iowait.exit, %if.end24.if.end28_crit_edge
  %error.0 = phi i32 [ %40, %xfs_buf_iowait.exit ], [ 0, %if.end24.if.end28_crit_edge ]
  tail call void @xfs_buf_rele(ptr noundef %bp)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ %error.0, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_submit(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_submit, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_submit, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !324
  %call42 = tail call i32 @__traceiter_xfs_buf_submit(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !325
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_submit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_submit, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_submit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_submit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 453, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_buf_wait_unpin(ptr noundef %bp) #3 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %b_pin_count = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 27
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_pin_count, i32 noundef 4) #13
  %13 = ptrtoint ptr %b_pin_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %b_pin_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_waiters = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 11
  call void @add_wait_queue(ptr noundef %b_waiters, ptr noundef nonnull %wait) #13
  br label %__here

__here:                                           ; preds = %if.end70, %if.end
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 212
  %17 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 ptrtoint (ptr blockaddress(@xfs_buf_wait_unpin, %__here) to i32), ptr %task_state_change, align 4
  %18 = load ptr, ptr %task, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 2, ptr %18, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !326
  %call.i.i159 = call zeroext i1 @__kasan_check_read(ptr noundef %b_pin_count, i32 noundef 4) #13
  %20 = ptrtoint ptr %b_pin_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %b_pin_count, align 4
  %cmp68 = icmp eq i32 %21, 0
  br i1 %cmp68, label %for.end, label %if.end70

if.end70:                                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  call void @io_schedule() #13
  br label %__here

for.end:                                          ; preds = %__here
  call void @remove_wait_queue(ptr noundef %b_waiters, ptr noundef nonnull %wait) #13
  br label %__here122

__here122:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %task_state_change126 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 212
  %24 = ptrtoint ptr %task_state_change126 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 ptrtoint (ptr blockaddress(@xfs_buf_wait_unpin, %__here122) to i32), ptr %task_state_change126, align 4
  %25 = load ptr, ptr %task, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %25, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !327
  br label %cleanup

cleanup:                                          ; preds = %__here122, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_xfs_buf_ioapply(ptr noundef %bp) unnamed_addr #3 align 64 {
entry:
  %plug = alloca %struct.blk_plug, align 4
  %offset = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #13
  %0 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #13
  %b_error = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 31
  %1 = ptrtoint ptr %b_error to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %b_error, align 4
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %2 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else14, label %if.then

if.then:                                          ; preds = %entry
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %4 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_ops, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %verify_write = getelementptr inbounds %struct.xfs_buf_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %verify_write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %verify_write, align 4
  tail call void %7(ptr noundef %bp) #13
  %8 = ptrtoint ptr %b_error to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.then2.if.end21_crit_edge, label %if.then6

if.then2.if.end21_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %10 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_mount, align 4
  tail call void @xfs_do_force_shutdown(ptr noundef %11, i32 noundef 8, ptr noundef nonnull @.str.1, i32 noundef 1515) #13
  br label %cleanup

if.else:                                          ; preds = %if.then
  %b_rhash_key = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 1
  %12 = ptrtoint ptr %b_rhash_key to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %b_rhash_key, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %13)
  %cmp.not = icmp eq i64 %13, -1
  br i1 %cmp.not, label %if.else.if.end21_crit_edge, label %if.then7

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then7:                                         ; preds = %if.else
  %b_mount8 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %14 = ptrtoint ptr %b_mount8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_mount8, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %15, i32 0, i32 61
  %16 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.then7.if.end21_crit_edge, label %if.then9

if.then7.if.end21_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %18 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_maps.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %19, align 8
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %22 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %b_length, align 8
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %15, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__._xfs_buf_ioapply, i64 noundef %21, i32 noundef %23) #13
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %24 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_addr, align 4
  tail call void @xfs_hex_dump(ptr noundef %25, i32 noundef 128) #13
  tail call void @dump_stack() #18
  br label %if.end21

if.else14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %and16 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %spec.select = select i1 %tobool17.not, i32 4096, i32 528384
  br label %if.end21

if.end21:                                         ; preds = %if.else14, %if.then9, %if.then7.if.end21_crit_edge, %if.else.if.end21_crit_edge, %if.then2.if.end21_crit_edge
  %op.0 = phi i32 [ 4097, %if.then2.if.end21_crit_edge ], [ 4097, %if.else.if.end21_crit_edge ], [ 4097, %if.then9 ], [ 4097, %if.then7.if.end21_crit_edge ], [ %spec.select, %if.else14 ]
  %b_offset = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 30
  %26 = ptrtoint ptr %b_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %b_offset, align 8
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %offset, align 4
  %b_length25 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %29 = ptrtoint ptr %b_length25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %b_length25, align 8
  %shl = shl i32 %30, 9
  %31 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shl, ptr %size, align 4
  call void @blk_start_plug(ptr noundef nonnull %plug) #13
  %b_map_count = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 26
  %32 = ptrtoint ptr %b_map_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %b_map_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp2662 = icmp sgt i32 %33, 0
  br i1 %cmp2662, label %if.end21.for.body_crit_edge, label %if.end21.for.end_crit_edge

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  br label %for.body

for.cond:                                         ; preds = %if.end31
  %inc = add nuw nsw i32 %i.063, 1
  %34 = ptrtoint ptr %b_map_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %b_map_count, align 8
  %cmp26 = icmp slt i32 %inc, %35
  br i1 %cmp26, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end21.for.body_crit_edge
  %i.063 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end21.for.body_crit_edge ]
  call fastcc void @xfs_buf_ioapply_map(ptr noundef %bp, i32 noundef %i.063, ptr noundef nonnull %offset, ptr noundef nonnull %size, i32 noundef %op.0)
  %36 = ptrtoint ptr %b_error to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %b_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool29.not = icmp eq i32 %37, 0
  br i1 %tobool29.not, label %if.end31, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end31:                                         ; preds = %for.body
  %38 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp32 = icmp slt i32 %39, 1
  br i1 %cmp32, label %if.end31.for.end_crit_edge, label %for.cond

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end31.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %if.end21.for.end_crit_edge
  call void @blk_finish_plug(ptr noundef nonnull %plug) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_submit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_hex_dump(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_buf_ioapply_map(ptr noundef %bp, i32 noundef %map, ptr nocapture noundef %buf_offset, ptr nocapture noundef %count, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_page_count = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 29
  %0 = ptrtoint ptr %b_page_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %b_page_count, align 4
  %b_maps = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %2 = ptrtoint ptr %b_maps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_maps, align 8
  %arrayidx = getelementptr %struct.xfs_buf_map, ptr %3, i32 %map
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx, align 8
  %6 = ptrtoint ptr %buf_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %7)
  %cmp99 = icmp ugt i32 %7, 4095
  %8 = add i32 %7, -4096
  %9 = lshr i32 %8, 12
  %10 = add nuw nsw i32 %9, 1
  %11 = and i32 %7, 4095
  %page_index.0.lcssa = select i1 %cmp99, i32 %10, i32 0
  %bm_len = getelementptr %struct.xfs_buf_map, ptr %3, i32 %map, i32 1
  %12 = ptrtoint ptr %bm_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bm_len, align 8
  %shl = shl i32 %13, 9
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 4
  %16 = tail call i32 @llvm.smin.i32(i32 %shl, i32 %15)
  %sub4 = sub i32 %15, %16
  %17 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub4, ptr %count, align 4
  %18 = ptrtoint ptr %buf_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_offset, align 4
  %add = add i32 %19, %16
  store i32 %add, ptr %buf_offset, align 4
  %b_io_remaining = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 28
  %b_target = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 15
  %b_pages = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 22
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  br label %next_chunk

next_chunk:                                       ; preds = %if.end33.next_chunk_crit_edge, %entry
  %sector.0 = phi i64 [ %5, %entry ], [ %sector.1.lcssa, %if.end33.next_chunk_crit_edge ]
  %size.0 = phi i32 [ %16, %entry ], [ %size.1.lcssa, %if.end33.next_chunk_crit_edge ]
  %offset.1 = phi i32 [ %11, %entry ], [ %offset.2.lcssa, %if.end33.next_chunk_crit_edge ]
  %total_nr_pages.0 = phi i32 [ %1, %entry ], [ %total_nr_pages.1.lcssa, %if.end33.next_chunk_crit_edge ]
  %page_index.1 = phi i32 [ %page_index.0.lcssa, %entry ], [ %page_index.2.lcssa, %if.end33.next_chunk_crit_edge ]
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_io_remaining, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_io_remaining, i32 1, i32 3, i32 1) #13
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_io_remaining, ptr %b_io_remaining, i32 1, ptr elementtype(i32) %b_io_remaining) #13, !srcloc !263
  %21 = tail call i32 @llvm.umin.i32(i32 %total_nr_pages.0, i32 256) #13
  %conv = trunc i32 %21 to i16
  %call.i = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext %conv, ptr noundef nonnull @fs_bio_set) #13
  %22 = ptrtoint ptr %b_target to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_target, align 8
  %bt_bdev = getelementptr inbounds %struct.xfs_buftarg, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %bt_bdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bt_bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %27, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %29, %25
  br i1 %cmp.not.i, label %next_chunk.bio_set_dev.exit_crit_edge, label %if.then.i

next_chunk.bio_set_dev.exit_crit_edge:            ; preds = %next_chunk
  call void @__sanitizer_cov_trace_pc() #15
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %next_chunk
  call void @__sanitizer_cov_trace_pc() #15
  %conv1.i8.i = and i16 %27, -2177
  %30 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %next_chunk.bio_set_dev.exit_crit_edge
  %31 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %25, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i) #13
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 8
  %32 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %sector.0, ptr %bi_iter, align 8
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 10
  %33 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @xfs_buf_bio_end_io, ptr %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 11
  %34 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %bp, ptr %bi_private, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 2
  %35 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %op, ptr %bi_opf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0)
  %tobool.not103 = icmp eq i32 %size.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool6.not104 = icmp eq i32 %21, 0
  %or.cond105 = select i1 %tobool.not103, i1 true, i1 %tobool6.not104
  br i1 %or.cond105, label %bio_set_dev.exit.for.end_crit_edge, label %bio_set_dev.exit.for.body_crit_edge

bio_set_dev.exit.for.body_crit_edge:              ; preds = %bio_set_dev.exit
  br label %for.body

bio_set_dev.exit.for.end_crit_edge:               ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %bio_set_dev.exit.for.body_crit_edge
  %page_index.2111 = phi i32 [ %inc23, %for.inc.for.body_crit_edge ], [ %page_index.1, %bio_set_dev.exit.for.body_crit_edge ]
  %total_nr_pages.1110 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %total_nr_pages.0, %bio_set_dev.exit.for.body_crit_edge ]
  %offset.2109 = phi i32 [ 0, %for.inc.for.body_crit_edge ], [ %offset.1, %bio_set_dev.exit.for.body_crit_edge ]
  %size.1108 = phi i32 [ %sub20, %for.inc.for.body_crit_edge ], [ %size.0, %bio_set_dev.exit.for.body_crit_edge ]
  %sector.1107 = phi i64 [ %add19, %for.inc.for.body_crit_edge ], [ %sector.0, %bio_set_dev.exit.for.body_crit_edge ]
  %nr_pages.0106 = phi i32 [ %dec22, %for.inc.for.body_crit_edge ], [ %21, %bio_set_dev.exit.for.body_crit_edge ]
  %sub7 = sub i32 4096, %offset.2109
  %36 = tail call i32 @llvm.smin.i32(i32 %sub7, i32 %size.1108)
  %37 = ptrtoint ptr %b_pages to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %b_pages, align 4
  %arrayidx10 = getelementptr ptr, ptr %38, i32 %page_index.2111
  %39 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx10, align 4
  %call11 = tail call i32 @bio_add_page(ptr noundef %call.i, ptr noundef %40, i32 noundef %36, i32 noundef %offset.2109) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %36)
  %cmp12 = icmp slt i32 %call11, %36
  br i1 %cmp12, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %for.body
  %conv16 = sext i32 %36 to i64
  %sub18 = add nsw i64 %conv16, 511
  %shr = lshr i64 %sub18, 9
  %add19 = add i64 %shr, %sector.1107
  %sub20 = sub i32 %size.1108, %36
  %dec = add i32 %total_nr_pages.1110, -1
  %dec22 = add nsw i32 %nr_pages.0106, -1
  %inc23 = add i32 %page_index.2111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub20)
  %tobool.not = icmp eq i32 %sub20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec22)
  %tobool6.not = icmp eq i32 %dec22, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %bio_set_dev.exit.for.end_crit_edge
  %sector.1.lcssa = phi i64 [ %sector.0, %bio_set_dev.exit.for.end_crit_edge ], [ %sector.1107, %for.body.for.end_crit_edge ], [ %add19, %for.inc.for.end_crit_edge ]
  %size.1.lcssa = phi i32 [ %size.0, %bio_set_dev.exit.for.end_crit_edge ], [ %size.1108, %for.body.for.end_crit_edge ], [ %sub20, %for.inc.for.end_crit_edge ]
  %offset.2.lcssa = phi i32 [ %offset.1, %bio_set_dev.exit.for.end_crit_edge ], [ %offset.2109, %for.body.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %total_nr_pages.1.lcssa = phi i32 [ %total_nr_pages.0, %bio_set_dev.exit.for.end_crit_edge ], [ %total_nr_pages.1110, %for.body.for.end_crit_edge ], [ %dec, %for.inc.for.end_crit_edge ]
  %page_index.2.lcssa = phi i32 [ %page_index.1, %bio_set_dev.exit.for.end_crit_edge ], [ %page_index.2111, %for.body.for.end_crit_edge ], [ %inc23, %for.inc.for.end_crit_edge ]
  %bi_size = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 8, i32 1
  %41 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool25.not = icmp eq i32 %42, 0
  br i1 %tobool25.not, label %if.else, label %if.then28, !prof !255

if.then28:                                        ; preds = %for.end
  %43 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %b_addr.i, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %if.then28.if.end33_crit_edge, label %xfs_buf_is_vmapped.exit

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

xfs_buf_is_vmapped.exit:                          ; preds = %if.then28
  %45 = ptrtoint ptr %b_page_count to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %b_page_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp.i = icmp ult i32 %46, 2
  br i1 %cmp.i, label %xfs_buf_is_vmapped.exit.if.end33_crit_edge, label %if.then31

xfs_buf_is_vmapped.exit.if.end33_crit_edge:       ; preds = %xfs_buf_is_vmapped.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then31:                                        ; preds = %xfs_buf_is_vmapped.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %47 = load i32, ptr @cacheid, align 4
  %and2.i.i = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool2.not.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool2.not.i, label %if.then31.if.end33_crit_edge, label %if.then.i85

if.then31.if.end33_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then.i85:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %b_page_count to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %b_page_count, align 4
  %mul.i = shl i32 %49, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %50(ptr noundef nonnull %44, i32 noundef %mul.i) #13
  br label %if.end33

if.end33:                                         ; preds = %if.then.i85, %if.then31.if.end33_crit_edge, %xfs_buf_is_vmapped.exit.if.end33_crit_edge, %if.then28.if.end33_crit_edge
  tail call void @submit_bio(ptr noundef %call.i) #13
  %tobool34.not = icmp eq i32 %size.1.lcssa, 0
  br i1 %tobool34.not, label %if.end33.if.end39_crit_edge, label %if.end33.next_chunk_crit_edge

if.end33.next_chunk_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_chunk

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.else:                                          ; preds = %for.end
  %call.i.i83 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_io_remaining, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_io_remaining, i32 1, i32 3, i32 1) #13
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_io_remaining, ptr %b_io_remaining, i32 1, ptr elementtype(i32) %b_io_remaining) #13, !srcloc !256
  br label %__here

__here:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !328
  %b_error.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 31
  %52 = ptrtoint ptr %b_error.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -5, ptr %b_error.i, align 4
  tail call fastcc void @trace_xfs_buf_ioerror(ptr noundef %bp, i32 noundef -5, ptr noundef blockaddress(@xfs_buf_ioapply_map, %__here)) #13
  tail call void @bio_put(ptr noundef %call.i) #13
  br label %if.end39

if.end39:                                         ; preds = %__here, %if.end33.if.end39_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_buf_bio_end_io(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.then10_crit_edge

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

land.lhs.true:                                    ; preds = %entry
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %b_flags, align 4
  %6 = and i32 %5, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %6)
  %.not = icmp eq i32 %6, 18
  br i1 %.not, label %land.lhs.true6, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_mount, align 4
  %call = tail call zeroext i1 @xfs_errortag_test(ptr noundef %8, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 1386, i32 noundef 35) #13
  br i1 %call, label %if.then, label %land.lhs.true6.if.end_crit_edge

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 10, ptr %bi_status, align 2
  br label %if.then10

if.end:                                           ; preds = %land.lhs.true6.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %10 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %10)
  %.pr = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool9.not = icmp eq i8 %.pr, 0
  br i1 %tobool9.not, label %if.end.if.end28_crit_edge, label %if.end.if.then10_crit_edge

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then10:                                        ; preds = %if.end.if.then10_crit_edge, %if.then, %entry.if.then10_crit_edge
  %11 = phi i8 [ %.pr, %if.end.if.then10_crit_edge ], [ %3, %entry.if.then10_crit_edge ], [ 10, %if.then ]
  %call12 = tail call i32 @blk_status_to_errno(i8 noundef zeroext %11) #13
  %b_io_error = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 10
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_io_error, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !329
  tail call void @llvm.prefetch.p0(ptr %b_io_error, i32 1, i32 3, i32 1) #13
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then10
  %12 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %b_io_error, i32 0, i32 %call12) #13, !srcloc !330
  %asmresult.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !331
  br label %if.end28

if.end28:                                         ; preds = %__cmpxchg.exit, %if.end.if.end28_crit_edge
  %b_error = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 31
  %13 = ptrtoint ptr %b_error to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %b_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool29.not = icmp eq i32 %14, 0
  br i1 %tobool29.not, label %land.lhs.true30, label %if.end28.if.end39_crit_edge

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

land.lhs.true30:                                  ; preds = %if.end28
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_addr.i, align 4
  %tobool.not.i60 = icmp eq ptr %16, null
  br i1 %tobool.not.i60, label %land.lhs.true30.if.end39_crit_edge, label %xfs_buf_is_vmapped.exit

land.lhs.true30.if.end39_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

xfs_buf_is_vmapped.exit:                          ; preds = %land.lhs.true30
  %b_page_count.i = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 29
  %17 = ptrtoint ptr %b_page_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %b_page_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i = icmp ult i32 %18, 2
  br i1 %cmp.i, label %xfs_buf_is_vmapped.exit.if.end39_crit_edge, label %land.lhs.true33

xfs_buf_is_vmapped.exit.if.end39_crit_edge:       ; preds = %xfs_buf_is_vmapped.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

land.lhs.true33:                                  ; preds = %xfs_buf_is_vmapped.exit
  %b_flags34 = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %b_flags34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %b_flags34, align 4
  %and35 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %land.lhs.true33.if.end39_crit_edge, label %if.then37

land.lhs.true33.if.end39_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then37:                                        ; preds = %land.lhs.true33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %21 = load i32, ptr @cacheid, align 4
  %and2.i.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool2.not.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool2.not.i, label %if.then37.if.end39_crit_edge, label %if.then.i

if.then37.if.end39_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then.i:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %b_page_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %b_page_count.i, align 4
  %mul.i = shl i32 %23, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %24(ptr noundef nonnull %16, i32 noundef %mul.i) #13
  br label %if.end39

if.end39:                                         ; preds = %if.then.i, %if.then37.if.end39_crit_edge, %land.lhs.true33.if.end39_crit_edge, %xfs_buf_is_vmapped.exit.if.end39_crit_edge, %land.lhs.true30.if.end39_crit_edge, %if.end28.if.end39_crit_edge
  %b_io_remaining = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 28
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_io_remaining, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !277
  tail call void @llvm.prefetch.p0(ptr %b_io_remaining, i32 1, i32 3, i32 1) #13
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_io_remaining, ptr %b_io_remaining, i32 1, ptr elementtype(i32) %b_io_remaining) #13, !srcloc !278
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !279
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then42, label %if.end39.if.end43_crit_edge

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %b_ioend_work.i = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 17
  tail call void @__init_work(ptr noundef %b_ioend_work.i, i32 noundef 0) #13
  %26 = ptrtoint ptr %b_ioend_work.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %b_ioend_work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 17, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @xfs_buf_ioend_async.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry4.i = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 17, i32 1
  %27 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 17, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry4.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 17, i32 2
  %29 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @xfs_buf_ioend_work, ptr %func.i, align 4
  %b_mount.i = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 14
  %30 = ptrtoint ptr %b_mount.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_mount.i, align 4
  %m_buf_workqueue.i = getelementptr inbounds %struct.xfs_mount, ptr %31, i32 0, i32 20
  %32 = ptrtoint ptr %m_buf_workqueue.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %m_buf_workqueue.i, align 8
  %call.i.i62 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %b_ioend_work.i) #13
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end39.if.end43_crit_edge
  tail call void @bio_put(ptr noundef %bio) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_buf_ioend_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -224
  tail call fastcc void @xfs_buf_ioend(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_get_uncached(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_hold(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_rele(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_trylock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_trylock_fail(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_lock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_lock_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_unlock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_ioerror(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_iodone(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_iodone, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_iodone, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !332
  %call42 = tail call i32 @__traceiter_xfs_buf_iodone(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !333
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_iodone, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_iodone, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_iodone.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_iodone.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 452, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
define internal fastcc zeroext i1 @xfs_buf_ioend_handle_error(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %2 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %m_opstate.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.end, label %entry.out_stale_crit_edge

entry.out_stale_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_stale

if.end:                                           ; preds = %entry
  tail call fastcc void @xfs_buf_ioerror_alert_ratelimited(ptr noundef %bp)
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %5 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %b_flags, align 4
  %and = and i32 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @xfs_do_force_shutdown(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 1193) #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %and4 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end2.out_stale_crit_edge, label %if.end7

if.end2.out_stale_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_stale

if.end7:                                          ; preds = %if.end2
  %7 = tail call ptr @llvm.returnaddress(i32 0)
  %8 = ptrtoint ptr %7 to i32
  tail call fastcc void @trace_xfs_buf_iodone_async(ptr noundef %bp, i32 noundef %8)
  %b_error = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 31
  %9 = ptrtoint ptr %b_error to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %b_error, align 4
  %call8 = tail call ptr @xfs_error_get_cfg(ptr noundef %1, i32 noundef 0, i32 noundef %10) #13
  %b_last_error = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 34
  %11 = ptrtoint ptr %b_last_error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %b_last_error, align 8
  %13 = ptrtoint ptr %b_error to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %b_error, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not = icmp eq i32 %12, %14
  br i1 %cmp.not, label %lor.lhs.false, label %if.end7.if.then13_crit_edge

if.end7.if.then13_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end7
  %15 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %b_flags, align 4
  %and11 = and i32 %16, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %lor.lhs.false.if.then13_crit_edge, label %if.end21

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end7.if.then13_crit_edge
  %17 = ptrtoint ptr %b_last_error to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %b_last_error, align 8
  %retry_timeout = getelementptr inbounds %struct.xfs_error_cfg, ptr %call8, i32 0, i32 2
  %18 = ptrtoint ptr %retry_timeout to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %retry_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp16.not = icmp eq i32 %19, -1
  br i1 %cmp16.not, label %if.then13.__here40_crit_edge, label %land.lhs.true

if.then13.__here40_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here40

land.lhs.true:                                    ; preds = %if.then13
  %b_first_retry_time = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 33
  %20 = ptrtoint ptr %b_first_retry_time to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %b_first_retry_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool17.not = icmp eq i32 %21, 0
  br i1 %tobool17.not, label %if.then18, label %land.lhs.true.__here40_crit_edge

land.lhs.true.__here40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here40

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %23 = ptrtoint ptr %b_first_retry_time to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %b_first_retry_time, align 4
  br label %__here40

if.end21:                                         ; preds = %lor.lhs.false
  %24 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_mount, align 4
  %max_retries.i = getelementptr inbounds %struct.xfs_error_cfg, ptr %call8, i32 0, i32 1
  %26 = ptrtoint ptr %max_retries.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_retries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp.not.i = icmp eq i32 %27, -1
  br i1 %cmp.not.i, label %if.end21.if.end.i_crit_edge, label %land.lhs.true.i

if.end21.if.end.i_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end21
  %b_retries.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 32
  %28 = ptrtoint ptr %b_retries.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %b_retries.i, align 8
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %b_retries.i, align 8
  %30 = ptrtoint ptr %max_retries.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_retries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %31)
  %cmp2.i = icmp sgt i32 %inc.i, %31
  br i1 %cmp2.i, label %land.lhs.true.i.if.then23_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i.if.then23_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end21.if.end.i_crit_edge
  %retry_timeout.i = getelementptr inbounds %struct.xfs_error_cfg, ptr %call8, i32 0, i32 2
  %32 = ptrtoint ptr %retry_timeout.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %retry_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp3.not.i = icmp eq i32 %33, -1
  br i1 %cmp3.not.i, label %if.end.i.if.end8.i_crit_edge, label %land.lhs.true4.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

land.lhs.true4.i:                                 ; preds = %if.end.i
  %b_first_retry_time.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 33
  %34 = ptrtoint ptr %b_first_retry_time.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %b_first_retry_time.i, align 4
  %add.i = add i32 %35, %33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp6.i = icmp slt i32 %sub.i, 0
  br i1 %cmp6.i, label %land.lhs.true4.i.if.then23_crit_edge, label %land.lhs.true4.i.if.end8.i_crit_edge

land.lhs.true4.i.if.end8.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

land.lhs.true4.i.if.then23_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23

if.end8.i:                                        ; preds = %land.lhs.true4.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %m_opstate.i.i = getelementptr inbounds %struct.xfs_mount, ptr %25, i32 0, i32 66
  %37 = ptrtoint ptr %m_opstate.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %m_opstate.i.i, align 4
  %and1.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end8.i.if.end24_crit_edge, label %land.lhs.true9.i

if.end8.i.if.end24_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

land.lhs.true9.i:                                 ; preds = %if.end8.i
  %m_fail_unmount.i = getelementptr inbounds %struct.xfs_mount, ptr %25, i32 0, i32 68
  %39 = ptrtoint ptr %m_fail_unmount.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %m_fail_unmount.i, align 1, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %land.lhs.true9.i.if.end24_crit_edge, label %land.lhs.true9.i.if.then23_crit_edge

land.lhs.true9.i.if.then23_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23

land.lhs.true9.i.if.end24_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then23:                                        ; preds = %land.lhs.true9.i.if.then23_crit_edge, %land.lhs.true4.i.if.then23_crit_edge, %land.lhs.true.i.if.then23_crit_edge
  tail call void @xfs_do_force_shutdown(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 1220) #13
  br label %out_stale

if.end24:                                         ; preds = %land.lhs.true9.i.if.end24_crit_edge, %if.end8.i.if.end24_crit_edge
  %and26 = and i32 %16, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @xfs_buf_inode_io_fail(ptr noundef %bp) #13
  br label %__here

if.else:                                          ; preds = %if.end24
  %and30 = and i32 %16, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else33, label %if.then32

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @xfs_buf_dquot_io_fail(ptr noundef %bp) #13
  br label %__here

if.else33:                                        ; preds = %if.else
  %b_li_list = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 20
  %41 = ptrtoint ptr %b_li_list to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %b_li_list, align 4
  %cmp.i.not = icmp eq ptr %42, %b_li_list
  br i1 %cmp.i.not, label %if.else33.__here_crit_edge, label %cond.false, !prof !254

if.else33.__here_crit_edge:                       ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

cond.false:                                       ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.1, i32 noundef 1230) #13
  br label %__here

__here:                                           ; preds = %cond.false, %if.else33.__here_crit_edge, %if.then32, %if.then28
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !334
  %43 = ptrtoint ptr %b_error to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %b_error, align 4
  tail call fastcc void @trace_xfs_buf_ioerror(ptr noundef %bp, i32 noundef 0, ptr noundef blockaddress(@xfs_buf_ioend_handle_error, %__here)) #13
  tail call fastcc void @xfs_buf_relse(ptr noundef %bp)
  br label %cleanup

__here40:                                         ; preds = %if.then18, %land.lhs.true.__here40_crit_edge, %if.then13.__here40_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !335
  %44 = ptrtoint ptr %b_error to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %b_error, align 4
  tail call fastcc void @trace_xfs_buf_ioerror(ptr noundef %bp, i32 noundef 0, ptr noundef blockaddress(@xfs_buf_ioend_handle_error, %__here40)) #13
  %45 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %b_flags, align 4
  %or = or i32 %46, 160
  store i32 %or, ptr %b_flags, align 4
  %and.i = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i81 = icmp eq i32 %and.i, 0
  %call.i = tail call fastcc i32 @__xfs_buf_submit(ptr noundef %bp, i1 noundef zeroext %tobool.not.i81) #13
  br label %cleanup

out_stale:                                        ; preds = %if.then23, %if.end2.out_stale_crit_edge, %entry.out_stale_crit_edge
  tail call void @xfs_buf_stale(ptr noundef %bp)
  %b_flags44 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %47 = ptrtoint ptr %b_flags44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %b_flags44, align 4
  %or45 = and i32 %48, -35
  %and47 = or i32 %or45, 32
  store i32 %and47, ptr %b_flags44, align 4
  %49 = tail call ptr @llvm.returnaddress(i32 0)
  %50 = ptrtoint ptr %49 to i32
  tail call fastcc void @trace_xfs_buf_error_relse(ptr noundef %bp, i32 noundef %50)
  br label %cleanup

cleanup:                                          ; preds = %out_stale, %__here40, %__here, %if.then1
  %retval.0 = phi i1 [ false, %out_stale ], [ false, %if.then1 ], [ true, %__here40 ], [ true, %__here ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_item_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_inode_iodone(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_dquot_iodone(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_iodone(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_buf_ioerror_alert_ratelimited(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_target = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 15
  %0 = ptrtoint ptr %b_target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_target, align 8
  %2 = load ptr, ptr @xfs_buf_ioerror_alert_ratelimited.lasttarg, align 4
  %cmp.not = icmp eq ptr %1, %2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr @xfs_buf_ioerror_alert_ratelimited.lasttime, align 4
  %add = add i32 %3, 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp1 = icmp slt i32 %sub, 0
  br i1 %cmp1, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  store i32 %5, ptr @xfs_buf_ioerror_alert_ratelimited.lasttime, align 4
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !336
  %b_maps.i.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %6 = ptrtoint ptr %b_maps.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_maps.i.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %10 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %b_length.i, align 8
  %b_error.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 31
  %12 = ptrtoint ptr %b_error.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %b_error.i, align 4
  %sub.i = sub i32 0, %13
  tail call void (ptr, ptr, ptr, ...) @xfs_buf_alert_ratelimited(ptr noundef %bp, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef blockaddress(@xfs_buf_ioerror_alert_ratelimited, %__here), i64 noundef %9, i32 noundef %11, i32 noundef %sub.i) #13
  br label %if.end

if.end:                                           ; preds = %__here, %lor.lhs.false.if.end_crit_edge
  %14 = ptrtoint ptr %b_target to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_target, align 8
  store ptr %15, ptr @xfs_buf_ioerror_alert_ratelimited.lasttarg, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_iodone_async(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_iodone_async, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_iodone_async, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !337
  %call42 = tail call i32 @__traceiter_xfs_buf_iodone_async(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !338
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_iodone_async, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_iodone_async, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_iodone_async.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_iodone_async.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 467, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
declare dso_local ptr @xfs_error_get_cfg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_inode_io_fail(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_dquot_io_fail(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_error_relse(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_error_relse, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_error_relse, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !339
  %call42 = tail call i32 @__traceiter_xfs_buf_error_relse(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !340
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_error_relse, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_error_relse, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_error_relse.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_error_relse.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 468, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
declare dso_local i32 @__traceiter_xfs_buf_iodone_async(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_error_relse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_count_node(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_walk_node(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_drain_buftarg(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_drain_buftarg, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_drain_buftarg, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !341
  %call42 = tail call i32 @__traceiter_xfs_buf_drain_buftarg(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !342
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_drain_buftarg, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_drain_buftarg, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_drain_buftarg.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_drain_buftarg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 469, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
declare dso_local void @list_lru_isolate_move(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_drain_buftarg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_count_one(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_buftarg_isolate(ptr noundef %item, ptr noundef %lru, ptr nocapture noundef readnone %lru_lock, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_lock = getelementptr i8, ptr %item, i32 8
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %b_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_lru_ref = getelementptr i8, ptr %item, i32 -64
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_lru_ref, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !343
  tail call void @llvm.prefetch.p0(ptr %b_lru_ref, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %b_lru_ref, ptr %b_lru_ref, i32 0, i32 -1, ptr elementtype(i32) %b_lru_ref) #13, !srcloc !344
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !345
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %b_state = getelementptr i8, ptr %item, i32 52
  %1 = ptrtoint ptr %b_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %b_state, align 4
  %or = or i32 %2, 1
  store i32 %or, ptr %b_state, align 4
  tail call void @list_lru_isolate_move(ptr noundef %lru, ptr noundef %item, ptr noundef %arg) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.then2
  %retval.0.ph = phi i32 [ 0, %if.end4 ], [ 2, %if.then2 ]
  tail call void @_raw_spin_unlock(ptr noundef %b_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_walk_one(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_delwri_queued(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_delwri_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_buf_cmp(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_maps = getelementptr i8, ptr %a, i32 152
  %0 = ptrtoint ptr %b_maps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_maps, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  %b_maps4 = getelementptr i8, ptr %b, i32 152
  %4 = ptrtoint ptr %b_maps4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_maps4, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  %sub = sub i64 %3, %7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp = icmp slt i64 %sub, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %7)
  %cmp7.not = icmp ne i64 %3, %7
  %. = zext i1 %cmp7.not to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_delwri_split(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_delwri_split, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_delwri_split, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !346
  %call42 = tail call i32 @__traceiter_xfs_buf_delwri_split(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !347
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_delwri_split, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_delwri_split, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_delwri_split.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_delwri_split.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 463, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
declare dso_local i32 @__traceiter_xfs_buf_delwri_split(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_iowait(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_iowait, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_iowait, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !348
  %call42 = tail call i32 @__traceiter_xfs_buf_iowait(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !349
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_iowait, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_iowait, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_iowait.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_iowait.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 459, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_iowait_done(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_iowait_done, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_iowait_done, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !265

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !254

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !350
  %call42 = tail call i32 @__traceiter_xfs_buf_iowait_done(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !351
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !254

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !244) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_iowait_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_iowait_done, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_iowait_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_buf_iowait_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 460, ptr noundef nonnull @.str.38) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #13
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
declare dso_local i32 @__traceiter_xfs_buf_iowait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_iowait_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_delwri_pushbuf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !87, !88, !89, !91, !93, !95, !96, !98, !100, !101, !103, !105, !107, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !125, !127, !129, !131, !132, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !150, !152, !154, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173, !175, !177, !179, !181, !183, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200, !202, !203, !205, !206, !208, !210, !212, !214, !215, !217, !218, !220, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !237, !238, !240, !241, !243}
!llvm.named.register.sp = !{!244}
!llvm.module.flags = !{!245, !246, !247, !248, !249, !250, !251, !252}
!llvm.ident = !{!253}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_buf.c", i32 148, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_buf.c", i32 173, i32 2}
!5 = !{ptr @xfs_buf_hash_init.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_buf.c", i32 494, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/xfs/xfs_buf.c", i32 687, i32 4}
!10 = !{ptr @xfs_buf_get_map._rs, !9, !"_rs", i1 false, i1 false}
!11 = !{ptr @__func__.xfs_buf_get_map, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_buf.c", i32 716, i32 2}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_buf.c", i32 717, i32 2}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_buf.c", i32 747, i32 2}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_buf.c", i32 748, i32 2}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_buf.c", i32 803, i32 3}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/xfs_buf.c", i32 879, i32 2}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_buf.c", i32 921, i32 4}
!27 = !{ptr @__func__.xfs_buf_get_uncached, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/xfs_buf.c", i32 921, i32 31}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/xfs_buf.c", i32 962, i32 3}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/xfs_buf.c", i32 970, i32 2}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/xfs_buf.c", i32 1022, i32 3}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/xfs_buf.c", i32 1328, i32 2}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/xfs/xfs_buf.c", i32 1338, i32 32}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/xfs_buf.c", i32 1339, i32 3}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/xfs/xfs_buf.c", i32 1682, i32 3}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/xfs/xfs_buf.c", i32 1797, i32 6}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/xfs/xfs_buf.c", i32 1798, i32 1}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/xfs/xfs_buf.c", i32 1814, i32 3}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/xfs/xfs_buf.c", i32 1816, i32 8}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/xfs/xfs_buf.c", i32 1890, i32 2}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/xfs/xfs_buf.c", i32 1911, i32 4}
!55 = !{ptr @xfs_alloc_buftarg.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../fs/xfs/xfs_buf.c", i32 1963, i32 6}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/xfs/xfs_buf.c", i32 2022, i32 2}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/xfs/xfs_buf.c", i32 2226, i32 2}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/xfs/xfs_buf.c", i32 2261, i32 36}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/xfs/xfs_buf.c", i32 2288, i32 6}
!65 = !{ptr @xfs_buf_cache, !66, !"xfs_buf_cache", i1 false, i1 false}
!66 = !{!"../fs/xfs/xfs_buf.c", i32 23, i32 27}
!67 = !{ptr @xfs_buf_hash_params, !68, !"xfs_buf_hash_params", i1 false, i1 false}
!68 = !{!"../fs/xfs/xfs_buf.c", i32 480, i32 39}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/xfs/xfs_buf.c", i32 474, i32 3}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/xfs/xfs_buf.c", i32 544, i32 2}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/xfs/xfs_buf.c", i32 545, i32 2}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/xfs/xfs_buf.c", i32 554, i32 6}
!77 = !{ptr @__func__.xfs_buf_find, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/xfs/xfs_buf.c", i32 555, i32 6}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/xfs/xfs_buf.c", i32 607, i32 3}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!83 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!87 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!95 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!96 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!97 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!100 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!103 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!104 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../fs/xfs/xfs_trace.h", i32 516, i32 1}
!107 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!108 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!109 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!110 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!111 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @_xfs_buf_alloc.__key, !113, !"__key", i1 false, i1 false}
!113 = !{!"../fs/xfs/xfs_buf.c", i32 238, i32 2}
!114 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @_xfs_buf_alloc.__key.47, !116, !"__key", i1 false, i1 false}
!116 = !{!"../fs/xfs/xfs_buf.c", i32 263, i32 2}
!117 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @init_completion.__key, !119, !"__key", i1 false, i1 false}
!119 = !{!"../include/linux/completion.h", i32 87, i32 2}
!120 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @sema_init.__key, !122, !"__key", i1 false, i1 false}
!122 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!123 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/xfs/xfs_buf.c", i32 182, i32 2}
!129 = distinct !{null, !130, !"__already_done", i1 false, i1 false}
!130 = !{!"../fs/xfs/xfs_trace.h", i32 448, i32 1}
!131 = distinct !{null, !130, !"__warned", i1 false, i1 false}
!132 = !{ptr @.str.53, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/xfs/xfs_buf.c", i32 278, i32 2}
!134 = distinct !{null, !135, !"__already_done", i1 false, i1 false}
!135 = !{!"../include/linux/sched/mm.h", i32 230, i32 2}
!136 = distinct !{null, !135, !"<string literal>", i1 false, i1 false}
!137 = distinct !{null, !138, !"__already_done", i1 false, i1 false}
!138 = !{!"../fs/xfs/xfs_trace.h", i32 449, i32 1}
!139 = distinct !{null, !138, !"__warned", i1 false, i1 false}
!140 = distinct !{null, !141, !"__already_done", i1 false, i1 false}
!141 = !{!"../fs/xfs/xfs_trace.h", i32 517, i32 1}
!142 = distinct !{null, !141, !"__warned", i1 false, i1 false}
!143 = distinct !{null, !144, !"__already_done", i1 false, i1 false}
!144 = !{!"../fs/xfs/xfs_trace.h", i32 453, i32 1}
!145 = distinct !{null, !144, !"__warned", i1 false, i1 false}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../fs/xfs/xfs_buf.c", i32 1106, i32 3}
!148 = distinct !{null, !149, !"__already_done", i1 false, i1 false}
!149 = !{!"../fs/xfs/xfs_buf.c", i32 1112, i32 2}
!150 = distinct !{null, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/xfs/xfs_buf.c", i32 102, i32 2}
!152 = !{ptr @.str.57, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/xfs/xfs_buf.c", i32 1527, i32 6}
!154 = !{ptr @__func__._xfs_buf_ioapply, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/xfs/xfs_buf.c", i32 1528, i32 6}
!156 = !{ptr @xfs_buf_ioend_async.__key, !157, !"__key", i1 false, i1 false}
!157 = !{!"../fs/xfs/xfs_buf.c", i32 1318, i32 2}
!158 = !{ptr @.str.58, !157, !"<string literal>", i1 false, i1 false}
!159 = distinct !{null, !160, !"__already_done", i1 false, i1 false}
!160 = !{!"../fs/xfs/xfs_trace.h", i32 518, i32 1}
!161 = distinct !{null, !160, !"__warned", i1 false, i1 false}
!162 = distinct !{null, !163, !"__already_done", i1 false, i1 false}
!163 = !{!"../fs/xfs/xfs_trace.h", i32 465, i32 1}
!164 = distinct !{null, !163, !"__warned", i1 false, i1 false}
!165 = distinct !{null, !166, !"__already_done", i1 false, i1 false}
!166 = !{!"../fs/xfs/xfs_trace.h", i32 450, i32 1}
!167 = distinct !{null, !166, !"__warned", i1 false, i1 false}
!168 = distinct !{null, !169, !"__already_done", i1 false, i1 false}
!169 = !{!"../fs/xfs/xfs_trace.h", i32 451, i32 1}
!170 = distinct !{null, !169, !"__warned", i1 false, i1 false}
!171 = distinct !{null, !172, !"__warned", i1 false, i1 false}
!172 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!173 = distinct !{null, !174, !"__warned", i1 false, i1 false}
!174 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!175 = distinct !{null, !176, !"__warned", i1 false, i1 false}
!176 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!177 = distinct !{null, !178, !"__warned", i1 false, i1 false}
!178 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!179 = distinct !{null, !180, !"__warned", i1 false, i1 false}
!180 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!181 = distinct !{null, !182, !"__warned", i1 false, i1 false}
!182 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!183 = distinct !{null, !184, !"__warned", i1 false, i1 false}
!184 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!185 = distinct !{null, !186, !"__already_done", i1 false, i1 false}
!186 = !{!"../fs/xfs/xfs_trace.h", i32 457, i32 1}
!187 = distinct !{null, !186, !"__warned", i1 false, i1 false}
!188 = distinct !{null, !189, !"__already_done", i1 false, i1 false}
!189 = !{!"../fs/xfs/xfs_trace.h", i32 456, i32 1}
!190 = distinct !{null, !189, !"__warned", i1 false, i1 false}
!191 = distinct !{null, !192, !"__already_done", i1 false, i1 false}
!192 = !{!"../fs/xfs/xfs_trace.h", i32 454, i32 1}
!193 = distinct !{null, !192, !"__warned", i1 false, i1 false}
!194 = distinct !{null, !195, !"__already_done", i1 false, i1 false}
!195 = !{!"../fs/xfs/xfs_trace.h", i32 455, i32 1}
!196 = distinct !{null, !195, !"__warned", i1 false, i1 false}
!197 = distinct !{null, !198, !"__already_done", i1 false, i1 false}
!198 = !{!"../fs/xfs/xfs_trace.h", i32 458, i32 1}
!199 = distinct !{null, !198, !"__warned", i1 false, i1 false}
!200 = distinct !{null, !201, !"__already_done", i1 false, i1 false}
!201 = !{!"../fs/xfs/xfs_trace.h", i32 520, i32 1}
!202 = distinct !{null, !201, !"__warned", i1 false, i1 false}
!203 = distinct !{null, !204, !"__already_done", i1 false, i1 false}
!204 = !{!"../fs/xfs/xfs_trace.h", i32 452, i32 1}
!205 = distinct !{null, !204, !"__warned", i1 false, i1 false}
!206 = !{ptr @.str.64, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/xfs/xfs_buf.c", i32 1230, i32 3}
!208 = !{ptr @xfs_buf_ioerror_alert_ratelimited.lasttime, !209, !"lasttime", i1 false, i1 false}
!209 = !{!"../fs/xfs/xfs_buf.c", i32 1119, i32 23}
!210 = !{ptr @xfs_buf_ioerror_alert_ratelimited.lasttarg, !211, !"lasttarg", i1 false, i1 false}
!211 = !{!"../fs/xfs/xfs_buf.c", i32 1120, i32 29}
!212 = distinct !{null, !213, !"__already_done", i1 false, i1 false}
!213 = !{!"../fs/xfs/xfs_trace.h", i32 467, i32 1}
!214 = distinct !{null, !213, !"__warned", i1 false, i1 false}
!215 = distinct !{null, !216, !"__already_done", i1 false, i1 false}
!216 = !{!"../fs/xfs/xfs_trace.h", i32 468, i32 1}
!217 = distinct !{null, !216, !"__warned", i1 false, i1 false}
!218 = distinct !{null, !219, !"__already_done", i1 false, i1 false}
!219 = !{!"../fs/xfs/xfs_trace.h", i32 469, i32 1}
!220 = distinct !{null, !219, !"__warned", i1 false, i1 false}
!221 = !{ptr @ratelimit_state_init.__key, !222, !"__key", i1 false, i1 false}
!222 = !{!"../include/linux/ratelimit.h", i32 14, i32 2}
!223 = !{ptr @.str.65, !222, !"<string literal>", i1 false, i1 false}
!224 = distinct !{null, !225, !"__already_done", i1 false, i1 false}
!225 = !{!"../fs/xfs/xfs_trace.h", i32 462, i32 1}
!226 = distinct !{null, !225, !"__warned", i1 false, i1 false}
!227 = distinct !{null, !228, !"__already_done", i1 false, i1 false}
!228 = !{!"../fs/xfs/xfs_trace.h", i32 461, i32 1}
!229 = distinct !{null, !228, !"__warned", i1 false, i1 false}
!230 = distinct !{null, !231, !"__already_done", i1 false, i1 false}
!231 = !{!"../fs/xfs/xfs_trace.h", i32 463, i32 1}
!232 = distinct !{null, !231, !"__warned", i1 false, i1 false}
!233 = !{ptr @.str.66, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/xfs/xfs_buf.c", i32 1570, i32 2}
!235 = distinct !{null, !236, !"__already_done", i1 false, i1 false}
!236 = !{!"../fs/xfs/xfs_trace.h", i32 459, i32 1}
!237 = distinct !{null, !236, !"__warned", i1 false, i1 false}
!238 = distinct !{null, !239, !"__already_done", i1 false, i1 false}
!239 = !{!"../fs/xfs/xfs_trace.h", i32 460, i32 1}
!240 = distinct !{null, !239, !"__warned", i1 false, i1 false}
!241 = distinct !{null, !242, !"__already_done", i1 false, i1 false}
!242 = !{!"../fs/xfs/xfs_trace.h", i32 464, i32 1}
!243 = distinct !{null, !242, !"__warned", i1 false, i1 false}
!244 = !{!"sp"}
!245 = !{i32 1, !"wchar_size", i32 2}
!246 = !{i32 1, !"min_enum_size", i32 4}
!247 = !{i32 8, !"branch-target-enforcement", i32 0}
!248 = !{i32 8, !"sign-return-address", i32 0}
!249 = !{i32 8, !"sign-return-address-all", i32 0}
!250 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!251 = !{i32 7, !"uwtable", i32 1}
!252 = !{i32 7, !"frame-pointer", i32 2}
!253 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!254 = !{!"branch_weights", i32 2000, i32 1}
!255 = !{!"branch_weights", i32 1, i32 2000}
!256 = !{i64 2148675459, i64 2148675485, i64 2148675514, i64 2148675548, i64 2148675579, i64 2148675602}
!257 = !{!"auto-init"}
!258 = !{i64 2148522779, i64 2148523059, i64 2148523393, i64 2148523727}
!259 = !{i64 2149994516}
!260 = !{i64 2155315701}
!261 = !{i64 2155319135}
!262 = !{i64 2149994782}
!263 = !{i64 2148672994, i64 2148673020, i64 2148673049, i64 2148673083, i64 2148673114, i64 2148673137}
!264 = !{i64 2166331704}
!265 = !{i64 2148300982, i64 2148300987, i64 2148301000, i64 2148301044, i64 2148301078, i64 2148301099}
!266 = !{i64 2157077694}
!267 = !{i64 2157077919}
!268 = !{i64 2150003075}
!269 = !{i64 2150004111}
!270 = !{i64 2157098474}
!271 = !{i64 2157098701}
!272 = !{i64 2166337714}
!273 = !{i64 2156916302}
!274 = !{i64 2156916531}
!275 = !{i64 2156648073}
!276 = !{i64 2156648286}
!277 = !{i64 2148761470}
!278 = !{i64 2148676179, i64 2148676211, i64 2148676240, i64 2148676274, i64 2148676305, i64 2148676328}
!279 = !{i64 2148761699}
!280 = !{i64 2155379016}
!281 = !{i8 0, i8 2}
!282 = !{i64 2156664442}
!283 = !{i64 2156664655}
!284 = !{i64 2156772476}
!285 = !{i64 2156772695}
!286 = !{i64 2156755558}
!287 = !{i64 2156755787}
!288 = !{i64 2156717982}
!289 = !{i64 2156718195}
!290 = !{i64 2156734546}
!291 = !{i64 2156734769}
!292 = !{i64 2156789085}
!293 = !{i64 2156789302}
!294 = !{i64 2157115142}
!295 = !{i64 2157115375}
!296 = !{i64 2166358079}
!297 = !{i64 2166351607}
!298 = !{i64 2156860662}
!299 = !{i64 2156860893}
!300 = !{i64 2156843510}
!301 = !{i64 2156843739}
!302 = !{i64 2156899081}
!303 = !{i64 2156899314}
!304 = !{i64 2157060960}
!305 = !{i64 2157061187}
!306 = !{i64 2152237663}
!307 = !{!"branch_weights", i32 2146410443, i32 1073205}
!308 = !{i64 2148681852, i64 2148681884, i64 2148681913, i64 2148681947, i64 2148681978, i64 2148682001}
!309 = !{i64 2148770957}
!310 = !{i64 2152237823}
!311 = !{i64 2152238100}
!312 = !{i64 2152237942}
!313 = !{i64 2152238305}
!314 = !{i64 2152239368, i64 2152239860, i64 2152239405, i64 2152239461, i64 2152239495, i64 2152239519, i64 2152239560, i64 2152239581, i64 2152239609, i64 2152239643}
!315 = !{i64 2148769844}
!316 = !{i64 2148680239, i64 2148680271, i64 2148680300, i64 2148680334, i64 2148680365, i64 2148680388}
!317 = !{i64 2152240763}
!318 = !{i64 2155304713}
!319 = !{i64 2155311073}
!320 = !{i64 2156615335}
!321 = !{i64 2156615548}
!322 = !{i64 2156631704}
!323 = !{i64 2156631917}
!324 = !{i64 2156701505}
!325 = !{i64 2156701722}
!326 = !{i64 2166344801}
!327 = !{i64 2166349529}
!328 = !{i64 2166362553}
!329 = !{i64 2166359514}
!330 = !{i64 1182486, i64 1182507, i64 1182530, i64 1182549, i64 1182568}
!331 = !{i64 2166359919}
!332 = !{i64 2156684950}
!333 = !{i64 2156685167}
!334 = !{i64 2166351186}
!335 = !{i64 2166351329}
!336 = !{i64 2166350065}
!337 = !{i64 2156954403}
!338 = !{i64 2156954632}
!339 = !{i64 2156971477}
!340 = !{i64 2156971704}
!341 = !{i64 2156988575}
!342 = !{i64 2156988806}
!343 = !{i64 2148672413}
!344 = !{i64 1159013, i64 1159038, i64 1159060, i64 1159076, i64 1159088, i64 1159108, i64 1159132, i64 1159148, i64 1159160}
!345 = !{i64 2148672601}
!346 = !{i64 2156877829}
!347 = !{i64 2156878058}
!348 = !{i64 2156805640}
!349 = !{i64 2156805857}
!350 = !{i64 2156826451}
!351 = !{i64 2156826678}
